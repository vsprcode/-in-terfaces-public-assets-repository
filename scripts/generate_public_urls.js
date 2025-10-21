#!/usr/bin/env node
'use strict';

const fs = require('fs');
const path = require('path');

function parseArgs(argv) {
  const args = { base: '', dir: 'Apps Assets', outDir: '.', quiet: false };
  for (let i = 2; i < argv.length; i += 1) {
    const arg = argv[i];
    const next = argv[i + 1];
    if (arg === '--base' && next) {
      args.base = next;
      i += 1;
    } else if ((arg === '--dir' || arg === '-d') && next) {
      args.dir = next;
      i += 1;
    } else if ((arg === '--out' || arg === '-o') && next) {
      args.outDir = next;
      i += 1;
    } else if (arg === '--quiet' || arg === '-q') {
      args.quiet = true;
    } else if (arg === '--help' || arg === '-h') {
      printHelp();
      process.exit(0);
    }
  }
  if (!args.base) {
    console.error('Error: --base URL is required.');
    printHelp();
    process.exit(1);
  }
  return args;
}

function printHelp() {
  const help = `\nGenerate public URLs for files inside a directory (defaults to "Apps Assets").\n\nUsage:\n  node scripts/generate_public_urls.js --base <BASE_URL> [--dir "Apps Assets"] [--out .] [--quiet]\n\nExamples:\n  # Raw GitHub (replace placeholders)\n  node scripts/generate_public_urls.js --base https://raw.githubusercontent.com/<OWNER>/<REPO>/<BRANCH>/Apps%20Assets\n\n  # GitHub Pages (replace placeholders)\n  node scripts/generate_public_urls.js --base https://<OWNER>.github.io/<REPO>/Apps%20Assets\n\nOptions:\n  --base   Base URL prefix where files will be served from (required)\n  --dir    Local directory to scan (default: "Apps Assets")\n  --out    Output directory for files (default: ".")\n  --quiet  Do not print URLs to stdout\n`;
  console.log(help);
}

function isIgnorable(entryName) {
  if (!entryName) return true;
  if (entryName === '.DS_Store') return true;
  if (entryName.startsWith('.')) return true;
  return false;
}

function walkFiles(rootDir) {
  const results = [];
  const stack = [''];

  while (stack.length > 0) {
    const relDir = stack.pop();
    const absDir = path.join(rootDir, relDir);
    const entries = fs.readdirSync(absDir, { withFileTypes: true });
    for (const entry of entries) {
      if (isIgnorable(entry.name)) continue;
      const entryRel = relDir ? path.posix.join(relDir, entry.name) : entry.name;
      const entryAbs = path.join(rootDir, entryRel);
      if (entry.isDirectory()) {
        stack.push(entryRel);
      } else if (entry.isFile()) {
        results.push({ rel: entryRel, abs: entryAbs });
      }
    }
  }
  return results.sort((a, b) => a.rel.localeCompare(b.rel));
}

function joinUrl(base, encodedRelPath) {
  const trimmedBase = base.replace(/\/$/, '');
  return `${trimmedBase}/${encodedRelPath}`;
}

function encodePathForUrl(relPath) {
  return relPath
    .split(/[\\/]+/)
    .map((segment) => encodeURIComponent(segment))
    .join('/');
}

function main() {
  const args = parseArgs(process.argv);
  const repoRoot = process.cwd();
  const scanDir = path.resolve(repoRoot, args.dir);

  if (!fs.existsSync(scanDir) || !fs.statSync(scanDir).isDirectory()) {
    console.error(`Error: Directory not found or not a directory: ${scanDir}`);
    process.exit(1);
  }

  const files = walkFiles(scanDir);
  const items = files.map(({ rel }) => {
    const encodedRel = encodePathForUrl(rel);
    const url = joinUrl(args.base, encodedRel);
    return { path: rel, url };
  });

  const outDir = path.resolve(repoRoot, args.outDir);
  if (!fs.existsSync(outDir)) fs.mkdirSync(outDir, { recursive: true });

  const jsonOut = {
    base: args.base,
    localDir: path.relative(repoRoot, scanDir) || '.',
    generatedAt: new Date().toISOString(),
    count: items.length,
    items,
  };

  const jsonPath = path.join(outDir, 'public_urls.json');
  const txtPath = path.join(outDir, 'public_urls.txt');

  fs.writeFileSync(jsonPath, JSON.stringify(jsonOut, null, 2), 'utf8');
  fs.writeFileSync(
    txtPath,
    items.map((i) => i.url).join('\n') + (items.length ? '\n' : ''),
    'utf8'
  );

  if (!args.quiet) {
    for (const item of items) {
      console.log(item.url);
    }
    console.error(`\nWrote ${items.length} URLs to:`);
    console.error(`- ${path.relative(repoRoot, jsonPath)}`);
    console.error(`- ${path.relative(repoRoot, txtPath)}`);
  }
}

if (require.main === module) {
  try {
    main();
  } catch (err) {
    console.error(err instanceof Error ? err.stack || err.message : String(err));
    process.exit(1);
  }
}







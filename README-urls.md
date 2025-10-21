## Publicar e gerar URLs públicas para `Apps Assets`

Este repositório contém os arquivos em `Apps Assets` que você quer servir publicamente. Use o script abaixo para gerar uma lista de URLs públicas usando a base de sua preferência (GitHub Pages ou raw.githubusercontent.com).

### 1) Pré-requisitos

- Node.js instalado (v14+). Em macOS você pode conferir com:

```bash
node -v
```

### 2) Gerar URLs públicas

O script lê o diretório `Apps Assets`, ignora arquivos ocultos como `.DS_Store`, faz URL-encode e produz `public_urls.json` e `public_urls.txt` na raiz do repositório (por padrão).

```bash
node scripts/generate_public_urls.js --base <BASE_URL>
```

Opções úteis:

- `--dir` (opcional): diretório a escanear (padrão: `Apps Assets`)
- `--out` (opcional): diretório de saída (padrão: `.`)
- `--quiet` (opcional): não imprime URLs no stdout

### 3) Qual base URL devo usar?

Você tem duas formas principais:

1. GitHub Pages (recomendado para navegação via browser)
   - Ative Pages no repositório (Settings → Pages) e selecione a branch (ex.: `main`).
   - Base URL típica:
     - `https://<OWNER>.github.io/<REPO>/Apps%20Assets`

2. raw.githubusercontent.com (bom para consumo programático)
   - Base URL típica apontando para a branch `main`:
     - `https://raw.githubusercontent.com/<OWNER>/<REPO>/main/Apps%20Assets`

Substitua `<OWNER>` e `<REPO>` de acordo com seu GitHub. Se a branch for outra (ex.: `master`), ajuste na URL.

### 4) Exemplos de uso

Gerar usando GitHub Pages:

```bash
node scripts/generate_public_urls.js \
  --base https://<OWNER>.github.io/<REPO>/Apps%20Assets
```

Gerar usando raw.githubusercontent.com:

```bash
node scripts/generate_public_urls.js \
  --base https://raw.githubusercontent.com/<OWNER>/<REPO>/main/Apps%20Assets
```

### 5) Saída

- `public_urls.txt`: apenas a lista de URLs (uma por linha)
- `public_urls.json`: objeto com metadados e mapeamento `{ path, url }`

### 6) Dicas

- Espaços e caracteres especiais dos caminhos são corretamente codificados.
- Se mover os arquivos ou mudar a branch, regenere as URLs.
- Para incorporar em outra aplicação, consuma `public_urls.json` e busque pelo `path` desejado.







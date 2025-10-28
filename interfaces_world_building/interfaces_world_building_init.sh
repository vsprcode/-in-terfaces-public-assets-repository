#!/usr/bin/env bash
# Bootstrap estrutura da Bíblia de [in]terfaces
# Uso: bash interfaces_world_building_init.sh

set -euo pipefail

ROOT_DIR="Interfaces World Building"

mkdir -p "$ROOT_DIR"/{I_Fundamentos_do_Universo,II_Temas_Centrais,III_Personagens_e_Nucleos,IV_Sistemas_Estruturais,V_Estetica_e_Semiologia,VI_Arquitetura_Narrativa,VII_Extensoes_Transmidia,VIII_Apendice_e_Glossario,IX_Guia_de_Uso_e_Expansao}
mkdir -p "$ROOT_DIR"/III_Personagens_e_Nucleos/Personagens

# --- Root ---
cat > "$ROOT_DIR/README.md" << 'EOF'
# 🧭 BÍBLIA DE UNIVERSO — [in]terfaces
*O minuto antes da meia-noite.*

Este espaço contém a estrutura-base da bíblia de **[in]terfaces**.
Cada item é um `.md` para preencher e versionar.

> Convenção: voz **tecnopoética, crítica e sensorial**; títulos em PT-BR.
EOF

cat > "$ROOT_DIR/SUMMARY.md" << 'EOF'
# Sumário
- I. Fundamentos do Universo
- II. Temas Centrais
- III. Personagens e Núcleos Narrativos
- IV. Sistemas Estruturais
- V. Estética e Semiologia
- VI. Arquitetura Narrativa
- VII. Extensões Transmídia
- VIII. Apêndice e Glossário
- IX. Guia de Uso e Expansão
EOF

# --- I. Fundamentos ---
cat > "$ROOT_DIR/I_Fundamentos_do_Universo/README.md" << 'EOF'
# I. Fundamentos do Universo
Tese filosófica, histórico e geografia sociotecnológica do mundo.
EOF

cat > "$ROOT_DIR/I_Fundamentos_do_Universo/Manifesto_Central.md" << 'EOF'
# Manifesto Central
- **Tese:** O que resta de humano quando tudo pode ser programado?
- **Mensagem ética:** …
- **Tom narrativo:** cinzento, melancólico, tecnopoético.
- **Princípios invioláveis:** …
EOF

cat > "$ROOT_DIR/I_Fundamentos_do_Universo/Linha_Temporal_e_Contexto.md" << 'EOF'
# Linha Temporal / Contexto
- **Era Pré-Transumana:** …
- **Grandes eventos (datas):** …
- **Situação atual:** …
EOF

cat > "$ROOT_DIR/I_Fundamentos_do_Universo/Estrutura_do_Mundo.md" << 'EOF'
# Estrutura do Mundo
## Arcologias
- Hierarquias, zonas, protocolos…

## Periferias e Cinturões
- Classes, exclusões, economias paralelas…

## Ecossistema Digital
- Dados como moeda, IA soberanas, vigilância ubíqua…
EOF

# --- II. Temas Centrais ---
cat > "$ROOT_DIR/II_Temas_Centrais/README.md" << 'EOF'
# II. Temas Centrais
Eixos filosóficos e sociotécnicos que guiam conflitos, símbolos e estética.
EOF

cat > "$ROOT_DIR/II_Temas_Centrais/A_Era_das_Interfaces.md" << 'EOF'
# A Era das Interfaces
- **Definição (tech/social/emocional):** …
- **Impactos:** hibridização, identidade, dependência.
- **Simbolismo:** espelho, máscara, prisão.
EOF

cat > "$ROOT_DIR/II_Temas_Centrais/Transumanismo_e_Declinio_Humano.md" << 'EOF'
# Transumanismo e o Declínio Humano
- **Biotecnologia/implantes:** …
- **Consequências filosóficas:** autonomia, propósito, obsolescência.
- **Contra-movimentos:** humanistas, cultos da desconexão, simbióticos.
EOF

cat > "$ROOT_DIR/II_Temas_Centrais/Economia_dos_Dados.md" << 'EOF'
# A Economia dos Dados
- **Valor da informação:** …
- **Governança algorítmica:** …
- **Capital de atenção/memória:** …
EOF

# --- III. Personagens e Núcleos ---
cat > "$ROOT_DIR/III_Personagens_e_Nucleos/README.md" << 'EOF'
# III. Personagens e Núcleos Narrativos
Estruturas de perfil, núcleos e relações cruzadas.
EOF

cat > "$ROOT_DIR/III_Personagens_e_Nucleos/Nucleos_Principais.md" << 'EOF'
# Núcleos Principais
- **Li Jingwei** — a herdeira desaparecida…
- **Jack Rourke** — o homem comum no impossível…
- **Saorla Byrne** — informante em busca de redenção…
- **Animesh Rao** — programador entre fé e ciência…
EOF

cat > "$ROOT_DIR/III_Personagens_e_Nucleos/Relacoes_e_Interseccoes.md" << 'EOF'
# Relações e Interseções
- **Mapa emocional/temático:** …
- **Conexões entre arcos:** …
- **Leituras cruzadas:** …
EOF

cat > "$ROOT_DIR/III_Personagens_e_Nucleos/Personagens/_TEMPLATE_PERFIL.md" << 'EOF'
# [Nome do Personagem]

## Títulos
—

## Influências
—

## Status dentro de [in]terfaces
—

## Classe / Profissão
—

## Nível de RBU (S–D)
—

## Perfil Psicológico
—

## Histórico e Origem
—

## Características Gerais e Simbologia
—

## Frases-Chave
—

## Função dentro de [in]terfaces
—
EOF

for p in Li_Jingwei Jack_Rourke Saorla_Byrne Animesh_Rao; do
cat > "$ROOT_DIR/III_Personagens_e_Nucleos/Personagens/${p}.md" << 'EOF'
# [Preencher com *_TEMPLATE_PERFIL.md*]
EOF
done

# --- IV. Sistemas Estruturais ---
cat > "$ROOT_DIR/IV_Sistemas_Estruturais/README.md" << 'EOF'
# IV. Sistemas Estruturais
Sociedade, cultura e infraestrutura do mundo.
EOF

cat > "$ROOT_DIR/IV_Sistemas_Estruturais/Sociedade_e_Classes.md" << 'EOF'
# Sociedade e Classes
- **Castas tecnológicas:** …
- **RBU (Recurso Biológico Utilitário):** …
- **Grupos:** corporativos, dissidentes, marginais, sintéticos…
EOF

cat > "$ROOT_DIR/IV_Sistemas_Estruturais/Cultura_e_Cotidiano.md" << 'EOF'
# Cultura e Cotidiano
- **Entretenimento:** simulações, realidades paralelas, música neural…
- **Religiões/Cultos:** tecnognose, algoritmos, fé pós-humana…
- **Gírias e expressões:** …
EOF

cat > "$ROOT_DIR/IV_Sistemas_Estruturais/Tecnologia_e_Infraestrutura.md" << 'EOF'
# Tecnologia e Infraestrutura
- **Interfaces corporais:** chips, próteses, implantes…
- **Rede global:** IA soberanas, zonas de blackout, servidores-estado…
- **Objetos simbólicos:** adorno neural, cartões de memória viva…
EOF

# --- V. Estética e Semiologia ---
cat > "$ROOT_DIR/V_Estetica_e_Semiologia/README.md" << 'EOF'
# V. Estética e Semiologia
Direção visual, linguagem gráfica e trilha.
EOF

cat > "$ROOT_DIR/V_Estetica_e_Semiologia/Direcao_Visual.md" << 'EOF'
# Direção Visual
- **Paleta:** cobalto, dourado envelhecido, cinza, preto.
- **Arquitetura:** brutalismo high-tech, neoclássico digital.
- **Objetos:** fusão mecânico/biológico.
EOF

cat > "$ROOT_DIR/V_Estetica_e_Semiologia/Linguagem_e_Tipografia.md" << 'EOF'
# Linguagem e Tipografia
- **Estilo gráfico:** glitch, sobreposições, ruído.
- **Símbolos:** runas/dados; infinito fragmentado…
- **Naming:** latim + mandarim + código.
EOF

cat > "$ROOT_DIR/V_Estetica_e_Semiologia/Trilha_Sonora_e_Ambiencia.md" << 'EOF'
# Trilha Sonora e Ambiência
- **Estilos:** cyber-blues, ambient glitch, industrial lo-fi.
- **Leitmotivs:** …
- **Uso narrativo por personagem:** …
EOF

# --- VI. Arquitetura Narrativa ---
cat > "$ROOT_DIR/VI_Arquitetura_Narrativa/README.md" << 'EOF'
# VI. Arquitetura Narrativa
Como as antologias se conectam à história-mãe.
EOF

cat > "$ROOT_DIR/VI_Arquitetura_Narrativa/Estrutura_de_Antologia.md" << 'EOF'
# Estrutura de Antologia
- Episódios por perspectiva; narrativa coral e fragmentada.
- Regras de conexão entre arcos.
EOF

cat > "$ROOT_DIR/VI_Arquitetura_Narrativa/Historia_Central.md" << 'EOF'
# História Central
- Conspiração das arcologias.
- Reaparecimento de Li.
- Corrida por memórias/dados.
- Despertar da consciência coletiva.
EOF

cat > "$ROOT_DIR/VI_Arquitetura_Narrativa/Leitmotivs_e_Motivos.md" << 'EOF'
# Leitmotivs e Motivos Repetitivos
- Frases, sons ou visuais recorrentes; função e variações.
EOF

# --- VII. Extensões Transmídia ---
cat > "$ROOT_DIR/VII_Extensoes_Transmidia/README.md" << 'EOF'
# VII. Extensões Transmídia
Pontos de contato em áudio, app e futuras mídias.
EOF

cat > "$ROOT_DIR/VII_Extensoes_Transmidia/Musicas_e_Relatos_Sonoros.md" << 'EOF'
# Músicas / Relatos Sonoros
- Estrutura de faixa, voz, motivo, contexto.
- Relação com personagens.
EOF

cat > "$ROOT_DIR/VII_Extensoes_Transmidia/Aplicacao_Interativa_Player.md" << 'EOF'
# Aplicação Interativa — Player
- Estados: *talking* / *music* / *playlist*.
- Propósito narrativo e UX emocional.
- Integração com assets do álbum.
EOF

cat > "$ROOT_DIR/VII_Extensoes_Transmidia/Expansoes_Futuras.md" << 'EOF'
# Expansões Futuras
- Curta-metragens, contos interativos, HQs.
- Ponte com "A Era Pré-Transumana".
- Rumos para a "segunda era".
EOF

# --- VIII. Apêndice e Glossário ---
cat > "$ROOT_DIR/VIII_Apendice_e_Glossario/README.md" << 'EOF'
# VIII. Apêndice e Glossário
Referência rápida de termos e fontes.
EOF

cat > "$ROOT_DIR/VIII_Apendice_e_Glossario/Vocabulario_Tecnico_e_Filosofico.md" << 'EOF'
# Vocabulário Técnico e Filosófico
- **RBU, acologia, nó neural, rede cinestésica…**
EOF

cat > "$ROOT_DIR/VIII_Apendice_e_Glossario/Cronologia_Resumida.md" << 'EOF'
# Cronologia Resumida
- Lista linear de eventos-chave.
EOF

cat > "$ROOT_DIR/VIII_Apendice_e_Glossario/Referencias_e_Inspiracoes.md" << 'EOF'
# Referências e Inspirações
- Filmes, músicas, livros, artes que moldam o universo.
EOF

# --- IX. Guia de Uso e Expansão ---
cat > "$ROOT_DIR/IX_Guia_de_Uso_e_Expansao/README.md" << 'EOF'
# IX. Guia de Uso e Expansão
Como manter coerência de tom, símbolos e regras do mundo.
EOF

cat > "$ROOT_DIR/IX_Guia_de_Uso_e_Expansao/Guia_de_Uso_e_Expansao.md" << 'EOF'
# Guia de Uso e Expansão
- **Regras de coerência:** o que pode / não pode mudar.
- **Guia de tom/atmosfera:** linguagem, pacing, simbologia.
- **Onboarding de novos autores/mídias.**
EOF

echo "✅ Estrutura criada em: $ROOT_DIR"

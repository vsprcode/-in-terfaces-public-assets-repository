# 🎵 [in]terfaces - Assets Repository

Repositório de assets para o projeto [in]terfaces, incluindo músicas, monólogos e imagens de perfil.

## 🚀 Como Usar

### URLs Base
- **GitHub Pages**: `https://vsprcode.github.io/-in-terfaces-public-assets-repository/`
- **Raw GitHub**: `https://raw.githubusercontent.com/vsprcode/-in-terfaces-public-assets-repository/main/`

### 📁 Estrutura dos Assets

```
Apps Assets/
├── App/
│   ├── Music album/          # Álbum completo
│   ├── Cards/
│   │   ├── Music/            # Músicas dos cards
│   │   └── Talking/          # Monólogos
│   └── Profiles/             # Imagens de perfil
```

### 🎶 Arquivos de Áudio

#### Music Album (16 faixas)
- `01 - Interfaces Theme.mp3`
- `02 - Expand the Interfaces.mp3`
- `03 - Expanda a Interface.mp3`
- `04 - Thousand Screens.mp3`
- `05 - Mil Telas.mp3`
- `06 - The Spark.mp3`
- `07 - A centelha.mp3`
- `08 - No Work for Ghosts.mp3`
- `09 - Fantasmas desempregados.mp3`
- `10 - Neural Fog.mp3`
- `11 - Echo Chamber.mp3`
- `12 - After the Signal.mp3`
- `13 - Subroutine Dreams.mp3`
- `14 - Reboot __ Genesis..mp3`
- `15 - Without.mp3`
- `16 - Sem.mp3`

#### Cards Music (4 faixas)
- `01 Casting Theme - Expand the Interfaces.mp3`
- `02 Eyeds Theme- Thousand Screens.mp3`
- `03 Pendants Theme- The Spark.mp3`
- `04 Carriers Theme- No Work for Ghosts.mp3`

#### Talking (4 monólogos)
- `01 - Monologo Li Jingwei - implantada.mp3`
- `02 - Monologo Animsh Rao - Eyed.mp3`
- `03 - Monologo Saorla Byrne - Pendant.mp3`
- `04 - Monologo jack Rourke- carrier.mp3`

### 🖼️ Imagens de Perfil
- `picture profile 01 - castings.png`
- `picture profile 02 - eyeds.png`
- `picture profile 03 - pendants.png`
- `picture profile 04 - carriers.png`

## 🔧 Configuração do GitHub Pages

### Passo 1: Habilitar GitHub Pages
1. Vá para **Settings** do repositório
2. Role até **Pages** na barra lateral
3. Em **Source**, selecione **Deploy from a branch**
4. Escolha **main** como branch
5. Clique em **Save**

### Passo 2: Verificar Configuração
- ✅ Arquivo `.nojekyll` criado (permite servir todos os arquivos)
- ✅ Arquivo `index.html` criado (página de navegação)
- ✅ Arquivo `public_urls.json` com URLs corretas

### Passo 3: Testar URLs
Após habilitar o GitHub Pages, teste as URLs:
```
https://vsprcode.github.io/-in-terfaces-public-assets-repository/Apps%20Assets/App/Music%20album/01%20-%20Interfaces%20Theme.mp3
```

## 📱 Como Usar na Aplicação

### JavaScript/HTML
```javascript
// URL correta para GitHub Pages
const audioUrl = 'https://vsprcode.github.io/-in-terfaces-public-assets-repository/Apps%20Assets/App/Music%20album/01%20-%20Interfaces%20Theme.mp3';

// Criar elemento de áudio
const audio = new Audio(audioUrl);
audio.play().catch(error => {
    console.error('Erro ao reproduzir áudio:', error);
});
```

### React/Next.js
```jsx
const AudioPlayer = ({ trackNumber }) => {
    const audioUrl = `https://vsprcode.github.io/-in-terfaces-public-assets-repository/Apps%20Assets/App/Music%20album/${trackNumber.toString().padStart(2, '0')}%20-%20${getTrackName(trackNumber)}.mp3`;
    
    return (
        <audio controls>
            <source src={audioUrl} type="audio/mpeg" />
            Seu navegador não suporta o elemento de áudio.
        </audio>
    );
};
```

## 🛠️ Scripts Úteis

### Gerar URLs Públicas
```bash
# GitHub Pages
node scripts/generate_public_urls.js --base https://vsprcode.github.io/-in-terfaces-public-assets-repository/Apps%20Assets

# Raw GitHub (não recomendado para produção)
node scripts/generate_public_urls.js --base https://raw.githubusercontent.com/vsprcode/-in-terfaces-public-assets-repository/main/Apps%20Assets
```

## ⚠️ Solução de Problemas

### Erro: "Arquivo não encontrado"
1. **Verifique se o GitHub Pages está habilitado**
2. **Aguarde alguns minutos** após habilitar o GitHub Pages
3. **Use GitHub Pages** em vez de raw.githubusercontent.com
4. **Verifique o encoding** das URLs (espaços = %20)

### URLs Incorretas
- ❌ `https://raw.githubusercontent.com/...` (não funciona para arquivos grandes)
- ✅ `https://vsprcode.github.io/...` (recomendado)

### Cache do Navegador
- Limpe o cache do navegador
- Use modo incógnito para testar
- Adicione `?v=timestamp` às URLs para forçar atualização

## 📊 Status dos Assets

- **Total de arquivos**: 28
- **Músicas**: 20 arquivos MP3
- **Imagens**: 4 arquivos PNG
- **Monólogos**: 4 arquivos MP3
- **Última atualização**: $(date)

## 🔗 Links Úteis

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Audio HTML Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio)
- [URL Encoding](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent)

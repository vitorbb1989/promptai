# PromptLab 🚀  
Plataforma brasileira para **teste, gerenciamento e otimização de prompts LLM**, integrando **OpenAI** e **PromptLayer** em um fluxo simples, seguro e escalável.  



---

![PromptLab Preview](./docs/assets/screenshot.png)

<p align="center">
  <img src="https://img.shields.io/badge/status-em%20desenvolvimento-yellow" alt="Status">
  <img src="https://img.shields.io/badge/licença-MIT-green" alt="Licença">
  <img src="https://img.shields.io/badge/docker-ready-blue" alt="Docker Ready">
  <img src="https://img.shields.io/badge/stack-Python%20|%20Streamlit%20|%20Docker%20Swarm%20|%20Traefik-blueviolet" alt="Stack">
</p>

---

## 📦 Estrutura do Projeto

| Diretório / Arquivo             | Função |
|---------------------------------|--------|
| **`backend/`**                  | API em Python com integração OpenAI + PromptLayer. |
| **`frontend/`**                 | Interface em Streamlit para teste e gerenciamento de *prompts*. |
| **`docker-compose.dev.yml`**    | Configuração de ambiente local para desenvolvimento. |
| **`stack.yml`**                 | Deploy de produção com **Docker Swarm**, **Traefik** e **Portainer**. |
| **`.env.example`**              | Exemplo de variáveis de ambiente necessárias. |
| **`Makefile`**                   | Automação de comandos de build, deploy e gerenciamento. |

---

## 🛠️ Como Rodar (Desenvolvimento Local)

```bash
cp .env.example .env
make dev-up
make logs

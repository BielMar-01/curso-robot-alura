# 🤖 Automação de Testes com Robot Framework + Selenium

![Robot Framework](https://img.shields.io/badge/Robot%20Framework-000000?style=for-the-badge&logo=robotframework&logoColor=white)
![Selenium](https://img.shields.io/badge/Selenium-43B02A?style=for-the-badge&logo=selenium&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow?style=for-the-badge)

---

## 📌 Sobre o projeto

Projeto de automação de testes E2E utilizando **Robot Framework** com **SeleniumLibrary**, aplicado sobre a aplicação web **Organo**.

O foco deste repositório é simular um projeto real de QA, com:

- estrutura escalável
- separação de responsabilidades
- uso de boas práticas
- organização por camadas (Page Object Model)

---

## 🎯 Objetivo

Este projeto foi criado para:

- praticar automação de testes web
- aplicar boas práticas de QA
- construir um portfólio técnico sólido
- simular cenários reais de testes funcionais

---

## 🧪 Cenários automatizados

### ✔ Cenários positivos
- Criar card com dados válidos
- Criar múltiplos cards
- Criar card para todos os times

### ⚠ Cenários negativos
- Validar erro ao enviar formulário vazio
- Validar campos obrigatórios

---

## 🏗️ Arquitetura do projeto
bash
curso-robot-alura/
│
├── resources/
│   ├── main.robot                # agregador de dependências
│   ├── pages/
│   │   └── cadastro.robot        # regras e elementos da página
│   └── shared/
│       └── setup_teardown.robot  # controle do navegador
│
├── tests/
│   ├── preenchimento_correto.robot
│   └── preenchimento_incorreto.robot
│
├── results/                      # relatórios gerados
│
├── .gitignore
└── README.md ``````

---

## 🧠 Boas práticas aplicadas
✔ Page Object Model (POM)
✔ Separação de responsabilidades
✔ Reutilização de keywords
✔ Dados dinâmicos com Faker
✔ Setup e Teardown centralizados
✔ Estrutura escalável
✔ Pronto para CI/CD

---

## ⚙️ Setup do projeto

### ▶️ Clonar o repositório
git clone https://github.com/BielMar-01/curso-robot-alura.git
cd curso-robot-alura

### ▶️ Criar ambiente virtual

#### Windows
py -m venv .venv
.venv\Scripts\activate

#### Linux / Mac
python3 -m venv .venv
source .venv/bin/activate

### ▶️ Instalar dependências
py -m pip install robotframework
py -m pip install robotframework-seleniumlibrary
py -m pip install robotframework-faker

### ▶️ Executando os testes

#### Rodar todos os testes
py -m robot -d results tests

#### Rodar teste positivo
py -m robot -d results tests/preenchimento_correto.robot

#### Rodar teste negativo
py -m robot -d results tests/preenchimento_incorreto.robot

## 📊 Relatórios

### Após a execução:
results/log.html
results/report.html
results/output.xml

## ⚠️ Observações importantes
A aplicação deve estar rodando em:
[A aplicação deve estar rodando em:](http://localhost:3000)

Evite Sleep, utilize Wait Until Element Is Visible
VS Code pode apresentar erros visuais (falso positivo)

## 🚀 Próximos passos
 - Validar nome e cargo dentro do card
 - Validar time correto
 - Implementar CI/CD com GitHub Actions
 - Melhorar cobertura de testes
 - Adicionar testes de API

## 👨‍💻 Autor

Gabriel Marques
QA Engineer | Automação de Testes

🔗 GitHub: https://github.com/BielMar-01

🔗 LinkedIn: https://www.linkedin.com/in/dev-gabriel-marques/

## 📌 Sobre este repositório

Este projeto faz parte da evolução prática em QA, com foco em:

qualidade de software
automação de testes
boas práticas de desenvolvimento
preparação para o mercado
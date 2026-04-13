# 🤖 Automação de Testes com Robot Framework + Selenium

Projeto de automação de testes E2E utilizando **Robot Framework** com **SeleniumLibrary**, aplicado sobre a aplicação web **Organo**.

---

## 📌 Sobre o projeto

Este projeto tem como objetivo validar funcionalidades da aplicação **Organo**, uma plataforma para organização de pessoas em times dentro de uma empresa.

A automação cobre cenários como:

- Acesso à aplicação
- Interação com formulário de cadastro
- Validação de elementos na interface
- Estrutura escalável para novos testes

---

## 🚀 Tecnologias utilizadas

- 🤖 Robot Framework
- 🌐 SeleniumLibrary
- 🐍 Python
- 🌍 ChromeDriver

---

## 📁 Estrutura do projeto
robot-project/
│
├── tests/
│ └── primeiro_teste.robot
│
├── resources/
│ ├── keywords.robot
│ └── variables.robot
│
├── results/
│
├── README.md
├── .gitignore


---

## ▶️ Como executar o projeto

### 1. Clonar o repositório

```bash```
git clone <url-do-repositorio>
cd robot-project


### 2. Instalar dependências
pip install robotframework
pip install robotframework-seleniumlibrary


### 3. Executar os testes
robot -d results tests


📊 Relatórios de execução

Após rodar os testes, os relatórios estarão disponíveis em:

📄 results/log.html
📄 results/report.html


🧠 Boas práticas aplicadas

✔ Separação de responsabilidades (tests / resources)
✔ Reutilização de código com Keywords
✔ Variáveis centralizadas
✔ Estrutura escalável
✔ Padrão BDD aplicado nos testes
✔ Geração de evidências (screenshots e logs)


👨‍💻 Autor

Gabriel Marques
QA Engineer | Automação de Testes

GitHub: https://github.com/BielMar-01

LinkedIn: https://www.linkedin.com/in/dev-gabriel-marques/


💬 Observação

Este projeto faz parte de estudos práticos em automação de testes, com foco em evolução para nível profissional e aplicação em cenários reais de QA.


---

Se quiser dar o próximo passo e deixar isso **nível absurdo de portfólio (com CI/CD + badge + GIF rodando teste)**, me chama que eu já te monto tudo pronto 👀🔥
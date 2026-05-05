Playwright E2E Tests – SauceDemo (Versão Avançada)

Este repositório contém uma implementação avançada de automação de testes E2E para a aplicação web SauceDemo, com foco no fluxo de compra.

📚 Contexto
Este projeto foi desenvolvido como prática, aplicando uma abordagem diferente de projetos anteriores, com foco em arquitetura de testes e boas práticas.

🛠️ Tecnologias
JavaScript
Playwright
Cucumber
Gherkin
Page Object Model (POM)

🧠 Abordagem de Testes
O projeto segue uma abordagem estruturada e escalável utilizando:

BDD (Behavior-Driven Development) com sintaxe Gherkin
Step definitions com Cucumber
Page Object Model para separação de responsabilidades
Estrutura de testes reutilizável e de fácil manutenção
Testes orientados a dados (DDT) com Scenario Outline

📌 Cobertura de Testes
A implementação atual cobre todo o fluxo de compra no SauceDemo:

Validação de login
Seleção de produtos e validação do carrinho
Processo de checkout (preenchimento de dados)
Validação do resumo da compra (itens, preços e frete)
Finalização do pedido e validação da mensagem de confirmação

O projeto inclui:

Um cenário positivo end-to-end
Um Scenario Outline com múltiplos conjuntos de dados para validação de produtos, preços e frete
Page Objects estruturados para melhor organização e escalabilidade

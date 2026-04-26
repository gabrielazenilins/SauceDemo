Feature: Compra de roupas no SauceDemo

  Scenario: Compra com Sucesso
    Given que estou na pagina do SauceDemo
    When preencho o username com "standard_user" e senha como "secret_sauce"
    And clico no botão "Login"
    Then verifico o texto "Swag Labs"
    And verifico que a url contem "inventory"

    When adiciono ao carrinho o produto "Sauce Labs Fleece Jacket"
    And adiciono ao carrinho o produto "Sauce Labs Bolt T-Shirt"
    And clico no carrinho
    Then verifico que a url contem "cart"
    And verifico se aparecem os produtos "Sauce Labs Fleece Jacket" e "Sauce Labs Bolt T-Shirt"

    When clico no botão "Checkout"
    And preencho o meu nome como "Gabriela"
    And preencho o meu sobrenome como "Zeni"
    And preencho o meu CEP como "85900190"
    And clico no botão "Continue"

    Then verifico o texto "Checkout: Overview"
    And valido que o resumo da compra está correto

    When clico no botão "Finish"
    Then verifico o texto "Thank you for your order!"

    Scenario Outline: Compra com sucesso validando preços e frete
        Given que estou na pagina do SauceDemo
        When preencho o username com "<user>" e senha como "<password>"
        And clico no botão "Login"
        Then verifico o texto "Swag Labs"
        And verifico que a url contem "inventory"
        When adiciono ao carrinho o produto "<product1>"
        And adiciono ao carrinho o produto "<product2>"
        And clico no carrinho
        Then verifico que a url contem "cart"
        And verifico se aparecem os produtos "<product1>" e "<product2>"
        When clico no botão "Checkout"
        And preencho o meu nome como "<name>"
        And preencho o meu sobrenome como "<lastname>"
        And preencho o meu CEP como "<zipcode>"
        And clico no botão "Continue"
        Then verifico o texto "Checkout: Overview"
        And verifico que o produto "<product1>" possui o valor "<price1>"
        And verifico que o produto "<product2>" possui o valor "<price2>"
        And verifico que o valor do frete é "<tax>"
        And valido que o resumo da compra está correto
        When clico no botão "Finish"
        Then verifico o texto "Thank you for your order!"

        Examples:
    | user        | password        | product1                 | price1 | product2                  | price2 | name    | lastname | zipcode   | tax   |
    | standard_user | secret_sauce  | Sauce Labs Fleece Jacket | $49.99 | Sauce Labs Bolt T-Shirt   | $15.99 | Hugo    | Souza    | 83900190  | $5.28 |
    | standard_user | secret_sauce  | Sauce Labs Backpack      | $29.99 | Sauce Labs Onesie         | $7.99  | Yuri    | Alberto  | 01001000  | $3.04 |
    | standard_user | secret_sauce  | Sauce Labs Backpack      | $29.99 | Sauce Labs Fleece Jacket  | $49.99  | Neymar | Junior   | 02002000  | $6.40 |
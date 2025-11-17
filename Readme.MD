# <p align="center">Centro Universitário Senac</p>


## <p align="center">Curso de Tecnologia em Análise e Desenvolvimento de Sistemas👨‍💻</p>

### <p align="center">PROJETO INTEGRADOR: DESENVOLVIMENTO DE SISTEMAS ORIENTADO A OBJETOS</p>

---

## Sistema de Gestão Universitária

Este projeto foi desenvolvido como parte de um trabalho acadêmico e tem como objetivo a modelagem de um sistema Orientado a Objetos voltado para a gestão de dados de uma grande universidade.  

No repositório, você encontrará:
- Protótipo e interface criados na plataforma Figma;
- Imagens e recursos visuais utilizados no projeto;
- [Scripts SQL](pi_ads.sql) com comandos DML e DDL para criação e manipulação do banco de dados;
- [Documentação](https://github.com/AlexandreGarciaJr/Projeto-Integrador-Grupo-22-2025/blob/main/PI%20-%201entrega.pdf) detalhada com especificações dos casos de uso;

---
## <p align="center">Diagrama de caso de uso</p>

<p align="center">
  <img src="docs/DiagramaCasoDeUso.svg" alt="Diagrama de Caso de Uso" width="600"/>
</p>

O sistema de cadastro descrito permite que o usuário registre diferentes perfis — Pessoa Física, Professor, Aluno, Pessoa Jurídica e Fornecedor — aplicando validações específicas de CPF ou CNPJ conforme o tipo escolhido; todos os cadastros são então salvos no banco de dados, e a partir desse ponto o sistema realiza duas ações complementares: envia um e-mail de confirmação ao usuário e comunica a instituição, garantindo tanto a persistência segura das informações quanto a integração administrativa.

---

## <p align="center">Diagrama de classe</p>

```mermaid
classDiagram
    class PessoaFisica {
        -String cpf
        -String nome
        -String email
        -String telefone
        -Date dataNascimento
        -Int matricula
        +cadastrar() void
        +alterarDados() void
    }

    class Aluno {
        -String dataInicioCurso
        -String curso
        +cadastrarAluno() void
    }

    class Professor {
        -String formacao
        -String disciplina
        +cadastrarProfessor() void
    }

    class PessoaJuridica {
        -String cnpj
        -String razaoSocial
        -String email
        -String telefone
        -Date dataContrato
        +cadastrar() void
        +alterarDados() void
    }

    class Fornecedor {
        -String produto
        +solicitarProduto() void
    }

    Aluno --|> PessoaFisica
    Professor --|> PessoaFisica
    Fornecedor --|> PessoaJuridica
class PessoaFisica
  direction RL

```

O diagrama de classes descreve a estrutura de entidades e suas relações dentro de um sistema de cadastro. Ele define duas classes principais — Pessoa Física e Pessoa Jurídica — que representam os tipos básicos de usuários, cada uma com atributos próprios e métodos de manipulação de dados.

A partir dessas classes, derivam especializações:
- Aluno e Professor herdam de Pessoa Física, adicionando atributos específicos (curso, data de início, formação, disciplina) e métodos de cadastro próprios.
- Fornecedor herda de Pessoa Jurídica, incluindo o atributo de produto e o método solicitarProduto().

Assim, o modelo mostra como diferentes perfis de usuários compartilham características comuns de suas classes base, mas também possuem comportamentos especializados, garantindo reuso de código, organização e clareza na modelagem do sistema.

---

<h2 align="center">Print do protótipo funcional</p>

<p align="center">
  <img src="./docs/00index.jpg" alt="Diagrama de Caso de Uso" width="200"/>
  <img src="./docs/01pessoafisica.jpg" alt="Diagrama de Caso de Uso" width="200"/>
  <img src="./docs/02pessoajuridica.jpg" alt="Diagrama de Caso de Uso" width="200"/>
  </p><br><br/>
  <p align="center">
  <img src="./docs/03professor.jpg" alt="Diagrama de Caso de Uso" width="200"/>
  <img src="./docs/04fornecedor.jpg" alt="Diagrama de Caso de Uso" width="200"/>
  <img src="./docs/05aluno.jpg" alt="Diagrama de Caso de Uso" width="200"/>
</p>

---

<a href="https://www.figma.com/design/LMhpXw9bbJf7Kk8JglNNBw/Projeto-Integrador---Segunda-entrega?node-id=0-1&t=1auQyhuDTl0yMqdD-1">Link para o figma</a> com o projeto do protótipo

[Clique aqui](https://www.figma.com/proto/LMhpXw9bbJf7Kk8JglNNBw/Projeto-Integrador---Segunda-entrega?node-id=1-7&p=f&t=95RlP2G6VHUAIwWp-1&scaling=scale-down&content-scaling=fixed&page-id=0%3A1&starting-point-node-id=1%3A7) para testar o protótipo funcional

## Colaboradores
<table>
  <tr>
    <td align="center">
      <a href="https://github.com/Pamelacimirro">
        <img src="https://avatars.githubusercontent.com/u/180059830?v=4?s=100" width="100px;" alt=""/>
        <br />
        <span style="font-size:16px;"><b>Pâmela</b></span>
      </a>
      <br />
    </td>
      <td align="center">
      <a href="https://github.com/aironvalentim">
        <img src="https://avatars.githubusercontent.com/u/146296538?v=4?s=100" width="100px;" alt=""/>
        <br />
        <span style="font-size:16px;"><b>Airon</b></span>
      </a>
      <br />
    </td>    <td align="center">
      <a href="https://github.com/AlexandreGarciaJr">
        <img src="https://avatars.githubusercontent.com/u/179349433?v=4?s=100" width="100px;" alt=""/>
        <br />
        <span style="font-size:16px;"><b>Alexandre</b></span>
      </a>
      <br />
      </td>    <td align="center">
      <a href="https://github.com/AlvesX25">
        <img src="https://avatars.githubusercontent.com/u/143676167?v=4?s=100" width="100px;" alt=""/>
        <br />
        <span style="font-size:16px;"><b>Anderson</b></span>
      </a>
      <br />
    </td>    <td align="center">
      <a href="https://github.com/gmcasagrande">
        <img src="https://avatars.githubusercontent.com/u/180349085?v=4?s=100" width="100px;" alt=""/>
        <br />
        <span style="font-size:16px;"><b>Guilherme</b></span>
      </a>
      <br />
    </td>    <td align="center">
      <a href="https://github.com/gustvcarvalho">
        <img src="https://avatars.githubusercontent.com/u/164582165?v=4?s=100" width="100px;" alt=""/>
        <br />
        <span style="font-size:16px;"><b>Gustavo</b></span>
      </a>
      <br />
    </td>    <td align="center">
      <a href="https://github.com/Maycon-on">
        <img src="https://avatars.githubusercontent.com/u/182829460?v=4?s=100" width="100px;" alt=""/>
        <br />
        <span style="font-size:16px;"><b>Maycon</b></span>
      </a>
      <br />
    </td>
  </tr>
  <tr>
</table>

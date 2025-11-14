# <p align="center">Centro Universitário Senac</p>


## <p align="center">Curso de Tecnologia em Análise e Desenvolvimento de Sistemas</p>

### <p align="center">PROJETO INTEGRADOR: DESENVOLVIMENTO DE SISTEMAS ORIENTADO A OBJETOS</p>

---

Este trabalho consiste no processo de modelagem de um sistema Orientado a Objetos, voltado a gestão de dados de uma grande universidade.

---

## <p align="center">Diagrama de caso de uso</p>

<p align="center">
  <img src="docs/DiagramaCasoDeUso.svg" alt="Diagrama de Caso de Uso" width="600"/>
</p>

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
#### Colaboradores:
- [Airon]
- [Anderson]
- [Alexandre](https://github.com/AlexandreGarciaJr)
- [Guilherme](https://github.com/gmcasagrande)
- [Gustavo]
- [Maycon]
- [Pâmela](https://github.com/Pamelacimirro)

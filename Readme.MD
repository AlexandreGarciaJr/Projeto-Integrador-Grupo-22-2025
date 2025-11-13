# <p align="center">Centro Universitário Senac</p>


## <p align="center">Curso de Tecnologia em Análise e Desenvolvimento de Sistemas</p>

### <p align="center">PROJETO INTEGRADOR: DESENVOLVIMENTO DE SISTEMAS ORIENTADO A OBJETOS</p>

---
#### Colaboradores:
- [Airon]
- [Anderson]
- [Alexandre](https://github.com/AlexandreGarciaJr)
- [Guilherme](https://github.com/gmcasagrande)
- [Gustavo]
- [Maycon]
- [Pâmela]

Este trabalho consiste no processo de modelagem de um sistema Orientado a Objetos, voltado a gestão de dados de uma grande universidade.

Modelagem foi feita utilizando os conhecimentos sobre UML que foram adquiridos nas disciplinas do curso.

Os diagramas representam o cadastro de diferentes tipos de pessoas que vão interagir com esse sistema:

1) Desenvolvimento de um diagrama de caso de uso que represente os seguintes cenários:

Cadastro de Pessoa Física\
Cadastro de Pessoa Jurídica\
Cadastro de Professores\
Cadastro de Fornecedores\
Cadastro de Alunos

2) Descrição dos cenários dos casos de uso construídos;
  
3) Diagrama de classe que esteja de acordo com a proposta de projeto.

---
# <p align="center">Diagrama de caso de uso</p>

<p align="center">
  <img src="dcs/DiagramaCasoDeUso.svg" alt="Diagrama de Caso de Uso" width="600"/>
</p>

# <p align="center">Diagrama de classe</p>

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

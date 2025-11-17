-- =========================================================
--  BANCO DE DADOS: Projeto Integrador - PI_ADS

-- =========================================================

DROP DATABASE IF EXISTS pi_ads;
CREATE DATABASE pi_ads CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE pi_ads;

-- =========================================================
--  ENDEREÇO
-- =========================================================
CREATE TABLE endereco (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(50), 
    cidade VARCHAR(50),
    estado CHAR(2),
    cep VARCHAR(10)
     
);

-- =========================================================
--  TABELA PESSOA FÍSICA
-- =========================================================
CREATE TABLE pessoa_fisica (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cpf CHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE,
    endereco_id BIGINT,
    FOREIGN KEY (endereco_id) REFERENCES endereco(id)
    
);

-- =========================================================
--  TABELA PESSOA JURÍDICA
-- =========================================================
CREATE TABLE pessoa_juridica (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cnpj CHAR(18) UNIQUE NOT NULL,
    razao_social VARCHAR(120),
    nome_fantasia VARCHAR(120),
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    endereco_id BIGINT,
    FOREIGN KEY (endereco_id) REFERENCES endereco(id)
);



-- =========================================================
--  ALUNO
-- =========================================================
CREATE TABLE aluno (
    id BIGINT PRIMARY KEY,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    turno ENUM('MATUTINO','VESPERTINO','NOTURNO'),
    ano_ingresso INT,
    situacao ENUM('ATIVO','TRANCADO','FORMADO','DESLIGADO'),
    FOREIGN KEY (id) REFERENCES pessoa_fisica(id)
);

-- =========================================================
--  PROFESSOR
-- =========================================================
CREATE TABLE professor (
    id BIGINT PRIMARY KEY,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    formacao VARCHAR(100),
    FOREIGN KEY (id) REFERENCES pessoa_fisica(id)
);

-- =========================================================
--  FORNECEDOR (pessoa jurídica)
-- =========================================================
CREATE TABLE fornecedor (
    id BIGINT PRIMARY KEY,
    produto_fornecido VARCHAR(120),
    email VARCHAR(100) NOT NULL,
	telefone VARCHAR(15),
    FOREIGN KEY (id) REFERENCES pessoa_juridica(id)
);

-- =========================================================
--  CURSO
-- =========================================================
CREATE TABLE curso (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    codigo_curso VARCHAR(10) UNIQUE,
    duracao_meses INT
);

-- =========================================================
--  MATRÍCULA (relação aluno/curso)
-- =========================================================
CREATE TABLE matricula (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    matricula_numero VARCHAR(20) UNIQUE,
    aluno_id BIGINT,
    curso_id BIGINT,
    data_matricula TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('MATRICULADO','CANCELADO','CONCLUIDO'),
    
    FOREIGN KEY (curso_id) REFERENCES curso(id)
    FOREIGN KEY (aluno_id) REFERENCES aluno(id)
);

-- =========================================================
--  COMANDOS DML PARA INSERÇÃO BÁSICA
-- =========================================================
INSERT INTO pessoa_fisica (nome, email, telefone, cpf) VALUES ('Airon Valentim', 'airon@senac.com', '11 912341234', '123.456.789-00');

UPDATE pessoa_fisica SET email = 'airon@yahoo.com' WHERE id = 1;

SELECT * FROM pessoa_fisica;	

DELETE FROM pessoa_fisica WHERE pessoa_id = 1;		
	

	

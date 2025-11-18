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
INSERT INTO endereco (logradouro, numero, complemento, cidade, estado, cep)
VALUES 
('Rua das Flores', '120', 'Apto 12', 'São Paulo', 'SP', '01010-000'),
('Av. Brasil', '450', NULL, 'Rio de Janeiro', 'RJ', '20030-000'),
('Rua Central', '98', 'Casa', 'Curitiba', 'PR', '80020-000');

INSERT INTO pessoa_juridica (cnpj, razao_social, nome_fantasia, email, telefone, endereco_id)
VALUES
('12.345.678/0001-99', 'Tech Solutions LTDA', 'TechSol', 'contato@techsol.com', '11 90000-1234', 1),
('98.765.432/0001-55', 'Alpha Distribuidora SA', 'AlphaDist', 'vendas@alphadist.com', '21 95555-4444', 2);

INSERT INTO aluno (id, matricula, turno, ano_ingresso, situacao)
VALUES
(1, 'A2025001', 'MATUTINO', 2025, 'ATIVO'),
(2, 'A2025002', 'NOTURNO', 2024, 'TRANCADO');

INSERT INTO professor (id, matricula, formacao)
VALUES
(3, 'P2025001', 'Engenharia da Computação');

INSERT INTO fornecedor (id, produto_fornecido, email, telefone)
VALUES
(1, 'Computadores e acessórios', 'fornec1@techsol.com', '11 98888-7777'),
(2, 'Material de escritório', 'fornec2@alphadist.com', '21 97777-8888');

INSERT INTO curso (nome, codigo_curso, duracao_meses)
VALUES
('Análise e Desenvolvimento de Sistemas', 'ADS01', 24),
('Administração', 'ADM01', 36),
('Redes de Computadores', 'RED01', 24);

INSERT INTO matricula (matricula_numero, aluno_id, curso_id, status)
VALUES
('M2025001', 1, 1, 'MATRICULADO'),
('M2025002', 2, 3, 'CANCELADO');


UPDATE pessoa_fisica SET email = 'airon@yahoo.com' WHERE id = 1;

SELECT * FROM endereco;
SELECT * FROM pessoa_fisica;
SELECT * FROM pessoa_juridica;
SELECT * FROM aluno;
SELECT * FROM professor;
SELECT * FROM fornecedor;
SELECT * FROM curso;
SELECT * FROM matricula;

DELETE FROM pessoa_fisica WHERE pessoa_id = 1;		
	

	

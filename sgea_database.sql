PRAGMA foreign_keys = ON;

BEGIN TRANSACTION; -- Serve para que, caso tenha algum erro no meio do caminho, nada seja inserido na tabela parcialmente

CREATE TABLE IF NOT EXISTS  usuario (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone CHAR(15) UNIQUE NOT NULL,
    instituicao TEXT NOT NULL,
    email TEXT UNIQUE,
    senha CHAR(30) NOT NULL,
    perfil TEXT DEFAULT "aluno"
);

COMMIT;

-- Script de criação e população do banco de dados SGEA


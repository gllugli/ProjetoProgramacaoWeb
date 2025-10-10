PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS  usuario (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone CHAR(15) UNIQUE NOT NULL,
    instituicao TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    senha CHAR(30) NOT NULL,
    perfil TEXT DEFAULT 'aluno'
);

CREATE TABLE IF NOT EXISTS evento (
    id_evento INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo TEXT NOT NULL,
    nome_evento TEXT UNIQUE NOT NULL,
    descricao TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    horario TIME NOT NULL,
    local_evento TEXT NOT NULL,
    qtd_participantes INTEGER,
    id_organizador_fk INTEGER NOT NULL,
    FOREIGN KEY (id_organizador_fk) REFERENCES usuario (id_usuario)
);

CREATE TABLE IF NOT EXISTS inscricao (
    id_inscricao INTEGER PRIMARY KEY AUTOINCREMENT,
    data_inscricao DATE,
    id_usuario_fk INTEGER NOT NULL,
    id_evento_fk INTEGER NOT NULL,
    FOREIGN KEY (id_usuario_fk) REFERENCES usuario (id_usuario),
    FOREIGN KEY (id_evento_fk) REFERENCES evento (id_evento)
    UNIQUE (id_usuario_fk, id_evento_fk)
);

CREATE TABLE IF NOT EXISTS certificado (
    id_certificado INTEGER PRIMARY KEY AUTOINCREMENT,
    data_emissao DATE NOT NULL,
    codigo_validacao TEXT UNIQUE NOT NULL,
    id_usuario_fk INTEGER NOT NULL,
    id_evento_fk INTEGER NOT NULL,
    FOREIGN KEY (id_usuario_fk) REFERENCES usuario (id_usuario),
    FOREIGN KEY (id_evento_fk) REFERENCES evento (id_evento)
);

-- Script de criação e população do banco de dados SGEA

-- Usuários
INSERT INTO usuario (nome, telefone, instituicao, email, senha, perfil)
VALUES
('João Silva', '61999999999', 'Universidade de Brasília', 'joao@unb.br', '12345', 'organizador'),
('Maria Oliveira', '61988888888', 'IFB', 'maria@ifb.edu.br', 'abcde', 'aluno'),
('Carlos Pereira', '61977777777', 'Uniceub', 'carlos@uniceub.br', 'senha', 'aluno');

-- Eventos
INSERT INTO evento (tipo, nome_evento, descricao, data_inicio, data_fim, horario, local_evento, qtd_participantes, id_organizador_fk)
VALUES
('Palestra', 'Inteligência Artificial no Cotidiano', 'Discussão sobre IA aplicada à educação', '2025-10-15', '2025-10-15', '14:00', 'Auditório Central', 100, 1),
('Minicurso', 'Introdução ao Django', 'Curso prático de criação de aplicações web com Python e Django', '2025-10-20', '2025-10-21', '09:00', 'Laboratório 2', 25, 1);

-- Inscrições
INSERT INTO inscricao (data_inscricao, id_usuario_fk, id_evento_fk)
VALUES
('2025-10-10', 2, 1),
('2025-10-11', 3, 1),
('2025-10-12', 2, 2);

-- Certificados
INSERT INTO certificado (data_emissao, codigo_validacao, id_usuario_fk, id_evento_fk)
VALUES
('2025-10-16', 'ABC123XYZ', 2, 1),
('2025-10-17', 'DEF456UVW', 3, 1);


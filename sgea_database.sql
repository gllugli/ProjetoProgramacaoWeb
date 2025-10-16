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
INSERT OR IGNORE INTO cadastro_eventos_ceub_usuario (nome, telefone, instituicao, email, senha, perfil)
VALUES
('Prof Felippe Pires', '61999999999', 'CEUB', 'prof.felippe.adm@ceub.edu', '12345', 'organizador'),
('Gabriel Lugli', '61988888888', 'CEUB', 'gabriel.lugli@sempreceub.com', 'abcde', 'aluno'),
('Pedro Augusto', '61977777777', 'CEUB', 'pedro.augusto@sempreceub.com', 'senha', 'aluno'),
('Gustavo Vieira', '61977777777', 'CEUB', 'gustavo.vieira@sempreceub.com', 'senha', 'aluno'),
('Arthur', '61977777777', 'CEUB', 'arthur@sempreceub.com', 'senha', 'aluno');

-- Eventos
INSERT OR IGNORE INTO cadastro_eventos_ceub_evento (tipo, nome_evento, descricao, data_inicio, data_fim, horario, local_evento, qtd_participantes, id_organizador_fk_id)
VALUES
('Palestra', 'Ciência de Dados Aplicada à Gestão e à Saúde', '', '2025-10-9', '2025-10-9', '11:00', 'Auditório do Bloco 2', 0, 1),
('Minicurso', 'Introdução ao Django', 'Curso prático de criação de aplicações web com Python e Django', '2025-10-20', '2025-10-21', '09:00', 'Laboratório 2', 25, 1);

-- Inscrições
INSERT OR IGNORE INTO cadastro_eventos_ceub_inscricao (data_inscricao, id_usuario_fk_id, id_evento_fk_id)
VALUES
('2025-10-10', 2, 1),
('2025-10-11', 3, 1),
('2025-10-12', 2, 2);

-- Certificados
INSERT OR IGNORE INTO cadastro_eventos_ceub_certificado (data_emissao, codigo_validacao, id_usuario_fk_id, id_evento_fk_id)
VALUES
('2025-10-16', 'ABC123XYZ', 2, 1),
('2025-10-17', 'DEF456UVW', 3, 1);


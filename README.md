# Sistema de Gestão de Eventos Acadêmicos (SGEA)

**Disciplina:** Programação Web  
**Instituição:** Centro Universitário de Brasília – UniCEUB  
**Desenvolvido por:** Gabriel Lugli, Pedro Augusto, Gustavo Vieira, Arthur
**Ano:** 2025  

---

## Descrição Geral

O Sistema de Gestão de Eventos Acadêmicos (SGEA) é uma aplicação web desenvolvida em Django, com o objetivo de gerenciar eventos acadêmicos, como seminários, palestras, minicursos e semanas acadêmicas, com inspiração como um sistema para auxiliar o CEUB em sua semana do EnCUCA.  

O projeto foi desenvolvido como parte da disciplina Programação Web, com foco no backend (Django + ORM) e na modelagem de dados relacional (SQLite3).

---

## Objetivos do Sistema

O sistema permite:

- Cadastro e autenticação de usuários (alunos, professores e organizadores);
- Criação e gerenciamento de eventos por organizadores;
- Inscrição de participantes (alunos e professores) em eventos disponíveis;
- Emissão de certificados com código de validação único (UUID);
- Integração total com o banco de dados SQLite3 por meio do ORM do Django.

---

## Estrutura do Projeto

```
ProjetoProgramacaoWeb/
│
├── manage.py
├── db.sqlite3
├── requirements.txt
├── sgea_database.sql
│
├── cadastro_eventos_ceub/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── views.py
│   ├── settings.py
│   ├── urls.py
│   ├── migrations/
│   │   ├── __init__.py
│   │   └── 0001_initial.py
│
└── README.md
```

---

## Tecnologias Utilizadas

- Python 3.11
- Django 5.2
- SQLite3
- UUID (para geração de códigos únicos)
- Figma (para o protótipo da interface)

---

## Protótipo do Front-End

Link: https://www.figma.com/design/e4rUyxbxgM4tpdW8pQqsDY/ProjetoPrograma%C3%A7%C3%A3oWeb---SGEA?node-id=0-1&t=3kPyuMvGnF8yyWHT-1

---

## Como Executar o Projeto

1. Clonar o repositório
```
git clone https://github.com/gllugli/ProjetoProgramacaoWeb.git
cd ProjetoProgramacaoWeb
```

2. Criar e ativar o ambiente virtual
```
python -m venv venv
venv\Scripts\activate
```

3. Instalar as dependências
```
pip install -r requirements.txt
```

4. Aplicar as migrações
```
python manage.py migrate
```

5. Executar o servidor
```
python manage.py runserver
```

Acesse o sistema em:  
http://127.0.0.1:8000/admin

Usuário de teste: admin  
Senha: admin123  

---

## Banco de Dados

- O arquivo db.sqlite3 já está migrado e populado.  
- O arquivo sgea_database.sql contém o script de criação e inserção de dados do banco.  
- As tabelas seguem o padrão gerado automaticamente pelo ORM do Django:
  - cadastro_eventos_ceub_usuario
  - cadastro_eventos_ceub_evento
  - cadastro_eventos_ceub_inscricao
  - cadastro_eventos_ceub_certificado

---

## Funcionalidades Principais

1. Cadastro de Usuários  
   Alunos e professores podem se cadastrar, enquanto organizadores são criados por administradores.  

2. Cadastro de Eventos  
   Organizadores criam eventos com controle de vagas e datas.  

3. Inscrição em Eventos  
   Usuários podem se inscrever em eventos publicados e com vagas disponíveis.  

4. Emissão de Certificados  
   Certificados gerados automaticamente para usuários inscritos em eventos concluídos.  

5. Autenticação de Usuário  
   Login seguro via Django Admin e controle de perfis.

---

## Entregáveis da Disciplina

- Documento de requisitos e casos de uso  
- Modelos Django e banco de dados funcional (db.sqlite3 + sgea_database.sql)  
- Protótipo de interface (Figma)  
- Código fonte completo com README.md e requirements.txt  

---

## Conclusão

Este projeto demonstra a aplicação prática dos conceitos de desenvolvimento web backend com Django, modelagem de dados relacional e integração entre camadas de sistema.  

O SGEA representa uma solução escalável e didática para gestão de eventos acadêmicos, servindo como base para futuras extensões (como portal público de eventos e emissão automática de certificados em PDF).

---

Projeto desenvolvido para fins acadêmicos, com foco no aprendizado de boas práticas de desenvolvimento web.

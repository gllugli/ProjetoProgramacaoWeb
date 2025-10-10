# Sistema de Gestão de Eventos Acadêmicos (SGEA)
(Projeto ainda em desenvolvimento)

O Sistema de Gestão de Eventos Acadêmicos (SGEA) é um sistema web desenvolvido em Django com o objetivo de gerenciar eventos acadêmicos, como seminários, palestras, minicursos e semanas acadêmicas.  
Este projeto foi desenvolvido como parte da disciplina **Programação Web**, com foco em backend e modelagem de dados.

---

## Objetivo do Sistema

O sistema permite:
- Cadastro e autenticação de usuários (alunos, professores e organizadores);
- Criação e gerenciamento de eventos acadêmicos;
- Inscrição de usuários em eventos;
- Emissão de certificados para participantes;
- Integração com banco de dados SQLite via ORM do Django.

---

## Estrutura do Projeto

```
ProjetoProgramacaoWeb/
│
├── manage.py
├── db.sqlite3
│
├── sgea_project/
│   ├── settings.py
│   ├── urls.py
│   ├── models.py
│   ├── admin.py
│   ├── views.py
│   ├── migrations/
│
└── README.md
```

---

## Tecnologias Utilizadas

- Python 3.11
- Django 5.2
- SQLite3
- UUID para geração de códigos únicos de certificado

---

## Como Executar o Projeto

### 1. Clonar o repositório
```bash
git clone https://github.com/gllugli/ProjetoProgramacaoWeb.git
cd ProjetoProgramacaoWeb
```

### 2. Criar e ativar o ambiente virtual
```bash
python -m venv venv
venv\Scripts\activate
```

### 3. Instalar as dependências
```bash
pip install -r requirements.txt
```

### 4. Aplicar as migrações
```bash
python manage.py makemigrations
python manage.py migrate
```

### 5. Criar o superusuário
```bash
python manage.py createsuperuser
```

### 6. Iniciar o servidor
```bash
python manage.py runserver
```

Acesse no navegador: http://127.0.0.1:8000/admin

---

## Desenvolvido por

**Gabriel Lugli**  
Disciplina: Programação Web  
Instituição: Centro Universitário de Brasília - UniCEUB  
Ano: 2025

---

Projeto criado para fins acadêmicos, com foco no aprendizado de desenvolvimento web backend usando Django.

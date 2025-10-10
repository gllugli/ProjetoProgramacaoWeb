from django.db import models
import uuid


class Usuario(models.Model):
    nome = models.CharField(max_length=100)
    telefone = models.CharField(max_length=15, unique=True)
    instituicao = models.CharField(max_length=100)
    email = models.CharField(max_length=100, unique=True)
    senha = models.CharField(max_length=30)
    perfil = models.CharField(max_length=20, default='aluno')


class Evento(models.Model):
    tipo = models.CharField(max_length=50)
    nome_evento = models.CharField(max_length=100, unique=True)
    descricao = models.TextField(null=True)
    data_inicio = models.DateField()
    data_fim = models.DateField()
    horario = models.TimeField()
    local_evento = models.CharField(max_length=50)
    qtd_participantes = models.IntegerField(null=True)
    id_organizador_fk = models.ForeignKey(
        Usuario, on_delete=models.CASCADE, related_name='eventos_organizados'
        )


class Inscricao(models.Model):
    data_inscricao = models.DateField(auto_now_add=True)
    id_usuario_fk = models.ForeignKey(
        Usuario, on_delete=models.CASCADE, related_name='inscricoes'
        )
    id_evento_fk = models.ForeignKey(Evento, on_delete=models.CASCADE)


class Certificado(models.Model):
    data_emissao = models.DateField()
    codigo_validacao = models.UUIDField(default=uuid.uuid4, unique=True)
    id_usuario_fk = models.ForeignKey(
        Usuario, on_delete=models.CASCADE, related_name='certificados'
        )
    id_evento_fk = models.ForeignKey(Evento, on_delete=models.CASCADE)

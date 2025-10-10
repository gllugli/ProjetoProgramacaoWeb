# Arquivo feito com auxílio do Chat. Aprendi essa maneira de teste durante o processo de programar o BD

from django.contrib import admin
from .models import Usuario, Evento, Inscricao, Certificado

@admin.register(Usuario)
class UsuarioAdmin(admin.ModelAdmin):
    list_display = ('nome', 'telefone', 'instituicao', 'perfil')
    search_fields = ('nome', 'email')

@admin.register(Evento)
class EventoAdmin(admin.ModelAdmin):
    list_display = ('nome_evento', 'tipo', 'data_inicio', 'id_organizador_fk')
    list_filter = ('tipo', 'data_inicio')
    search_fields = ('nome_evento',)

@admin.register(Inscricao)
class InscricaoAdmin(admin.ModelAdmin):
    list_display = ('id_usuario_fk', 'id_evento_fk', 'data_inscricao')
    ordering = ('-data_inscricao',)

@admin.register(Certificado)
class CertificadoAdmin(admin.ModelAdmin):
    list_display = ('codigo_validacao', 'id_usuario_fk', 'id_evento_fk', 'data_emissao')
    list_filter = ('data_emissao',)

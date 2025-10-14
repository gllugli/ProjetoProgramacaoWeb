from django.shortcuts import render


def login(request):
    return render(request,
                  'C:/ProjetoProgramacaoWeb/cadastro_eventos_ceub/'
                  'templates/login.html', {})

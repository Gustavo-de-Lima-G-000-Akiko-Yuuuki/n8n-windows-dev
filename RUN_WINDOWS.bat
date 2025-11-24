@echo off
title n8n Local - Dev: Akiko_Yuuki
setlocal EnableDelayedExpansion

REM ============================================================
REM    CABECALHO / MARCA D'AGUA
REM    https://github.com/Gustavo-de-Lima-G-000-Akiko-Yuuuki
REM ============================================================
echo.
echo ============================================================
echo           AUTOMACAO DE AMBIENTE LOCAL N8N
echo.
echo    Desenvolvido por: Gustavo de Lima Garcia (Akiko_Yuuki)
echo ============================================================
echo.

REM --- Verificacao de Requisito: Node.js/NPM ---
where npm >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo [ERRO] O NPM - Node.js - nao foi encontrado.
    echo Para instalar o n8n, voce precisa do Node.js instalado.
    echo Baixe em: https://nodejs.org/
    pause
    exit /b
)

REM --- Verificacao do n8n ---
where n8n >nul 2>&1

IF %ERRORLEVEL% NEQ 0 (
    echo =======================================
    echo   O n8n nao foi encontrado no sistema.
    echo =======================================
    echo.
    
    set /p "resposta=Deseja instalar o n8n agora? [Y/N]: "

    if /I "!resposta!"=="Y" (
        echo.
        echo Instalando n8n globalmente...
        echo (Ignore os avisos 'WARN' ou 'deprecated', isso e normal)
        echo Isso pode levar alguns minutos...
        echo.
        
        call npm install -g n8n

        echo.
        echo Atualizando caminhos do sistema...
        
        REM --- CORRECAO AQUI ---
        REM O Windows nao atualiza o PATH em tempo real.
        REM Forcamos a leitura do local de instalacao do NPM:
        for /f "tokens=*" %%a in ('npm config get prefix') do set "NPM_PREFIX=%%a"
        set "PATH=!NPM_PREFIX!;!PATH!"
        REM ---------------------

        echo Verificando instalacao...
        where n8n >nul 2>&1
        
        IF !ERRORLEVEL! NEQ 0 (
            echo.
            echo ========================================================
            echo ATENCAO: O n8n foi instalado, mas o Windows nao o viu.
            echo Isso e normal na primeira vez.
            echo.
            echo Tente fechar esta janela e rodar o script novamente.
            echo ========================================================
            pause
            exit /b
        ) ELSE (
            echo [SUCESSO] Instalacao concluida!
        )
    ) ELSE (
        echo.
        echo Instalacao cancelada pelo usuario.
        pause
        exit /b
    )
) ELSE (
    echo [OK] n8n encontrado no sistema!
)

REM Define a pasta de trabalho para o perfil do usuario
cd /d "%USERPROFILE%"

echo.
echo ============================================================
echo    Obrigado por utilizar esta ferramenta!
echo    Iniciando servidor n8n...
echo ============================================================
echo.
echo Pressione Ctrl+C para encerrar o servidor.
echo.

REM Inicia o n8n
call n8n

pause
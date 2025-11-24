@echo off
title n8n Local - Dev: Akiko_Yuuki
setlocal EnableDelayedExpansion

REM ============================================================
REM    CABECALHO
REM ============================================================
echo.
echo ============================================================
echo           AUTOMACAO DE AMBIENTE LOCAL N8N
echo.
echo    Desenvolvido por: Gustavo de Lima Garcia (Akiko_Yuuki)
echo ============================================================
echo.

REM --- 1. Busca o caminho do NPM antes de tudo ---
echo Verificando configuracoes do Node.js...
where npm >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo [ERRO] Node.js nao encontrado. Instale em https://nodejs.org/
    pause
    exit /b
)

REM Pega o caminho de instalacao global do NPM e adiciona ao PATH
for /f "tokens=*" %%a in ('npm config get prefix') do set "NPM_PREFIX=%%a"
set "PATH=!NPM_PREFIX!;!NPM_PREFIX!\bin;!PATH!"

REM --- 2. Verifica se o n8n existe ---
:VERIFICAR_N8N
where n8n >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    goto INICIAR_PROGRAMA
)

REM --- 3. Se nao encontrou, pergunta se quer instalar ---
echo.
echo =======================================
echo   O n8n nao foi detectado neste computador.
echo =======================================
echo.
set "resposta="
set /p "resposta=Deseja instalar o n8n agora? [Y/N]: "

if /I "!resposta!"=="Y" goto INSTALAR
if /I "!resposta!"=="N" goto CANCELAR
REM Se der enter sem digitar nada, assume cancelar
goto CANCELAR

:INSTALAR
echo.
echo Instalando n8n globalmente...
echo Aguarde, isso pode demorar alguns minutos...
echo.
call npm install -g n8n

echo.
echo Verificando se a instalacao funcionou...
where n8n >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    echo [SUCESSO] n8n instalado corretamente!
    goto INICIAR_PROGRAMA
) ELSE (
    echo.
    echo [ERRO] Ocorreu um erro na instalacao ou o Windows nao atualizou o caminho.
    echo Tente fechar e abrir o script novamente.
    pause
    exit /b
)

:CANCELAR
echo.
echo Instalacao cancelada pelo usuario.
pause
exit /b

:INICIAR_PROGRAMA
echo.
echo [OK] n8n encontrado!
echo.
cd /d "%USERPROFILE%"
echo ============================================================
echo    Iniciando servidor n8n...
echo    Pressione Ctrl+C para parar.
echo ============================================================
echo.

call n8n

pause

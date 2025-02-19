@echo off
cd /d %~dp0
REM Cria ambiente virtual se não existir
if not exist "venv" (
    python -m venv venv
)

REM Ativa ambiente virtual
call .\venv\Scripts\activate.bat

REM Instala dependencias
pip install -r requirements.txt
pip install .

REM seta variaveis de ambiente
set SPOT_CLIENT_ID=7cf6017e458346039146bbfaa9189072
set SPOT_CLIENT_SECRET=199e28e8eee945b384101cc1eda57b10
set SPOT_REDIRECT_URI=https://google.com/
set YT_CLIENT_ID=YOUR_GOOGLE_CLIENT_ID
set YT_CLIENT_SECRET=YOUR_GOOGLE_CLIENT_SECRET

REM Roda o app
python run.py
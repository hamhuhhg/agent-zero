@echo off
echo Creating virtual environment...
IF NOT EXIST venv (
    python -m venv venv
)

echo Activating virtual environment...
call venv\Scripts\activate

echo Installing dependencies...
pip install -r requirements.txt

echo Preparing application...
python prepare.py

echo Starting application...
python run_ui.py --host="0.0.0.0" --port=80

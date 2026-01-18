@echo off
chcp 65001 > nul
echo ========================================
echo Python 들여쓰기 오류 자동 수정
echo ========================================

echo.
echo 🔍 Python 파일 검사 중...
echo.

REM autopep8이 설치되어 있는지 확인
python -m pip show autopep8 > nul 2>&1
if errorlevel 1 (
    echo ⚠️ autopep8이 설치되어 있지 않습니다.
    echo 설치 중...
    python -m pip install autopep8
)

echo.
echo 🔧 들여쓰기 수정 중...
echo.

REM 모든 Python 파일에 대해 들여쓰기 수정
for %%f in (*.py) do (
    echo   - %%f 수정 중...
    python -m autopep8 --in-place --aggressive --aggressive "%%f"
)

echo.
echo ========================================
echo ✅ 수정 완료!
echo ========================================
pause

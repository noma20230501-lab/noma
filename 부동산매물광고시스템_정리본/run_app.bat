@echo off
chcp 65001 >nul
echo ================================================
echo 부동산 매물 광고 시스템 실행
echo ================================================
echo.
echo 웹 브라우저가 자동으로 열립니다...
echo 종료하려면 Ctrl+C를 누르세요.
echo.
streamlit run streamlit_app.py
pause

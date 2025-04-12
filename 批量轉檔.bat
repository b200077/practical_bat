@echo off
chcp 65001

set /p dire="輸入目錄路徑:"
echo 輸入的目錄路徑是: "%dire%"
set /p ext="請輸入目標副檔名: "
set /p newext="請輸入轉換副檔名: "


if not exist "%dire%" (
    echo 錯誤：輸入目錄不存在。
    pause
    exit /b
)

set count=0
for %%f in ("%dire%\*.%ext%") do (
    ffmpeg -i "%%f" "%dire%\%%~nf.%newext%"
    if errorlevel 1 (
        echo 錯誤：轉換文件 %%f 時發生問題。
	pause
    ) else (
        set /a count+=1
	if exist "%input_dir%\%%~nf.%newext%" (
        echo 轉檔成功，刪除原始檔案: %%f
        del "%%f"
    	) else (
        echo 轉檔失敗，保留原始檔案: %%f
    	)
    )
)

if %count% gtr 0 (
    echo 轉換完成！共轉換了 %count% 個文件。
) else (
    echo 沒有找到匹配的文件，請檢查輸入的副檔名。
)
pause
endlocal

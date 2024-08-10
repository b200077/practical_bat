@echo off
set /p choice="開啟Hyper-V? (y/n): "
if /i "%choice%"=="y" (
    echo 啟用 Hyper-V...
    bcdedit /set hypervisorlaunchtype auto
    echo 需要重啟電腦來完成設定。
    pause
) else if /i "%choice%"=="n" (
    echo 禁用 Hyper-V...
    bcdedit /set hypervisorlaunchtype off
    echo 需要重啟電腦來完成設定。
    pause
) else (
    echo 錯誤: 無效的輸入。
    pause
)

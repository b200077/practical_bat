@echo off
set /p choice="�}��Hyper-V? (y/n): "
if /i "%choice%"=="y" (
    echo �ҥ� Hyper-V...
    bcdedit /set hypervisorlaunchtype auto
    echo �ݭn���ҹq���ӧ����]�w�C
    pause
) else if /i "%choice%"=="n" (
    echo �T�� Hyper-V...
    bcdedit /set hypervisorlaunchtype off
    echo �ݭn���ҹq���ӧ����]�w�C
    pause
) else (
    echo ���~: �L�Ī���J�C
    pause
)

@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=
@REM 需要代理则设置，则按照下面的格式示例设置 如果使用系统级别全局代理则直接注释掉即可
@REM set proxy environment variable for shell like this, if u need it.
set HTTP_PROXY=http://127.0.0.1:7890
set HTTPS_PROXY=http://127.0.0.1:7890

call webui.bat

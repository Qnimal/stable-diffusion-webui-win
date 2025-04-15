README
==================

·[中文](#简介) | [En](#introduction)


### 简介
此项目基于[stable-diffusion-webui]([https://baidu.com](https://github.com/AUTOMATIC1111/stable-diffusion-webui)) fork
添加了对于windows中使用git bash shell和代理的支持，为windows用户提供更好的支持
### 部分原理
1、windows环境的python在创建虚拟环境时，表现和linux略有不同，前者会将执行文件等放入Scripts而非bin，所以虽然shell支持执行，但是却不会成功<br>
2、命令行环境的工具，如git，在windows下不会走系统代理，如[clash for windows](https://github.com/cfwtf/clash_for_windows)  
开启代理软件的全局代理模式又会影响软件启动后的使用，加上平时使用体验不好，一般都是启用rule模式进行。
    
基于以上原因，我们日常使用git一般都需要设置git的config来配置代理，或通过ssh的config和git内置的connect来执行代理模式
而项目中的一些基础依赖是通过https链接从github进行下载，对一部分用户不太友好，故而fork了这个项目对这一部分做了调整
### 使用
在配置文件中***默认***启用了代理指向本地的7890端口，为保持统一性，配置统一放在-user文件中:  

  
[web-user.bat](./web-user.bat)
```Bash
set HTTP_PROXY=http://127.0.0.1:7890
set HTTPS_PROXY=http://127.0.0.1:7890
```
[webui-user-windows-bash.sh](./webui-user-windows-bash.sh)
```Bash
export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
```
如果需添加个人逻辑方便个人使用 需要留意:  
·bat的调用逻辑是 执行[webui-user.bat](./web-user.bat)去call webui.bat<br>
·bash的逻辑是webui-windows-bash.sh通过source加载了[webui-user-windows-bash.sh](./webui-user-windows-bash.sh)中的环境变量

git bash windows：运行[webui-windows-bash.sh](./webui-windows-bash.sh)<br>
cmd ：运行[webui-user.bat](./webui-user.bat)

***

  
### Introduction
This project is fork from [stable-diffusion-webui]([https://baidu.com](https://github.com/AUTOMATIC1111/stable-diffusion-webui))
added support for using git bash shell and proxy in Windows, providing better support for Windows users
### Partial principle
1. Python for Windows environment performs slightly differently from Linux when creating virtual environments.The former places executable files and other files into Scripts instead of bins  
so although the shell supports execution, it will not succeed
2. Tools in command-line environments, such as Git, do not run system proxies on Windows, such as Clash for Windows  
Enabling the global proxy mode of the proxy software can also affect its use after startup.  
For the reason above and the bad user experience of global than rule mode, proxy using generally done by enabling the rule mode.  
Based on the above reasons, in our daily use of Git, we usually need to set up Git's config to configure proxies, or execute proxy mode through SSH's config and Git's built-in connect.  
However, some basic dependencies in the project are downloaded from GitHub through HTTPS links, which is not very user-friendly for some users. Therefore, we forked this project and made adjustments to this part
### Usage
The proxy pointing to the local port 7890 is enabled ***by default*** in the configuration file.
To maintain consistency, the configuration is uniformly placed in the - user file:  

  
[web-user.bat](./web-user.bat)
```Bash
set HTTP_PROXY=http://127.0.0.1:7890
set HTTPS_PROXY=http://127.0.0.1:7890
```
[webui-user-windows-bash.sh](./webui-user-windows-bash.sh)
```Bash
export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
```
if personal logic needs to be added for personal use, please note that:  
·the call logic of bat is to execute [webui-user.bat](./webui-user.bat) to call webui.bat<br>
·while the logic of bash is [webui-wwindows-bash.sh](./webui-wwindows-bash.sh), which records the environment variables in webui-user-wwindows-bash.sh through source
    
git bash windows：run[webui-windows-bash.sh](./webui-windows-bash.sh)<br>
cmd ：run[webui-user.bat](./webui-user.bat)

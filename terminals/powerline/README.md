# PowerLine

## pip
```bash
$ cd ~
$ wget https://bootstrap.pypa.io/get-pip.py
$ sudo python get-pip.py
```

## git
```bash
$ sudo apt install git -y
```

## PowerLine

記住 "Location" 的位置

``` bash
$ pip install --user git+git://github.com/powerline/powerline
$
$ pip show powerline-status
Name: powerline-status
Version: 2.5.dev9999+git.d53695a3fd244d6ceb9607c7407b098eba32e5e7
Summary: The ultimate statusline/prompt utility.
Home-page: https://github.com/powerline/powerline
Author: Kim Silkebaekken
Author-email: kim.silkebaekken+vim@gmail.com
License: MIT
Location: /home/fuyuanli/.local/lib/python2.7/site-packages # 記起來
Requires: 
```

安裝到 `.bashrc` 

```bash
$ cp ~/.bashrc ~/.bashrc.bak
$ echo ". /home/`whoami`/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh" >> ~/.bashrc
$ pkill Xorg
```

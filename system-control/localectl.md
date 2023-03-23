# localectl - 控制系统语系和键盘布局

- 通过 `man localectl` 查看帮助文档

- 通过 `localectl {-h | --help}` 查看帮助信息

> ## 查询系统语系

```shell
chen@WGC1NJ1W4DTQ2:~$ localectl
   System Locale: LANG=C.UTF-8
       VC Keymap: n/a
      X11 Layout: us
       X11 Model: pc105
```

> ## 查询当前环境的语系

```shell
chen@WGC1NJ1W4DTQ2:~$ locale
LANG=C.UTF-8
LANGUAGE=
LC_CTYPE="C.UTF-8"
LC_NUMERIC="C.UTF-8"
LC_TIME="C.UTF-8"
LC_COLLATE="C.UTF-8"
LC_MONETARY="C.UTF-8"
LC_MESSAGES="C.UTF-8"
LC_PAPER="C.UTF-8"
LC_NAME="C.UTF-8"
LC_ADDRESS="C.UTF-8"
LC_TELEPHONE="C.UTF-8"
LC_MEASUREMENT="C.UTF-8"
LC_IDENTIFICATION="C.UTF-8"
LC_ALL=
```

> ## 将图形化界面改为英文界面

```shell
chen@WGC1NJ1W4DTQ2:~$ localectl set-locale LANG=en_US.utf8
chen@WGC1NJ1W4DTQ2:~$ systemctl isolate multi-user.target
chen@WGC1NJ1W4DTQ2:~$ systemctl isolate graphical.target
```

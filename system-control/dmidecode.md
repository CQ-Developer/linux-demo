# dmidocde - DMI表解码器

***dmidocde*** 是一个将计算机DMI表内容导出为人类可阅读格式的工具

</br>

## 简单用法

```txt
dmidecode -t {type}

type : 1  => 系统信息
     : 4  => CPU信息
     : 9  => 主板插槽信息
     : 17 => 内存或内存插槽信息
```

</br>

# 常用于检测硬件的命令

- gdisk : 可以使用 **gdisk -l {device}** 将分区表列出

- dmesg : 显示内核运行中产生的各种信息

- vmstat : 可以分析系统CPU/RAM/IO目前的状态

- lspci : 列出系统所有的PCI设备

- lsusb : 列出系统的USB端口和设备

- iostat : 与vmstat类似, 列出系统的CPU和接口设备的IO状态

</br>

> ## lspci


```shell
# 查看系统的PCI设备

chen@WGC1NJ1W4DTQ2:~$ lspci
4248:00:00.0 3D controller: Microsoft Corporation Device 008e
a9c4:00:00.0 System peripheral: Red Hat, Inc. Device 105a (rev 01)
b2e7:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio console (rev 01)
c263:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem (rev 01)
cf04:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem (rev 01)
f522:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem (rev 01)

# 这些数据均来源于 **/proc/bus/pci** 目录
```

```shell
# 查看某个设备的详细信息

chen@WGC1NJ1W4DTQ2:~$ lspci -s f522:00:00.0 -vv
f522:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem (rev 01)
        Subsystem: Red Hat, Inc. Virtio filesystem
        Physical Slot: 1499218917
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 64
        Region 0: Memory at 9ffe0c000 (64-bit, non-prefetchable) [size=4K]
        Region 2: Memory at 9ffe0d000 (64-bit, non-prefetchable) [size=4K]
        Region 4: Memory at 9ffe0e000 (64-bit, non-prefetchable) [size=4K]
        Capabilities: <access denied>
        Kernel driver in use: virtio-pci
lspci: Unable to load libkmod resources: error -12

# 以上输出的详细信息的内容可以查看 **/usr/share/misc/pci.ids** 文件, 并且可以通过 `updae-pciids` 命令联网更新该文件的内容
```

</br>

> ## lsusb

```shell
# 列出系统当前的USB状态

chen@WGC1NJ1W4DTQ2:~$ lsusb
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

# 可以使用 *-t* 选项以树状结构输出
```


</br>

> ## iostat

该命令需要安装 *sysstat* 包

*iostat [-c | -d] [-k | -m] [-t] [intervals] [times]*
- **-c** => 仅显示CPU信息
- **-d** => 仅显示存储设备信息
- **-k** => 以KB显示大小
- **-m** => 以MB显示大小
- **-t** => 显示时间
- **intervals** => 轮询间隔时间(秒)
- **times** => 轮询次数

```shell
# 显示系统CPU和存储设备状态

chen@WGC1NJ1W4DTQ2:~$ iostat
Linux 5.15.90.1-microsoft-standard-WSL2 (WGC1NJ1W4DTQ2)         03/23/23        _x86_64_        (4 CPU)

avg-cpu:  %user   %nice %system %iowait  %steal   %idle
           0.06    0.01    0.08    0.05    0.00   99.81

Device             tps    kB_read/s    kB_wrtn/s    kB_dscd/s    kB_read    kB_wrtn    kB_dscd
sda               0.06         3.36         0.00         0.00      80289          0          0
sdb               0.01         0.19         0.00         0.00       4452          4          0
sdc               1.58        25.69        29.80        17.39     613085     711032     414948

# 输出分为两部分
# 上半部分显示的是CPU信息
# 下半部分显示的是存储设备相关信息
# tps => 平均每秒钟的传送次数
# kB_read/s => 开机到现在的每秒平均数据读取
# kB_wrtn/s => 开机到现在的每秒平均数据写入
# kB_read => 开机到现在总共的数据读取量
# kB_wrtn => 开机到现在总共的数据写入量
```

```shell
# 没2秒检测一次sdc, 共检测3次
chen@WGC1NJ1W4DTQ2:~$ iostat -d 2 3 sdc
Linux 5.15.90.1-microsoft-standard-WSL2 (WGC1NJ1W4DTQ2)         03/23/23        _x86_64_        (4 CPU)

Device             tps    kB_read/s    kB_wrtn/s    kB_dscd/s    kB_read    kB_wrtn    kB_dscd
sdc               1.55        25.10        29.13        16.98     613493     711944     414956


Device             tps    kB_read/s    kB_wrtn/s    kB_dscd/s    kB_read    kB_wrtn    kB_dscd
sdc               0.00         0.00         0.00         0.00          0          0          0


Device             tps    kB_read/s    kB_wrtn/s    kB_dscd/s    kB_read    kB_wrtn    kB_dscd
sdc               0.00         0.00         0.00         0.00          0          0          0
```

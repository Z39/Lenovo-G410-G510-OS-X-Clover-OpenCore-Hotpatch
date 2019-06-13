# 联想G410&G510安装macOS Catalina & macOS Mojave & High Sierra 使用说明

让你的G410&G510笔记本吃上黑苹果

[English](README-EN.md) | [中文](README.md)
 ![截图](Screen.jpg)   
### 支持列表

* 支持10.13.x 和 10.14，10.15
* ACPI补丁修复使用hotpatch方式，相关文件位于 `/CLOVER/ACPI/patched` 。
* 远景论坛ID：39军小兵张 http://i.pcbeta.com/space-uid-4472739.html
* 安装视频教程及效果展示：https://space.bilibili.com/414418614/video
* 长期维护更新QQ群：686848381 群已改为收费群了，请为技术服务付费，享受后期免费维护更新。入群5-10元，如果需要远程技术指导安装，30以上你看着给吧。


## 发布

最后发布的版本前往 [release page](https://github.com/Z39/G510-OS-X-Clover-Hotpatch/releases) 下载即可。
如果Github网络下载不太好，新增[蓝奏云](https://www.lanzous.com/b616223)  密码：8shm

## 关于打赏

如果您认可我的工作，请通过打赏支持我后续的更新(自觉打赏的人真少啊，免费的东西长久不了，难以再频繁地发布更新支持了，且用且珍惜吧。)
现已改为需要收费解压，需打赏入群。

|                                 微信                                           |                         支付宝                                       |
| ---------------------------------------------------------- | ---------------------------------------------------- |
| ![微信打赏](微信打赏.png)                                         | ![支付宝打赏](支付宝打赏.png)                           |
### 显卡
*屏蔽独显，HD4600正常，QE/CI OK,有水波纹效果，AGPM（显卡变频）正常,修复HD4600开机第二阶段花屏、开机后鼠标卡顿、播放视频卡死机等显卡问题。

### USB
* USB端口USBPorts.kext定制

### 亮度调节
* （小太阳ok，能保存亮度）F11 F12调节，箭头功能待增加。

### 声卡
* 根据小G codec信息制作的CX20757仿冒声卡（Clover已默认放入AppleALC方法驱动，不再需要其他操作，Clover会自动驱动声卡），音质不错无杂音，扬声器耳机等正常有声，插拔自动切换正常，内外置麦克风可用，睡眠唤醒后有声音，另外，HD4600外接HDMI声音输出已开启。F2 F3调节
### CPU
* CPUFriend实现变频

### 电源睡眠唤醒
* （电源管理LPC ok，电池已修正能显示并更新剩余电量，睡眠唤醒正常并支持USB鼠标唤醒，关机重启正常断电）

### 键盘
* VoodooPS2Controller或ApplePS2SmartTouchPad输入正常，附件默认使用ApplePS2SmartTouchPad，兼容Synaptics和Elan。

### 触控板
*手势嘛，实测支持三指，当然是没白苹果那么厉害，（在键盘-快捷键中找到想要实现的功能，在修改快捷键时直接三指滑动你想要的方向就可以了。比如我们要模拟白苹果的三指向上扫调出调度中心）。键控类型同上一条。

### 有线网卡
* OK

### 无线网卡
* 原装BCM43142版无解，原装AR9485有解

### 蓝牙
* 蓝牙没搞


### 摄像头
* ok

### App Store/iCloud/iMessage/Facetime
* 添加了白果三码洗白，ok


### SIP
* 关闭SIP,CsrActiveConfig值注入0x3ff，可进FireWolf OS X MAC PE

### TRIM
* 固态硬盘默认开启TRIM

### 无痛更新升级
* macOS系统无痛更新升级，支持白果一样在线商店系统更新，支持跨大版本升级

### 读卡器
* 无相机那种储存卡，USBPorts.kext的制作时无法测试。自测


### 外接显示器
* 显示器HDMI外接可用，VGA不支持。HDMI视频输出OK，HDMI声音输出OK。ps:4K，HD4600外接好像带不太动。

### 独显
* 已屏蔽

### 光驱
* 光驱OK

### 存在问题
* 1.FN箭头快捷待增加
   2.蓝牙自己搞定
   3.其他问题自测




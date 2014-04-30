#!/bin/bash
mmtt() {
    mmcomm tianshan userdebug
}

mmtthdpi() {
    mmcomm tianshan hdpi
}

mmbb() {
    mmcomm bravo userdebug
}

mmss() {
    mmcomm songshan userdebug
}

mmcomm() {
    date > /tmp/date1
    mv  prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin  prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin.real
    ln -s /usr/lib/distcc prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin
    ./check_build_target.sh $1
    . build/envsetup.sh
    #mm -j `distcc -j`  PRODUCT-htc_$1-userdebug 2>&1 |tee  ~/tmp/mmlog 
    mm -j `distcc -j`  PRODUCT-htc_$1-$2 2>&1 |tee  ~/tmp/mmlog 
    rm -f *\.d
    rm -f prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin
    mv  prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin.real  prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin
    date >> /tmp/date1
    cat /tmp/date1
    ls -l out/target/product/$1/system.img
}
mqi(){
    . build/envsetup.sh
    . cardhu_setup.sh
    make -j20
    ls -l out/target/product/cardhu/system.img
}

mqk(){
    . build/envsetup.sh
    . kernel_setup.sh
    krebuild
    ls -l out/target/product/cardhu/obj/KERNEL/arch/arm/boot/zImage
}
mq(){
    date > /tmp/date1
    mv  prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin  prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin.real
    ln -s /usr/lib/distcc prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin

    rm -f *\.d
    rm -f prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin
    mv  prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin.real  prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin
    date >> /tmp/date1
    cat /tmp/date1
    echo $1
}
fastbootFlashAll(){
    adb reboot bootloader
    sudo ~/toolchain/bin/fastboot flash system system.img
    sudo ~/toolchain/bin/fastboot flash userdata userdata.img
    sudo ~/toolchain/bin/fastboot flash ramdisk ramdisk.img
    sudo ~/toolchain/bin/fastboot reboot 
}

logcat(){
    echo `pwd`
    if [ "$1" = "" ];
    then
        logfile="logcat.log"
    else
        logfile="$1"
    fi

    echo "$logfile"
    /home/kyle/toolchain/bin/adb logcat |tee "$logfile" 
}

nvflashcardhu(){
    nvflashcmd cardhu
}
nvflashcmd(){
    PRODUCT="$1"
    mkdir nvtmp
    cp ./out/host/linux-x86/bin/nvflash nvtmp
    cp ./out/target//product/$PRODUCT/* nvtmp
    cd nvtmp
    sudo ./nvflash --bct flash.bct --setbct --odmdata 0x80080105 --configfile flash.cfg --create --bl bootloader.bin --go 
    cd `gettop`
}

syncprojectcode(){
    echo "sync $HC"
    cd $HC
    git pull
    cd -

    echo "sync $GB"
    cd $GB
    git pull
    cd -

    echo "sync $KERNEL"
    cd $KERNEL
    git pull
    cd -
}

connect_to_desktopX(){
    ssh  -p 222 -X kyle@10.9.113.202
}
connect_to_nb_desk(){
    #rdesktop -f  -K -r sound:local -r clipboard:CLIPBOARD -r disk:desktop=/home/kyle/rdesktop -u kyle_lin -d htctaipei kyle_lin_w7p.htctaipei.htc.com.tw &> /dev/null &
    remmina -c ~/bootsh/1395114018713.remmina &> /dev/null &
    #rdesktop -f -g 95%  -r sound:local -r clipboard:PRIMARYCLIPBOARD -r disk:desktop=/home/kyle/rdesktop -u kyle_lin -d htctaipei 10.116.229.210&
}

openvpn(){
sudo openconnect --script /etc/vpnc/vpnc-script https://vpntw.htc.com
}
connect_to_desktop(){
    ssh -p 222  kyle@10.9.113.202
}
connect_to_buildServer(){
    ssh -X kyle@10.112.26.172 
}
connect_to_blueserver(){
    ssh  -p 22 -X user@10.9.156.2
}

# move io for performance
function lmdd() {
echo "lmdd start"
count=$1
if [ -z "$count" ]; then
    count=64
fi
for ((i=1; i<=$count; i=i*2))
do
    size=$((256*i))
    echo "wr"
    sleep 3
    adb shell /data/bin/lmdd if=internal of=/data/datafile bs=4k count=${size} flush=1 sync=1
    adb shell "echo 3 > /proc/sys/vm/drop_caches"
    echo "rd"
    sleep 3
    adb shell /data/bin/lmdd if=/data/datafile of=internal bs=4k
done
adb shell rm /data/datafile
echo "lmdd done"
}
# file system test
function iozone() {
echo "iozone start"
size=$1
if [ -z "$size" ]; then
    size=64m
fi
adb shell /data/bin/iozone -a -o -s $size -f /data/datafile
echo "iozone done"
}
# database insertion test
function dbinsert() {
echo "database insertion"
adb shell am start -n com.example.android.notepad/.NotesList -a android.intent.action.MAIN
adb shell am start -n com.example.android.notepad/.NoteEditor -a android.intent.action.INSERT -d content://com.google.provider.NotePad/notes
sleep 18udo
adb shell am start -n com.example.android.notepad/.NoteEditor -a android.intent.action.INSERT -d content://com.google.provider.NotePad/transaction1    sleep 60
adb logcat -v time | grep -i insertResult
}

function get_estress_log(){
sudo $(which adb) pull /sdcard/htclog
sudo $(which adb) pull /data/htclog
sudo $(which adb) pull /data/estress_log
sudo $(which adb) pull /sdcard/estress_log
sudo $(which adb) pull /data/anr
sudo $(which adb) pull /data/tombstones
sudo $(which adb) pull /data/TVLog
sudo $(which adb) bugreport &> bugreport_$(date +%Y%m%d%H%MA) &
}

function rm_estress_log(){
sudo $(which adb) shell rm /sdcard/htclog/*
sudo $(which adb) shell rm /data/htclog/*
sudo $(which adb) shell rm /data/estress_log/*
sudo $(which adb) shell rm /sdcard/estress_log/*
sudo $(which adb) shell rm /data/.estress.sc*
}

nv_ram_test(){
sudo $(which adb) shell svc power stayon true
sudo $(which adb) push memtester /data/
sudo $(which adb) shell chmod 777 /data/memtester
sudo $(which adb) shell cat /proc/meminfo
}

set_trace32_font(){
    cd /opt/t32/fonts
    mkfontdir .
    xset +fp /opt/t32/fonts
    xset fp rehash

    # must be done under the original
    #Xserver user (normally not as root)
    #only temporary adding of TRACE32
    #fontdirectory or
    chkfontpath -a /opt/t32/fonts # permanent adding of the fontdirectory
    # not available under SUSE distribution
    ln -s /opt/t32/fonts # permanent adding of the fontdirectory
#    /etc/X11/fontpath.d/t32-fonts # available under FEDORA distribution
}
grep_suspend_resume(){
  grep -anr "Update\:\|early_suspend start\|late_resume start\|early_suspend end\|late_resume end\|early_suspend: start\|late_resume\: start\|early_suspend\: end\|late_resume\: end\|\[KEY\]\|suspend\: enter suspend\|suspend\: exit suspend\|suspend\: abort suspend\|PM_SUSPEND_PREPARE\|PM_POST_SUSPEND\|Restarting\|baseband_xmm_power_pm_notifier_event\|Entering suspend state LP0\|Exited suspend state LP0\|resume of devices complete" $1
}

genbinfile(){
    flash_bct=$1
    flash_cfg=$2
    hboot_img=$3
    if [ -z "$flash_bct" ];then
        flash_bct="flash.bct"
    fi
    if [ -z "$flash_cfg" ];then
        flash_cfg="flash.cfg"
    fi
    if [ -z "$hboot_img" ];then
        hboot_img="hboot.img"
    fi

    sudo $(which nvflash) --bct $flash_bct --setbct --configfile $flash_cfg --odmdata 0x40080105 --create --getpartitiontable LPT.txt --bl $hboot_img  --go --transport simulation --deviceid 0x30 --devparams 4096 2097152 14910
}

function startibus(){
ibusdaemon=$(ps -ef |grep ibus-daemon | grep -v grep)
if [ -z "$ibusdaemon" ];then
    echo "start ibus"
    ibus-daemon &
else
    echo "ibus started : $ibusdaemon"
fi
}

function startsynergys(){
synergys=$(ps -ef |grep synergys | grep -v grep)
if [ -z "$synergys" ];then
    echo "start synergys"
    synergys --config ~/.quicksynergy/synergy.conf &
else
    echo "synergys started : $synergys"
fi
}


stop_qct_service(){
    sudo adb shell stop mpdecision && sudo adb shell stop adaptive && sudo adb shell stop mpdecision && sudo adb shell stop thermald
}
restart_pnpmgr(){
    sudo adb shell stop pnpmgr && sudo adb shell start pnpmgr
}

remove_watermark_sense4(){                                                                                                                                                                                                                     
sudo adb remount
sudo adb pull /data/dalvik-cache/system@framework@services.jar@classes.dex system@framework@services.jar@classes.dex
sudo perl -pi -e 's/com\/android\/server\/ShowWatermarkService/cmm\/android\/server\/ShowWatermarkService/g' system@framework@services.jar@classes.dex
sudo adb push system@framework@services.jar@classes.dex /data/dalvik-cache/
sudo adb reboot
rm -rf system@framework@services.jar@classes.dex
}

remove_watermark_sense5(){
cd /tmp; #rm -fr framework; mkdir framework; cd framework
adb pull /system/framework/services.jar services_bak.jar
jar xf services_bak.jar; baksmali classes.dex

echo '.class public Lcom/android/server/ShowWatermarkService;
.super Landroid/app/Service;
.source "ShowWatermarkService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method' > out/com/android/server/ShowWatermarkService.smali

smali -o classes.dex out; jar cfM services.jar classes.dex META-INF/

adb remount
adb pull /system/framework/services.jar services.jar.bak
adb push services.jar /system/framework/services.jar
adb reboot
sudo rm -rf servcie_bak.jar servcie.jar
cd -
}

get_device_logs(){
    serialno=$(adb shell getprop ro.boot.serialno|sed 's///')
    mkdir $serialno
    adb pull /sdcard/htclog/ $serialno/
    adb pull /data/htclog/ $serialno/
    adb bugreport > $serialno/bugreport.txt
}

mount_ssd_share(){
     sudo mount -t cifs //andssd2.htc.com.tw/AND_SSD/andssd_shared/ /andssd2 -o user=kyle_lin,password='2wsx#EDC4rfv'
}

get_zara_dug_ram_dump(){
    ramdumpdate=$(date +"%Y%m%d%H%M%S")
    mkdir $ramdumpdate
    echo "============ Dump framebuffer ============"
    fastboot getfb $ramdumpdate/resetMSG.bmp
    echo "================ End ====================="
    echo "============ Dump ram console============"
    fastboot dump ram $ramdumpdate/LAST_KMSG.RAM 0xAFE00000  0x001E0000
    echo "================ End ====================="
    echo "============ Dump TZ log============"
    fastboot oem dump_tzlog
    echo "================ End ====================="

    echo "============ Dump CP ================="
    fastboot dump ram $ramdumpdate/CP.RAM 0x80000000 0x2000000
    echo "================ End ====================="
    echo "============ Dump AP ==============="
    fastboot dump ram $ramdumpdate/AP.RAM 0x82000000 0x3E000000
    rm $ramdump/*.hex
    echo "================ End ====================="
}

run_cfbenchmark(){
    echo "execute cf benchmark"
    adb shell am start -a android.intent.MAIN -n eu.chainfire.cfbench/eu.chainfire.cfbench.MainActivity
    adb shell input touchscreen tap 160 950
}

android_input_command_help(){
    echo '0 -->  "KEYCODE_UNKNOWN" 
    1 -->  "KEYCODE_MENU" 
    2 -->  "KEYCODE_SOFT_RIGHT" 
    3 -->  "KEYCODE_HOME" 
    4 -->  "KEYCODE_BACK" 
    5 -->  "KEYCODE_CALL" 
    6 -->  "KEYCODE_ENDCALL" 
    7 -->  "KEYCODE_0" 
    8 -->  "KEYCODE_1" 
    9 -->  "KEYCODE_2" 
    10 -->  "KEYCODE_3" 
    11 -->  "KEYCODE_4" 
    12 -->  "KEYCODE_5" 
    13 -->  "KEYCODE_6" 
    14 -->  "KEYCODE_7" 
    15 -->  "KEYCODE_8" 
    16 -->  "KEYCODE_9" 
    17 -->  "KEYCODE_STAR" 
    18 -->  "KEYCODE_POUND" 
    19 -->  "KEYCODE_DPAD_UP" 
    20 -->  "KEYCODE_DPAD_DOWN" 
    21 -->  "KEYCODE_DPAD_LEFT" 
    22 -->  "KEYCODE_DPAD_RIGHT" 
    23 -->  "KEYCODE_DPAD_CENTER" 
    24 -->  "KEYCODE_VOLUME_UP" 
    25 -->  "KEYCODE_VOLUME_DOWN" 
    26 -->  "KEYCODE_POWER" 
    27 -->  "KEYCODE_CAMERA" 
    28 -->  "KEYCODE_CLEAR" 
    29 -->  "KEYCODE_A" 
    30 -->  "KEYCODE_B" 
    31 -->  "KEYCODE_C" 
    32 -->  "KEYCODE_D" 
    33 -->  "KEYCODE_E" 
    34 -->  "KEYCODE_F" 
    35 -->  "KEYCODE_G" 
    36 -->  "KEYCODE_H" 
    37 -->  "KEYCODE_I" 
    38 -->  "KEYCODE_J" 
    39 -->  "KEYCODE_K" 
    40 -->  "KEYCODE_L" 
    41 -->  "KEYCODE_M" 
    42 -->  "KEYCODE_N" 
    43 -->  "KEYCODE_O" 
    44 -->  "KEYCODE_P" 
    45 -->  "KEYCODE_Q" 
    46 -->  "KEYCODE_R" 
    47 -->  "KEYCODE_S" 
    48 -->  "KEYCODE_T" 
    49 -->  "KEYCODE_U" 
    50 -->  "KEYCODE_V" 
    51 -->  "KEYCODE_W" 
    52 -->  "KEYCODE_X" 
    53 -->  "KEYCODE_Y" 
    54 -->  "KEYCODE_Z" 
    55 -->  "KEYCODE_COMMA" 
    56 -->  "KEYCODE_PERIOD" 
    57 -->  "KEYCODE_ALT_LEFT" 
    58 -->  "KEYCODE_ALT_RIGHT" 
    59 -->  "KEYCODE_SHIFT_LEFT" 
    60 -->  "KEYCODE_SHIFT_RIGHT" 
    61 -->  "KEYCODE_TAB" 
    62 -->  "KEYCODE_SPACE" 
    63 -->  "KEYCODE_SYM" 
    64 -->  "KEYCODE_EXPLORER" 
    65 -->  "KEYCODE_ENVELOPE" 
    66 -->  "KEYCODE_ENTER" 
    67 -->  "KEYCODE_DEL" 
    68 -->  "KEYCODE_GRAVE" 
    69 -->  "KEYCODE_MINUS" 
    70 -->  "KEYCODE_EQUALS" 
    71 -->  "KEYCODE_LEFT_BRACKET" 
    72 -->  "KEYCODE_RIGHT_BRACKET" 
    73 -->  "KEYCODE_BACKSLASH" 
    74 -->  "KEYCODE_SEMICOLON" 
    75 -->  "KEYCODE_APOSTROPHE" 
    76 -->  "KEYCODE_SLASH" 
    77 -->  "KEYCODE_AT" 
    78 -->  "KEYCODE_NUM" 
    79 -->  "KEYCODE_HEADSETHOOK" 
    80 -->  "KEYCODE_FOCUS" 
    81 -->  "KEYCODE_PLUS" 
    82 -->  "KEYCODE_MENU" 
    83 -->  "KEYCODE_NOTIFICATION" 
    84 -->  "KEYCODE_SEARCH" 
    85 -->  "TAG_LAST_KEYCODE"                                                                                     '
}

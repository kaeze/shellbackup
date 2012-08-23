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
    rdesktop -g 90% -u kyle_lin -p 2wsx#EDC4rfv -d HTCTAIPEI kyle_lin_nb.htc.com.tw
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

remove_watermark(){
sudo adb remount
sudo adb pull /data/dalvik-cache/system@framework@services.jar@classes.dex /tmp/system@framework@services.jar@classes.dex
perl -pi -e 's/com\/android\/server\/ShowWatermarkService/cmm\/android\/server\/ShowWatermarkService/g' /tmp/system@framework@services.jar@classes.dex
sudo adb push system@framework@services.jar@classes.dex /data/dalvik-cache/
sudo adb reboot
}

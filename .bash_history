
#1344494950
sudo chmod +x /usr/bin/adb 
#1344494953
sudo chmod +x /usr/bin/fastboot 
#1344494958
sudo adb reboot bootloader
#1344494961
sudo adb shell
#1344494965
adb
#1344494977
which adb
#1344494991
sudo $(which adb) reboot bootloader
#1344494998
which adb
#1344495014
sudo toolchain/bin/adb 
#1344495020
ls /usr/bin/adb 
#1344495022
ls /usr/bin/adb  -l
#1344495028
/usr/bin/adb
#1344495035
/usr/bin/adb 
#1344495040
sudo /usr/bin/adb 
#1344495043
sudo /usr/bin/adb shell
#1344495050
fastboot
#1344495067
chmod +x toolchain/bin/fastboot 
#1344495070
chmod +x toolchain/bin/adb 
#1344495072
fastboot
#1344494202
ls
#1344494221
rm batt*.log
#1344495956
lsusb
#1344495978
ps -ef |grep chro
#1344496001
sudo pkill -9 -f chromium-browser
#1344496011
ps -ef |grep chro
#1344496037
chromium-browser 
#1344496131
sudo apt-get install git-core gnupg flex bison gperf build-essential >   zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev >   libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-dev:i386 >   g++-multilib mingw32 tofrodos python-markdown >   libxml2-utils xsltproc zlib1g-dev:i386
#1344496156
sudo apt-get install git-core gnupg flex bison gperf build-essential   zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev    libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-dev:i386    g++-multilib mingw32 tofrodos python-markdown  libxml2-utils xsltproc zlib1g-dev:i386
#1344496168
sudo apt-get -f install
#1344496344
vi .quicksynergy//synergy.conf 
#1344496360
startsynergys 
#1344496364
vi .quicksynergy//synergy.conf 
#1344496370
startsynergys 
#1344496374
vi .quicksynergy//synergy.conf 
#1344496379
startsynergys 
#1344496385
ps -ef |grep syne
#1344496580
sudo adb logcat |grep -i "Statistic"
#1344496601
vi .byobu/keybindings 
#1344495915
sudo fastboot flash zip ~/Downloads/Chromium/96072-001_EvitareUL_Generic_WWE_JB_Mainline_Stable.zip 
#1344496523
sudo fastboot reboot
#1344496557
sudo apt-get install ttf-droid
#1344496621
sudo adb logcat 
#1344496796
ssh ateam@ateamkernel1.htctaipei.htc.com.tw
#1344497475
sudo apt-get install openssh-server 
#1344497699
sudo vi /etc/ssh/sshd_config 
#1344497246
vi .quicksynergy//synergy.conf 
#1344497269
vi /home/kyle/.screenrc 
#1344497313
sudo apt-get install ttf-unifont 
#1344497386
ssh kyle@user-desktop.htctaipei.htc.com.tw
#1344498062
ssh ateam@ateamkernel1.htctaipei.htc.com.tw
#1344498126
cd proj/ap37/
#1344498128
cd kernel/
#1344498129
git log
#1344498142
sudo apt-get install git-core 
#1344498171
git log
#1344499435
ibus-daemon 
#1344499851
sudo apt-get install ibus-pinyin
#1344499892
sudo add-apt-repository ppa:shawn-p-huang/ppa
#1344499927
sudo apt-get update
#1344499937
sudo apt-get install ibus-gtk ibus-qt4 ibus-pinyin ibus-pinyin-db-open-phrase
#1344500003
ibus-daemon 
#1344500016
ibus-daemon  &
#1344500042
sudo reboot -h 0
#1344500188
startsynergys 
#1344500265
cd proj/ap37/kernel/
#1344500268
vi arch/arm/Kconfig
#1344500310
cd -
#1344500314
vi arch/arm/Kconfig
#1344500332
vi /home/kyle/.byobu/keybindings 
#1344500342
vi /home/kyle/.byobu/profile
#1344500369
vi /home/kyle/.screen
#1344500371
vi /home/kyle/.screenrc 
#1344500424
ifconfig
#1344500624
man byobu
#1344500892
sudo adb shell 
#1344501066
sudo adb pull system/lib/libhtc-opt2.so 
#1344501074
sudo adb remount
#1344501087
sudo adb push libhtc-opt2.so /system/lib/
#1344501111
rm libhtc-opt2.so 
#1344503047
cd proj/log/
#1344503058
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/jb/shep/kernel/out/arch/arm/boot/zImage
#1344503122
sudo adb reboot bootloader
#1344503163
sudo fastboot flash zimage zImage
#1344503174
sudo fastboot reboot
#1344503214
sudo adb wait-for-device shell
#1344503507
sftp kyle@user-desktop.htctaipei.htc.com.tw:proj/nvjb/kernel/out/arch/arm/boot/zImage
#1344503515
sudo adb reboot bootloader
#1344503613
sudo fastboot flash zimage zImage 
#1344503617
sudo fastboot reboot
#1344503638
sudo adb wait-for-device shell
#1344506293
sudo reboot -h 0
#1344500706
ssh kyle@user-desktop.htctaipei.htc.com.tw
#1344506985
cd proj/ap37/
#1344506988
. setbuildenv 
#1344507089
build_all_noprebuilt &> build_a.log &
#1344507093
tail -f build_a.log 
#1344507164
sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev libc6-dev lib32ncurses5-dev ia32-libs x11proto-core-dev libx11-dev lib32readline5-dev lib32z-dev libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils
#1344507225
sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev libc6-dev lib32ncurses5-dev ia32-libs x11proto-core-dev libx11-dev lib32readline5-dev lib32z-dsudo apt-get install libgl1-mesa-devev libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils
#1344507227
sudo apt-get install libgl1-mesa-dev
#1344511222
chmod +x ~/Downloads/Chromium/jdk-6u33-linux-x64.bin 
#1344511242
sudo ~/Downloads/Chromium/jdk-6u33-linux-x64.bin 
#1344512435
sudo mv jdk1.6.0_32 /usr/lib/jvm/
#1344512454
sudo mv jdk1.6.0_33/ /usr/lib/jvm/
#1344512463
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.6.0_33/bin/java 1
#1344512508
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/bin/java 1
#1344512513
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/bin/javac 1
#1344512516
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/bin/java 1
#1344512531
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/bin/javac 1
#1344512550
sudo update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/bin/javaws 1
#1344512559
sudo update-alternatives --config java
#1344512579
sudo update-alternatives --config javac
#1344512592
sudo update-alternatives --config javaws
#1344512601
java --version
#1344512608
java -v
#1344512613
java -version
#1344512642
build_all_noprebuilt &> build_a.log &
#1344512644
tail -f build_a.log 
#1344513773
cd ../log/
#1344513793
sftp kyle@user-desktop.htctaipei.htc.com.tw:proj/nvjb/device/htc/common/pnp_ap37.xml 
#1344513809
sudo adb push pnp_ap37.xml /system/etc
#1344513819
sudo adb remount
#1344513837
sudo adb push pnp_ap37.xml /system/etc
#1344513840
sudo adb push pnp_ap37.xml /system/etc/pnp.xml
#1344513848
sudo adb reboot
#1344514174
cd ../ap37/kernel/
#1344514175
git log
#1344514578
cd ..
#1344514582
vi build_a.log 
#1344514717
cd /usr/bin/
#1344514727
sudo ln -s -f /usr/lib/jvm/bin/jar
#1344514730
cd -
#1344514753
sudo ln -s -f /usr/lib/jvm/bin/javah 
#1344514754
cd -
#1344514760
build_all_noprebuilt &> build_a.log &
#1344514761
tail -f build_a.log 
#1344518131
sudo add-apt-repository ppa:linaro-maintainers/tools 
#1344518307
sudo apt-get install git-core gnupg flex bison gperf build-essential   zip curl zlib1g-dev libc6-dev lib32ncurses5-dev ia32-libs   x11proto-core-dev libx11-dev lib32readline-gplv2-dev lib32z1-dev   libgl1-mesa-dev gcc-multilib g++-multilib mingw32 tofrodos python-markdown   libxml2-utils  xsltproc
#1344518485
build_all_noprebuilt &> build_a.log &
#1344518487
tail -f build_a.log 
#1344564487
vi build_a.log 
#1344566544
sudo apt-get install  libc6-dev
#1344566881
sudo apt-get install libc6
#1344566912
env |grep LIBS
#1344567000
dpkg -l libc6
#1344568309
vi build_a.log 
#1344513857
cd proj/log/
#1344513866
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:
#1344513895
ssh ateam@ateamkernel1.htctaipei.htc.com.tw
#1344572575
ps -ef |grep syne
#1344572710
sudo vi /etc/lightdm/lightdm.conf
#1344572820
sudo reboot -h 0
#1344701087
ls
#1344701103
ssh ateam@ateamkernel1.htctaipei.htc.com.tw
#1344829794
rm logcat 
#1344829813
cd proj/log/
#1344829818
vi logcat.2 
#1344849199
sudo adb shell
#1344860415
cd ../ap37/kernel/
#1344860442
cd ..
#1344863334
ps -ef |grep syne
#1344863338
startsynergys 
#1344863351
ps -ef |grep syne
#1344863727
cd ../log/
#1344863744
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/jb/shep/kernel/out/arch/arm/boot/zImage
#1344863767
sudo adb reboot bootloader
#1344863800
sudo fastboot flash zimage zImage 
#1344863814
sudo fastboot reboot
#1344578027
cd proj/log/
#1344578032
sudo adb reboot bootloader
#1344578201
startibus 
#1344580087
sudo fastboot 
#1344580357
vi logcat
#1344588826

#1344588897
sudo fastboot flash system system.img 
#1344589448
h
#1344610604
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/jb/gep/out/target/endeavortd/hboot.img 
#1344610640
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/rex/jb/gep/out/target/product/endeavortd
#1344610650
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/jb/gep/out/target/product/endeavortd/hboot.img
#1344610685
sudo fastboot flash hboot hboot.img 
#1344610721
sudo fastboot reboot
#1344610750
sudo apt-get install cutecom 
#1344611793
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/jb/gep/kernel/out/arch/arm/#1344580409
watch -n 1 "sudo adb shell cat /sys/power/launch_event"
#1344582050
ssh kyle@user-desktop.htctaipei.htc.com.tw
#1344577928
startibus 
#1344577954
startsynergys 
#1344577971
cd proj/log/
#1344577996
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/jb/shep/out/target/product/evitareul/boot.img 
#1344578006

#1344578013
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/jb/shep/out/target/product/evitareul/system.img
#1344578077
sudo fastboot flash zimage zImage 
#1344578088
sudo fastboot flash boot boot.img 
#1344578095
sudo fastboot flash system system.img 
#1344578224
sudo fastboot reboot
#1344578257
watch -n 1 "sudo adb shell cat /sys/power/launch_event"
#1344578266
sudo adb shell
#1344578297
watch -n 1 "sudo adb shell cat /sys/power/launch_event"
#1344578311
sudo adb logcat  |tee logcat
#1344578332
vi logcat
#1344580026
sudo adb reboot bootloader
#1344580041
sudo fastboot -w
#1344580053
sudo adb reboot bootloader
#1344580096
sudo fastboot -w
#1344580264

#1344580280
sudo adb logcat  |tee logcat
#1344580430

#1344580589
sudo adb shell "echo 123.123 > sys/power/launch_event"
#1344580599
h
#1344580605
sudo adb shell cat sys/power/launch_event"
#1344580610
sudo adb shell "cat sys/power/launch_event"
#1344580958
vi logcat
#1344583058
vi /home/kyle/Downloads/Chromium/last_kmsg\ \(1\) 
#1344585831

#1344589002
[sudo] password for kyle:                                                                                                            W/CpuWake (  605): <<acquireCpuPerfWakeLock!
#1344589002
sending 'system' (563959 KB)...                                                                                                      W/CpuWake (  605): >>acquireCpuPerfWakeLock!
#1344589473
sudo adb logcat CpuWake:V  ActivityTrigger:V |tee logcat
#1344589518
sudo adb logcat CpuWake:V  ActivityTrigger:V *:S |tee logcat
#1344589590
sudo adb logcat -t Time CpuWake:V  ActivityTrigger:V *:S |tee logcat
#1344589603
sudo adb logcat -t  CpuWake:V  ActivityTrigger:V *:S |tee logcat
#1344589702
sudo adb logcat -v time  CpuWake:V  ActivityTrigger:V *:S |tee logcat
#1344590344

#1344591821
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/jb/shep/out/target/product/evitareul/system.img
#1344592023
sudo adb reboot bootloader
#1344592044
sudo fastboot flash system system.img 
#1344592170
sudo fastboot reboot
#1344592185
sudo adb logcat -v time  CpuWake:V  ActivityTrigger:V *:S |tee logcat
#1344594812
cd ../ap37/
#1344594814
git branch 
#1344594818
cd kernel/
#1344594820
git branch 
#1344605658
startibus 
#1344605664
ps -ef |grep ibus
#1344605677
sudo kill -9 2425
#1344605683
startibus 
#1344606253
cd ../..
#1344606259
cd log/
#1344606259
ls
#1344606277
sudo adb pull /system/etc/pnp.xml
#1344606304
vi pnp.xml 
#1344606560
sudo adb remount
#1344606571
sudo adb push pnp.xml /system/etc/
#1344606580
sudo adb reboot 
#1344606738
vi pnp.xml 
#1344608473
ssh ateam@ateamkernel1.htctaipei.htc.com.tw
#1344584517
cd -
#1344585654
sudo watch -n 1 "adb shell cat /sys/power/activity_trigger"
#1344585672
sudo watch -n 1 "adb shell ls /sys/power/pnp/activity_trigger"
#1344585676
sudo watch -n 1 "adb shell ls /sys/power/pnp/*"
#1344585683
adb shell ls /sys/power/pnp/*
#1344585687
adb shell ls /sys/power/
#1344585693
adb shell ls /sys/power/pnpmgr/
#1344585695
adb shell ls /sys/power/pnpmgr/apps/
#1344585714
watch -n 1 "adb shell cat /sys/power/pnpmgr/apps/activity_trigger"
#1344588702
sudo adb reboot bootloader
#1344589534
h
#1344589552
watch -n 1 "adb shell cat /sys/power/pnpmgr/apps/activity_trigger"
#1344589610
sudo adb 
#1344589616
sudo adb  |grep time
#1344592202
watch -n 1 "adb shell cat /sys/power/pnpmgr/launch_event"
#1344592211
watch -n 1 "adb shell cat /sys/power/launch_event"
#1344594872
ssh ateam@ateamkernel1.htctaipei.htc.com.tw
#1344916111
cd proj/ap37/
#1344916114
. setbuildenv 
#1344916138
build_all_noprebuilt 
#1344916588
cd build/
#1344916592
grep gcc * -rn
#1344916600
vi core/definitions.mk 
#1344916641
vi core/binary.mk 
#1344916654
grep HOST_CC * -rn
#1344916664
vi core/combo/HOST_linux-x86.mk 
#1344916689
gcc 
#1344916711
sudo apt-get install gcc 
#1344916738
sudo apt-get install g++
#1344916751
cd ..
#1344916757
build_all_noprebuilt -j1
#1344918004
sudo apt-get install git-core gnupg flex bison gperf build-essential   zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev   libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386   libgl1-mesa-dev g++-multilib mingw32 openjdk-6-jdk tofrodos   python-markdown libxml2-utils xsltproc zlib1g-dev:i386
#1344918177
build_all_noprebuilt -j1
#1344932752
gcc --version
#1344932770
sudo apt-get install gcc-4.4
#1344932877
sudo apt-get install g++-4.4
#1344932921
sudo apt-get install g++-4.4-multilib gcc-4.4-multilib
#1344932940
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.4 100
#1344932940
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.6 50
#1344932940
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.4 100
#1344932940
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 50
#1344932940
update-alternatives --install /usr/bin/cpp cpp-bin /usr/bin/cpp-4.4 100
#1344932946
sudo update-alternatives --install /usr/bin/cpp cpp-bin /usr/bin/cpp-4.4 100
#1344932962
sudo su
#1344932977
vi update.sh
#1344933006
chmod +x update.sh 
#1344933008
./update.sh 
#1344933014
gcc --version
#1344933018
build_all_noprebuilt -j1
#1344935091
repo sync 
#1344997310
vi /home/kyle/.bashrc
#1344997352
ps -ef |grep ibus
#1344997367
ps -ef |grep "pts\2"
#1344997372
ps -ef |grep "pts\/2"
#1344997634
sudo add-apt-repository ppa:webupd8team/jupiter
#1344997684
sudo apt-get update
#1344998325
sudo vi /etc/lightdm/lightdm.conf 
#1344998545
sudo add-apt-repository ppa:webupd8team/jupiter
#1344998601
sudo apt-get update
#1344998720
sudo apt-get install jupiter
#1344998735
jupiter &
#1344998768
sudo apt-get install w3m
#1345001166
vi /usr/share/doc/w3m/examples/keymap.default
#1345001689
w3m
#1345001714
w3m -4 -graph 
#1345001718
w3m -4 -graph www.google.com
#1345001760
w3m -4 -graph www.kimo.com.tw
#1345001794
w3m -4 -graph www.wiki.com
#1345001883
w3m -4 -graph www.wiki.com -title wiki
#1345001904
w3m  www.wiki.com -title wiki
#1345001915
man w3m
#1345001922
w3m  www.wiki.com -title wiki -v
#1345001928
man w3m
#1345001999
ls |w3m
#1345002012
cat build_a.log |w3m
#1345002027
ls |w3m
#1345002034
man w3m
#1345002057
w3m  http://w3m.sourceforge.net/index.ja.html
#1345002521
cd ../
#1345002522
ls
#1345002525
cd samsung_9300/
#1345002526
ls
#1345002530
git log
#1345002729
sudo reboot -h 0
#1344866227
startsynergys 
#1344866343
ifconfig
#1344866468
ssh ateam@ateamkernel1.htctaipei.htc.com.tw
#1345002848
ps -ef |grep ibus
#1345002852
sudo vi /etc/lightdm/lightdm.conf 
#1345002872
sudo vi /etc/lightdm/users.conf 
#1345002881
sudo reboot -h 0
#1345003056

#1345003060
startsynergys 
#1345003258
sudo mkdir /etc/synergy
#1345003311
sudo vi /etc/synergy/synergy.conf
#1345003326
sudo cp ~/.quicksynergy/synergy.conf /etc/synergy
#1345003354
sudo vi #!/bin/bash
#1345003367
sudo vi /etc/synergy/startsynergys
#1345003382
sudo +x chmod /etc/synergy/startsynergys 
#1345003395
sudo  chmod 755 /etc/synergy/startsynergys 
#1345003416
sudo vi /etc/synergy/startsynergys 
#1345003431
sudo vi /etc/lightdm/lightdm.conf 
#1345003445
sudo reboot -h 0
#1345003643
ps -ef |grep syne
#1345003652
sudo vi /etc/lightdm/lightdm.conf 
#1345003673
sudo /etc/synergy/startsynergys
#1345003678
ps -ef |grep syne
#1345003685
sudo vi /etc/synergy/startsynergys
#1345003703
/usr/bin/synergys -c /etc/synergy/synergy.conf -n bugs
#1345003721
/usr/bin/synergys -c /etc/synergy/synergy.conf -n bugs 
#1345003723
/usr/bin/synergys -c /etc/synergy/synergy.conf -n bugs -d
#1345003729
/usr/bin/synergys -c /etc/synergy/synergy.conf -n bugs
#1345003732
/usr/bin/synergys 
#1345003738
/usr/bin/synergys -h
#1345003748
/usr/bin/synergys -c /etc/synergy/synergy.conf -d
#1345003765
/usr/bin/synergys -c /etc/synergy/synergy.conf -d INFO
#1345003781
/usr/bin/synergys -c /etc/synergy/synergy.conf -d FATAL
#1345003787
/usr/bin/synergys -c /etc/synergy/synergy.conf -d DEBUG
#1345003795
ps -ef |grep syne
#1345003806

#1345003811
sudo vi /etc/synergy/startsynergys
#1345003822
sudo reboot -h 0
#1345433098
sudo adb shell
#1345433141
sudo adb shell "ls /sys/devices/system/cpu/cpu0/"
#1345433146
sudo adb shell "ls /sys/devices/system/cpu/cpu0/cpufreq"
#1345433165
sudo adb shell "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"
#1345433633
cd proj/log
#1345433652
sftp kyle@user-desktop
#1345433707
sudo adb reboot
#1345433719
sudo adb reboot bootloader
#1345433738
sudo fastboot flash zimage zImage 
#1345433744

#1345433796
sudo adb logcat -v |tee logcat
#1345433801
sudo adb logcat -v time |tee logcat
#1345433816
vi logcat
#1345434000
sudo adb reboot bootloader
#1345434035
sudo fastboot flash zip ~/Downloads/Chromium/99962-001_EndeavorTD_Generic_WWE_ICS_Mainline_Sense45.zip 
#1345434480
sudo fastboot flash zimage zImage 
#1345434496
sudo fastboot reboot
#1345434500
sudo adb logcat -v time |tee logcat
#1345434774
sudo adb shell "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"
#1345434783
sudo adb shell "ls /sys/devices/system/cpu/cpu0/cpufreq/"
#1345434796
sudo adb shell "ls /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"
#1345434801
sudo adb shell "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"
#1345434817
sudo adb shell "echo 600000 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"
#1345434824
sudo adb shell "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"
#1345434829
sudo adb shell "echo 600000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"
#1345434831
sudo adb shell "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"
#1345434841
sudo adb shell "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"
#1345434865
sudo adb shell "cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"
#1345435043
sftp kyle@user-desktop
#1345436370
sudo adb logcat -v time |tee logcat
#1345436400
vi logcat
#1345436899
cd ~/android-sdk-linux/
#1345436900
ls
#1345436902
cd tools/o
#1345436903
cd tools/
#1345436904
ls
#1345436931
ls systrace/
#1345436934
cd systrace/
#1345436941
ls
#1345436943
ll
#1345436949
python systrace.py 
#1345436971
chromium-browser trace.html 
#1345437015
python systrace.py --help
#1345437077
python systrace.py -f -t 20 -d -f -i -l -w 
#1345437108
chromium-browser trace.html 
#1345442393
df
#1345442394
df -h
#1345442995
python systrace.py -f -t 20 -d -f -i -l -w 
#1345443076
python systrace.py -f -t 10 -d -f -i -l -w 
#1345443430
ssh kyle-desktop2
#1345444707
python systrace.py -f -t 10 -d -f -i -l -w  -o templerun.html
#1345444743
chromium-browser templerun.html 
#1345444927
python systrace.py -f -t 10 -d -f -i -l -w  -o templerun.html
#1345444956
chromium-browser templerun.html 
#1345445664
python systrace.py -f -t 10 -d -f -i -l -w  -o templerun-start.html
#1345445946

#1345446221
python systrace.py -f -t 10 -d -f -i -l -w  -o templerun-start.html
#1345446239
chromium-browser templerun-start.html 
#1345446359
chromium-browser templerun.html 
#1345446793
sudo adb shell ps |grep 1103
#1345446888
chromium-browser templerun.html 
#1345447757
python systrace.py --help
#1345448183
python systrace.py -f -t 10 -d -f -i -l -w  -o templerun.html
#1345448188
chromium-browser templerun.html 
#1345450004
zip templerun.zip templerun.html 
#1345451157
vi templerun.log
#1345451214
vi templerun.log 
#1345452510
sudo adb logcat -v time |tee logcat
#1345452553
vi logcat 
#1345452845
sudo adb logcat -v time |tee logcat
#1345452866
vi logcat 
#1345453031
sudo adb logcat -v time |tee logcat
#1345453051
vi logcat 
#1345453105
sudo adb logcat -v time |tee logcat
#1345453134
vi logcat 
#1345453226
sudo adb logcat -v time |tee logcat
#1345453245
vi logcat 
#1345453276
sudo adb logcat -v time |tee logcat2
#1345453293
vi logcat2 
#1345453317
sudo adb logcat -v time |tee logcat2
#1345453344

#1345453427
sudo adb logcat -v time |tee logcat3
#1345453585
vi logcat3 
#1345453851
sudo adb logcat -v time |tee logcat4
#1345453877
vi logcat4 
#1345454110
sudo adb logcat -v time |tee logcat4
#1345454144
vi logcat4 
#1345454199
sudo adb logcat -v time |tee logcat5
#1345454228
vi logcat5 
#1345454288
python systrace.py --help
#1345454395
python systrace.py -t 10 -b 10240 -d -f -l -o temprun_2.html
#1345454426
chromium-browser temprun_2.html 
#1345454846
python systrace.py -t 10 -b 10240 -d   -o temprun_3.html
#1345454888
chromium-browser temprun_3.html 
#1345454992
python systrace.py -t 10 -b 10240 -d   -o temprun_3.html
#1345455024
chromium-browser temprun_3.html 
#1345456586

#1345456613
chromium-browser temprun_3.html 
#1345462549
sudo adb shell ps |grep 1103
#1345462588
sudo adb shell ps |grep 1069
#1345462752
sudo adb logcat |tee logcat
#1345462760
vi logcat
#1345464257
sudo adb shell ps |grep 1132
#1345464423
ssh kyle-desktop2
#1345469355
cd -
#1345469357
cd ..
#1345469360
cd backup/
#1345469360
ls
#1345469362
cd ..
#1345469363
ls
#1345469431
ls *.tbz
#1345469439
man tar
#1345469450
tar -t backup.tbz 
#1345469486
man tar
#1345469587
ssh kyle-desktop2
#1345469608
ssh 10.116.61.107
#1345469807
ssh kyle-desktop2
#1345469810
ssh 10.116.61.107
#1345469885
sftp 10.116.61.107
#1345469916
ssh 10.116.61.107
#1345534489
sudo adb reboot bootloader
#1345550274
sudo adb shell cat /proc/cpuinfo
#1345550310
sudo adb shell
#1345551999
sudo adb reboot bootloader
#1345552045
sftp ateam@ateamkernel1.htctaipei.htc.com.tw:rex/jb/shep/out/target/product/evitareul/system.img
#1345552118
sudo fastboot flash system system.img 
#1345552264
sudo fastboot reboot
#1345552266
vi logcat
#1345552285
rm -rf system.img 
#1345553992
watch -n 0.1 sudo "adb shell /d/clock/clock_tree |grep 3d"
#1345554004
watch -n 0.1 sudo "adb shell /d/clock_tree |grep 3d"
#1345554018
watch -n 0.1 sudo "adb shell cat /d/clock/clock_tree |grep 3d"
#1345605466
ssh ateam@ateamkernel1.htctaipei.htc.com.tw

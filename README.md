# CCminer for Termux

Based on: https://github.com/Oink70/CCminer-ARM-optimized

Install latest arm64-v8a Termux: https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk

Proceed with installation, configuration & compilation:

1. Installing clang and dependencies:
```
yes | pkg update && pkg upgrade
yes | pkg install libjansson build-essential clang binutils git wget
```

2. Fix environment & clone repo:
```
cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys
git clone https://github.com/Darktron/ccminer.git
cd ccminer
chmod +x build.sh configure.sh autogen.sh start.sh



```



3. Compile ccminer:
```
CXX=clang++ CC=clang ./build.sh
```

4. Change your pools, address, and miner name with:
```
nano config.json
```

5. Finally run the miner with:
```
~/ccminer/start.sh
```
6. Auto Start Mining
```
cd && cd && cd && nano ../usr/etc/bash.bashrc
```
7. Lalu copas script di bawah
```
termux-wake-lock
cd ccminer && ./run.sh
```

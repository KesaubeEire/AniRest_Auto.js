# Custom Coming Point
# 1000 2000

# Table Order Point
# 400 800
# 670 800
# 940 800
# 400 1150
# 670 1150
# 940 1150

# Table Pay Point
# 470 950
# 740 950
# 1010 950
# 470 1300
# 740 1300
# 1010 1300

# Additional Pay Point
# 150 900
# 500 1800
# 476 1636

# 多少次招人点击后循环其他操作
SINGLETIME=20

INDEX=0
while true; do

    # point Custom Coming Point
    # adb shell input tap 1000 2000
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    adb shell dd if=/sdcard/recordtap of=/dev/input/event1
    # for i in `seq 1 100`; do input tap 1000 2000; done
    # exit

    # do other point

    RES=$((${INDEX} % ${SINGLETIME}))
    echo "time : $INDEX"
    # echo $RES

    echo "Begin Others"

    # Cancel dialog UI
    adb shell input tap 388 1911
    adb shell input tap 540 1400

    # Table Order Point
    echo '|:\c'
    adb shell input tap 400 800
    echo '=\c'
    adb shell input tap 670 800
    echo '=\c'
    adb shell input tap 940 800
    echo '=\c'
    adb shell input tap 400 1150
    echo '=\c'
    adb shell input tap 670 1150
    echo '=\c'
    adb shell input tap 940 1150
    echo ':|\c'

    # Table Pay Point * time 3
    echo '|:\c'
    adb shell input tap 470 950
    echo '=\c'
    adb shell input tap 740 950
    echo '=\c'
    adb shell input tap 1010 950
    echo '=\c'
    adb shell input tap 470 1300
    echo '=\c'
    adb shell input tap 740 1300
    echo '=\c'
    adb shell input tap 1010 1300
    echo ':|\c'

    # Additional Pay Point
    echo '|:\c'
    adb shell input tap 150 900
    echo '=\c'
    adb shell input tap 500 1800
    echo '=\c'
    adb shell input tap 476 1636
    echo ':|'

    echo "End Others"

    INDEX=$(($INDEX + 1))

done

# # Custom Coming Point
# # 1000 2000

# # Table Order Point
# # 400 800
# # 670 800
# # 940 800
# # 400 1150
# # 670 1150
# # 940 1150

# # Table Pay Point
# # 470 950
# # 740 950
# # 1010 950
# # 470 1300
# # 740 1300
# # 1010 1300

# # Additional Pay Point
# # 150 900
# # 500 1800
# # 476 1636

# # 多少次招人点击后循环其他操作
# SINGLETIME=90
# RESTTIME=500

# INDEX=1
# while true; do

#     # 1. point Custom Coming Point
#     # adb shell input tap 1000 2000
#     adb shell dd if=/sdcard/recordtap of=/dev/input/event1

#     # 2. do other point

#     RES=$((${INDEX} % ${SINGLETIME}))
#     REST=$((${INDEX} % ${RESTTIME}))
#     echo "time : $INDEX"
#     # echo $RES

#     if [ "$RES" -eq "0" ]; then

#         echo "Begin Others"

#         # Cancel dialog UI
#         adb shell input tap 388 1911
#         adb shell input tap 540 1400

#         # Table Order Point
#         echo '|:\c'
#         adb shell input tap 400 800
#         echo '=\c'
#         adb shell input tap 670 800
#         echo '=\c'
#         adb shell input tap 940 800
#         echo '=\c'
#         adb shell input tap 400 1150
#         echo '=\c'
#         adb shell input tap 670 1150
#         echo '=\c'
#         adb shell input tap 940 1150
#         echo ':|\c'

#         # Table Pay Point * time 3
#         echo '|:\c'
#         adb shell input tap 470 950
#         echo '=\c'
#         adb shell input tap 740 950
#         echo '=\c'
#         adb shell input tap 1010 950
#         echo '=\c'
#         adb shell input tap 470 1300
#         echo '=\c'
#         adb shell input tap 740 1300
#         echo '=\c'
#         adb shell input tap 1010 1300
#         echo ':|\c'

#         # Additional Pay Point
#         echo '|:\c'
#         adb shell input tap 150 900
#         echo '=\c'
#         adb shell input tap 500 1800
#         echo '=\c'
#         adb shell input tap 476 1636
#         echo ':|'

#         echo "End Others"

#     fi

#     # 3. defend machine test
#     if [ "$REST" -eq "0" ]; then
#         echo "开始休息30s"
#         sleep 30
#     fi

#     INDEX=$(($INDEX + 1))
#     sleep 0.05

# done

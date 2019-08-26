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

# Cancel dialog UI
# 388 1911
# 540 1400

# Garden Point
# mail point
70 630
# gate point
770 530

# star points
500 560
700 560
900 560

# plant points
300 980
770 980
# 
# 

# flower points
440 930
930 930
# 
# 

# plant confirm button
540 1314



# 多少次招人点击后循环其他操作
SINGLETIME=160
RESTTIME=5000

INDEX=1
while true; do

    # 1. point Custom Coming Point
    # adb shell input tap 1000 2000
    # adb shell dd if=sdcard/KesaData/ani_res_script/tapAdver of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/taptaptap of=/dev/input/event1

    # 2. do other point

    RES=$((${INDEX} % ${SINGLETIME}))
    REST=$((${INDEX} % ${RESTTIME}))
    echo "time : $INDEX"
    # echo $RES

    if [ "$RES" -eq "0" ]; then

        echo "Begin Others"

        # Cancel dialog UI
        adb shell input tap 388 1911
        adb shell input tap 540 1400

        # Order
        adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder1 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder2 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder3 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder4 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder5 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder6 of=/dev/input/event1

        # Pay
        adb shell dd if=sdcard/KesaData/ani_res_script/tapPay1 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapPay2 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapPay3 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapPay4 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapPay5 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapPay6 of=/dev/input/event1

        # Dessert
        adb shell dd if=sdcard/KesaData/ani_res_script/tapDessert1 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapDessert2 of=/dev/input/event1
        adb shell dd if=sdcard/KesaData/ani_res_script/tapDessert3 of=/dev/input/event1

        echo "End Others"

    fi

    # 3. defend machine test
    if [ "$REST" -eq "0" ]; then
        echo "开始休息30s"
        sleep 30
    fi

    INDEX=$(($INDEX + 1))
    sleep 0.05

done

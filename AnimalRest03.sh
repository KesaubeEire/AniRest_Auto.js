# 多少次招人点击后循环其他操作
SINGLETIME=5

INDEX=1
while true; do

  RES=$((${INDEX} % ${SINGLETIME}))
  echo "time : $INDEX"
  # echo $RES

  if [ "$RES" -eq "0" ]; then

    echo "Begin Others"

    # Main Location
    #   Order
    adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder1 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder2 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder3 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder4 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder5 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapOrder6 of=/dev/input/event1

    #   Pay
    adb shell dd if=sdcard/KesaData/ani_res_script/tapPay1 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapPay2 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapPay3 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapPay4 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapPay5 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapPay6 of=/dev/input/event1

    #   Dessert
    adb shell dd if=sdcard/KesaData/ani_res_script/tapDessert1 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapDessert2 of=/dev/input/event1
    adb shell dd if=sdcard/KesaData/ani_res_script/tapDessert3 of=/dev/input/event1
    
    echo "End Others"

  fi

  INDEX=$(($INDEX + 1))
  sleep 1

done

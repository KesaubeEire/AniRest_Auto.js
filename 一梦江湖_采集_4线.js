// 1. 单纯点击

// setInterval(function () {
//     click(1820, 700)
// }, 6000);

////////////////////////////////////////////////


// 2. 换区点击
toast("开始");
device.vibrate(2000);
changeR = 0

function changeRegion() {

    if (changeR >= 42) {
        device.vibrate(2000);
        exit()
    }

    toast(changeR);
    click(1820, 700)
    sleep(7500)

    changeR += 1
    click(2070, 14)
    sleep(500)
    click(2070, (changeR % 5) * 115)
}

setInterval(changeRegion, 3500)
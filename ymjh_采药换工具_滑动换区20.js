// 1. 单纯点击

// setInterval(function () {
//     click(1820, 700)
// }, 6000);

////////////////////////////////////////////////


// 2. 换区点击
toast("开始");
device.vibrate(2000);
changeR = 0 // 换区次数
TotalRegion = 20 // 总区数

function changeRegion() {

    // 采集
    toast(changeR);
    click(1820, 700)
    sleep(800)
    click(1600, 600)
    sleep(7500)

    // 换区
    click(2070, 14)
    sleep(500)
    numL = (changeR % TotalRegion) + 1 // 当前区数

    // 测试:
    num = TotalRegion + 1 - numL

    if (num <= 8) {
        click(2070, num * 117)
    }

    else {
        len = num - 8 // 需要上滑格子数

        if (len < 8) {
            swipe(2070, 8 * 117, 2070, (8 - len) * 117, 100);
        }

        if (len >= 8) {
            toast('more than 8')
            step = len % 8
            swipe(2070, 8 * 117, 2070, 1 * 117, 100);
            swipe(2070, 8 * 117, 2070, (8 - step - 1) * 117, 100);
        }

        click(2070, 8 * 117)
    }

    changeR += 1
}

setInterval(changeRegion, 3500)
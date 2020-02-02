// 1. 单纯点击

// setInterval(function() {
//     press(1820, 700, 80);
//   }, 6000);

////////////////////////////////////////////////


// 2. 换区点击
toast("开始");
changeR = 0



function changeRegion() {
    changeR += 1
    click(2070, 14)
    sleep(100)
    click(2070, (changeR % 8) * 115)
}


function line() {
    toast(`turn_${changeR}`);
    press(1820, 700, 80);
    sleep(6000)
    changeRegion()
}


// setInterval(changeRegion, 5000)
setInterval(function () {
    toast(`turn_${changeR}`);
    press(1820, 700, 80);
    sleep(6000)

    changeR += 1
    click(2070, 14)
    sleep(100)
    click(2070, (changeR % 8) * 115)

}, 5000)
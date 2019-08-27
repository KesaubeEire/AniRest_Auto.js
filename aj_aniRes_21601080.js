index = 0;
// 大概每隔16秒打扫一次MainRoom
TimeMain = 64;
TimeGarden = 1680;
TimeKitchen = 3000;

gotoMain();

while (true) {
  // Custom Coming Point
  click(1000, 2000);

  // time sweep

  // 1.MainRoom
  indexMain = index % TimeMain;
  if (indexMain == 0) {
    // 战略性放弃多线程
    // threads.start(function() {
    //   SweepRest();
    // });

    SweepRest();
  }

  // 2.Garden
  indexGarden = index % TimeGarden;
  if (indexGarden == 0) {
    gotoGarden();
    SweepGarden();
    gotoMain();
  }

  // //TODO:这里还没想好干啥
  // // 3.Kitchen
  // indexKitchen = index % TimeKitchen;
  // if (indexGarden == 0) {
  //   gotoKitchen();
  //   gotoMain();
  // }

  // time set
  index++;

  sleep(60);
}

// SweepRest function
function SweepRest() {
  toast("Begin SweepRest");
  // Table Order Point
  click(400, 800);
  click(670, 800);
  click(940, 800);
  click(400, 1150);
  click(670, 1150);
  click(940, 1150);

  // Table Pay Point
  click(470, 950);
  click(740, 950);
  click(1010, 950);
  click(470, 1300);
  click(740, 1300);
  click(1010, 1300);

  // Additional Pay Point
  // click(150, 900);
  click(440, 750);

  click(500, 1800);

  // click(476, 1636);
  click(743, 1576);

  // Cancel dialog UI
  click(388, 1911);
  click(540, 1400);
  toast("Done SweepRest");
}

// TODO:这里还有2处花圃没有搞出来
// SweepRest function
function SweepGarden() {
  // Garden Point
  //    mail point
  click(70, 630);
  //    gate point
  click(770, 530);
  //    star points
  click(500, 560);
  click(700, 560);
  click(900, 560);

  //    plant points
  click(300, 980);
  sleep(1000);
  click(540, 1314);
  click(540, 1314);
  sleep(1000);

  click(770, 980);
  sleep(1000);
  click(540, 1314);
  click(540, 1314);
  sleep(1000);

  click(300, 1300);
  sleep(1000);
  click(540, 1314);
  click(540, 1314);
  sleep(1000);

  click(770, 1300);
  sleep(1000);
  click(540, 1314);
  click(540, 1314);
  sleep(1000);

  // #
  // #

  //    flower points
  click(440, 930);
  click(440, 930);

  click(930, 930);
  click(930, 930);

  click(440, 1250);
  click(440, 1250);

  click(930, 1250);
  click(930, 1250);

  //    plant points
  click(300, 980);
  sleep(400);
  click(540, 1314);
  sleep(400);

  click(770, 980);
  sleep(400);
  click(540, 1314);
  sleep(400);

  click(300, 1300);
  sleep(400);
  click(540, 1314);
  sleep(400);

  click(770, 1300);
  sleep(400);
  click(540, 1314);
  sleep(400);

  //    plant confirm button
  click(540, 1314);
}

// Go to MainRoom
function gotoMain() {
  // gesture(1000, [0, 0], [500, 500], [500, 1000])
  sleep(300);
  swipe(400, 1000, 1000, 1000, 300);
  sleep(300);
  swipe(400, 1000, 1000, 1000, 300);
  sleep(300);
  swipe(400, 1000, 1000, 1000, 300);
  sleep(300);
  swipe(1000, 1000, 400, 1000, 300);
  sleep(300);
}
// Go to Garden
function gotoGarden() {
  sleep(300);
  swipe(400, 1000, 1000, 1000, 300);
  sleep(300);
  sleep(300);
  swipe(400, 1000, 1000, 1000, 300);
  sleep(300);
}
// Go to Kitchen
function gotoKitchen() {
  sleep(300);
  swipe(1000, 1000, 400, 1000, 300);
  sleep(300);
  sleep(300);
  swipe(1000, 1000, 400, 1000, 300);
  sleep(300);
}

// Advertise Clean
// Achievements
// TODO:有个延迟的问题没有解决
function cleanAchieve() {
  // Achieve button
  click(600, 2000);
  sleep(400);
  // Achieve part
  click(200, 400);
  sleep(400);
  // Achieve point
  click(800, 700);
  sleep(400);
  // Watch ads
  click(800, 1400);
  sleep(400);
  // wait 30s
  sleep(35000);
  sleep(400);
  // point ends
  click(900, 100);
  sleep(400);
  // point over to main
  click(540, 1940);
  sleep(400);
}

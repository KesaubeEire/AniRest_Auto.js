function cleanAchieve() {
  // Achieve button
  click(600, 2000 + 180);
  sleep(400);
  // Achieve part
  click(200, 450);
  sleep(400);
  // Achieve point
  click(800, 720);
  sleep(400);
  // Watch ads
  click(800, 1480);
  sleep(400);
  // wait 30s
  sleep(35000);
  sleep(400);
  // point ends
  click(900, 100);
  sleep(400);
  // point over to main
  click(540, 1940 + 180);
  sleep(400);
}

while (true) {
  cleanAchieve();
  sleep(300);
}

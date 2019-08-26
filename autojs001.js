index = 0;
groupTime = 60;

while (true) {
  // Custom Coming Point
  click(1000, 2000);

  // time sweep

  if (index == 0) {
    // threads.start(function() {
    //   Sweep();
    // });
    Sweep();
  }

  if (index == 40) {
    // threads.shutDownAll();
  }

  // time set
  index++;
  index = index % groupTime;
  sleep(60);
}

// Sweep function
function Sweep() {
  toast("Begin Sweep");
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
  click(150, 900);
  click(500, 1800);
  click(476, 1636);

  // Cancel dialog UI
  click(388, 1911);
  click(540, 1400);
  toast("Done Sweep");
}

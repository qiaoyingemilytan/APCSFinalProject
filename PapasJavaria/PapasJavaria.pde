ArrayList<Customer> customers;
Customer currentCustomer;
int customerNumber = 0;
int stepPosition = 0;
int currentPatience, timeElapsed;
double money;
boolean showPatience = false;
boolean startScreen = true;
PImage hamburgerImg, friesImg, chickenImg, hotdogImg, pizzaImg, bunImg, bun2Img, cheeseImg, deepfryImg, doughImg, frymixImg, griddleImg,
hotdogbunImg, ketchupImg, knifeImg, lettuceImg, mustardImg, onionsImg, ovenImg,
pattyImg, potatoImg, rawchickenImg, relishImg, tomatoImg, tomatosauceImg, sausageImg, waterImg,
sodaImg, lemonadeImg, watercupImg, sodacupImg, lemonadecupImg;
void setup() {
  frameRate(30);
  size(1200, 800); 
  background(209);
  
  //load images
  hamburgerImg = loadImage("hamburger.png");
  friesImg = loadImage("fries.png");
  chickenImg = loadImage("chicken.png");
  hotdogImg = loadImage("hotdog.png");
  pizzaImg = loadImage("pizza.png");
  bunImg = loadImage("bun.png");
  bun2Img = loadImage("bun2.png");
  cheeseImg = loadImage("cheese.png");
  deepfryImg = loadImage("deepfry.png");
  doughImg = loadImage("dough.png");
  frymixImg = loadImage("frymix.png");
  griddleImg = loadImage("griddle.png");
  hotdogbunImg = loadImage("hotdogbun.png");
  ketchupImg = loadImage("ketchup.png");
  knifeImg = loadImage("knife.png");
  lettuceImg = loadImage("lettuce.png");
  mustardImg = loadImage("mustard.png");
  onionsImg = loadImage("onions.png");
  ovenImg = loadImage("oven.png");
  pattyImg = loadImage("patty.png");
  potatoImg = loadImage("potato.png");
  rawchickenImg = loadImage("rawchicken.png");
  relishImg = loadImage("relish.png");
  tomatoImg = loadImage("tomato.png");
  tomatosauceImg = loadImage("tomatosauce.png");
  sausageImg = loadImage("sausage.png");
  waterImg = loadImage("water.png");
  sodaImg = loadImage("soda.png");
  lemonadeImg = loadImage("lemonade.png");
  watercupImg = loadImage("waterCup.png");
  sodacupImg = loadImage("sodaCup.png");
  lemonadecupImg = loadImage("lemonadeCup.png");
  
  customers = new ArrayList<Customer>();
  for (int i = 0; i < 10; i++){
    Customer newCustomer = new Customer(1);
    newCustomer.makeOrder();
    customers.add(newCustomer);
  }
  currentCustomer = customers.get(0);
}
void draw(){
  //image(hamburgerImg, 75, 75);
  
  if (startScreen){
     PImage bgImage = loadImage("restaurant.jpg");
     background(bgImage);
     textAlign(CENTER);
     //Black outline of the title
     textSize(102);
     fill(0);
     text("Papa's Javaria", width/2, 200);
     //Title of the game
     textSize(100);
     fill(255);
     text("Papa's Javaria", width/2, 200);
     //Start button
     stroke(0);
     strokeWeight(1.5);
     rect(500, 400, 200, 80);
     textSize(50);
     fill(0);
     text("START", width/2, 460);
  }
  else{
  noStroke();
  textSize(12);
  fill(#FFFFFF);
  rect(490, 570, 350, 100);
  fill(0);
  text("Plates here for putting the food on to serve to customer.", 500, 600);
  textSize(12);

  //Rectangles
  fill(#FFFFFF);
  rect(440, 380, 100, 50);
  rect(740, 380, 170, 50);
  //Bread
  image(bunImg, 340, 585, 100, 100);
  image(bun2Img, 340, 560, 100, 100);
  image(hotdogbunImg, 335, 690, 100, 100);
  //Appliances
  image(ovenImg, 990, 470, 100, 100);
  image(griddleImg, 900, 580, 100, 100);
  image(deepfryImg, 1050, 580, 100, 100);
  //Vegetables
  image(tomatoImg, 190, 575, 100, 100);
  image(lettuceImg, 190, 700, 80,80);
  image(onionsImg, 90, 575, 90, 90);
  image(potatoImg, 90, 700, 75, 75);
  //Meat
  image(pattyImg, 500, 700, 100, 100);
  image(sausageImg, 620, 695, 90, 90);
  image(rawchickenImg, 740, 700, 80, 80);
  //Condiments
  image(ketchupImg, 120, 455, 100, 100);
  image(mustardImg, 190, 455, 100, 100);
  image(relishImg, 260, 455, 100, 100);
  image(tomatosauceImg, 350, 455, 100, 100);
  //Misc
  image(cheeseImg, 540, 455, 100, 100);
  image(knifeImg, 640, 455, 100, 100);
  image(doughImg, 740, 455, 100, 100);
  image(frymixImg, 840, 455, 100, 100);
  //Drinks
  image(waterImg, 890, 680, 150, 150);
  image(sodaImg, 960, 680, 150, 150);
  image(lemonadeImg, 1030, 680, 150, 150);
  fill(0);
  //Bread section
  text("bun", 350, 575);
  text("hot dog bun", 350, 690);
  //Appliances section
  text("pizza oven", 1010, 480);
  text("griddle", 950, 590);
  text("deep fry", 1075, 590);
  //Vegetables section
  text("lettuce", 200, 690);
  text("tomato", 200, 575);
  text("potato", 100, 690);
  text("onions", 100, 575);
  //Meat section
  text("patty", 520, 700);
  text("sausage", 630, 700);
  text("raw chicken", 750, 700);
  //Condiments
  text("ketchup", 150, 450);
  text("mustard", 220, 450);
  text("relish", 290, 450);
  text("tomato sauce", 360, 450);
  //Miscellaneous section
  text("cheese", 570, 450);
  text("knife", 670, 450);
  text("dough", 770, 450);
  text("fry mix", 870, 450);
  //Drinks section
  text("water", 945, 690);
  text("soda", 1015, 690);
  text("lemonade", 1075, 690);
  //Buttons for displaying order and customer's order
  text("Display customer's order", 750, 400);
  text("Give Order", 450, 400);
  /*
  for(int i = 0; i < 11; i++){
    fill(#FFFFFF);
    rect(i * 120 + 10, 600, 100, 50);
    
    //rect(600 - 10, 400 - 20, 100, 50);
    
    fill(0);
    if(i == 0){text("bun", i * 120 + 20, 620);}
    if(i == 1){text("patty", i * 120 + 20, 620);}
    if(i == 2){text("griddle", i * 120 + 20, 620);}
    if(i == 3){text("tomato", i * 120 + 20, 620);}
    if(i == 4){text("lettuce", i * 120 + 20, 620);}
    if(i == 5){text("onions", i * 120 + 20, 620);}
    if(i == 6){text("potato", i * 120 + 20, 620);}
    if(i == 7){text("knife", i * 120 + 20, 620);}
    if(i == 8){text("deep fry", i * 120 + 20, 620);}
    if(i == 9){text("hot dog bun", i * 120 + 20, 620);}
    if(i == 10){
      text("Give Order", 450, 400);
      //text("Display Order", 600, 400);
      text("Display customer's order", 750, 400);
    }
  }
  for(int i = 0; i < 10; i++){
    fill(#FFFFFF);
    rect(i * 120 + 10, 700, 100, 50);
    fill(0);
    if(i == 0){text("ketchup", i * 120 + 20, 720);}
    if(i == 1){text("mustard", i * 120 + 20, 720);}
    if(i == 2){text("relish", i * 120 + 20, 720);}
    if(i == 3){text("dough", i * 120 + 20, 720);}
    if(i == 4){text("tomato sauce", i * 120 + 20, 720);}
    if(i == 5){text("cheese", i * 120 + 20, 720);}
    if(i == 6){text("oven", i * 120 + 20, 720);}
    if(i == 7){text("raw chicken", i * 120 + 20, 720);}
    if(i == 8){text("fry mix", i * 120 + 20, 720);}
    if(i == 9){text("sausage", i * 120 + 20, 720);}
  }
  */
  //Displaying money you have
  fill(209);
  rect(0, 0, 100, 50);
  fill(0);
  text("$" + (float)((money * 100) / 100), 20, 20);
  //Timer for customer's patience remaining
  if (showPatience){
    currentPatience = (millis() / 1000) - timeElapsed;
    if (currentPatience <= currentCustomer.customersPatience()){
      fill(209);
      rect(1100, 70, 100, 150);
      double patienceLevel = currentCustomer.patienceLevel(currentCustomer.customersPatience() - currentPatience);
      if (patienceLevel == 0.25){
        fill(0, 204, 102); //Green level
      }
      else if (patienceLevel == 0.1){
        fill(255, 255, 0); //Yellow level
      }
      else if (patienceLevel == 0){
        fill(255, 0, 0); //Red level
      }
      textSize(30);
      text((int)currentCustomer.customersPatience() - currentPatience, 1100, 100);
    }
    //Consequence of customer's patience running out
    else{
      showPatience = false;
      text("This is too taking too long! I'm leaving and leaving a 1 star review on Yelp! Bye!", 550, 300);
      if (customerNumber < customers.size() - 1){
        customerNumber += 1;
        currentCustomer = customers.get(customerNumber);
      }
      else{
        fill(209);
        rect(500, 280, 1200, 100);
        fill(0);
        text("The last customer abandoned the restaurant. Your shift has ended.", 550, 300);
      }
    }   
  }
 }
}
boolean onButton(int x, int y, int width, int height){
  return (mouseX >= x && mouseX < x + width &&
  mouseY >= y && mouseY <= y + height);
}

void mousePressed() {
  noStroke();
  textSize(12);
  fill(0);
//START button
  if (startScreen){
    if (onButton(500, 400, 200, 80)){
      startScreen = false;
      background(209);
      textAlign(BASELINE);
    }
  }
  else{
//Display customer's order button
  if (onButton(750 - 10, 400 - 20, 170, 50)){
   timeElapsed = millis() / 1000;
   showPatience = true;
   fill(209);
   rect(0, 0, 1200, 300);
   fill(0);
   for (int i = 0; i < currentCustomer.customersOrder().size(); i++){
      text(currentCustomer.customersOrder().get(i), 100 + 100 * i, 100);
   }
  }
  //Display order button
  //if (onButton(600 - 10, 400 - 20, 100, 50)){
  //  for (int i = 0; i < currentCustomer.getOrder().size(); i++){
  //    text(currentCustomer.getOrder().get(i), 100 + 100 * i, 200);
  //  }
  //}
  
//Give order button
  if (onButton(450 - 10, 400 - 20, 100, 50)){
    stepPosition = 0;
    //If you give the correct order
    if(currentCustomer.checkSteps()){
      showPatience = false;
      //The customer pays for the price of the food plus tips depending on how long you took to give them their order
      money += currentCustomer.totalFoodPrice() + (currentCustomer.totalFoodPrice() * currentCustomer.patienceLevel(currentCustomer.customersPatience() - currentPatience));
      fill(209);
      rect(500, 280, 1200, 100);
      fill(0);
      text("Correct Order", 550, 300);
      //Moves on to the next customer
      if (customerNumber < customers.size() - 1){
        customerNumber += 1;
        currentCustomer = customers.get(customerNumber);
      }
      //If theres no more customers left, your shift ends
      else {
        fill(209);
        rect(500, 280, 1200, 100);
        fill(0);
        text("Correct order, this is the end of shift", 550, 300);
      }
    }
    else{
      fill(209);
      rect(500, 280, 1200, 100);
      fill(0);
      text("Wrong Order", 550, 300);
      fill(209);
      rect(0, 120, 1200, 100);
      fill(0);
      currentCustomer.restartOrder();
    }     
  }
  //bread buttons
  if(onButton(340, 570, 100, 80)){currentCustomer.addStep("bun");
  text("bun" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(335, 690, 100, 80)){currentCustomer.addStep("hot dog bun");
  text("hot dog bun" , 100 + 100 * stepPosition, 200); stepPosition++;}
  //appliances
  if(onButton(990, 470, 100, 100)){currentCustomer.addStep("oven");
  text("oven" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(900, 590, 80, 80)){currentCustomer.addStep("griddle");
  text("griddle" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(1050, 590, 100, 80)){currentCustomer.addStep("deep fry");
  text("deep fry" , 100 + 100 * stepPosition, 200); stepPosition++;}
  //meat
  if(onButton(500, 740, 80, 30)){currentCustomer.addStep("patty");
  text("patty" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(620, 695, 90, 90)){currentCustomer.addStep("sausage");
  text("sausage" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(740, 700, 80, 80)){currentCustomer.addStep("raw chicken");
  text("raw chicken" , 100 + 100 * stepPosition, 200); stepPosition++;}
  //vegetables
  if (onButton(190, 575, 100, 100)){ currentCustomer.addStep("tomato"); 
  text("tomato" , 100 + 100 * stepPosition, 200); stepPosition++; stepPosition++;}
  if (onButton(190, 700, 80, 80)){ currentCustomer.addStep("lettuce"); 
  text("lettuce" , 100 + 100 * stepPosition, 200); stepPosition++; stepPosition++;}
  if (onButton(90, 575, 90, 90)){ currentCustomer.addStep("onions"); 
  text("onions" , 100 + 100 * stepPosition, 200); stepPosition++; stepPosition++;}
  if (onButton(90, 700, 75, 75)){ currentCustomer.addStep("potato"); 
  text("potato" , 100 + 100 * stepPosition, 200); stepPosition++; stepPosition++;}
  //condiments
  if(onButton(140, 455, 45, 100)){currentCustomer.addStep("ketchup");
  text("ketchup" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(210, 455, 45, 100)){currentCustomer.addStep("mustard");
  text("mustard" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(280, 455, 45, 100)){currentCustomer.addStep("relish");
  text("relish" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(350, 475, 100, 60)){currentCustomer.addStep("tomato sauce");
  text("tomato sauce" , 100 + 100 * stepPosition, 200); stepPosition++;}
  //misc
  if(onButton(540, 470, 100, 75)){currentCustomer.addStep("cheese");
  text("cheese" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(640, 455, 100, 80)){currentCustomer.addStep("knife");
  text("knife" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(740, 455, 100, 80)){currentCustomer.addStep("dough");
  text("dough" , 100 + 100 * stepPosition, 200); stepPosition++;}
  if(onButton(840, 455, 80, 100)){currentCustomer.addStep("fry mix");
  text("fry mix" , 100 + 100 * stepPosition, 200); stepPosition++;}
 }
}
void keyPressed() {
}

ArrayList<Customer> customers;
Customer currentCustomer;
int customerNumber = 0;
int stepPosition = 0;
int stars = 3;
int amountOfReds = 0;
int currentPatience, timeElapsed;
double money;
boolean showPatience = false, alreadyClicked = false;
boolean startScreen = true;
PImage plateImg, hamburgerImg, friesImg, chickenImg, hotdogImg, pizzaImg, bunImg, bun2Img, cheeseImg, deepfryImg, doughImg, frymixImg, griddleImg,
hotdogbunImg, ketchupImg, knifeImg, lettuceImg, mustardImg, onionsImg, ovenImg,
pattyImg, potatoImg, rawchickenImg, relishImg, tomatoImg, tomatosauceImg, sausageImg, waterImg,
sodaImg, lemonadeImg, watercupImg, sodacupImg, lemonadecupImg, customerredImg, customerblueImg, customergreenImg, customerorangeImg, customerpurpleImg, orderbubbleImg;
void setup() {
  frameRate(30);
  size(1200, 800); 
  
  //load images
  plateImg = loadImage("plateImg.png");
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
  customerredImg = loadImage("customerRed.png");
  customerblueImg = loadImage("customerBlue.png");
  customergreenImg = loadImage("customerGreen.png");
  customerorangeImg = loadImage("customerOrange.png");
  customerpurpleImg = loadImage("customerPurple.png");
  orderbubbleImg = loadImage("customersOrder.png");
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
     text("START", width/2, 465);
     fill(0);
     textSize(16.2);
     text("Your goal at Papa's Javaria is to serve all the customers \n under a certain amount of time before they get upset. A customer's order will be displayed \n for you, as well as instructions to complete the order. \n Click on the corresponding ingredients and appliances to \n complete the order, and then get the order for the next customer. Good luck!" , width/2, 250);
     fill(#FFFFFF);
     textSize(16);
     text("Your goal at Papa's Javaria is to serve all the customers \n under a certain amount of time before they get upset. A customer's order will be displayed \n for you, as well as instructions to complete the order. \n Click on the corresponding ingredients and appliances to \n complete the order, and then get the order for the next customer. Good luck!" , width/2, 250);
     }
  else{
  noStroke();
  textSize(12);
  fill(#FFFFFF);
  image(plateImg, 500, 570, 100, 100);
  image(plateImg, 630, 570, 100, 100);
  image(plateImg, 760, 570, 100, 100);
  fill(0);
  //Plates here for putting the food on to serve to customer
  textSize(12);

  //Rectangles
  fill(#FFFFFF);
  rect(1050, 280, 100, 50);
  rect(1050, 340, 100, 50);
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
  text("Get Order", 1070, 310);
  text("Give Order", 1070, 370);
  
  //Displaying money you have
  fill(#F5E9C8);
  rect(0, 0, 100, 25);
  fill(0);
  text("$" + (float)((money * 100) / 100), 20, 20);
  //Timer for customer's patience remaining
  if (showPatience){
    currentPatience = (millis() / 1000) - timeElapsed;
    if (currentPatience <= currentCustomer.customersPatience()){
      fill(#BFAE7F);
      rect(1090, 65, 75, 50);
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
      text("This is too taking too long! I'm leaving and leaving a 1 star review on Yelp! Bye!", 100, 200);
      amountOfReds += 1;
      if (customerNumber < customers.size() - 1){
        customerNumber += 1;
        currentCustomer = customers.get(customerNumber);
        displayCustomer();
      }
      else{
        if (amountOfReds > (int)(customers.size() * 0.25)){
          stars -= 1;
          if (amountOfReds > (int)(customers.size() * 0.25)){
            stars -= 1;
          }
        }
        fill(#F5E9C8);
        rect(500, 280, 1200, 50);
        fill(0);
        text("The last customer abandoned the restaurant. Your shift has ended.", 100, 200);
      }
    }   
  }
 }
}
boolean onButton(int x, int y, int width, int height){
  return (mouseX >= x && mouseX < x + width &&
  mouseY >= y && mouseY <= y + height);
}

void displayCustomer(){
  String currentColor = currentCustomer.getColor();
  image(orderbubbleImg, 50, 260, 400, 200);
  int x = 400;
  int y = 230;
  int l = 200;
  if (currentColor == "red"){
    image(customerredImg, x, y, l, l);
  }
  if (currentColor == "blue"){
    image(customerblueImg, x, y, l, l);
  }
  if (currentColor == "green"){
    image(customergreenImg, x, y, l, l);
  }
  if (currentColor == "orange"){
    image(customerorangeImg, x, y, l, l);
  }
  if (currentColor == "purple"){
    image(customerpurpleImg, x, y, l, l);
  }
}
void mousePressed() {
  noStroke();
  textSize(12);
  fill(0);
//START button
  if (startScreen){
    if (onButton(500, 400, 200, 80)){
      startScreen = false;
      background(#D3C8AB);
      textAlign(BASELINE);
      timeElapsed = millis() / 1000;
      showPatience = true;
      alreadyClicked = true;
      displayCustomer();
      fill(#F5E9C8);
      rect(0, 0, 1200, 250);
      fill(0);
      for (int i = 0; i < currentCustomer.customersOrder().size(); i++){
        text(currentCustomer.customersOrder().get(i), 100 + 100 * i, 50);
      }
      fill(#D3C8AB);
      rect(0, 275, 500, 100);
      for(int i = 0; i < currentCustomer.getMeals().size(); i++){
        if(currentCustomer.getMeals().get(i).equals("hamburger")){
          image(hamburgerImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("fries")){
          image(friesImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("chicken")){
          image(chickenImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("hotdog")){
          image(hotdogImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("pizza")){
          image(pizzaImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("water")){
          image(watercupImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("soda")){
          image(sodacupImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("lemonade")){
          image(lemonadecupImg, 100 + 100 * i, 300, 100, 100);
        }
      }
    }
  }
  else{
//Display customer's order button
  if (onButton(1050, 280, 100, 50) && !alreadyClicked){
    timeElapsed = millis() / 1000;
    alreadyClicked = true;
    showPatience = true;
    fill(#F5E9C8);
    rect(0, 0, 1200, 200);
    fill(0);
    for (int i = 0; i < currentCustomer.customersOrder().size(); i++){
      text(currentCustomer.customersOrder().get(i), 100 + 100 * i, 50);
    }
    fill(#D3C8AB);
    rect(0, 275, 500, 100);
    for(int i = 0; i < currentCustomer.getMeals().size(); i++){
        if(currentCustomer.getMeals().get(i).equals("hamburger")){
          image(hamburgerImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("fries")){
          image(friesImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("chicken")){
          image(chickenImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("hotdog")){
          image(hotdogImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("pizza")){
          image(pizzaImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("water")){
          image(watercupImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("soda")){
          image(sodacupImg, 100 + 100 * i, 300, 100, 100);
        }
        if(currentCustomer.getMeals().get(i).equals("lemonade")){
          image(lemonadecupImg, 100 + 100 * i, 300, 100, 100);
        }
      }
  }
  
//Give order button
  if (onButton(1050, 340, 100, 50)){
    stepPosition = 0;
    //If you give the correct order
    if(currentCustomer.checkSteps()){
      showPatience = false;
      alreadyClicked = false;
      //Checks if the customers patience level is red
      if (currentCustomer.patienceLevel(currentCustomer.customersPatience() - currentPatience) == 0){
        amountOfReds += 1;
      }  
      //The customer pays for the price of the food plus tips depending on how long you took to give them their order
      money += currentCustomer.totalFoodPrice() + (currentCustomer.totalFoodPrice() * currentCustomer.patienceLevel(currentCustomer.customersPatience() - currentPatience));
      fill(#F5E9C8);
      rect(0, 180, 1200, 50);
      fill(0);
      text("Correct Order", 100, 200);
      //Moves on to the next customer
      if (customerNumber < customers.size() - 1){
        customerNumber += 1;
        currentCustomer = customers.get(customerNumber);
        displayCustomer();
      }
      //If theres no more customers left, your shift ends
      else {//The amount of stars you get after the shift depends on the amountOfReds
        if (amountOfReds > (int)(customers.size() * 0.25)){
          stars -= 1;
          if (amountOfReds > (int)(customers.size() * 0.25)){
            stars -= 1;
          }
        }
        fill(#F5E9C8);
      rect(0, 0, 1200, 250);
        fill(0);
        text("Correct order, this is the end of shift", 100, 200);
      }
    }
    else{
      fill(#F5E9C8);
      rect(0, 180, 1200, 50);
      fill(0);
      text("Wrong Order", 100, 200);
      fill(#F5E9C8);
      rect(0, 75, 1200, 75);
      fill(0);
      currentCustomer.restartOrder();
    }     
  }
  fill(0);
  textSize(12);
  //bread buttons
  if(onButton(340, 570, 100, 80)){currentCustomer.addStep("bun");
  text("bun" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(335, 690, 100, 80)){currentCustomer.addStep("hot dog bun");
  text("hot dog bun" , 100 + 100 * stepPosition, 100); stepPosition++;}
  //appliances
  if(onButton(990, 470, 100, 100)){currentCustomer.addStep("oven");
  text("oven" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(900, 590, 80, 80)){currentCustomer.addStep("griddle");
  text("griddle" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(1050, 590, 100, 80)){currentCustomer.addStep("deep fry");
  text("deep fry" , 100 + 100 * stepPosition, 100); stepPosition++;}
  //vegetables
  if(onButton(190, 575, 100, 80)){currentCustomer.addStep("tomato");
  text("tomato" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(190, 700, 100, 80)){currentCustomer.addStep("lettuce");
  text("lettuce" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(90, 575, 90, 80)){currentCustomer.addStep("onions");
  text("onions" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(90, 700, 90, 80)){currentCustomer.addStep("potato");
  text("potato" , 100 + 100 * stepPosition, 100); stepPosition++;}
  //meat
  if(onButton(500, 740, 80, 30)){currentCustomer.addStep("patty");
  text("patty" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(620, 695, 90, 90)){currentCustomer.addStep("sausage");
  text("sausage" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(740, 700, 80, 80)){currentCustomer.addStep("raw chicken");
  text("raw chicken" , 100 + 100 * stepPosition, 100); stepPosition++;}
  //condiments
  if(onButton(140, 455, 45, 100)){currentCustomer.addStep("ketchup");
  text("ketchup" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(210, 455, 45, 100)){currentCustomer.addStep("mustard");
  text("mustard" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(280, 455, 45, 100)){currentCustomer.addStep("relish");
  text("relish" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(350, 475, 100, 60)){currentCustomer.addStep("tomato sauce");
  text("tomato sauce" , 100 + 100 * stepPosition, 100); stepPosition++;}
  //misc
  if(onButton(540, 470, 100, 75)){currentCustomer.addStep("cheese");
  text("cheese" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(640, 455, 100, 80)){currentCustomer.addStep("knife");
  text("knife" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(740, 455, 100, 80)){currentCustomer.addStep("dough");
  text("dough" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(840, 455, 80, 100)){currentCustomer.addStep("fry mix");
  text("fry mix" , 100 + 100 * stepPosition, 100); stepPosition++;}
  //drinks
  if(onButton(910, 680, 90, 150)){currentCustomer.addStep("water");
  text("water" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(1005, 680, 60, 150)){currentCustomer.addStep("soda");
  text("soda" , 100 + 100 * stepPosition, 100); stepPosition++;}
  if(onButton(1070, 680, 60, 150)){currentCustomer.addStep("lemonade");
  text("lemonade" , 100 + 100 * stepPosition, 100); stepPosition++;}
 }
}
void keyPressed() {
}

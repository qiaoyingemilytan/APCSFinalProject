ArrayList<Customer> customers;

Customer currentCustomer;
int currentIndex;
void setup() {
  frameRate(30);
  size(1200, 800);
  customers = new ArrayList<Customer>();
  
  for (int i = 0; i < 10; i++){
    Customer newCustomer = new Customer(1);
    newCustomer.makeOrder();
    customers.add(newCustomer);
  }
}

void draw(){
  textSize(12);
  for(int i = 0; i < 11; i++){
    fill(#FFFFFF);
    rect(i * 120 + 10, 600, 100, 50);
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
    if(i == 10){text("Give Order", 600, 400);}
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
}

boolean onButton(int x, int y, int width, int height){
  return (mouseX >= x && mouseX < x + width &&
  mouseY >= y && mouseY <= y + height);
}

void mousePressed() {
  if (onButton(600, 400, 100, 50)){
    if(currentCustomer.checkSteps()){
      if (currentIndex < customers.size() - 1){
        currentIndex += 1;
        currentCustomer = customers.get(currentIndex);
      }
    }
    else{
      currentCustomer.restartOrder();
    }     
  }
  for(int i = 0; i < 10; i++){
    if(onButton(i * 120 + 10, 600, 100, 50)){
      if(i == 0){
        currentCustomer.addStep("bun");
      }
      if(i == 1){
        currentCustomer.addStep("patty");
      }
      if(i == 2){
        currentCustomer.addStep("griddle");
      }
      if(i == 3){
        currentCustomer.addStep("tomato");
      }
      if(i == 4){
        currentCustomer.addStep("lettuce");
      }
      if(i == 5){
        currentCustomer.addStep("onions");
      }
      if(i == 6){
        currentCustomer.addStep("potato");
      }
      if(i == 7){
        currentCustomer.addStep("knife");
      }
      if(i == 8){
        currentCustomer.addStep("deep fry");
      }
      if(i == 9){
        currentCustomer.addStep("hot dog bun");
      }
    }
  }
  for(int i = 0; i < 10; i++){
    if(onButton(i * 120 + 10, 700, 100, 50)){
      if(i == 0){
        currentCustomer.addStep("ketchup");
      }
      if(i == 1){
        currentCustomer.addStep("mustard");
      }
      if(i == 2){
        currentCustomer.addStep("relish");
      }
      if(i == 3){
        currentCustomer.addStep("dough");
      }
      if(i == 4){
        currentCustomer.addStep("tomato sauce");
      }
      if(i == 5){
        currentCustomer.addStep("cheese");
      }
      if(i == 6){
        currentCustomer.addStep("oven");
      }
      if(i == 7){
        currentCustomer.addStep("raw chicken");
      }
      if(i == 8){
        currentCustomer.addStep("fry mix");
      }
      if(i == 9){
        currentCustomer.addStep("sausage");
      }
    }
  }
}


void keyPressed() {
}

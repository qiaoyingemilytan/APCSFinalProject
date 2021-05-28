ArrayList<Customer> customers;
Customer currentCustomer;
void setup() {
  frameRate(30);
  size(1200, 800);
  customers = new ArrayList<Customer>();
  
  for (int i = 0; i < 10; i++)
    customers.add(new Customer());
}

void draw(){
  textSize(12);
  for(int i = 0; i < 10; i++){
    fill(#FFFFFF);
    rect(i * 150 + 20, 600, 100, 50);
    fill(0);
    if(i == 0){text("bun", i * 150 + 30, 620);}
    if(i == 1){text("patty", i * 150 + 30, 620);}
    if(i == 2){text("griddle", i * 150 + 30, 620);}
    if(i == 3){text("tomato", i * 150 + 30, 620);}
    if(i == 4){text("lettuce", i * 150 + 30, 620);}
    if(i == 5){text("onions", i * 150 + 30, 620);}
    if(i == 6){text("potato", i * 150 + 30, 620);}
    if(i == 7){text("knife", i * 150 + 30, 620);}
    if(i == 8){text("deep fry", i * 150 + 30, 620);}
    if(i == 9){text("hot dog bun", i * 150 + 30, 620);}
  }
  for(int i = 0; i < 10; i++){
    fill(#FFFFFF);
    rect(i * 150 + 20, 700, 100, 50);
    fill(0);
    if(i == 0){text("ketchup", i * 150 + 30, 720);}
    if(i == 1){text("mustard", i * 150 + 30, 720);}
    if(i == 2){text("relish", i * 150 + 30, 720);}
    if(i == 3){text("dough", i * 150 + 30, 720);}
    if(i == 4){text("tomato sauce", i * 150 + 30, 720);}
    if(i == 5){text("cheese", i * 150 + 30, 720);}
    if(i == 6){text("oven", i * 150 + 30, 720);}
    if(i == 7){text("raw chicken", i * 150 + 30, 720);}
    if(i == 8){text("fry mix", i * 150 + 30, 720);}
    if(i == 9){text("sausage", i * 150 + 30, 720);}
  }
  for(Customer c : customers){
    while(!c.checkSteps()){
      currentCustomer = c;
    }
  }
}

boolean onButton(int x, int y, int width, int height){
  return (mouseX >= x && mouseX < x + width &&
  mouseY >= y && mouseY <= y + height);
}

void mousePressed() {
  for(int i = 0; i < 10; i++){
    if(onButton(i * 150 + 20, 600, 100, 50)){
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
    if(onButton(i * 150 + 20, 700, 100, 50)){
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

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
  for(int i = 0; i < 10; i++){
    rect(i * 150 + 20, 600, 100, 50);
  }
  for(int i = 0; i < 10; i++){
    rect(i * 150 + 20, 700, 100, 50);
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

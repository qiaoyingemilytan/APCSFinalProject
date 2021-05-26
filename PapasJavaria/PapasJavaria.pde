ArrayList<Customer> customers;
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
}

boolean onButton(int x, int y, int width, int height){
  return (mouseX >= x && mouseX < x + width &&
  mouseY >= y && mouseY <= y + height);
}

void mousePressed() {
  for(int i = 0; i < 10; i++){
    if(onButton(i * 150 + 20, 600, 100, 50)){
      if(i == 0){
        //addStep("");
      }
    }
  }
  for(int i = 0; i < 10; i++){
    if(onButton(i * 150 + 20, 700, 100, 50)){
      if(i == 0){
        //addStep("");
      }
    }
  }
}


void keyPressed() {
}

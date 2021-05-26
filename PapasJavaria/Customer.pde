import java.util.*;

class Customer{
  private boolean hamburger, fries, chicken, hotdog, pizza;
  private ArrayList<String> order, hamburgerSteps, friesSteps, chickenSteps, hotdogSteps, pizzaSteps;

  public void addStep(String step){
    order.add(step);
    if (step.equals("hamburger"))
      hamburger = true;
    if (step.equals("fries"))
      fries = true;
    if (step.equals("chicken"))
      chicken = true;
    if (step.equals("hotdog"))
      hotdog = true;
    if (step.equals("pizza"))
      pizza = true;
  }
  public boolean checkSteps(){
    boolean correct = true;
    if(hamburger){
      if (!order.equals(hamburgerSteps)){
        correct = false;
      }
    }
    if(fries){
      if (!order.equals(friesSteps)){
        correct = false;
      }
    }
    if(chicken){
       if (!order.equals(chickenSteps)){
        correct = false;
      }
    }
    if(hotdog){
      if (!order.equals(hotdogSteps)){
        correct = false;
      }
    }
    if(pizza){
      if (!order.equals(pizzaSteps)){
        correct = false;
      }
    }
    return correct;
  }
  public ArrayList<String> makeOrder(){
    return order;
  }
  public void restartOrder(){
    order.clear();
  }
}

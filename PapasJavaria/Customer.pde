import java.util.*;

class Customer{
  private boolean hamburger, fries, chicken, hotdog, pizza;
  private int correctSize;
  private ArrayList<String> order;
  private ArrayList<String> hamburgerSteps = new ArrayList<String>(
  Arrays.asList("bun", "patty", "griddle", "tomato", "lettuce", "onions", "bun"));
  private ArrayList<String> friesSteps = new ArrayList<String>(
  Arrays.asList("potato", "knife", "deep fry"));
  private ArrayList<String> chickenSteps = new ArrayList<String>(
  Arrays.asList("raw chicken", "fry mix", "deep fry"));
  private ArrayList<String> hotdogSteps = new ArrayList<String>(
  Arrays.asList("hot dog bun", "sausage", "griddle", "ketchup", "mustard", "relish"));
  private ArrayList<String> pizzaSteps = new ArrayList<String>(
  Arrays.asList("dough", "tomato sauce", "cheese", "oven"));

  public void addStep(String step){
    order.add(step);
    if (step.equals("hamburger"))
      hamburger = true;
      correctSize += 7;
    if (step.equals("fries"))
      fries = true;
      correctSize += 3;
    if (step.equals("chicken"))
      chicken = true;
      correctSize += 3;
    if (step.equals("hotdog"))
      hotdog = true;
      correctSize += 6;
    if (step.equals("pizza"))
      pizza = true;
      correctSize += 4;
  }
  public boolean checkSteps(){
    boolean correct = true;
    if(hamburger){
      for (int i = 0; i < order.size(); i++){
        if (!order.subList(i, i+7).equals(hamburgerSteps)){
          correct = false;
        }
      }
    }
    if(fries){
       for (int i = 0; i < order.size(); i++){
        if (!order.subList(i, i+3).equals(friesSteps)){
          correct = false;
        }
      }
    }
    if(chicken){
      for (int i = 0; i < order.size(); i++){
        if (!order.subList(i, i+3).equals(chickenSteps)){
          correct = false;
        }
      }
    }
    if(hotdog){
      for (int i = 0; i < order.size(); i++){
        if (!order.subList(i, i+6).equals(hotdogSteps)){
          correct = false;
        }
      }
    }
    if(pizza){
      for (int i = 0; i < order.size(); i++){
        if (!order.subList(i, i+4).equals(pizzaSteps)){
          correct = false;
        }
      }
    }
    if (correctSize != order.size()){
      correct = false;
    }
    return correct;
  }
  public ArrayList<String> makeOrder(){
    //random order
    return order;
  }
  public void restartOrder(){
    order.clear();
  }
}

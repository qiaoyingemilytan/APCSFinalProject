import java.util.*;
class Customer{
  private boolean hamburger, fries, chicken, hotdog, pizza;
  private double hamburgerPrice = 10, friesPrice = 4, chickenPrice = 8, hotdogPrice = 5, pizzaPrice = 6;
  private double patience;
  private int difficulty;
  private int correctSize;
  private float orderNum;
  private ArrayList<String> order = new ArrayList<String>();
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
  
  public Customer(int difficulty){
    this.difficulty = difficulty;
  }
  public void addStep(String step){
    order.add(step);
  }
  public ArrayList<String> getOrder(){
    return order;
  }
  public ArrayList<String> customersOrder(){
    ArrayList<String> customersOrder = new ArrayList<String>();
    if(hamburger){
      for (String step : hamburgerSteps){
        customersOrder.add(step);
      }
    }
    if(fries){
      for (String step : friesSteps){
        customersOrder.add(step);
      }
    }
    if(chicken){
      for (String step : chickenSteps){
        customersOrder.add(step);
      }
    }
    if(hotdog){
      for (String step : hotdogSteps){
        customersOrder.add(step);
      }
    }
    if(pizza){
      for (String step : pizzaSteps){
        customersOrder.add(step);
      }
    } 
    return customersOrder;
  } 
  public boolean checkSteps(){
    boolean correct = true;
    if (hamburger){
      correct = order.equals(hamburgerSteps);
    }
    if (fries){
      correct = order.equals(friesSteps);
    }
    if (chicken){
      correct = order.equals(chickenSteps);
    }
    if (hotdog){
      correct = order.equals(hotdogSteps);
    }
    if (pizza){
      correct = order.equals(pizzaSteps);
    }
    /*
    if(hamburger){
      boolean complete = false;
      if (order.size() >= 7){
      for (int i = 0; i < order.size() - 6; i++){
        if (order.subList(i, i+7).equals(hamburgerSteps)){
          complete = true;
        }
      }
      }
      if (!complete){
        correct = false;
      }
    }
    if(fries){
       boolean complete = false;
       if(order.size() >= 3){
       for (int i = 0; i < order.size() - 2; i++){
        if (order.subList(i, i+3).equals(friesSteps)){
          complete = true;
        }
      }
       }
      if (!complete){
        correct = false;
      }
    }
    if(chicken){
      boolean complete = false;
      if (order.size() >= 3){
      for (int i = 0; i < order.size() - 2; i++){
        if (order.subList(i, i+3).equals(chickenSteps)){
          complete = true;
        }
      }
      }
      if (!complete){
        correct = false;
      }
    }
    if(hotdog){
      boolean complete = false;
      if (order.size() >= 6){
      for (int i = 0; i < order.size() - 5; i++){
        if (order.subList(i, i+6).equals(hotdogSteps)){
          complete = true;
        }
      }
      }
      if (!complete){
        correct = false;
      }
    }
    if(pizza){
      boolean complete = false;
      if (order.size() >= 6){
      for (int i = 0; i < order.size() - 3; i++){
        if (order.subList(i, i+4).equals(pizzaSteps)){
          complete = true;
        }
      }
      }
      if (!complete){
        correct = false;
      }
    }
    if (correctSize != order.size()){
      correct = false;
    }
    */
    return correct;
  }
  
  public float orderNumber(){
    return orderNum;
  }
  public void makeOrder(){
    orderNum = (float)Math.random() * 5;
    if (orderNum < 1)
      hamburger = true;
    else if (orderNum < 2)
      fries = true;
    else if (orderNum < 3)
      chicken = true;
    else if (orderNum < 4)
      hotdog = true;
    else if (orderNum < 5)
      pizza = true;
    /*
    if (Math.random() * 100 < 25)
      hamburger = true;
      correctSize += 7;
    if (Math.random() * 100 < 25)
      fries = true;
      correctSize += 3;
    if (Math.random() * 100 < 25)
      chicken = true;
      correctSize += 3;
    if (Math.random() * 100 < 25)
      hotdog = true;
      correctSize += 6;
    if (Math.random() * 100 < 25)
      pizza = true;
      correctSize += 4;
      */
    patience = 200 / (difficulty + Math.random());
  }
  public double customersPatience(){
    return patience;
  }
  
 public double totalFoodPrice(){
   double totalPrice = 0;
   if (hamburger){
     totalPrice += hamburgerPrice;
   }
   if (fries){
     totalPrice += friesPrice;
   }
   if (chicken){
     totalPrice += chickenPrice;
   }
   if (hotdog){
     totalPrice += hotdogPrice;
   }
   if (pizza){
     totalPrice += pizzaPrice;
   }
   return totalPrice;
 }
 
 public double patienceLevel(double currentPatience){
   //Patience level is green if the current patience is greater than 50%
   if (currentPatience > patience * 0.5){
     return 0.25;
   }
   //Patience level is yellow if the current patience is greater than 20%
   else if (currentPatience > patience * 0.2){
     return 0.1;
   }
   //Patience level is red if the current patience is under 20%
   return 0;
 }
 
  public void restartOrder(){
    order.clear();
  }
}

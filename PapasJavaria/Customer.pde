import java.util.*;
class Customer{
  private boolean hamburger, fries, chicken, hotdog, pizza;
  private boolean water, soda, lemonade;
  private double hamburgerPrice = 10, friesPrice = 4, chickenPrice = 8, hotdogPrice = 5, pizzaPrice = 6, waterPrice = 1.5, sodaPrice = 2, lemonadePrice = 2.5;
  private double patience;
  private int difficulty;
  private int correctSize;
  private String customerColor;
  private int[] numberOfFoods = {1, 2};
  private ArrayList<String> meals = new ArrayList<String>();
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
    double randomColor = Math.random() * 5;
    if (randomColor < 1)
      customerColor = "red";
    else if (randomColor < 2)
      customerColor = "blue";
    else if (randomColor < 3)
      customerColor = "green";
    else if (randomColor < 4)
      customerColor = "orange";
    else if (randomColor < 5)
      customerColor = "purple";
  }
  public void addStep(String step){
    order.add(step);
  }
  
  public ArrayList<String> getMeals(){
    return meals;
  }
   
  public ArrayList<String> getOrder(){
    return order;
  }
  public String getColor(){
    return customerColor;
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
    if(water){
      customersOrder.add("water");
    }
    if(soda){
      customersOrder.add("soda");
    }
    if(lemonade){
      customersOrder.add("lemonade");
    }
    return customersOrder;
  } 
  public boolean checkSteps(){
    boolean correct = true;    
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
      if (order.size() >= 4){
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
    if (water){
      boolean complete = false;
      if (order.size() >= 1){
      for (int i = 0; i < order.size(); i++){
        if (order.get(i).equals("water")){
          complete = true;
        }
      }
      }
      if (!complete){
        correct = false;
      }
    }
    if (soda){
      boolean complete = false;
      if (order.size() >= 1){
      for (int i = 0; i < order.size(); i++){
        if (order.get(i).equals("soda")){
          complete = true;
        }
      }
      }
      if (!complete){
        correct = false;
      }
    }
    if (lemonade){
      boolean complete = false;
      if (order.size() >= 1){
      for (int i = 0; i < order.size(); i++){
        if (order.get(i).equals("lemonade")){
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
    return correct;
  }
  
  public void makeOrder(){
    float wantsDrink = (float)Math.random() * 1;
    //50 percent chance of the customer wanting a drink
    if (wantsDrink < 0.5){
        float drink = (float)Math.random() * 3;
        correctSize += 1;
        if (drink < 1){
          water = true;
          meals.add("water");}
        else if (drink < 2){
          soda = true;
          meals.add("soda");}
        else if (drink < 3){
          lemonade = true;
          meals.add("lemonade");}
    }
    int number = numberOfFoods[(int)Math.floor(Math.random()*numberOfFoods.length)];
    for (int i = 0; i < number; i++){
      float orderNum = (float)Math.random() * 5;
      if (orderNum < 1 && !hotdog && !hamburger){
        hamburger = true;
        meals.add("hamburger");
        correctSize += 7;
      }
      else if (orderNum < 2 && !fries){
        fries = true;
        meals.add("fries");
        correctSize += 3;
      }
      else if (orderNum < 3 && !chicken){
        chicken = true;
        meals.add("chicken");
        correctSize += 3;
      }
      else if (orderNum < 4 && !hamburger && !hotdog){
        hotdog = true;
        meals.add("hotdog");
        correctSize += 6;
      }
      else if (orderNum < 5 && !pizza){
        pizza = true;
        meals.add("pizza");
        correctSize += 4;
      }
    }
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
   if (water){
     totalPrice += waterPrice;
   }
   if (soda){
     totalPrice += sodaPrice;
   }
   if (lemonade){
     totalPrice += lemonadePrice;
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

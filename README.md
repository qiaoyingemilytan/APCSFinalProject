# Final-Project
Group Name: Papa’s Javaria
Group member names: Qiao Ying (Emily) Tan, Meicheng Wang
Brief Project description:
You work at a restaurant called Papa’s Javaria. During your shift, many customers come up to you and ask for a specific order. You fulfill their orders by using the ingredients available to you and kitchen appliances in order to cook and create food. While making food for hungry customers, it is important to note that they will run out of patience if you take too long to prepare their order. You don’t want your customers to run out of patience or else they will leave, without paying, and give a bad review. The money your restaurant gets after each shift depends on the amount of customers that pay and tips. After each shift, you get a rating out of three stars, which is determined by the amount of money made during that shift. You can only go on to the next shift if you get a rating over one star. Use earned money to upgrade your restaurant’s kitchen and decor. Make your restaurant the most popular place to eat in the city.

https://docs.google.com/document/d/1zl40j49Ib5RUjhPSt_oFYJmowwYiNY7DIoC5XMlTUdw/edit?usp=sharing

Development Log
5/24/21

Meicheng Wang: Created Customer class with instance variables such as the food booleans and the ArrayLists representing steps for each food item.

5/26/21

Meicheng Wang: I updated the Customer class so it has all the necessary methods. Also I initialized the food steps ArrayLists so that held specific instructions for making each food. These ArrayLists are compared to the order ArrayList to check if the order is correct.

Qiao Ying (Emily) Tan: I started setting up the customer class and buttons on the demo. I created an ArrayList of customers and worked on the mousePressed function so that if you click a button, the corresponding step will be added.

5/27/21

Qiao Ying (Emily) Tan: I finished up the buttons, adding text and if statements that determine which button will add which step. I added currentCustomer so that the customer's order being taken will stay the same until the order is correct.

5/28/21

Meicheng Wang: I updated the Customer class so that addStep(String step) only adds the step to order now instead of checking for added food strings to make booleans true. Instead the food booleans becoming true is based on a 15 out of 100 chance in the makeOrder() method which no longer returns the ArrayList order but only determines which foods the customer is ordering. I also made a new instance variable so that you are not able to serve all the correct foods while also providing excess ingredients in the order. I also updated the checkSteps() method so that it uses for loops to check a sublist of the order ArrayList in order to check if it is equivalent to the food steps ArrayLists.

6/1/21

Meicheng Wang: I updated the Customer class so that the checkSteps checked if correctSize integer was equal to the size of order in order to check not only if you ahd served all the correct foods in the correct order to the customer, but to see if you gave any excess ingredients or foods that you should not have.

6/2/21

Meicheng Wang: I added a patience instance variable to the Customer class, that represents the time in seconds that a customer has before they leave out of impatience from them not getting their correct order. I increased the chances for each food to be ordered in the makeOrder method because I felt like 15% chance for a food to be ordered was a big opportunity for a customer to order nothing, which I didn't want to happen at all. I added a difficulty instance variable, which I planned to only go up to 3, from 1. The patience of customer would be determined by the difficulty level in the formula: patience = 200 / (difficulty + Math.random()), with the Math.random() addition being there to add some variability to the patience times instead of it being uniform for each customer per difficulty level. 

6/3/21

Meicheng Wang: I updated the PapasJavaria class so that there would be a button called giveOrder that would serve the order to the customer when you clicked. This button utilized checkSteps() to check if the order was correct, and if the it wasn't it would call the restartOrder method and clear the order arraylist. I was also revising my code in order to achieve multi food ordering from customers, so I changed the food if conditional statments so that they would not check a sublist of the order arraylist unless order was above a certain size to prevent a NullPointerException from occuring. Also I created a constructor for the Customer class, with a parameter difficulty that took in the difficulty level to determine the patience of the customer.

6/4/21

Meicheng Wang: I updated the Customer class so that there was a button called Display Order button, which displayed the order that you had to serve to the customer when you clicked it. I made a method called getOrder() which returned the order arraylist. This method was useful for keeping track of the ingredients in the order arraylist while I was clicking the ingredient buttons that were adding steps to order. I also updated the Customer class so that there would be a method called customersOrder which would return the specific complete order of the customer. I made this so that when I clicked the display customers order button, it would inform me of what I am trying to make and help me compare my current order to the customers desired order. Unfortunately I had to adjust the checkSteps() method because I had found problems when running the program under the assumption of multiple food item orders so I made the program under the assumption of single food item orders to develop the fundamentals of the game, and left multi food items orders as a later thought.

Qiao Ying (Emily) Tan: I added an inProgress boolean to check if the current order was still being run and so checkSteps did not need to be constantly run, and instead only be run when you give an order. I also created makeOrder which generates a random integer and based on that gives the customer a random order. I then got rid of inProgress and instead used customerNumber to keep track of the current customer. Once the customer's order was finished, customerNumber increases and moves onto the next. I added a serve customer button to make and display their order.

6/6/21

Meicheng Wang: I again committed changes so taht I adjusted the checkSteps() method under the assumption only single food orders would be made. I believed that the randomization was broken because when I ran the program and clicked the Display Customer's Order button, it would only display hamburgers steps. Also when I precisely added the hamburger ingredients to the order in the correct order and gave in the order, it returned "Wrong Order" which I believed to be the fault of the checkSteps code. I also upped the chances of other foods being ordered to attempt to prevent the consistent hamburger orders.

6/8/21
Qiao Ying (Emily) Tan: I fixed the issue of the steps overlapping when redoing orders by adding a rectangle behind the text each time. I did the same thing to the correct and wrong order messages. I got rid of the display order button and by using stepPosition to keep track of the step of the order, displayed the steps as the user inputted them.

6/10/21
Qiao Ying (Emily) Tan: I digitally drew all the ingredients with transparent backgrounds and replaced the rectangular buttons with the corresponding images. I altered the sizing and layout of all the ingredients/appliances images and texts to fit well together. I also reordered and fixed more overlapping issues on the order box and the customer bubble. In the customer class, I created a meals arraylist to keep track of the meals, and meals get added when makeOrder() sets the corresponding orders true. These meals show up as images underneath the order box for the worker to see.

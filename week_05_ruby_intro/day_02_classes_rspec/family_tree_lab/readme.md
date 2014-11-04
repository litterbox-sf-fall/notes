## Family Tree Lab

For this lab you are going to use your knowledge of Classes, inheritance and rspec to build a small family tree app and pass a bunch of tests.

### Getting started

1. Start working on the Grandparent class tests and try to get them to pass one by one. To do this you will need to research how to test if something is an instance of a class. 
2. The Grandparent should have a class variable called grandchildren that should start at 0 as well as a class variable called family which should be an empty array.
3. The Grandparent class should have class methods to get the number of grandchildren and the family array. 
4. The Grandparent class should also have a method to add an instance of a Grandparent to the family array
5. Finally, the Grandparent class should have a class method called showFamily which loops over the family array and displays each family member as a hash with the following keys (relation, name age).  The relation will be whatever Class you have added (either Grandparent, Parent or Child. To do this, you will have to look up how to see what Class something is.


### Next steps

Once you have gotten these tests to pass, move onto the parent class:

0. Take a look at the tests and start writing some failings ones.
1. Start by having Parent inherit from Grandparent class and use `super` to easily initialize instances of the Parent class.
2. Also, make sure the parent Class has a class variable called children which will start at 0. 
3. Write the code necessary to make your tests pass

### Finishing up

Once you've completed the Parent class, finish with the Child class which should inherit from Parent.

0. First take a look at the tests and write failing tests.
1. Once again, make sure the Child inherits from parent, and use super to DRY up your initialize method. Assign the Child class a class variable called favColors which is an array of colors. 
2. When the Child is created, randomly pick a color from the array and assign it to the instance variable @favColor (this will require you to look at the documentation for the .sample method)
2. Give the Child class a method to get the array of colors 
3. Write a method called growUp which increments the instance variable @age by one
4. Finally write a method called 'talk' which will take one parameter called text and return a message depending on the child's age
    - if the child is older than 2, have your method display the value of the text parameter and the child's favorite color
    - if the child is under 2, have your method return "Wahhh!" 
    - give your text parameter a default value of nil so that you can call talk() without an error. This will require you to look up how to assign default values for a parameter.




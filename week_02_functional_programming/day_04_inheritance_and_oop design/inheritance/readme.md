## Prototypes Revisited + Prototypal Inheritance

## Review

We mentioned in the last lesson that a prototype was the building block of an object and that when we create a new class, we can attach attributes and methods to the prototype (as a better alternative to adding them in the constructor function to save memory).

### prototype vs __proto__

### hasOwnProperty

### isPrototypeOf



## Classical Inheritance

### Review of a Prototype In JS

In javascript we don't have classes, so we use constructor functions and prototypes to create them.

	function Person(name){
		this.name = name
	}
	
	Person.prototype.greet = function(){
		return "Hello, my name is " + this.name;
	};

* Why do we use the prototype?
* What is a `hasOwnProperty`?
* What is a `prototypeProperty`?
* How do we create a new `Person`?


### Static Methods and Attributes - TALK MORE

Here is a static attribute

```
	Person.all = [];
```

Here is a static method

```
	Person.count = function(){
		return Person.all.length;
	};
```

### Inheriting Via Prototypes

We have previously mentioned briefly, that objects can inherit properties and methods from other objects. In JavaScript we use prototypes to do this and it is called inheritance. The formal term for this inheritance via prototypes is called prototypal inheritance.

Inheritance is done in two steps

1. Set the prototype of the subclass (the class that will get methods and properties from it's parent, which is also known as the superclass) to a new instance of the superclass
2. Set the constructor of the subclass equal to it's constructor function (which was overwritten when the prototype was set to the superclass)

Given the following example let's create a Student class that inherits from Person.

	function Person(name){
		this.name = name
	}
	
	Person.prototype.greet = function(){
		return "Hello, my name is " + this.name;
	};

	function Student(name, course){
		this.name = name;
		this.course = course;
	};

	Student.prototype = new Person
	Student.prototype.constructor = Student;

* What's inherited?
* Why set the constructor?

### Shape Exercises:

* Create a method called `inherit` that takes two constructors and achieves the above inheritance.

* Try implementing the following:

   | Quadrilateral |
   | :---- |
   | perimeter |
   | Sides: 4 |
      	   	   
  Note: the `Quadrilateral` constructor should take four side lengths.

*  Use your `inherit` function to have `Rectangle` inherit from `Quadrilateral`. 
* The following should inherit from `Rectangle`, `square`.

* Update the `prototypes` of `Rectangle` and `Square` above so they have more specific methods. `Rectangle` needs an `Area` method and a better `Perimeter` method. `Square` also needs a better `Area` method and  a better `Perimeter` method.


### Pitfals--Side Effects

When we inherit in JS we have to watch out for in the wild.

	
	function Person(name){
		this.name = name;
		this.friends = [];
	}
	
	Person.prototype.addFriend = function(name){
		this.friends.push(new Person(name));
	};
	
	function Student(name){
		this.name = name;
	};
	
	Student.prototype = new Person()
	Student.prototype.constructor = Student;

* Create two students and add different  friends to each. What 
	* What happens after adding a friend?


### `call` and `apply`

Example 1:

```
var getAge = function(friend) {
	return friend.age;
}

var john = { name: "john", age: 21 };
getAge(john)

```

rewritten using `this`

```
var getAge = function() {
	return this.age;
}

var john = { name: "john", age: 21 };
getAge.call(john)

```

Example 2:

```
var setAge = function(friend, newAge) {
	friend.age = newAge;
}

var john = { name: "john", age: 21 };
setAge(john, 12)

```

rewritten using `this`

```
var setAge = function(newAge) {
	this.age = newAge;
}

var john = { name: "john", age: 21 };
setAge.call(john, 12)

```

	
	
### Calling on a solution

Let's talk about using `call` or `apply` to set the `this` context for a function before it is run.

	function Person(name){
		this.name = name;
		this.friends = [];
	}
	
	Person.prototype.addFriend = function(name){
		this.friends.push(new Person(name));
	};
	
	function Student(name){
		// masks all the constructor properties
		Person.call(this);
		this.name = name;
	};
	
	Student.prototype = new Person()
	Student.prototype.constructor = Student;


* Do we really want hasOwnProperties?


### Copying the Prototype

	function Person(name){
		this.name = name;
	}
	
	Person.prototype.greet = function(){	
		return "Hello! My name is " + this.name;
	}
	
	function Student(name){
		// masks all the constructor properties
		Person.call(this);
		this.name = name;
	};
	
	var Intermediary = function(){};
	// Copy just the prototype
	Intermediary.prototype = Person.prototype;
	Student.prototype = new Intermediary;

* Turn this inheritance process into a function called `inherits`.
* Create a new `Student`. What's the constructor name of the new student?

This is an interesting idea of copying one objects prototype and returning an instance of a copy. 

* How could we in general take an object and do this process with it?

		function createObject(protoObj){
			function Intermediary(){}
			Intermediary.prototype = obj;
			return new Intermediary();
		}


* Let's use this createObject.
* What would we have to change with `createObject` to have it properly update the constructor property.


#### Some good additional reading


[http://geekabyte.blogspot.com/2013/03/difference-between-protoype-and-proto.html](http://geekabyte.blogspot.com/2013/03/difference-between-protoype-and-proto.html)

[http://www.quora.com/What-is-the-difference-between-__proto__-and-prototype](http://www.quora.com/What-is-the-difference-between-__proto__-and-prototype)

[https://coderwall.com/p/j1khtg](https://coderwall.com/p/j1khtg)







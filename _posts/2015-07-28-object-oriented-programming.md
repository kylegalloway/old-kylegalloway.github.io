---
layout: post
title: Object Oriented Programming
category: General
---
> The main idea of Object Oriented Programming is to promote code reuse and handle complexity.

### What is an object?

> An object is a representation of something. Some people say it is a representation of concrete things or objects. I like to think that it can be that, and it can also be a representation of an idea. This way you could have objects that represent Cars, Phones, People, and more. But you can also have objects that represent A Graph or a System.

- - -

### 5 key things to remember about objects

1. Encapsulation
2. Inheritence
3. Polymorphism
4. Cohesion
5. Coupling

### Encapsulation

> This is the ability to encapsulate or contain and hide some of the logic in an object. It allows this object to have private attributes/methods and public ones. In Python this is shown in the form of classes. they are Python's *object*.  Python's classes don't have true encapsulation. But the general concensus is that an underscore in front of a variable or a method denotes it as private.

- - -

### Inheritence

> Inheritance is a little easier to explain. Inheritance happens when you want one object or class to have the oroperties of another.
> Say, for instance, that you have an Animal class. And this Animal class has the property: is_alive = True.
> Inheritance comes into play when you want to have a class for Dogs specifically. So your dog class can inherit from the Animal class. It eill therefore inherit all of the properties and methods of the Animal class. So your Dog class will have access yo the is_alive method. This can go even further. You can have a property: num_of_legs = 4, and the method speak() { print "Woof!"}. and then you can create a class named Labrador and it would inherit both of those and the is_alive method from the Animal class.

- - -

### Polymorphism

> Polymorphism means you can have multiple instances of the same class. So you can have 3 Labrador class objects.

- - -

### Cohesion

> Cohesion is how well your classes perform their job. Most of the time you will try to design classes to do one job. So you may have a BankAccount class. And it's job is to be able to withdraw money, deposit money, & see a balance. Good cohesion means it doesn't have other things such as get_credit_score and customer_name in it. High cohesion is good!

- - -

### Coupling

> Coupling is the opposite of cohesion in that you want low coupling. Coupling is when one class relies on another class too much. It can happen when you have say a BankAccount class and a PrintBankAccount class. The PrintBankAccount class relies way too much on the BankAccount class. To help you might change the BankAccount class's display_balance method to return a string. Then pass that to a class that takes a string and prints it. That way you can safely reuse either class.

{% include twitter_plug.html %}

Takeaway Challenge
==================

Week 4 Makers Academy Challenge

###Specification

Level 1 - Inject Method: 
+   Reopen the Array class or subclass it, then rewrite the inject method.

Level 2 - Takeaway Program:

+ Lists the dishes with prices
+ Places the order by giving the list of dishes, their quantities and a number that should be the exact total.
+ If the sum is not correct the method should raise an error
+ Otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now.

Bonus Level - Attr-accessor method:
+ Re implement the attr_accessor method. The method will create other methods dynamically to access and to set instance variables.

###Technologies used

+ Ruby
+ RSPEC
+ Twilio

###How to set it up

```sh
git clone https://github.com/aitkenster/takeaway-challenge.git
```

###How to run it

To run takeaway

```sh
cd takeaway-challenge
bunde install
irb
require './lib/customer_order.rb'
Customer_Order.new.place_order

```

To run inject method

```sh
cd takeaway-challenge
irb
require './lib/inject/inject.rb'

```

To run attr accessor

```sh
cd takeaway-challenge
irb
require './lib/attr_accessor/attribute_accessor_method.rb

```

###How to test it

```sh
cd takeaway-challenge
rspec
``` 

###Future Improvements

+ I would change the class names of takeaway, as 'Order' and 'Customer Order' aren't clear.
+ Put the inject and attr accessor programs into seperate repositories.

# Bank App

A simple Bank app that allows the user to deposit, withdraw and see their bank balance
and statement.


## How to use

1. Clone the repo
2. Run bundle
3. Use in IRB
4. Require files
5. Enjoy !


## How to run tests

Simply run 'rspec' in the terminal and the test coverage will also appear (it is 100%).

## Requirements

Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).


## My approach

I knew I needed at least three classes after considering SRP and separation of concerns.

Account class
Calculator class
Printer class

For the functionality I needed to have 5 methods. Each of which would be in those 3 classes.
I decided to place them in the following classes.

Date method - Account (done)
Balance method- Account (done)
Deposit method - Account (done)
Withdraw method- Calculator (done)
Statement method- Printer (done)

The logic was then extracted wherever possible and each method and class follows the single
responsibility principle. Using modules all of the methods can be called on the Account class.
This to me makes sense as you would like to run in IRB account.balance, account.deposit etc.
However, you would not want the logic needed to run those functions to occur inside the account class.
The account class should just be where the functions are called. Not where the addition/subtraction
of funds takes place. With this in mind I extracted the logic of those functions to the other two classes.
Thus allowing me to successfully keep the classes and their methods slim and short.

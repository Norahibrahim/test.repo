
# Project Proposal

The goal of the project is create Library of books using dart program language

## Requirements

 Display the book include the library with title author and id of the book ,Quantity and price
Adding, modifying, deleting books and displaying their information of books. 
## Data
We used data type in dart such as list map for display the books details(book id ,book title 
author, Quantity, price), and used integer  for counter  
## Tools
we use in our project 
dart  io library  
if

do while 

switch

stdin 

String interpolation




## # Code analysis :


#### 

```http
 Parameter used
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `next` | `string` | the key word input from user|
| `book` | `list` | to use for list detalis of books|
| `counter` | `integer` |  initial  value |
| menu| `var ` | to show uesr the menu|
| inputnumber  | `integer` | the number of input from user|
| Yes_No| `string` | when user write yes or no|
| Searchmenu| `var` | to show search menu|
| Raw | `integer` | to ues for save new value
| ListOfEdit| `var` | to  save new value list
|  pay | `var` | to has tow values yes or no 
 |  listOfOperation | `var` | to disblay 'Search Of Books', 'Back', 'Exit' 




## homepage
It  is for display Homepage before registration
The first thing when you run it will print these sentences,
then it will request from the user to write [next] to show the menu of operations.
if you enter the wrong input 3 times then it will stop the system

| stdin.readLineSync()!;  | its important for enter  value from the user      |                 |
| :-------- | :------- | :------------------------- |
| toLowerCase()   | if user using capital or lower case reader     |                 |

use if becuse when the user input "next" is vaild  value  

if else when the user input invalid value


## viewUserMenu
to display the menu for the usermenu has 8 choice for the user
if you enter the wrong input 3 times then it will stop the system
we used index for the choieses
we used string interpolation 
for the input from user 
and use if 
the menu have "View the Books", 
   
    'Add book', 
    'Delete book', 
    'Edit Book',
    'Search of Book you need', 
    'My Bag', 
    'How are we ', 
    'Exit' 
 


## options
hear will organize the options process by calling or print

we uesd  while switch the 

####   case 1:print(   "these are all the books that we have, hope you find the book you want...\n");
#### case 2 until case 7 to disblay the choise of uesr and do the method the ueser needed.
 return 0 to stop program

## ViewBook
To display all books 
| String interpolation     |   print("${Books.indexOf(index) + 1}. ${index}) | to use string and index   togather             |
| :-------- | :------- | :------------------------- |





## addBooks
in this part the user can add a new book into the library by write all details about the books
#### and save directly in new book list  
###### Books.add({
    "Book Id": id,
    "Book Title": bookTitle,
    "Author Name": AuthorName,
    "Price": Price,
    "Quantity": Quantity
  });

And user can add more than one of books.


## deleteBooks 
here user can delete books by the id and delete all details of book 
we use here id type integer and use method to increase the id – and delete directly. 

## eidtBooks
modifying, books and displaying their information of books.


## Mybag
here the uesr can buy the books .



## SearchOfBooks

to serach of books by details of book
iclude SearchOfIdBook ,
SearchOfBookTitle,
id SearchOfBookAuthor,


## main 
the important thing to run the program
and all operations into the main .


## sample of Run 



```bash
                                                     --------Welcome to Razan & Norah Bookstore--------

                                      --------you will find all the lovely books that you intrested with--------

                                                            --------hope you injoy--------

                                                                       ***   ***
                                                                      ***** *****
                                                                       *********
                                                                         *****
                                                                           *

Please type [ Next ] to show the operations menu
```






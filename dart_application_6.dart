//improt importent thinks.....
import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:vm_service/vm_service.dart';

//============================================================================================================================
//                                                        Main
//============================================================================================================================
void main() {
  //ADD BOOKS
  Books.add({
    "Book Id": 1,
    "Book Title": "Start with why",
    "Author Name": "Simon Sinek",
    "Price": 80.0,
    "Quantity": 13
  });

  Books.add({
    "Book Id": 2,
    "Book Title": "But how do it know",
    "Author Name": "J.Clark Scott",
    "Price": 59.9,
    "Quantity": 22
  });

  Books.add({
    "Book Id": 3,
    "Book Title": "Clean Code",
    "Author Name": "Robert Cecil Martin",
    "Price": 50.0,
    "Quantity": 5
  });

  Books.add({
    "Book Id": 4,
    "Book Title": "Zero to One",
    "Author Name": "Peter Thiel",
    "Price": 45.0,
    "Quantity": 12
  });

  Books.add({
    "Book Id": 5,
    "Book Title": "You don't know JS",
    "Author Name": "Kyle Simpson",
    "Price": 39.9,
    "Quantity": 9
  });

  //call
  homePage();

//
} //end main
//============================================================================================================================
//                                                        تعريف متغيرات
//============================================================================================================================

List<Map> Books = [];

//============================================================================================================================
//                                                             Home Page
//============================================================================================================================
int counter =
    0; //it will count the number of wrong attempts, maximum attempt 3 time
void homePage() {
  //The first thing when you run it will print these sentences,
  //then it will request from the user to write [next] to show the menu of operations.
  //if you enter the wrong input 3 times then it will stop the system

  print(
      " \n                                                     --------Welcome to Razan & Norah Bookstore--------      \n");

  print(
      "                                      --------you will find all the lovely books that you intrested with--------\n");

  print(
      "                                                            --------hope you injoy--------                      \n");

  print(
      "                                                                       ***   ***                                  ");
  print(
      "                                                                      ***** *****                                 ");
  print(
      "                                                                       *********                                  ");
  print(
      "                                                                         *****                                    ");
  print(
      "                                                                           *                                    \n");

  print("Please type [ Next ] to show the operations menu\n");
  String next = stdin.readLineSync()!;

  if (next.toLowerCase() == "next") {
    counter = 0;
    viewUserMenu();
    print(
        "____________________________________________________________________________________________________________________\n");
  } else if (counter < 2) {
    ++counter;
    print("\n   INVALID INPUT!!\nPlease try again  J.J\n");
    print(
        "____________________________________________________________________________________________________________________\n");
    homePage();
  } else {
    print(
        "\n      INVALID OUT OF RANGE. \nWRONG ANSWER TRIED A LOT OF TIMES. o_o\n");

    print(
        "____________________________________________________________________________________________________________________\n");

    exit(0);
  }
} //end homePage

//============================================================================================================================
//                                                        view user Menu
//============================================================================================================================
dynamic viewUserMenu() {
  //in here it will print list of operations menu..
  //it request number of operation and then will call operation that i choose
  //if you enter the wrong input 3 times then it will stop the system

  var menu = [
    "View the Books", //1
    'Add book', //2
    'Delete book', //3
    'Edit Book', //4
    'Search of Book you need', //5
    'My Bag', //6
    'How are we :))', //7
    'Exit' //8
  ];
  print(
      "____________________________________________________________________________________________________________________\n");

  stdout.writeln("\n--------What are you looking for?--------\n");
  stdout.writeln("* Please select [NUMBER] of your operation\n");
  menu.forEach((index) {
    print("${menu.indexOf(index) + 1}. ${index}");
  });

  print('\n-----------------------------------------');
  //Scanner input
  int inputnumber = int.parse(stdin.readLineSync()!);

  print(
      "____________________________________________________________________________________________________________________\n");

  if (inputnumber >= 1 && inputnumber <= 7) {
    counter = 0;
    options(inputnumber1: inputnumber);
  } else if (counter < 2) {
    ++counter;
    print("\n   INVALID INPUT!!\nPlease try again  J.J\n");
    viewUserMenu();
  } else {
    print(
        "\n      INVALID OUT OF RANGE. \nWRONG ANSWER TRIED A LOT OF TIMES. o_o\n");

    exit(0);
  }
} //End view Menu

//============================================================================================================================
//                                                        options
//============================================================================================================================
int options({required int inputnumber1}) {
//hear will organize the options process by calling or print
  while (inputnumber1 <= 7) {
    switch (inputnumber1) {
      case 1:
        print(
            "these are all the books that we have, hope you find the book you want...\n");
        ViewBook();

        var listOfOperation = ['Back', "Exit"];

        listOfOperation.forEach((index) {
          print("${listOfOperation.indexOf(index) + 1}. ${index}");
        });
        print('-----------------------------------------');
        int input = int.parse(stdin.readLineSync()!);
        print("\n");
        if (input == 1) {
          viewUserMenu();
        } else {
          exit(0);
        }

        break;
      //___________________________________________________________
      case 2: //left
        addBooks();
        break;
      //___________________________________________________________
      case 3:
        deleteBooks();
        break;
      //___________________________________________________________
      case 4:
        eidtBooks();
        break;
      //___________________________________________________________
      case 5:
        SearchOfBooks();
        break;
      //___________________________________________________________
      case 6:
        myBag();
        break;
      //___________________________________________________________
      case 7:
        print("This is one of the best bookstore in Tuwaiq Academy");
        print("-------------Hope you like everything--------------");
        print("---------------LOVE RAZAN & NORAH <3 --------------\n");

        print('-----------------------------------------');

        var listOfOperation = ['Back', 'Exit'];
        print("\n");
        listOfOperation.forEach((index) {
          print("${listOfOperation.indexOf(index) + 1}. ${index}");
        });
        print('-----------------------------------------');
        String Yes_No = stdin.readLineSync()!;
        int counter1 = 0;
        if (Yes_No.toLowerCase() == "yes" || Yes_No == "1") {
          viewUserMenu();
        } else {
          exit(0);
        }

        break;
      //___________________________________________________________
      case 8:
        print("thank you for visit our BookStore come again <3\n");
        exit(0);
        break;
      //___________________________________________________________
      default:
        print("Please select from the number from menu try again ^~^ !\n");
    }
  }
  return 0;
}

//============================================================================================================================
//                                                        view Book
//============================================================================================================================
dynamic ViewBook() {
  Books.forEach((index) {
    print("${Books.indexOf(index) + 1}. ${index}");
  });

  print(
      "\n____________________________________________________________________________________________________________________");
}

//============================================================================================================================
//                                                          Add book
//============================================================================================================================
void addBooks() {
  print(
      "Hi there, please complete the 5 questions then the book will add automatically to the list of books.\n");

  print("Please write Book Id:");
  int id = int.parse(stdin.readLineSync()!);

  print("Please write Book Title:");
  String bookTitle = stdin.readLineSync()!;

  print("Please write Author Name:");
  String AuthorName = stdin.readLineSync()!;

  print("Please write Price:");
  double Price = double.parse(stdin.readLineSync()!);

  print("Please write Quantity:");
  int Quantity = int.parse(stdin.readLineSync()!);

  Books.add({
    "Book Id": id,
    "Book Title": bookTitle,
    "Author Name": AuthorName,
    "Price": Price,
    "Quantity": Quantity
  });

  print("\nyour book are add successfully!");
  print('-----------------------------------------');

  var listOfOperation = ['Add more book', 'Back', 'Exit'];
  print("\n");
  listOfOperation.forEach((index) {
    print("${listOfOperation.indexOf(index) + 1}. ${index}");
  });
  print('-----------------------------------------');
  int input = int.parse(stdin.readLineSync()!);
  print("\n");
  if (input == 1) {
    addBooks();
  } else if (input == 2) {
    viewUserMenu();
  } else {
    exit(0);
  }
}

//============================================================================================================================
//                                                          Delete book
//============================================================================================================================
void deleteBooks() {
  print(
      "Hi there, please write the [NUMBER] then the book will Delete automatically from the list of books.\n");

  ViewBook();

  int id = int.parse(stdin.readLineSync()!);

  print("\nAre you sure you want to delete this book");

  var Yes_No = ['Yes', 'No'];
  print('-----------------------------------------');
  Yes_No.forEach((index) {
    print("${Yes_No.indexOf(index) + 1}. ${index}");
  });
  print('-----------------------------------------');
  String in1 = stdin.readLineSync()!;

  if (in1.toLowerCase() == "yes" || in1 == "1") {
    Books.removeAt(--id);
    print("your book are delete successfully!\n");
  }

  var listOfOperation = ['Delete more book', 'Back', 'Exit'];
  print('-----------------------------------------');
  listOfOperation.forEach((index) {
    print("${listOfOperation.indexOf(index) + 1}. ${index}");
  });
  print('-----------------------------------------');
  int input = int.parse(stdin.readLineSync()!);

  if (input == 1) {
    deleteBooks();
  } else if (input == 2) {
    viewUserMenu();
  } else {
    exit(0);
  }
}

//============================================================================================================================
//                                                            Eidt Books
//============================================================================================================================

void eidtBooks() {
  print("What kind of book that you want to Edit..");
  ViewBook();
  int Row = int.parse(stdin.readLineSync()!);
  print("you want to Edit.....");
  var ListOfEdit = [
    'Book Id',
    "Book Title",
    'Author Name',
    'Price',
    'Quantity'
  ];
  ListOfEdit.forEach((index) {
    print("${ListOfEdit.indexOf(index) + 1}. ${index}");
  });
  print('-----------------------------------------');
  int Column = int.parse(stdin.readLineSync()!);
  print('-----------------------------------------');

  if (Column == 1) {
    print("The new Book ID..");
    print('-----------------------------------------');
    int newId = int.parse(stdin.readLineSync()!);
    print('-----------------------------------------');
    Books[--Row]['Book Id'] = newId;
    //
  } else if (Column == 2) {
    print("The new Book Title..");
    print('-----------------------------------------');
    String newTitle = stdin.readLineSync()!;
    print('-----------------------------------------');
    Books[--Row]["Book Title"] = newTitle;
    //
  } else if (Column == 3) {
    print("The new Author..");
    print('-----------------------------------------');
    String newAuthor = stdin.readLineSync()!;
    print('-----------------------------------------');
    Books[--Row]['Author Name'] = newAuthor;
    //
  } else if (Column == 4) {
    print("The new Price.");
    print('-----------------------------------------');
    double newPrice = double.parse(stdin.readLineSync()!);
    print('-----------------------------------------');
    Books[--Row]['Price'] = newPrice;
    //
  } else if (Column == 5) {
    print("The new Quantity..");
    print('-----------------------------------------');
    int newQuantity = int.parse(stdin.readLineSync()!);
    print('-----------------------------------------');
    Books[--Row]['Quantity'] = newQuantity;
  }

  var listOfOperation = ['Edit more things', 'Back', 'Exit'];
  print('-----------------------------------------');
  listOfOperation.forEach((index) {
    print("${listOfOperation.indexOf(index) + 1}. ${index}");
  });
  print('-----------------------------------------');
  int input = int.parse(stdin.readLineSync()!);

  if (input == 1) {
    eidtBooks();
  } else if (input == 2) {
    viewUserMenu();
  } else {
    exit(0);
  }
}

//============================================================================================================================
//                                                            My Bag
//============================================================================================================================
List<Map> Bag = [];

void myBag() {
  //
  Bag.forEach((index) {
    print("${Bag.indexOf(index) + 1}. ${index}");
  });
  //
  if (Bag.isNotEmpty) {
    print("are you sure you want to pay these books");
    var pay = ['Yes', 'No'];
    pay.forEach((index) {
      print("${pay.indexOf(index) + 1}. ${index}\n");
    });
    String pay1 = stdin.readLineSync()!;
    //

    if (pay1.toLowerCase() == 'yes' || pay1 == '1') {
      double x = 0.0;
      int z = 0;
      for (var element in Bag) {
        double y = Bag[z++]['Price'];
        x = x + y;
      }
      print("Thank you for buying from our store <3 \n The Price is: ${x} RAS");
    } else {
      print(
          "Hi there, please write the [NUMBER] then the book will Delete automatically from the list of books.\n");

      Bag.forEach((index) {
        print("${Bag.indexOf(index) + 1}. ${index}");
      });
      int num = int.parse(stdin.readLineSync()!);

      print("\nAre you sure you want to delete this book");

      var Yes_No = ['Yes', 'No'];
      print('-----------------------------------------');
      Yes_No.forEach((index) {
        print("${Yes_No.indexOf(index) + 1}. ${index}");
      });
      print('-----------------------------------------');
      String num1 = stdin.readLineSync()!;

      if (num1.toLowerCase() == "yes" || num1 == "1") {
        Bag.removeAt(--num);
        print("your book are delete successfully!\n");
      }

      var listOfOperation = ['My Bag', 'Back', 'Exit'];
      print('-----------------------------------------');
      listOfOperation.forEach((index) {
        print("${listOfOperation.indexOf(index) + 1}. ${index}");
      });
      print('-----------------------------------------');
      int input = int.parse(stdin.readLineSync()!);

      if (input == 1) {
        myBag();
      } else if (input == 2) {
        viewUserMenu();
      } else {
        exit(0);
      }
    }
  } else {
    print("\nThere are no books in your bag\n");
  }
  var listOfOperation = ['Search Of Books', 'Back', 'Exit'];
  print('-----------------------------------------');
  listOfOperation.forEach((index) {
    print("${listOfOperation.indexOf(index) + 1}. ${index}");
  });
  print('-----------------------------------------');
  int input = int.parse(stdin.readLineSync()!);

  if (input == 1) {
    SearchOfBooks();
  } else if (input == 2) {
    viewUserMenu();
  } else {
    exit(0);
  }
}

//============================================================================================================================
//                                                        Search Of Books
//============================================================================================================================
late int Searchnum;
void SearchOfBooks() {
  var Searchmenu = ['Book Id', "Book Title", 'Author'];
  do {
    stdout.writeln("--------Type Of Search--------\n");
    Searchmenu.forEach((index) {
      print("${Searchmenu.indexOf(index) + 1}. ${index}");
    });
    Searchnum = int.parse(stdin.readLineSync()!);
    switch (Searchnum) {
      case 1:
        SearchOfIdBook();
        break;
      //___________________________________________________________
      case 2:
        SearchOfBookTitle();
        break;
      //___________________________________________________________
      case 3:
        SearchOfBookAuthor();
        break;
      //___________________________________________________________
      default:
        print("Please select from the number from menu try again ~_~ ! ");
    }
  } while (Searchnum < 1 && Searchnum > 3);
} // End SearchOfBooks

void SearchOfIdBook() {
  print("Please enter book id>>");
  int SearchBI = int.parse(stdin.readLineSync()!);
  if (SearchBI >= 0 && SearchBI <= Books.length) {
    print("your Book is: ${Books[--SearchBI]}");
    print('-----------------------------------------');
    print("\nDo you want to add it in your bag?\n");
    var listOfOperation = ['Yse', 'No'];
    print('-----------------------------------------');
    listOfOperation.forEach((index) {
      print("${listOfOperation.indexOf(index) + 1}. ${index}\n");
    });
    String Yes_No = stdin.readLineSync()!;
    if (Yes_No.toLowerCase() == "yes" || Yes_No == "1") {
      Bag.add(Books[SearchBI]);
    }
  } else {
    print("invalid input!!");
  }
  var listOfOperation = ['Search Of Books', 'Back', 'Exit'];
  print('-----------------------------------------');
  listOfOperation.forEach((index) {
    print("${listOfOperation.indexOf(index) + 1}. ${index}");
  });
  print('-----------------------------------------');
  int input = int.parse(stdin.readLineSync()!);
  if (input == 1) {
    SearchOfBooks();
  } else if (input == 2) {
    viewUserMenu();
  } else {
    exit(0);
  }
}

void SearchOfBookTitle() {
  print("Please enter book title>>");
  String SearchBT = stdin.readLineSync()!;
  int x = 0;
  for (var i = 0; i < Books.length; i++) {
    if (SearchBT == Books[i]["Book Title"]) {
      print("your Book is: ${Books[i]}\n");
      x++;
      print('-----------------------------------------');
      print("\nDo you want to add it in your bag?\n");
      var listOfOperation = ['Yse', 'No'];
      print('-----------------------------------------');
      listOfOperation.forEach((index) {
        print("${listOfOperation.indexOf(index) + 1}. ${index}");
      });
      String Yes_No = stdin.readLineSync()!;
      if (Yes_No.toLowerCase() == "yes" || Yes_No == "1") {
        Bag.add(Books[i]);
      } else {
        break;
      }
    }
  }

  if (x == 0) {
    print("invalid input!!");
  }
  var listOfOperation = ['Search Of Books', 'Back', 'Exit'];
  print('-----------------------------------------');
  listOfOperation.forEach((index) {
    print("${listOfOperation.indexOf(index) + 1}. ${index}");
  });
  print('-----------------------------------------');
  int input = int.parse(stdin.readLineSync()!);
  if (input == 1) {
    SearchOfBooks();
  } else if (input == 2) {
    viewUserMenu();
  } else {
    exit(0);
  }
}

void SearchOfBookAuthor() {
  print("Please enter book Author..");
  String SearchBT = stdin.readLineSync()!;
  int x = 0;
  for (var i = 0; i < Books.length; i++) {
    if (SearchBT == Books[i]["Author Name"]) {
      print("your Book is: ${Books[i]}\n");
      x++;
      print('-----------------------------------------');
      print("\nDo you want to add it in your bag?\n");
      var listOfOperation = ['Yse', 'No'];
      print('-----------------------------------------');
      listOfOperation.forEach((index) {
        print("${listOfOperation.indexOf(index) + 1}. ${index}");
      });
      String Yes_No = stdin.readLineSync()!;
      if (Yes_No.toLowerCase() == "yes" || Yes_No == "1") {
        Bag.add(Books[i]);
      } else {
        break;
      }
    }
  }

  if (x == 0) {
    print("invalid input!!");
  }
  var listOfOperation = ['Search Of Books', 'Back', 'Exit'];
  print('-----------------------------------------');
  listOfOperation.forEach((index) {
    print("${listOfOperation.indexOf(index) + 1}. ${index}");
  });
  print('-----------------------------------------');
  int input = int.parse(stdin.readLineSync()!);
  if (input == 1) {
    SearchOfBooks();
  } else if (input == 2) {
    viewUserMenu();
  } else {
    exit(0);
  }
}

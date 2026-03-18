import 'dart:io';
List<String> todoList = [];

void main(){
  int choice = 0;
  while(choice != 4){
    print("\nTO DO LIST MENU");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Enter choice: ");

    choice=int.parse(stdin.readLineSync()!);

    if(choice == 1){
      addTask();
    }else if(choice == 2){
      viewTasks();
    }else if(choice == 3){
      removeTask();
    }else if (choice == 4){
      print("Exiting program");
    }else{
      print("Invalid choice! Please try again.");
    }
  }
}

void addTask(){
  stdout.write("Enter task to add: ");
  String task = stdin.readLineSync()!;
  todoList.add(task);
  print("Task added successfully!");
}

void viewTasks(){
  if (todoList.isEmpty){
    print("No tasks available.");
  } 
  else{
    print("\nYour Tasks:");
    for (int i = 0; i<todoList.length; i++){
      print("${i + 1}. ${todoList[i]}");
    }
  }
}

void removeTask(){
  if(todoList.isEmpty){
    print("No tasks to remove.");
  } 
  else{
    viewTasks();
    stdout.write("Enter task number to remove: ");
    int index = int.parse(stdin.readLineSync()!);
    if(index>0 && index<=todoList.length){
      todoList.removeAt(index - 1);
      print("Task removed successfully!");
    }else{
      print("Invalid task number.");
    }
  }
}
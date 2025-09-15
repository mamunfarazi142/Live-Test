class Student {
  String name;
  int roll;

  Student({required this.name, required this.roll});

  void displayInfo() {
    print("Student Name: $name");
    print("Student Roll: $roll");
  }
}

class Person {
  String name;

  Person({required this.name});
}

class Teacher extends Person {
  String subject;

  Teacher({required super.name, required this.subject});

  void display() {
    print("Teacher Name : ${super.name}");
    print("Subject Name : $subject");
  }
}

abstract class Shape {
  double _area = 0;

  void area();

  double get valueOfArea => _area;

  set valueOfArea(double value) {
    _area = value;
  }
}

class Circle extends Shape {
  final double pi = 3.1416;
  double radius;

  Circle({required this.radius});

  @override
  void area() {
    valueOfArea = pi * radius * radius;
  }
}

void main() {
  
  print("\n1:. ---------------------------------");
  Student student1 = Student(name: "Mamun Farazi", roll: 20234);
  student1.displayInfo();

  print("\n2:. ---------------------------------");
  Teacher teacher1 = Teacher(
    name: 'Toufiqur Rahman',
    subject: 'Dart & Flutter',
  );
  teacher1.display();

  print("\n3:. ---------------------------------");
  Circle circle = Circle(radius: 25);
  circle.area();
  print('Area of Circle = ${circle.valueOfArea.toStringAsFixed(2)}');



}

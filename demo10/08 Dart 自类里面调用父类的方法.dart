/*

面向对象的三大特性：封装 、继承、多态


Dart中的类的继承：  
    1、子类使用extends关键词来继承父类
    2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数
    3、子类能复写父类的方法 getter和setter

*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);

  work() {
    print("${this.name}在工作...");
  }
}

class Web extends Person {
  Web(String name, num age) : super(name, age);

  run() {
    print(super.age);

    super.work(); //自类调用父类的方法
  }
}

main() {
  Web w = new Web('李四', 20);
  w.run();
  //20
  //李四在工作...
}

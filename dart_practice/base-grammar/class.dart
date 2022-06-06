import 'dart:math';

void main(List<String> args) {
  var p = Point(2, 2);
  // Using class members
  assert(p.y == 2);

  // getter setter
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);

  // 使用枚举
  assert(Color.red.index == 0);

  // 获取枚举类
  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);

  // 你可以在 Switch 语句中使用枚举，但是需要注意的是必须处理枚举值的每一种情况，
  // 即每一个枚举值都必须成为一个 case 子句，不然会出现警告：

  var aColor = Color.blue;

  switch (aColor) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    default: // Without this, you see a WARNING.
      print(aColor); // 'Color.blue'
  }

  // 可调用类
  callClass();
}

class Point {
  final double? x;
  final double? y;
  double z = 0;
  // 构造函数
  // 如果您不声明构造函数，则会为您提供默认构造函数。默认构造函数没有参数，并调用超类中的无参数构造函数。
  Point(this.x, this.y);

  // 实例方法
  double distanceTo(Point other) {
    var dx = x! - other.x!;
    var dy = y! - other.y!;
    return sqrt(dx * dx + dy * dy);
  }

  // 初始化实例变量
  Point.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y']! {
    print('In Point.fromJson(): ($x, $y)');
  }
}

// getter setter
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

// 使用abstract修饰符定义一个抽象类——一个不能被实例化的类。
// 抽象类对于定义接口很有用，通常带有一些实现。
// 如果您希望您的抽象类看起来是可实例化的，请定义一个工厂构造函数。

// This class is declared abstract and thus
// can't be instantiated.
abstract class AbstractContainer {
  // Define constructors, fields, methods...

  void updateChildren(); // Abstract method.
}

// 枚举类
enum Color { red, green, blue }

// Mixin
// 使用关键字 on 来指定哪些类可以使用该 Mixin 类，比如有 Mixin 类 A，但是 A 只能被 B 类使用，则可以这样定义 A：
class Musician {
  // ...
}

mixin MusicalPerformer on Musician {
  // ...
}

class SingerDancer extends Musician with MusicalPerformer {
  // ...
}

// 静态变量
// 静态变量在其首次被使用的时候才被初始化。
class Queue {
  static const initialCapacity = 16;
  // ···
}

const double xOrigin = 0;
const double yOrigin = 0;

// 静态方法
class Point1 {
  double x, y;
  Point1(this.x, this.y);

  static double distanceBetween(Point1 a, Point1 b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }

  // 命名式构造函数
  Point1.origin()
      : x = xOrigin,
        y = yOrigin;
}
// 记住构造函数是不能被继承的，这将意味着子类不能继承父类的命名式构造函数，
// 如果你想在子类中提供一个与父类命名构造函数名字一样的命名构造函数，则需要在子类中显式地声明。

// 可调用类，使用call
class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

callClass() {
  var wf = WannabeFunction();
  var out = wf('Hi', 'there,', 'gang');
  print(out);
}

// 操作符
import 'dart:html';

void main(List<String> args) {
  // 基本操作符， +、 -、 *、 /、 %
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  // 前后缀运算符号
  prefixAndPostfix();
}

void prefixAndPostfix() {
  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0
}

// 等式和关系运算符
void equalityAndRelational() {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
}

//类型检测运算符
void typeTestOperators() {
  // as is is! 运算符可以方便地在运行时检查类型。
  // (employee as Person).firstName = 'Bob';

  // if (employee is Person) {
  //   // Type check
  //   employee.firstName = 'Bob';
  // }
  // if (employee is! Person) {
  //   // Type check
  //   employee.firstName = 'Bob';
  // }
}

// 赋值运算符
// =	*=	%=	>>>=	^=+=	/=	<<=	&=	|=  -=	~/=	>>=
void assignmentOperators() {
  var value = 123;
  // Assign value to a
  var a = value;
  // 如果 b 为空，则为 b 赋值；否则，b 保持不变
  var b;
  b ??= value;
}

// 逻辑运算符
void logicalOperators() {
  var col;
  bool done = false;
  if (!done && (col == 0 || col == 3)) {}
}

// 按位和移位运算符
void bitwiseAndShiftOperators() {
  final value = 0x22;
  final bitmask = 0x0f;

  assert((value & bitmask) == 0x02); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR
  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); // Shift right
  assert((value >>> 4) == 0x02); // Unsigned shift right
  assert((-value >> 4) == -0x03); // Shift right
  assert((-value >>> 4) > 0); // Unsigned shift right
}

// 条件表达式

// 级联符号
void cascadeNotation() {
  var paint = Paint()
    ..color = "black"
    ..strokeCap = "round"
    ..strokeWidth = 5.0;

  var button = querySelector('#confirm')?..text = 'Confirm';
  button?.classes.add('important');
  button?.onClick.listen((e) => window.alert('Confirmed!'));
  button?.scrollIntoView();
}

class Paint {
  var color;

  var strokeCap;

  late double strokeWidth;
}

void other() {
  // 空断言操作符
  var notNull;
  var a = notNull!;
}

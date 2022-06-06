void main(List<String> args) {
  // 内置类型
  // Number
  // int double num
  int num1 = 1;
  // 必要时，整数文字会自动转换为双精度：
  double num2 = 2; // => 2.0
  // 您还可以将变量声明为 num。如果你这样做，变量可以有整数和双精度值
  num num3 = 123;
  num3 += 4.2;
  print({num1, num2, num3});

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  // int 类型指定传统的按位移位 (<<, >>, >>>)、补码 (~)、AND (&)、OR (|) 和 XOR (^) 运算符，
  // 它们对于操作和屏蔽标志很有用在位字段中。例如：
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000

  // 文字数字是编译时常量。许多算术表达式也是编译时常量，
  // 只要它们的操作数是计算结果为数字的编译时常量。
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
}

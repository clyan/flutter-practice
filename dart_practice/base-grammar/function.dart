// 每个应用程序都必须有一个顶级的 main() 函数，作为应用程序的入口点。
// main() 函数返回 void 并有一个可选的 List<String> 参数作为参数。
void main(List<String> args) {
  // 调用函数时，可以使用 paramName: value 指定命名参数
  var data = enableFlags2(hidden: true);
  print(data);

  // 可选位置参数
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  assert(say('Bob', 'Howdy', 'smoke signal') ==
      'Bob says Howdy with a smoke signal');

  // 默认值
  enableFlags3(bold: true);

  // 位置参数默认值
  assert(say1('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');

  // 您可以将一个函数作为参数传递给另一个函数。例如：
  var list = [1, 2, 3];
  // Pass printElement as a parameter.
  list.forEach(printElement);

  // 您还可以将函数分配给变量，匿名函数，例如：
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  assert(loudify('hello') == '!!! HELLO !!!');
}

bool isNoble(int atomicNumber) {
  return false;
}

// 尽管 Effective Dart 建议公共 API 使用类型注释，但如果省略类型，该函数仍然有效：
isNoble1(atomicNumber) {
  return false;
}

// 对于只包含一个表达式的函数，您可以使用简写语法：
bool isNoble2(int atomicNumber) => false;

// 使用参数, 命名参数， 可选，除非指定 require
void enableFlags({bool? bold, bool? hidden}) {}

// required 指定传参数
enableFlags2({bold: true, required bool hidden}) {
  return {bold, hidden};
}

// 在 [] 中包装一组函数参数将它们标记为可选的位置参数
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// 命名参数默认值
void enableFlags3({bool bold = false, bool hidden = false}) {}

// 位置参数默认值
String say1(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}

// 您还可以将list或map作为默认值传递。
// 下面的示例定义了一个函数 doStuff()，它为 list 参数指定了一个默认列表，
// 并为 gift 参数指定了一个默认映射。
void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}

// 您可以将一个函数作为参数传递给另一个函数。例如：
void printElement(int element) {
  print(element);
}

// Dart 是一种词法作用域语言，这意味着变量的作用域是静态确定的，仅由代码的布局决定。
// 您可以“沿着花括号向外”查看变量是否在范围内。
bool topLevel = true;
void myFunction() {
  var insideFunction = true;

  void nestedFunction() {
    var insideNestedFunction = true;

    assert(topLevel);
    assert(insideFunction);
    assert(insideNestedFunction);
  }
}

// 闭包是一个函数对象，它可以访问其词法范围内的变量，即使该函数在其原始范围之外使用也是如此。

// 顶级函数、静态方法和实例方法都相等，也就是说函数是引用类型
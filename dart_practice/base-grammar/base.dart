void main(List<String> args) {
  var name = 'ywy';
  var age = 22;
  var height = 173.5;
  var weight = 150.0;
  var hobby = ['music', 'coding'];
  var picture = {
    'tags': ['saturn'],
    'url': '//picture'
  };
  print({name, age, height, weight, hobby, picture});

  // 使用String直接指定类型
  String type = 'string';
  // 以下代码报错，不允许改变类型
  // type = 123;

  // 允许改变
  Object obj = 'object';
  obj = 123;

  dynamic dyna = 'dyna';
  dyna = 'ccc';

  // ? 代表 允许line Count为空

  int? lineCount;
  // 如果去掉 ？号，那么以下代码报错，使用前必须给lineCount赋值。
  assert(lineCount == null);

  // 如果不使用？号，只需要在使用前赋值即可
  int canNull;
  canNull = 123;

  print({type, obj, dyna, lineCount, canNull});

  //late延迟初始化,tempExecutorLate没有被使用时，executorLate不会被调用
  late String tempExecutorLate = executorLate();

  // 使用后， executeImmediately被执行， 打印出temp tempExecuteImmediately
  String tempExecuteImmediately = executeImmediately();
  print(tempExecuteImmediately);

  // 定义常量，不能够被修改
  final fina = '123';
  // fina = '456';

  // 指定类型
  final String stringFina = 'stringFina';

  const cons = 789;
  // cons = 741;

  // 您可以更改最终非 const 变量的值，即使它曾经具有 const 值
  var foo = const [];
  foo = [1, 2, 3];
  foo[0] = 7;

  // 使用if is 指定内容与类型
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'};
  print({i, list, map});
}

String executorLate() {
  print('executorLate');
  return 'executorLate';
}

String executeImmediately() {
  print('temp tempExecuteImmediately');
  return 'executeImmediately';
}

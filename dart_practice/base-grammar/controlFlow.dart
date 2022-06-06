void main(List<String> args) {
  // If and else
  if (isRaining()) {
  } else if (isSnowing()) {
  } else {}
  // For loops
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  // Dart 的 for 循环中的闭包捕获索引的值，避免了 JavaScript 中常见的陷阱。例如，考虑：
  // 正如预期的那样，输出是 0，然后是 1。相反，该示例将在 JavaScript 中打印 2 和 2
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

  // 如果您正在迭代的对象是一个 Iterable（例如 List 或 Set），
  // 并且您不需要知道当前的迭代计数器，则可以使用 for-in 形式的迭代：
  var candidates = {'aaa', 'ccc'};
  for (final candidate in candidates) {}
  // 可迭代类也有一个 forEach() 方法作为另一个选项：
  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3

  //While and do-while
  var flag = false;
  while (!flag) {
    flag = true;
    // Break and continue
    if (flag) break;
  }

  do {
    flag = false;
    if (!flag) continue;
  } while (flag);

  // Switch and case
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      break;
    case 'PENDING':
      break;
    case 'APPROVED':
    // 无执行语句能省略break；
    case 'DENIED':
      // 为 APPROVED 和 DENIED 运行。
      // 有执行语句后不能省略break；
      print('a');
      break;
    case 'OPEN':
      break;
    default:
  }
  //在开发过程中，如果布尔条件为假，请使用断言语句 —assert(condition, optionalMessage); — 来中断正常执行。
}

bool isSnowing() {
  return false;
}

bool isRaining() {
  return false;
}

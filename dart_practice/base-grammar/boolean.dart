// 为了表示布尔值，Dart 有一个名为 bool 的类型。
// 只有两个对象具有 bool 类型：布尔文字 true 和 false，它们都是编译时常量。

// Dart 的类型安全意味着你不能使用 if (nonbooleanValue)
// 或 assert (nonbooleanValue) 这样的代码。相反，显式检查值，如下所示

void main(List<String> args) {
  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

// Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}

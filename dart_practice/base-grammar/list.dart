// 也许几乎所有编程语言中最常见的集合是数组，或有序的对象组。
// 在 Dart 中，数组是 List 对象，所以大多数人只是称它们为列表。

void main(List<String> args) {
  // Dart 列表文字由逗号分隔的表达式或值列表表示，括在方括号 ([]) 中。
  var listTest = [1, 2, 3];

  // 您可以在 Dart 集合文字的最后一项之后添加逗号。这个尾随逗号不会影响集合，但它可以帮助防止复制粘贴错误

  var list1 = [
    'Car',
    'Boat',
    'Plane',
  ];

  // 列表使用从零开始的索引，其中 0 是第一个值的索引，而 list.length - 1 是最后一个值的索引。
  // 您可以使用 .length 属性获取列表的长度，并使用下标运算符 ([]) 访问列表的值
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  // 要创建一个作为编译时常量的列表，请在列表文字前添加 const
  var constantList = const [1, 2, 3];

  // 如果扩展运算符右侧的表达式可能为 null，则可以使用可识别 null 的扩展运算符 (...?) 来避免异常：
  var nullList;
  var list2 = [0, ...?nullList];
  assert(list2.length == 1);

  // Dart 还提供了集合 if 和 collection for，您可以使用它们来使用条件 (if) 和重复 (for) 来构建集合。
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // 这是一个使用 collection for 在将列表项添加到另一个列表之前对其进行操作的示例：
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
}

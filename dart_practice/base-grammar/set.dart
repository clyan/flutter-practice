void main(List<String> args) {
  // Dart 中的集合是唯一项的无序集合。 Dart 对集合的支持由集合文字和 Set 类型提供。
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  // 要创建一个空集，请在类型参数前使用 {}，或将 {} 分配给 Set 类型的变量：
  var names = <String>{};
  // Set<String> names = {}; // This works, too.

  // 使用 add() 或 addAll() 方法将项目添加到现有集合：
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  // 使用 .length 获取集合中的项目数：
  assert(elements.length == 5);

  // 要创建作为编译时常量的集合，请在set之前添加 const：
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // This line will cause an error.
  // set支持扩展运算符（...和...？）和集合 if 和 for，就像列表一样
}

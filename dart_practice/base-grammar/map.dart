void main(List<String> args) {
  // 通常，映射是关联键和值的对象。键和值都可以是任何类型的对象。每个键只出现一次，但您可以多次使用相同的值
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // 您可以使用 Map 构造函数创建相同的对象
  var gifts1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases1 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // 使用下标赋值运算符 ([]=) 将新的键值对添加到现有映射：
  var gifts2 = {'first': 'partridge'};
  gifts2['fourth'] = 'calling birds'; // Add a key-value pair

  // 使用下标运算符 ([]) 从映射中检索值
  var gifts3 = {'first': 'partridge'};
  assert(gifts3['first'] == 'partridge');

  // 如果您查找不在map中的键，则返回 null：
  var gifts4 = {'first': 'partridge'};
  assert(gifts4['fifth'] == null);

  // 使用 .length 获取映射中键值对的数量：
  var gifts5 = {'first': 'partridge'};
  gifts5['fourth'] = 'calling birds';
  assert(gifts5.length == 2);

  //要创建作为编译时常量的map，请在map之前添加 const：
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // map支持扩展运算符（...和...？）和集合 if 和 for，就像列表一样
}

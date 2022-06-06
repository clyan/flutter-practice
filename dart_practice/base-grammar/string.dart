void main(List<String> args) {
  // // Dart 字符串（String 对象）包含一系列 UTF-16 代码单元。您可以使用单引号或双引号来创建字符串：
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";

  //您可以使用 ${expression} 将表达式的值放入字符串中。如果表达式是标识符，您可以跳过 {}。
  //为了获取对象对应的字符串，Dart 调用对象的 toString() 方法。
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, which is very handy.');

  assert('That deserves all caps. ${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. STRING INTERPOLATION is very handy!');

  // 可以使用相邻字符串或者 + 连接多个字符串。
  var ss1 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(ss1 ==
      'String concatenation works even over '
          'line breaks.');

  var ss2 = 'The + operator ' + 'works, as well.';
  assert(ss2 == 'The + operator works, as well.');

  //创建多行字符串的另一种方法,使用3个单引号或者3个双引号。
  var sss1 = '''
    You can create
    multi-line strings like this one.
    ''';

  var sss2 = """This is also a
    multi-line string.""";

  // 也可以使用 r 指定字符串为原始字符串 \n被认定为普通字符串
  var sss3 = r'In a raw string, not even \n gets special treatment.';
  print(sss3);
}

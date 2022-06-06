import 'package:characters/characters.dart';

void main(List<String> args) {
  // 特殊字符包
  var hi = 'Hi 😊';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
  print('The last character: ${hi.characters.last}\n');
}

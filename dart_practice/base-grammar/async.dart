import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  try {
    var version = await lookUpVersion();
    print(version);
  } catch (e) {
    print(e);
  }
  // 使用.then 与catchError
  lookUpVersion().then((value) => print(value)).catchError((e) => print(e));

  // 等待多个任务
  var all = await Future.wait([lookUpData(), lookUpVersion()]);
  print(all); // [123, 1.0.0]
  var any = await Future.any([lookUpData(), lookUpVersion()]);
  print(any); // 123
}

// Future 就相当于是promise对象
Future<String> lookUpVersion() async => '1.0.0';

Future<String> lookUpData() async => '123';

// 处理Stream
void ProcessStream() {
  const searchPath = "./";
  FileSystemEntity.isDirectory(searchPath).then((isDir) {
    if (isDir) {
      final startingDir = Directory(searchPath);
      startingDir.list().listen((entity) {
        if (entity is File) {}
      });
    } else {}
  });
}

// 使用 await for处理Stream
void ProcessStreamByFor() async {
  const searchPath = "./";
  if (await FileSystemEntity.isDirectory(searchPath)) {
    final startingDir = Directory(searchPath);
    await for (final entity in startingDir.list()) {
      if (entity is File) {}
    }
  } else {}
}

// 使用流Api
void ProcessStreamByApi() async {
  var config = File('config.txt');
  Stream<List<int>> inputStream = config.openRead();

  inputStream.transform(utf8.decoder).transform(const LineSplitter()).listen(
      (String line) {
    print('Got ${line.length} characters from stream');
  }, onDone: () {
    print('file is now closed');
  }, onError: (e) {
    print(e);
  });
}

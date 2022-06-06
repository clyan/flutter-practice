void main(List<String> args) {
  // 你的 Dart 代码可以抛出和捕获异常。异常是表示发生了意外情况的错误

  //
  // throw FormatException('预计至少有 1 个部分');

  // 任意异常
  // throw "error";

  // 捕获错误
  try {} on Exception catch (e) {
    // 使用on 指定捕获的错误类型
  } catch (e, s) {
    // e是抛出的异常，s是堆栈跟踪
  } finally {
    // 总是执行
  }

  // 处理部分异常，并允许继续传播 rethrow；
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}

// 因为抛出异常是一个表达式，你可以在 => 语句中抛出异常，也可以在任何其他允许表达式的地方抛出异常：
void distanceTo() => throw UnimplementedError();

// 处理部分异常，并允许继续传播 rethrow；
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

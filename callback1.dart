import 'dart:async';
import 'dart:io';

void timePeriodic({required int second, required Function(int) callback}) {
  int secondsPassed = 0;
  Timer.periodic(Duration(seconds: 1), (timer) {
    secondsPassed++;
    if (secondsPassed % second == 0) {
      callback(secondsPassed);
    }
  });

  Timer(Duration(seconds: 3), () {
    sleep(Duration(seconds: 5));
    print('Stop');
  });
}

void main() {
  timePeriodic(
    second: 1,
    callback: (secondsPassed) {
      print('$secondsPassed seconds have passed.');
    },
  );
}

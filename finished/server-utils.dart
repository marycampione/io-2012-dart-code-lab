library serverutils;

import 'dart:async';

time(msg, callback()) {
  var sw = new Stopwatch()..start();
  callback();
  sw.stop();
  print('Timing for $msg: ${sw.elapsedMicroseconds} us');
}

// runs the callback on the event loop at the next opportunity
queue(callback()) {
  new Timer(0, (t) => callback());
}

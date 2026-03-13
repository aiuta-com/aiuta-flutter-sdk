import 'dart:async';

import 'package:flutter/foundation.dart';

class AiutaDisposer {
  final List<({Listenable listenable, VoidCallback listener})> _valueListeners =
      [];
  final List<StreamSubscription> _streamSubscriptions = [];

  void registerValueListener(Listenable listenable, VoidCallback listener) {
    _valueListeners.add((listenable: listenable, listener: listener));
  }

  void registerStreamSubscription(StreamSubscription subscription) {
    _streamSubscriptions.add(subscription);
  }

  void cleanup() {
    for (final entry in _valueListeners) {
      entry.listenable.removeListener(entry.listener);
    }
    _valueListeners.clear();
    for (final sub in _streamSubscriptions) {
      sub.cancel();
    }
    _streamSubscriptions.clear();
  }
}

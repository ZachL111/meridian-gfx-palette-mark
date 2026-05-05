import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(65, 79, 24, 17, 7);
  assert(Policy.score(signalcase_1) == 73);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(69, 70, 14, 9, 5);
  assert(Policy.score(signalcase_2) == 136);
  assert(Policy.classify(signalcase_2) == 'review');
  const signalcase_3 = Signal(99, 82, 20, 5, 5);
  assert(Policy.score(signalcase_3) == 220);
  assert(Policy.classify(signalcase_3) == 'accept');
}

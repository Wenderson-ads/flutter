import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter.value++;

    if (counter.value == 11) {
      counter.value = 0;
    }
  }

  void reset() {
    counter.value = 0;
  }
}

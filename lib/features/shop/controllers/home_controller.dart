import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final RxInt carrouselCurrentIndex = 0.obs;

  void updatePageIndicator(int index) {
    carrouselCurrentIndex.value = index;
  }
}

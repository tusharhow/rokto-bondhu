import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isVisible = false;
  bool obscureText = false;

  
  void toggleVisibility() {
    isVisible = !isVisible;
    obscureText = !obscureText;
    update();
  }
}

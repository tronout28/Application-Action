import 'package:get/get.dart';

class PaymentController extends GetxController {
  var totalAmount = 50.0.obs;
  var selectedPaymentMethod = 'Gopay'.obs; 

  void updatePaymentMethod(String method) {
    selectedPaymentMethod.value = method;
    update();
  }
}
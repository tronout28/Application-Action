import 'package:application_action/consts/consts.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class logoutController extends GetxController {
  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: toString());
    }
  }
}

import 'package:fmb_ezzy/screens/auth/login_screen.dart';
import 'package:get/get.dart';

import '../../../modals/drawe_list_modal.dart';
import '../../../utils/shared_prefs.dart';

class HomeController extends GetxController {
  RxList<DrawerListModel> drawerList = <DrawerListModel>[
    DrawerListModel(index: 0, title: 'Home', icon: 'asset/images/home1.png'),
    // DrawerListModel(
    //     index: 1, title: 'Stop Thaali', icon: 'asset/icons/thaali.png'),
    // DrawerListModel(
    //     index: 2, title: 'Thaali Change Req.', icon: 'asset/icons/change.png'),
    // DrawerListModel(
    //     index: 3, title: 'Monthly Menu', icon: 'asset/icons/thaali.png'),
    DrawerListModel(
        index: 1, title: 'My profile', icon: 'asset/images/profile1.png'),
    // DrawerListModel(
    //     index: 5, title: 'Feedback', icon: 'asset/icons/feedback.png'),
    // DrawerListModel(
    //     index: 6, title: 'FMB Helpline', icon: 'asset/icons/helpline.png'),
    // DrawerListModel(
    //     index: 7, title: 'Jamaat News', icon: 'asset/icons/news.png'),
    DrawerListModel(index: 2, title: 'Logout', icon: 'asset/images/logout1.png'),
  ].obs;

  RxList<bool> isSelected = List<bool>.filled(3, false).obs;
  RxInt selectedIndex = 0.obs;
  String screenName = '';
  RxString screenTitle = ''.obs;

  @override
  void onInit() {
    screenTitle.value = Get.arguments[0];
    super.onInit();
  }

  logout() {
    Get.offAll(()=> LoginScreen());
    Prefs.isUserLoggedIn = false;
  }
}

import 'package:academykid/model/age_model.dart';
import 'package:get/get.dart';

class AgeItemController extends GetxController {
  // RxBool onActive = RxBool(false);
  RxList<AgeModel> listAge = RxList();

  void ageArray() {
    for (int i = 2; i < 9; i++) {
      listAge.add(AgeModel(age: i.toString()));
    }
  }

  void handleAgeClick(int index) {
    for (int i = 0; i < listAge.length; i++) {
      if (index == i) {
        listAge[i].currentChoice = true;
      } else {
        listAge[i].currentChoice = false;
      }
    }
  }
}

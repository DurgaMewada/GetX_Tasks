import 'package:get/get.dart';
import 'package:getx_state_management/CRUD/Modal/CRUD_modal.dart';

class CrudController extends GetxController {
  RxList<CrudModal> userList = <CrudModal>[].obs;

  void addUser(Map user) {
    userList.add(CrudModal.fromMap(user));
  }

  void deleteUser(int index) {
    userList.removeAt(index);
  }

  void updateUser(int index, Map user ) {
    userList.removeAt(index);
    userList.insert(index,CrudModal.fromMap(user),
    );
  }
}
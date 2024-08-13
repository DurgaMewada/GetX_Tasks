import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/CRUD/Controller/Crud_controller.dart';
import 'package:getx_state_management/CRUD/Modal/CRUD_modal.dart';

import '../../Utils/Color..dart';
import 'Components/crud_alertBox.dart';

class CrudOperation extends StatelessWidget {
  const CrudOperation({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: darkcolor,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Text(
          'Employees List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Obx(
          (){
            return ListView.builder(
              itemCount: crudController.userList.length,
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Text(crudController.userList[index].id),
                    title: Text('${crudController.userList[index].name}'
                        '${crudController.userList[index].surname}'),
                    subtitle: Text(
                        crudController.userList[index].designation),
                    trailing: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              txtname.text = crudController.userList[index].name;
                              txtid.text = crudController.userList[index].id;
                              txtsurname.text = crudController.userList[index].surname;
                              txtdesignation.text = crudController.userList[index].designation;
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Update Info'),
                                  content: SingleChildScrollView(
                                    child: Container(
                                      height: 350,
                                      child: Column(
                                        children: [
                                          Text(
                                            'Employee ID ',
                                            style: TextStyle(
                                              fontWeight:
                                              FontWeight.w500,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            controller: txtid,
                                            keyboardType:
                                            TextInputType.number,
                                            decoration: InputDecoration(
                                                enabledBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        10)),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(10),
                                                ),
                                                label: Text(
                                                  'Id',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight
                                                          .w500,
                                                      color: darkcolor),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Employee Name ',
                                            style: TextStyle(
                                              fontWeight:
                                              FontWeight.w500,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            controller: txtname,
                                            decoration: InputDecoration(
                                                enabledBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        10)),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(10),
                                                ),
                                                label: Text(
                                                  'Name',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight
                                                          .w500,
                                                      color: darkcolor),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Employee Surname ',
                                            style: TextStyle(
                                              fontWeight:
                                              FontWeight.w500,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            controller: txtsurname,
                                            decoration: InputDecoration(
                                                enabledBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        10)),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(10),
                                                ),
                                                label: Text(
                                                  'Surname',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight
                                                          .w500,
                                                      color: darkcolor),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Designation ',
                                            style: TextStyle(
                                              fontWeight:
                                              FontWeight.w500,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            controller: txtdesignation,
                                            decoration: InputDecoration(
                                                enabledBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        10)),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(10),
                                                ),
                                                label: Text(
                                                  'Designation',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight
                                                          .w500,
                                                      color: darkcolor),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                crudController.updateUser(index, {
                                                  'id': txtid.text,
                                                  'name': txtname.text,
                                                  'surname':txtsurname,
                                                  'designation':txtdesignation
                                                });
                                                txtid.clear();
                                                txtname.clear();
                                                txtsurname.clear();
                                                txtdesignation.clear();
                                                Get.back();

                                              },
                                              child: Text(
                                                'Update',
                                                style: TextStyle(
                                                  color: darkcolor,
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {
                              crudController.deleteUser(index);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  )),
            );
          }
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: darkcolor,
        onPressed: (){
          Navigator.of(context).pushNamed('/');
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

    );
  }
}

CrudController crudController = Get.put(CrudController());
TextEditingController txtid = TextEditingController();
TextEditingController txtname = TextEditingController();
TextEditingController txtsurname = TextEditingController();
TextEditingController txtdesignation = TextEditingController();

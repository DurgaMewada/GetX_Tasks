import 'package:flutter/material.dart';

import '../../../Utils/Color..dart';
import '../CRUD.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkcolor,
        centerTitle: true,
        title: Text(
          'Add Employees',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 25,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    crudController.addUser({
                      'id': txtid.text,
                      'name': txtname.text,
                      'surname':txtsurname,
                      'designation':txtdesignation,
                    });
                    txtid.clear();
                    txtname.clear();
                    txtsurname.clear();
                    txtdesignation.clear();
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: darkcolor, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


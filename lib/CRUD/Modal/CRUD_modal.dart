class CrudModal{
  late String name,surname,designation,id;


  CrudModal({required this.id,required this.name, required this.surname,required this.designation});
  factory CrudModal.fromMap(Map m1)
  {
    return CrudModal(id: m1['id'], name: m1['name'], surname: m1['surname'], designation: m1['designation']);
  }
}

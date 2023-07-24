
class SchoolDataModel {
  String? schoolName;
  String? schoolAddress;
  String? numberOfStudents;
  String? numberOfTeachers;

  SchoolDataModel(
      {this.schoolName,
        this.schoolAddress,
        this.numberOfStudents,
        this.numberOfTeachers});

  SchoolDataModel.fromJson(Map<String, dynamic> json) {
    schoolName = json['School Name'];
    schoolAddress = json['School Address'];
    numberOfStudents = json['Number of Students'];
    numberOfTeachers = json['Number of Teachers'];
  }

}

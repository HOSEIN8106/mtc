class LessonsResponse {
  int? id;
  String? code;
  String? courseOfferingCode;
  String? title;
  String? offeringDay;
  String? offeringTime;
  String? classroomNumber;
  String? examDate;
  Instructor? instructor;
  int? studentsCount;
  List<Students>? students;

  LessonsResponse({
    this.id,
    this.code,
    this.courseOfferingCode,
    this.title,
    this.offeringDay,
    this.offeringTime,
    this.classroomNumber,
    this.examDate,
    this.instructor,
    this.studentsCount,
    this.students,
  });

  LessonsResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    courseOfferingCode = json['course_offering_code'];
    title = json['title'];
    offeringDay = json['offering_day'];
    offeringTime = json['offering_time'];
    classroomNumber = json['classroom_number'];
    examDate = json['exam_date'];
    instructor = json['instructor'] != null ? Instructor.fromJson(json['instructor']) : null;
    studentsCount = json['students_count'];
    if (json['students'] != null) {
      students = <Students>[];
      json['students'].forEach((v) {
        students!.add(Students.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['code'] = code;
    data['course_offering_code'] = courseOfferingCode;
    data['title'] = title;
    data['offering_day'] = offeringDay;
    data['offering_time'] = offeringTime;
    data['classroom_number'] = classroomNumber;
    data['exam_date'] = examDate;
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['students_count'] = studentsCount;
    if (students != null) {
      data['students'] = students!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Instructor {
  int? id;
  String? name;
  String? username;
  String? nationalCode;
  int? studyFieldId;
  String? roleType;

  Instructor({this.id, this.name, this.username, this.nationalCode, this.studyFieldId, this.roleType});

  Instructor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    nationalCode = json['national_code'];
    studyFieldId = json['study_field_id'];
    roleType = json['role_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['national_code'] = nationalCode;
    data['study_field_id'] = studyFieldId;
    data['role_type'] = roleType;
    return data;
  }
}

class Students {
  int? id;
  String? name;
  String? username;
  String? nationalCode;
  int? studyFieldId;
  String? roleType;

  Students({this.id, this.name, this.username, this.nationalCode, this.studyFieldId, this.roleType});

  Students.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    nationalCode = json['national_code'];
    studyFieldId = json['study_field_id'];
    roleType = json['role_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['national_code'] = nationalCode;
    data['study_field_id'] = studyFieldId;
    data['role_type'] = roleType;
    return data;
  }
}

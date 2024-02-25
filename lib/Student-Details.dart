class Student {
  String name;
  String id;
  List<String> courses;

  Student(this.name, this.id, this.courses);

  void add_course(course) {
    courses.add(course);
    print('$name add $course to the list of courses.');
  }

  void drop_course(course) {
    if (courses.contains(course)) {
      courses.remove(course);
      print('$name drop $course from the list of courses.');
    } else {
      print('$name is not enrolled in $course.');
    }
  }

  void display_courses() {
    print('$name courses: ${courses.join(' , ')}');
  }
}

void main() {
  Student student1 = Student('Saad Jamal', '1234', ['Math', 'English', 'Urdu']);
  Student student2 = Student(
      'Saad Jamal', '5678', ['Mobile App Development', 'Cyber Security']);
  student1.display_courses();
  student1.add_course('Islamiat');
  student1.display_courses();
  student1.drop_course('English');
  student1.display_courses();

  print('\n');

  student2.display_courses();
  student2.add_course('Graphic Designing');
  student2.display_courses();
  student2.drop_course('Web Development');
  student2.display_courses();
}
class EmployeeModel{
  String? name;
  int? salary;
  String? post;
  String? team;
  String? id;

  EmployeeModel({this.name, this.salary, this.post, this.team, this.id});

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    salary = json['salary'];
    post = json['post'];
    team = json['team'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['salary'] = salary;
    data['post'] = post;
    data['team'] = team;
    data['id'] = id;
    return data;
  }
}
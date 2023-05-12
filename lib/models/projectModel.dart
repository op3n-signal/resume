enum ProjectType {
  Mobile,
  Web
}

class ProjectModel {
  final String? title;
  final ProjectType? type;

  ProjectModel({this.title, this.type});
}
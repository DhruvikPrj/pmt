class IssueModel {
  bool success;
  String status;
  int statusCode;
  String message;
  Data data;

  IssueModel({
    required this.success,
    required this.status,
    required this.statusCode,
    required this.message,
    required this.data,
  });
}

class Data {
  List<Result> results;
  int page;
  int limit;
  int totalPages;
  int totalResults;

  Data({
    required this.results,
    required this.page,
    required this.limit,
    required this.totalPages,
    required this.totalResults,
  });
}

class Result {
  List<String> comments;
  String status;
  Type type;
  String title;
  String description;
  ReporterId reporterId;
  String userId;
  String priority;
  ProjectId projectId;
  DateTime createdAt;
  DateTime updatedAt;
  double listPosition;
  String id;
  int? estimate;
  int? timeSpent;
  int? timeRemaining;

  Result({
    required this.comments,
    required this.status,
    required this.type,
    required this.title,
    required this.description,
    required this.reporterId,
    required this.userId,
    required this.priority,
    required this.projectId,
    required this.createdAt,
    required this.updatedAt,
    required this.listPosition,
    required this.id,
    this.estimate,
    this.timeSpent,
    this.timeRemaining,
  });
}

enum ProjectId {
  THE_65_B7_B51901_E1876_BC6_AA114_A,
  THE_65_F3_F7_B21989_AE27_A97_D8342
}

enum ReporterId {
  THE_629_F4_CBA7_DE0_BF4_A187782_BC,
  THE_629_F4_D247_DE0_BF4_A187782_BD,
  THE_65_F3_DDF5_A291680_AD598_F350
}

enum Type { BUG, STORY, TASK }

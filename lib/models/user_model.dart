// class UserModel {
//   bool? success;
//   String? status;
//   int? statusCode;
//   String? message;
//   Data? data;

//   UserModel(
//       {this.success, this.status, this.statusCode, this.message, this.data, String? accessToken});

//   UserModel.fromJson(Map<String, dynamic> json) {
//     success = json['success'];
//     status = json['status'];
//     statusCode = json['statusCode'];
//     message = json['message'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['success'] = this.success;
//     data['status'] = this.status;
//     data['statusCode'] = this.statusCode;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }

// class Data {
//   User? user;

//   Data({this.user});

//   Data.fromJson(Map<String, dynamic> json) {
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.user != null) {
//       data['user'] = this.user!.toJson();
//     }
//     return data;
//   }
// }

// class User {
//   String? role;
//   List<RoleId>? roleId;
//   int? leaveBalance;
//   List<Null>? sessions;
//   bool? status;
//   bool? isEmailVerified;
//   List<String>? projectId;
//   String? firstname;
//   String? lastname;
//   String? email;
//   int? mobile;
//   String? designationId;
//   String? skillId;
//   String? departmentId;
//   String? reportingManager;
//   String? name;
//   String? createdAt;
//   String? updatedAt;
//   int? verificationCode;
//   String? id;

//   User(
//       {this.role,
//       this.roleId,
//       this.leaveBalance,
//       this.sessions,
//       this.status,
//       this.isEmailVerified,
//       this.projectId,
//       this.firstname,
//       this.lastname,
//       this.email,
//       this.mobile,
//       this.designationId,
//       this.skillId,
//       this.departmentId,
//       this.reportingManager,
//       this.name,
//       this.createdAt,
//       this.updatedAt,
//       this.verificationCode,
//       this.id});

//   User.fromJson(Map<String, dynamic> json) {
//     role = json['role'];
//     if (json['roleId'] != null) {
//       roleId = <RoleId>[];
//       json['roleId'].forEach((v) {
//         roleId!.add(new RoleId.fromJson(v));
//       });
//     }
//     leaveBalance = json['leaveBalance'];
//     if (json['sessions'] != null) {
//       sessions = <Null>[];
//       json['sessions'].forEach((v) {
//         sessions!.add(Null.fromJson(v));
//       });
//     }
//     status = json['status'];
//     isEmailVerified = json['isEmailVerified'];
//     projectId = json['projectId'].cast<String>();
//     firstname = json['firstname'];
//     lastname = json['lastname'];
//     email = json['email'];
//     mobile = json['mobile'];
//     designationId = json['designationId'];
//     skillId = json['skillId'];
//     departmentId = json['departmentId'];
//     reportingManager = json['reportingManager'];
//     name = json['name'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     verificationCode = json['verificationCode'];
//     id = json['id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['role'] = this.role;
//     if (this.roleId != null) {
//       data['roleId'] = this.roleId!.map((v) => v.toJson()).toList();
//     }
//     data['leaveBalance'] = this.leaveBalance;
//     if (this.sessions != null) {
//       data['sessions'] = this.sessions!.map((v) => v.toJson()).toList();
//     }
//     data['status'] = this.status;
//     data['isEmailVerified'] = this.isEmailVerified;
//     data['projectId'] = this.projectId;
//     data['firstname'] = this.firstname;
//     data['lastname'] = this.lastname;
//     data['email'] = this.email;
//     data['mobile'] = this.mobile;
//     data['designationId'] = this.designationId;
//     data['skillId'] = this.skillId;
//     data['departmentId'] = this.departmentId;
//     data['reportingManager'] = this.reportingManager;
//     data['name'] = this.name;
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['verificationCode'] = this.verificationCode;
//     data['id'] = this.id;
//     return data;
//   }
// }

// class RoleId {
//   List<Menu>? menu;
//   int? status;
//   String? role;
//   String? createdAt;
//   String? updatedAt;
//   String? id;

//   RoleId(
//       {this.menu,
//       this.status,
//       this.role,
//       this.createdAt,
//       this.updatedAt,
//       this.id});

//   RoleId.fromJson(Map<String, dynamic> json) {
//     if (json['menu'] != null) {
//       menu = <Menu>[];
//       json['menu'].forEach((v) {
//         menu!.add(new Menu.fromJson(v));
//       });
//     }
//     status = json['status'];
//     role = json['role'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     id = json['id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.menu != null) {
//       data['menu'] = this.menu!.map((v) => v.toJson()).toList();
//     }
//     data['status'] = this.status;
//     data['role'] = this.role;
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['id'] = this.id;
//     return data;
//   }
// }

// class Menu {
//   String? parent;
//   List<String>? permissions;
//   String? name;
//   String? link;
//   String? createdAt;
//   String? updatedAt;
//   String? id;

//   Menu(
//       {this.parent,
//       this.permissions,
//       this.name,
//       this.link,
//       this.createdAt,
//       this.updatedAt,
//       this.id});

//   Menu.fromJson(Map<String, dynamic> json) {
//     parent = json['parent'];
//     permissions = json['permissions'].cast<String>();
//     name = json['name'];
//     link = json['link'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     id = json['id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['parent'] = this.parent;
//     data['permissions'] = this.permissions;
//     data['name'] = this.name;
//     data['link'] = this.link;
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['id'] = this.id;
//     return data;
//   }
// }

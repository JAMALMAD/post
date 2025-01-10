class AuthModel {
  bool? success;
  String? message;
  Result? result;

  AuthModel({this.success, this.message, this.result});

  AuthModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  String? accessToken;
  UserInfo? userInfo;
  Result({this.accessToken, this.userInfo});

  Result.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    return data;
  }
}

class UserInfo {
  String? id;
  String? userName;
  Null? profileImage;
  String? email;
  String? role;
  Null? location;
  Null? gender;
  bool? subscriptions;
  String? status;
  String? createdAt;
  String? updatedAt;

  UserInfo(
      {this.id,
        this.userName,
        this.profileImage,
        this.email,
        this.role,
        this.location,
        this.gender,
        this.subscriptions,
        this.status,
        this.createdAt,
        this.updatedAt});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    profileImage = json['profileImage'];
    email = json['email'];
    role = json['role'];
    location = json['location'];
    gender = json['gender'];
    subscriptions = json['subscriptions'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['profileImage'] = this.profileImage;
    data['email'] = this.email;
    data['role'] = this.role;
    data['location'] = this.location;
    data['gender'] = this.gender;
    data['subscriptions'] = this.subscriptions;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
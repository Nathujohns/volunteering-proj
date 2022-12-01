class Login_model {
  String? message;
  String? id;
  String? token;
  String? role;

  Login_model({this.message, this.id, this.token, this.role});

  Login_model.fromJson(Map<String, dynamic> json) {
    message = json['message'] ?? '';
    id = json['id'] ?? '';
    token = json['token'] ?? '';
    role = json['role'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['id'] = this.id;
    data['token'] = this.token;
    data['role'] = this.role;
    return data;
  }
}
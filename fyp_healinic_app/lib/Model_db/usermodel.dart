class UserModel {
  String? uid;
  String? email;
  String? userName;
  String? age;
  String? gender;

  UserModel({this.uid, this.email, this.userName, this.age, this.gender});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      userName: map['userName'],
      age: map['age'],
      gender: map['gender'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'userName': userName,
      'age': age,
      'gender': gender,
    };
  }
}

import '../db/app_db.dart';

class UserModel {
  int uId;
  String uName;
  String uEmail;
  String uPass;

  UserModel(
      {required this.uId,
      required this.uEmail,
      required this.uName,
      required this.uPass});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uId: map[AppDataBase.COLUMN_USER_ID],
      uName: map[AppDataBase.COLUMN_USER_NAME],
      uPass: map[AppDataBase.COLUMN_USER_PASS],
      uEmail: map[AppDataBase.COLUMN_USER_EMAIL],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      AppDataBase.COLUMN_USER_ID: uId,
      AppDataBase.COLUMN_USER_NAME: uName,
      AppDataBase.COLUMN_USER_PASS: uPass,
      AppDataBase.COLUMN_USER_EMAIL: uEmail,
    };
  }
}

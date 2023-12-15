import '../db/app_db.dart';

class ExpenseModel {
  int expId;
  int uId;
  String expTitle;
  String expDesc;
  String expTimsStamp;
  num expAmt;
  num expBal;
  int expType;
  int expCatId;

  ExpenseModel(
      {required this.expId,
      required this.uId,
      required this.expTitle,
      required this.expDesc,
      required this.expTimsStamp,
      required this.expAmt,
      required this.expBal,
      required this.expType,
      required this.expCatId});

  factory ExpenseModel.fromMap(Map<String, dynamic> map) {
    return ExpenseModel(
      expId: map[AppDataBase.COLUMN_EXPENSE_ID],
      uId: map[AppDataBase.COLUMN_USER_ID],
      expTitle: map[AppDataBase.COLUMN_EXPENSE_TITLE],
      expDesc: map[AppDataBase.COLUMN_EXPENSE_DESC],
      expTimsStamp: map[AppDataBase.COLUMN_EXPENSE_TIMESTAMP],
      expAmt: map[AppDataBase.COLUMN_EXPENSE_AMT],
      expBal: map[AppDataBase.COLUMN_EXPENSE_BALANCE],
      expType: map[AppDataBase.COLUMN_EXPENSE_TYPE],
      expCatId: map[AppDataBase.COLUMN_EXPENSE_CAT_TYPE],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      AppDataBase.COLUMN_USER_ID: uId,
      AppDataBase.COLUMN_EXPENSE_TITLE: expTitle,
      AppDataBase.COLUMN_EXPENSE_DESC: expDesc,
      AppDataBase.COLUMN_EXPENSE_TIMESTAMP: expTimsStamp,
      AppDataBase.COLUMN_EXPENSE_AMT: expAmt,
      AppDataBase.COLUMN_EXPENSE_BALANCE: expBal,
      AppDataBase.COLUMN_EXPENSE_TYPE: expType,
      AppDataBase.COLUMN_EXPENSE_CAT_TYPE: expCatId,
    };
  }
}

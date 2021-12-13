import 'package:mysql1/mysql1.dart';
import 'package:sp/Classes/MYSQL.dart';
//
// void main()async{
//
//   User u=new User();
//   await MYSQL.connect();
//   await u.login("Kum","123");
// }


class User{
  late String _UserName;
  late String _Password;

  String get UserName => _UserName;

  set UserName(String value) {
    _UserName = value;
  }

  String get Password => _Password;

  set Password(String value) {
    _Password = value;
  }
  Future<void> getUserName()async{
    Results rows = await MYSQL.query("Select * from sql6457820.User");

    for(var row in rows) print(row);//+" "+row[1]);
  }
  Future<void> addUser(userName,password)async{
    await MYSQL.query("INSERT INTO `sql6457820`.`User` (`Usernaame`, `Password`) VALUES ('$userName', '$password');");
  }
  Future<bool> login(username,password)async{ print(username);
    Results rows = await MYSQL.query("Select * from sql6457820.User where Usernaame='$username' && Password='$password'"); print(2);
    if(rows.length<0) return false; print(rows);
    for(var row in rows){
      UserName = row[0];
      Password = row[1];
    }
    return true;
  }
  Future<void> AddReq(city,rooms,area)async{
   await MYSQL.query("INSERT INTO `sql6457820`.`User_Req` (`City`, `User_Usernaame`, `Area`, `Rooms`) VALUES ('$city', '$UserName', '$rooms', '$area');");
  }
}
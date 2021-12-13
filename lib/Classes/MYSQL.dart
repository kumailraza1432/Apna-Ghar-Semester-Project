import 'package:mysql1/mysql1.dart';

class MYSQL {
  static var settings = new ConnectionSettings(
      host: 'sql6.freemysqlhosting.net',
      port: 3306,
      user: 'sql6457820',
      password: 'GSsC3ZWdUk',
      db: 'sql6457820'
  );
  static var connected = false;
  static late MySqlConnection connection;
  static Future<void> connect()async{
    print("t1");
    connection=await MySqlConnection.connect(settings);
    print("t2");
    connected=true;
  }
  static Future<dynamic> query(query)async{
    return await connection.query(query);
  }
}
import 'package:hive/hive.dart';
import 'package:mainuse/models/user.model.dart';
import 'package:path_provider/path_provider.dart';

class HiveLocal {
  HiveLocal._();

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.defaultDirectory = dir.path;
    Hive.registerAdapter<User>('User', (value) => User.fromJson(value));
    box = Hive.box<User?>(name: "userBox");
  }

  static bindUser(User userData) => user = userData;

  static User? user;

  static late Box<User?> box;
}

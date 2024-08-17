import 'package:get_storage/get_storage.dart';
import 'package:zens_interview/app/common/values/values.dart';
import 'package:zens_interview/app/data/models/joke_model.dart';

class Storage {
  static final Storage instance = Storage._internal();

  static final GetStorage _storage = GetStorage();

  GetStorage get storage => _storage;

  factory Storage() {
    return instance;
  }

  Storage._internal();

  /// ===== Base Function =====
  Future<void> saveValue(String key, dynamic value) =>
      instance.storage.write(key, value);

  T? getValue<T>(String key) => instance.storage.read<T>(key);

  bool hasData(String key) => instance.storage.hasData(key);

  Future<void> removeValue(String key) async =>
      await instance.storage.remove(key);

  Future<void> clearStorage() async => await instance.storage.erase();

  /// ===== Base Function =====

  static Future<void> saveJokeList({required List<JokeModel> jokeList}) async {
    // Convert List<User> to List<Map<String, dynamic>>
    List<Map<String, dynamic>> jokeJsonList =
        jokeList.map((joke) => joke.toJson()).toList();

    // Save the list of JSON maps
    instance.saveValue(Constants.JOKES, jokeJsonList);
  }

  static Future<List<JokeModel>> getJokeList() async {
    List<dynamic> jokeJsonList = instance.getValue(Constants.JOKES) ?? [];

    return jokeJsonList.map((json) => JokeModel.fromJson(json)).toList();
  }
}

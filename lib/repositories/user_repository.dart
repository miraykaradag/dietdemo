// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dietdemo/constants/app_constants.dart';
import 'package:dietdemo/models/vki_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/user_model.dart';

abstract class UserRepository {
  Future<bool> saveUser(UserModel model);

  Future<bool> updateUser(UserModel model);

  Future<bool> deleteUser();

  Future<UserModel?> getUser();

  Future<bool> addVKI(VKIModel vkiModel);
}

class UserRepositoryImpl implements UserRepository {
  final HiveInterface _hive;
  UserRepositoryImpl(
    this._hive,
  );

  @override
  Future<bool> deleteUser() async {
    try {
      final box =
          await _hive.openBox<UserModel>(ApplicationConstants.UserBoxName);

      box.delete('BASE_USER');

      await box.close();
      return true;
    } on Exception {
      return false;
    }
  }

  @override
  Future<bool> saveUser(UserModel model) async {
    try {
      final box =
          await _hive.openBox<UserModel>(ApplicationConstants.UserBoxName);
      await box.put('BASE_USER', model);

      await box.close();
      return true;
    } on Exception {
      return false;
    }
  }

  @override
  Future<UserModel?> getUser() async {
    try {
      final box =
          await _hive.openBox<UserModel>(ApplicationConstants.UserBoxName);

      final user = box.get('BASE_USER');
      if (user == null) {
        return null;
      }

      await box.close();
      return user;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<bool> addVKI(VKIModel vkiModel) async {
    try {
      final box =
          await _hive.openBox<UserModel>(ApplicationConstants.UserBoxName);

      final user = box.get('BASE_USER');
      // user!.vki!.add(vkiModel);
      await box.put(
          'BASE_USER',
          UserModel(
            age: user!.age,
            email: user.email,
            gender: user.gender,
            weight: user.weight,
            height: user.height,
            username: user.username,
            vki: user.vki! + [vkiModel],
          ));

      await box.close();
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> updateUser(UserModel model) async {
    try {
      final box =
          await _hive.openBox<UserModel>(ApplicationConstants.UserBoxName);

      final user = box.get('BASE_USER');

      await box.put(
        'BASE_USER',
        UserModel(
          age: model.age,
          email: model.email,
          gender: model.gender,
          height: model.height,
          username: model.username,
          weight: model.weight,
          vki: user!.vki!,
        ),
      );
      return true;
    } on Exception {
      return false;
    }
  }
}

var BASE_REPO = UserRepositoryImpl(Hive);

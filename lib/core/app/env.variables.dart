import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, prod }

class EnvVariable {
  EnvVariable._();

  static EnvVariable instance = EnvVariable._();
  
  String get baseUrl => dotenv.get('BASE_URL');
  bool get isDev => dotenv.get('ENV_TYPE') == 'dev';
  
  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');
      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.prod');
    }
  }
}

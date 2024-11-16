import 'package:govision/gen/assets.gen.dart';
import 'package:govision/start.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: Assets.env.aEnvDevelopment);

  await start();
}

import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl_standalone.dart';
import 'package:govision/app/app.dart';
import 'package:govision/shared/util/camera.dart';
import 'package:govision/shared/util/db_loader.dart';
import 'package:govision/shared/util/logger.dart';
import 'package:govision/shared/util/platform_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> start() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final dbLoader = DatabaseLoader();
  await dbLoader.database;

  final cameraState = CameraState();
  await cameraState.initializeCamera();

  Intl.systemLocale = await findSystemLocale();

  final platformType = detectPlatformType();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/lang',
      fallbackLocale: const Locale('en'),
      child: ProviderScope(
        overrides: [
          cameraStateProvider.overrideWithValue(cameraState),
          platformTypeProvider.overrideWithValue(platformType),
        ],
        observers: [
          Logger(),
        ],
        child: MaterialApp(
          home: const App(),
          theme: ThemeData(fontFamily: 'Manrope'),
        ),
      ),
    ),
  );
}

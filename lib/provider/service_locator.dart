import 'package:audioplayers/audioplayers.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:get_it/get_it.dart';
import 'package:linuxday_2024_presentation/provider/audio_provider.dart';
import 'package:linuxday_2024_presentation/repository/pubdev_repository.dart';
import 'package:pub_api_client/pub_api_client.dart';

final getIt = GetIt.I;

void setupLocator() {
  getIt
    ..registerLazySingleton<Faker>(() => Faker.instance)
    ..registerLazySingleton<AudioProvider>(() => AudioProvider(AudioPlayer()))
    ..registerLazySingleton<PubClient>(() => PubClient())
    ..registerLazySingleton<PubDevRepository>(() => PubDevRepository());
}

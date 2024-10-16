import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linuxday_2024_presentation/provider/service_locator.dart';
import 'package:linuxday_2024_presentation/slides/0_first_slide.dart';
import 'package:linuxday_2024_presentation/slides/agenda_slide.dart';
import 'package:linuxday_2024_presentation/slides/animation/animation_slide.dart';
import 'package:linuxday_2024_presentation/slides/app_example.dart';
import 'package:linuxday_2024_presentation/slides/audio/audio_slide.dart';
import 'package:linuxday_2024_presentation/slides/charts/charts_slide.dart';
import 'package:linuxday_2024_presentation/slides/database/database_slide.dart';
import 'package:linuxday_2024_presentation/slides/disclaimer_slide.dart';
import 'package:linuxday_2024_presentation/slides/intro_flutter_slide.dart';
import 'package:linuxday_2024_presentation/slides/markdown/markdown_slide.dart';
import 'package:linuxday_2024_presentation/slides/notification/notification_slide.dart';
import 'package:linuxday_2024_presentation/slides/pdf/pdf_slide.dart';
import 'package:linuxday_2024_presentation/slides/print/print_slide.dart';
import 'package:linuxday_2024_presentation/slides/social_repo_slide.dart';
import 'package:linuxday_2024_presentation/slides/spoiler_slide.dart';
import 'package:linuxday_2024_presentation/slides/tables/tables_slide.dart';
import 'package:linuxday_2024_presentation/slides/thankyou_slide.dart';
import 'package:linuxday_2024_presentation/slides/window/window_slide.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:local_notifier/local_notifier.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();
  setupLocator();

  //Notification configuration
  // Add in main method.
  await localNotifier.setup(
    appName: 'linuxday_2024_presentation',
  );

  runApp(const ProviderScope(child: LinuxDayPresentation()));
}

class LinuxDayPresentation extends StatelessWidget {
  const LinuxDayPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      darkTheme: getBrandThemeDataDark(),
      themeMode: ThemeMode.dark,
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Alberto Bonacina',
        description:
            '🚀 Passionate Software Engineer | 💙 Flutter Enthusiast | 🐧 Advocate for Free Software and Linux',
        socialHandle: '@polilluminato',
        imagePath: 'assets/images/me.png',
      ),
      configuration: const FlutterDeckConfiguration(
        background: FlutterDeckBackgroundConfiguration(
          dark: FlutterDeckBackground.solid(kBackgroundColorDark),
        ),
        controls: FlutterDeckControlsConfiguration(
          presenterToolbarVisible: true,
          shortcuts: FlutterDeckShortcutsConfiguration(
            enabled: true,
            nextSlide: SingleActivator(LogicalKeyboardKey.arrowRight),
            previousSlide: SingleActivator(LogicalKeyboardKey.arrowLeft),
            toggleMarker: SingleActivator(
              LogicalKeyboardKey.keyM,
              control: true,
              meta: true,
            ),
            toggleNavigationDrawer: SingleActivator(
              LogicalKeyboardKey.period,
              control: true,
              meta: true,
            ),
          ),
        ),
        footer: FlutterDeckFooterConfiguration(
          showSlideNumbers: false,
          showSocialHandle: true,
        ),
        header: FlutterDeckHeaderConfiguration(
          showHeader: false,
        ),
        showProgress: true,
        progressIndicator: FlutterDeckProgressIndicator.solid(
          color: kAccentColor,
          backgroundColor: kAccentColorDark,
        ),
        transition: FlutterDeckTransition.fade(),
      ),
      slides: [
        const FirstSlide(),
        const AgendaSlide(),
        const IntroFlutterSlide(),
        const AppExampleSlide(),
        const DisclaimerSlide(),
        AudioSlide(),
        //VideoSlide(),
        const WindowSlide(),
        const NotificationSlide(),
        const AnimationSlide(),
        const ChartsSlide(),
        TablesSlide(),
        const DatabaseSlide(),
        const MarkdownSlide(),
        const PdfSlide(),
        const PrintSlide(),
        //WindowSlide(),
        //FilePickerSlide(),
        //MapsSlide(),
        //LoggingSlide(),

        //AnalyticsSlide(),
        const SpoilerSlide(),
        const SocialRepoSlide(),
        const ThankYouSlide()
      ],
    );
  }
}

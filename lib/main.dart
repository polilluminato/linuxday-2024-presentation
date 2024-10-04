import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linuxday_2024_presentation/provider/service_locator.dart';
import 'package:linuxday_2024_presentation/slides/agenda_slide.dart';
import 'package:linuxday_2024_presentation/slides/analytics/analytics_slide.dart';
import 'package:linuxday_2024_presentation/slides/animation/animation_slide.dart';
import 'package:linuxday_2024_presentation/slides/audio/audio_slide.dart';
import 'package:linuxday_2024_presentation/slides/charts/charts_slide.dart';
import 'package:linuxday_2024_presentation/slides/database/database_slide.dart';
import 'package:linuxday_2024_presentation/slides/file_picker/file_picker_slide.dart';
import 'package:linuxday_2024_presentation/slides/intro_flutter_slide.dart';
import 'package:linuxday_2024_presentation/slides/logging/logging_slide.dart';
import 'package:linuxday_2024_presentation/slides/maps/maps_slide.dart';
import 'package:linuxday_2024_presentation/slides/markdown/markdown_slide.dart';
import 'package:linuxday_2024_presentation/slides/notification/notification_slide.dart';
import 'package:linuxday_2024_presentation/slides/pdf/pdf_slide.dart';
import 'package:linuxday_2024_presentation/slides/print/print_slide.dart';
import 'package:linuxday_2024_presentation/slides/conclusioni_slide.dart';
import 'package:linuxday_2024_presentation/slides/tables/tables_slide.dart';
import 'package:linuxday_2024_presentation/slides/video/video_slide.dart';
import 'package:linuxday_2024_presentation/slides/window/window_slide.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:window_manager/window_manager.dart';

import 'slides/0_first_slide.dart';
import 'slides/api_call/api_call_slide.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();
  setupLocator();

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
          dark: FlutterDeckBackground.solid(BrandColors.backgroundColorDark),
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
          color: BrandColors.accentColor,
          backgroundColor: BrandColors.accentColorDark,
        ),
        transition: FlutterDeckTransition.fade(),
      ),
      slides: const [
        FirstSlide(),
        AgendaSlide(),
        IntroFlutterSlide(),
        ApiCallSlide(),
        AudioSlide(),
        VideoSlide(),
        WindowSlide(),
        FilePickerSlide(),
        AnimationSlide(),
        MapsSlide(),
        LoggingSlide(),
        NotificationSlide(),
        MarkdownSlide(),
        ChartsSlide(),
        PdfSlide(),
        TablesSlide(),
        DatabaseSlide(),
        AnalyticsSlide(),
        PrintSlide(),
        ConclusioniSlide(),
      ],
    );
  }
}

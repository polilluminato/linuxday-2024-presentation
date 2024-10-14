import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/qrcode_link.dart';
import 'package:linuxday_2024_presentation/ui/social_link.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SocialRepoSlide extends FlutterDeckSlideWidget {
  const SocialRepoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/social-repo-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Social e Repo',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/me.png',
            width: getScreenWidth(context) * .15,
          ),
          Text(
            "Alberto Bonacina",
            style: FlutterDeckTheme.of(context).textTheme.title,
          ),
          Text(
            "@polilluminato",
            style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
          ),
          Text(
            "Software Engineer presso Soluzione1",
            style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
          ),
          gapH(kSpaceHuge * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              SocialLink(
                icon: PhosphorIcons.githubLogo(),
                link: 'https://github.com/polilluminato',
                size: getScreenWidth(context) * .045,
              ),
              SocialLink(
                icon: PhosphorIcons.linkedinLogo(),
                link: 'https://www.linkedin.com/in/bonacinaalberto/',
              ),
              SocialLink(
                icon: PhosphorIcons.twitterLogo(),
                link: 'https://twitter.com/polilluminato',
              ),
              SocialLink(
                icon: PhosphorIcons.mastodonLogo(),
                link: 'https://fluttercommunity.social/@polilluminato',
              ),
              SocialLink(
                icon: PhosphorIcons.globe(),
                link: 'https://albertobonacina.com/',
              ),
              SocialLink(
                icon: PhosphorIcons.envelope(),
              ),
            ],
          )
        ],
      ),
      rightBuilder: (context) => const QrCodeLink(
        link: "https://bit.ly/ld2024-flutter-slides",
      ),
    );
  }
}

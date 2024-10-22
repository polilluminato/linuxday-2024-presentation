import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/action_button.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

final listPathProvider = StateProvider<List<String>>((ref) => []);

enum PickedFileType { image, file, directory }

final fileTypeProvider =
    StateProvider<PickedFileType>((ref) => PickedFileType.file);

class FilePickerSlide extends FlutterDeckSlideWidget {
  const FilePickerSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/file-picker-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'File Picker',
            ),
          ),
        );

  void _pickFile(WidgetRef ref) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path!);
      ref.read(listPathProvider.notifier).state = [file.path];
      ref.read(fileTypeProvider.notifier).state = PickedFileType.file;
    }
  }

  void _pickFiles(WidgetRef ref) async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      List<String> filesPathList =
          result.paths.map((path) => File(path!).path).toList();
      ref.read(listPathProvider.notifier).state = filesPathList;
      ref.read(fileTypeProvider.notifier).state = PickedFileType.file;
    }
  }

  void _pickImagesFiles(WidgetRef ref) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'jpeg'],
    );
    if (result != null) {
      List<String> filesPathList =
          result.paths.map((path) => File(path!).path).toList();
      ref.read(listPathProvider.notifier).state = filesPathList;
      ref.read(fileTypeProvider.notifier).state = PickedFileType.image;
    }
  }

  void _pickDirectory(WidgetRef ref) async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
    if (selectedDirectory != null) {
      ref.read(listPathProvider.notifier).state = [selectedDirectory];
      ref.read(fileTypeProvider.notifier).state = PickedFileType.directory;
    }
  }

  IconData getIcon(PickedFileType type) {
    return switch (type) {
      PickedFileType.image => PhosphorIcons.image(),
      PickedFileType.file => PhosphorIcons.file(),
      PickedFileType.directory => PhosphorIcons.folder()
    };
  }

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: getDefaultSplitSlideRatio(),
      leftBuilder: (context) {
        return const SidebarColumn(
          children: [
            PackageCard(package: "file_picker"),
            PackageCard(package: "file_selector"),
            PackageCard(package: "image_picker"),
          ],
        );
      },
      rightBuilder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    return ActionButton(
                      text: "Pick file",
                      iconData: PhosphorIcons.file(),
                      onTap: () async => _pickFile(ref),
                    );
                  },
                ),
                gapW(kSpaceHuge),
                Consumer(
                  builder: (context, ref, child) {
                    return ActionButton(
                      text: "Pick files",
                      iconData: PhosphorIcons.files(),
                      onTap: () async => _pickFiles(ref),
                    );
                  },
                ),
                gapW(kSpaceHuge),
                Consumer(
                  builder: (context, ref, child) {
                    return ActionButton(
                      text: "Pick images",
                      iconData: PhosphorIcons.images(),
                      onTap: () async => _pickImagesFiles(ref),
                    );
                  },
                ),
                gapW(kSpaceHuge),
                Consumer(
                  builder: (context, ref, child) {
                    return ActionButton(
                      text: "Pick directory",
                      iconData: PhosphorIcons.folder(),
                      onTap: () async => _pickDirectory(ref),
                    );
                  },
                ),
              ],
            ),
            gapH(kSpaceHuge),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getScreenWidth(context) * .04,
                vertical: kPaddingMain,
              ),
              child: Consumer(
                builder: (context, ref, child) {
                  final listPath = ref.watch(listPathProvider);
                  return ListView.separated(
                    separatorBuilder: (context, index) => gapH(kSpaceMain),
                    shrinkWrap: true,
                    itemCount: listPath.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(
                          getIcon(ref.watch(fileTypeProvider)),
                          size: 40,
                        ),
                        title: Text(
                          listPath[index],
                          style:
                              FlutterDeckTheme.of(context).textTheme.bodyLarge,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

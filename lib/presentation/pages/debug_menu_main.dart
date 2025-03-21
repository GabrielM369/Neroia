import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:neroia_app/core/config/environment_config.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class DebugMenuMain extends ConsumerWidget {
  const DebugMenuMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentEnv = ref.read(envProvider).type.name;

    return SheetContentScaffold(
      backgroundColor: ref.colors.background,
      appBar: AppBar(
        leadingWidth: 4,
        leading: SizedBox.shrink(),
        title: Text('Environment', style: ref.textStyle.title),
        centerTitle: false,
        backgroundColor: ref.colors.background,
      ),
      body: ListView(padding: EdgeInsets.only(bottom: 16.0), shrinkWrap: true, children: []),
    );
  }
}

class CheckBox extends ConsumerWidget {
  const CheckBox({super.key, required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Icon(selected ? HugeIcons.strokeRoundedCheckmarkSquare03 : HugeIcons.strokeRoundedSquare);
  }
}

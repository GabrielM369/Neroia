import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/router/neroia_routes.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:neroia_app/features/widgets/neroia_background_gradient.dart';
import 'package:neroia_app/features/widgets/neroia_button.dart';

class ConfirmEmailPage extends ConsumerWidget {
  const ConfirmEmailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeroiaBackgroundGradient(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8.0,
                children: [
                  HugeIcon(icon: HugeIcons.strokeRoundedMail01, color: ref.colors.text, size: 50),
                  Text(context.i18n.auth.confirmEmail, style: ref.textStyle.title),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 8.0,
              mainAxisSize: MainAxisSize.min,
              children: [
                NeroiaButton.primary(
                  expandWidth: true,
                  text: context.i18n.form.next,
                  onTap: () => EventsRoute().replace(context),
                ),
                NeroiaButton.secondary(expandWidth: true, text: context.i18n.form.back, onTap: () => context.pop()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/router/neroia_routes.dart';
import 'package:neroia_app/features/auth/presentation/auth_notifier.dart';
import 'package:neroia_app/features/widgets/neroia_button.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => NeroiaButton.secondary(
    onTap: () async {
      LogInRoute().pushReplacement(context);
      await ref.read(authProvider.notifier).logout();
    },
    text: context.i18n.auth.logout,
  );
}

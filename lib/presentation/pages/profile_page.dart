import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/features/auth/presentation/logout_button.dart';
import 'package:neroia_app/features/widgets/neroia_scaffold.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeroiaScaffold(body: Column(children: [LogoutButton()]));
  }
}

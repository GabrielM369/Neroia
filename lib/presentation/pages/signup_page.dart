import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/router/neroia_routes.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:neroia_app/features/auth/data/auth_exception.dart';
import 'package:neroia_app/features/auth/presentation/auth_notifier.dart';
import 'package:neroia_app/features/widgets/form/neroia_text_input_field.dart';
import 'package:neroia_app/features/widgets/neroia_background_gradient.dart';
import 'package:neroia_app/features/widgets/neroia_button.dart';
import 'package:neroia_app/features/widgets/show_snackbar_on_error.dart';

class SignUpPage extends ConsumerStatefulWidget {
  final String email;
  final String password;
  const SignUpPage({super.key, required this.email, required this.password});

  @override
  ConsumerState createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  late String email = widget.email;
  late String password = widget.password;
  String passwordToConfirm = '';
  bool isSignIn = false;

  @override
  void didUpdateWidget(covariant SignUpPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.email != widget.email) setState(() => email = widget.email);
    if (oldWidget.password != widget.password) setState(() => password = widget.password);
  }

  @override
  Widget build(BuildContext context) {
    return NeroiaBackgroundGradient(
      child: SafeArea(
        child: Form(
          child: Builder(
            builder:
                (context) => Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 16.0,
                      children: [
                        Text(context.i18n.auth.signInEmail, style: ref.textStyle.title),
                        NeroiaTextInputField(
                          initialValue: email,
                          label: context.i18n.auth.email,
                          onChanged: (value) => setState(() => email = value),
                        ),
                        NeroiaTextInputField(
                          initialValue: password,
                          label: context.i18n.auth.password,
                          obscureText: true,
                          onChanged: (value) => setState(() => password = value),
                        ),
                        NeroiaTextInputField(
                          label: context.i18n.auth.confirmPassword,
                          obscureText: true,
                          onChanged: (value) => setState(() => passwordToConfirm = value),
                        ),
                      ],
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
                          text: context.i18n.auth.signUp,
                          onTap:
                              email.isNotEmpty && password.isNotEmpty && passwordToConfirm.isNotEmpty
                                  ? () async {
                                    final isValid = Form.of(context).validate();
                                    if (!isValid) return;

                                    try {
                                      await ref.read(authProvider.notifier).signUp(email: email, password: password);
                                      ConfirmEmailRoute().push(context);
                                    } on AuthException catch (e) {
                                      showErrorSnackbar(context, message: e.message(error: context.i18n.error));
                                    }
                                  }
                                  : null,
                        ),
                        NeroiaButton.secondary(
                          expandWidth: true,
                          text: context.i18n.auth.alreadyHaveAnAccount,
                          onTap: () => LogInRoute(email: email, password: password).pushReplacement(context),
                        ),
                      ],
                    ),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

extension StreamToNotifier<T> on Stream<T?> {
  Future<T> toNotifierState(void Function(AsyncValue<T> v) setState, {bool loadingIfNull = false}) async {
    skip(1).listen(
      (data) => loadingIfNull && data == null ? setState(AsyncLoading()) : setState(AsyncData(data!)),
      onError: (Object e, StackTrace s) => setState(AsyncError(e, s)),
    );
    return (await firstWhere((value) => value != null))!;
  }
}

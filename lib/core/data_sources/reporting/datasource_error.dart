import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neroia_app/core/localizations/generated/error_localizations.dart';

part 'datasource_error.freezed.dart';

@freezed
sealed class DatasourceError with _$DatasourceError {
  const factory DatasourceError.serverError() = ServerError;
  const factory DatasourceError.cacheError() = CacheError;
  const factory DatasourceError.unknownError() = UnknownError;
}

extension DataSourceErrorParser on Object {
  DatasourceError get toDatasourceError =>
      this is DatasourceError ? this as DatasourceError : DatasourceError.unknownError();
}

extension DatasourceErrorX on DatasourceError {
  String message({required ErrorLocalizations i18n}) => switch (this) {
    ServerError() => i18n.serverError,
    CacheError() => i18n.cacheError,
    UnknownError() => i18n.unknownError,
  };
}

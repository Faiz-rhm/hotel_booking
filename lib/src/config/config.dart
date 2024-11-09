import 'package:flutter/foundation.dart';

@immutable
class Config {
  const Config._();

  static const baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'localhost:3000/api/v1',
  );

  static const sentryDSN = String.fromEnvironment(
    'SENTRY_DSN',
    defaultValue: 'https://some-number.ingest.sentry.io/number',
  );
}

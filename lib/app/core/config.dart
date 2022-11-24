import 'package:logger_plus/logger_plus.dart';

import '../values/constants.dart';

class Environments {
  static const String production = 'Production';
  static const String qas = 'QAS';
  static const String dev = 'Development';
  static const String local = 'Local';
}

class ConfigEnvironments {
  static const String _currentEnvironments = Environments.production;
  static Logger logger = Logger();
  static final List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.local,
      'url': 'http://localhost:8080/api/',
    },
    {
      'env': Environments.dev,
      'url': kDevelopmentDomainURL,
    },
    {
      'env': Environments.qas,
      'url': '',
    },
    {
      'env': Environments.production,
      'url': kLiveDomainURL,
    },
  ];

  static Map<String, String> getEnvironments() {
    return _availableEnvironments.firstWhere(
      (d) => d['env'] == _currentEnvironments,
    );
  }
}

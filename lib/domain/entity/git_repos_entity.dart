class GitReposEntity {
  String _name = "";
  String _description = "";
  String _language = "";
  int _openIssues = 0;
  int _watchers = 0;

  GitReposEntity({
    required String name,
    required String description,
    required String language,
    required int openIssues,
    required int watchers,
  }) {
    _name = name;
    _description = description;
    _language = language;
    _openIssues = openIssues;
    _watchers = watchers;
  }

  GitReposEntity.fromJson(dynamic json) {
    _name = json['name'];
    _description = json['description'];
    _language = json['language'];
    _openIssues = json['openIssues'];
    _watchers = json['watchers'];
  }


  String get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['description'] = _description;
    map['language'] = _language;
    map['openIssues'] = _openIssues;
    map['watchers'] = _watchers;
    return map;
  }

  String get description => _description;

  String get language => _language;

  int get openIssues => _openIssues;

  int get watchers => _watchers;
}


import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

List<DataModel> dataModelFromJson(dynamic json) => List<DataModel>.from(json.map((x) => DataModel.fromJson(x)));

String dataModelToJson(List<DataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    required int id,
    required String nodeId,
    required String name,
    required String fullName,
    required bool private,
    required Owner owner,
    required String htmlUrl,
    required String description,
    required bool fork,
    required String url,
    required String forksUrl,
    required String keysUrl,
    required String collaboratorsUrl,
    required String teamsUrl,
    required String hooksUrl,
    required String issueEventsUrl,
    required String eventsUrl,
    required String assigneesUrl,
    required String branchesUrl,
    required String tagsUrl,
    required String blobsUrl,
    required String gitTagsUrl,
    required String gitRefsUrl,
    required String treesUrl,
    required String statusesUrl,
    required String languagesUrl,
    required String stargazersUrl,
    required String contributorsUrl,
    required String subscribersUrl,
    required String subscriptionUrl,
    required String commitsUrl,
    required String gitCommitsUrl,
    required String commentsUrl,
    required String issueCommentUrl,
    required String contentsUrl,
    required String compareUrl,
    required String mergesUrl,
    required String archiveUrl,
    required String downloadsUrl,
    required String issuesUrl,
    required String pullsUrl,
    required String milestonesUrl,
    required String notificationsUrl,
    required String labelsUrl,
    required String releasesUrl,
    required String deploymentsUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime pushedAt,
    required String gitUrl,
    required String sshUrl,
    required String cloneUrl,
    required String svnUrl,
    @Default("") required String homepage,
    required int size,
    required int stargazersCount,
    required int watchersCount,
    required String language,
    required bool hasIssues,
    required bool hasProjects,
    required bool hasDownloads,
    required bool hasWiki,
    required bool hasPages,
    required bool hasDiscussions,
    required int forksCount,
    required dynamic mirrorUrl,
    required bool archived,
    required bool disabled,
    required int openIssuesCount,
    required License license,
    required bool allowForking,
    required bool isTemplate,
    required bool webCommitSignoffRequired,
    required List<dynamic> topics,
    required Visibility visibility,
    required int forks,
    required int openIssues,
    required int watchers,
    required DefaultBranch defaultBranch,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

enum DefaultBranch { MASTER, TRUNK }

final defaultBranchValues = EnumValues({
  "master": DefaultBranch.MASTER,
  "trunk": DefaultBranch.TRUNK
});

@freezed
class License with _$License {
  const factory License({
    required String key,
    required String name,
    required String spdxId,
    required String url,
    required String nodeId,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) => _$LicenseFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    required Login login,
    required int id,
    required NodeId nodeId,
    required String avatarUrl,
    required String gravatarId,
    required String url,
    required String htmlUrl,
    required String followersUrl,
    required FollowingUrl followingUrl,
    required GistsUrl gistsUrl,
    required StarredUrl starredUrl,
    required String subscriptionsUrl,
    required String organizationsUrl,
    required String reposUrl,
    required EventsUrl eventsUrl,
    required String receivedEventsUrl,
    required Type type,
    required bool siteAdmin,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

enum EventsUrl { HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_EVENTS_PRIVACY }

final eventsUrlValues = EnumValues({
  "https://api.github.com/users/JakeWharton/events{/privacy}": EventsUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_EVENTS_PRIVACY
});

enum FollowingUrl { HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_FOLLOWING_OTHER_USER }

final followingUrlValues = EnumValues({
  "https://api.github.com/users/JakeWharton/following{/other_user}": FollowingUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_FOLLOWING_OTHER_USER
});

enum GistsUrl { HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_GISTS_GIST_ID }

final gistsUrlValues = EnumValues({
  "https://api.github.com/users/JakeWharton/gists{/gist_id}": GistsUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_GISTS_GIST_ID
});

enum Login { JAKE_WHARTON }

final loginValues = EnumValues({
  "JakeWharton": Login.JAKE_WHARTON
});

enum NodeId { MDQ6_VX_NLCJ_Y2_N_TC3 }

final nodeIdValues = EnumValues({
  "MDQ6VXNlcjY2NTc3": NodeId.MDQ6_VX_NLCJ_Y2_N_TC3
});

enum StarredUrl { HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_STARRED_OWNER_REPO }

final starredUrlValues = EnumValues({
  "https://api.github.com/users/JakeWharton/starred{/owner}{/repo}": StarredUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_STARRED_OWNER_REPO
});

enum Type { USER }

final typeValues = EnumValues({
  "User": Type.USER
});

enum Visibility { PUBLIC }

final visibilityValues = EnumValues({
  "public": Visibility.PUBLIC
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

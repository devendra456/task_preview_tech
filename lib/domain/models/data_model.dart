
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

@freezed
 class DataModel with _$DataModel {
  const factory DataModel({
    @Default(0) int? id,
    @Default("") String? nodeId,
    @Default("") String? name,
    @Default("") String? fullName,
    @Default(false) bool? private,
    required Owner? owner,
    @Default("") String? htmlUrl,
    @Default("") String? description,
    @Default(false) bool? fork,
    @Default("") String? url,
    @Default("") String? forksUrl,
    @Default("") String? keysUrl,
    @Default("") String? collaboratorsUrl,
    @Default("") String? teamsUrl,
    @Default("") String? hooksUrl,
    @Default("") String? issueEventsUrl,
    @Default("") String? eventsUrl,
    @Default("") String? assigneesUrl,
    @Default("") String? branchesUrl,
    @Default("") String? tagsUrl,
    @Default("") String? blobsUrl,
    @Default("") String? gitTagsUrl,
    @Default("") String? gitRefsUrl,
    @Default("") String? treesUrl,
    @Default("") String? statusesUrl,
    @Default("") String? languagesUrl,
    @Default("") String? stargazersUrl,
    @Default("") String? contributorsUrl,
    @Default("") String? subscribersUrl,
    @Default("") String? subscriptionUrl,
    @Default("") String? commitsUrl,
    @Default("") String? gitCommitsUrl,
    @Default("") String? commentsUrl,
    @Default("") String? issueCommentUrl,
    @Default("") String? contentsUrl,
    @Default("") String? compareUrl,
    @Default("") String? mergesUrl,
    @Default("") String? archiveUrl,
    @Default("") String? downloadsUrl,
    @Default("") String? issuesUrl,
    @Default("") String? pullsUrl,
    @Default("") String? milestonesUrl,
    @Default("") String? notificationsUrl,
    @Default("") String? labelsUrl,
    @Default("") String? releasesUrl,
    @Default("") String? deploymentsUrl,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required DateTime? pushedAt,
    @Default("") String? gitUrl,
    @Default("") String? sshUrl,
    @Default("") String? cloneUrl,
    @Default("") String? svnUrl,
    @Default("") String? homepage,
    @Default(0) int? size,
    @Default(0) int? stargazersCount,
    @Default(0) int? watchersCount,
    @Default("") String? language,
    @Default(false) bool? hasIssues,
    @Default(false) bool? hasProjects,
    @Default(false) bool? hasDownloads,
    @Default(false) bool? hasWiki,
    @Default(false) bool? hasPages,
    @Default(false) bool? hasDiscussions,
    @Default(0) int? forksCount,
    required dynamic mirrorUrl,
    @Default(false) bool? archived,
    @Default(false) bool? disabled,
    @Default(0) int? openIssuesCount,
    required License? license,
    @Default(false) bool? allowForking,
    @Default(false) bool? isTemplate,
    @Default(false) bool? webCommitSignoffRequired,
    @Default([]) List<dynamic>? topics,
    @Default("") String? visibility,
    @Default(0) int? forks,
    @Default(0) int? open_issues,
    @Default(0) int? watchers,
    @Default("") String? defaultBranch,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class License with _$License {
  const factory License({
    @Default("") String? key,
    @Default("") String? name,
    @Default("") String? spdxId,
    @Default("") String? url,
    @Default("") String? nodeId,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) => _$LicenseFromJson(json);
}

@freezed
 class Owner with _$Owner {
  const factory Owner({
    @Default("") String? login,
    @Default(0) int? id,
    @Default("") String? nodeId,
    @Default("") String? avatarUrl,
    @Default("") String? gravatarId,
    @Default("") String? url,
    @Default("") String? htmlUrl,
    @Default("") String? followersUrl,
    @Default("") String? followingUrl,
    @Default("") String? gistsUrl,
    @Default("") String? starredUrl,
    @Default("") String? subscriptionsUrl,
    @Default("") String? organizationsUrl,
    @Default("") String? reposUrl,
    @Default("") String? eventsUrl,
    @Default("") String? receivedEventsUrl,
    @Default("") String? type,
    @Default(false) bool? siteAdmin,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

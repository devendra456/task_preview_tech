import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';

part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    @JsonKey(defaultValue: 0, nullable: true, name: 'id') int? id,
    @JsonKey(defaultValue: "", nullable: true, name: 'node_id') String? nodeId,
    @JsonKey(defaultValue: "", nullable: true, name: 'name') String? name,
    @JsonKey(defaultValue: "", nullable: true, name: 'full_name')
        String? fullName,
    @JsonKey(defaultValue: false, nullable: true, name: 'private')
        bool? private,
    @JsonKey(required: true, nullable: true, name: 'owner') OwnerBean? owner,
    @JsonKey(defaultValue: "", nullable: true, name: 'html_url')
        String? htmlUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'description')
        String? description,
    @JsonKey(defaultValue: false, nullable: true, name: 'fork') bool? fork,
    @JsonKey(defaultValue: "", nullable: true, name: 'url') String? url,
    @JsonKey(defaultValue: "", nullable: true, name: 'forks_url')
        String? forksUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'keys_url')
        String? keysUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'collaborators_url')
        String? collaboratorsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'teams_url')
        String? teamsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'hooks_url')
        String? hooksUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'issue_events_url')
        String? issueEventsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'events_url')
        String? eventsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'assignees_url')
        String? assigneesUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'branches_url')
        String? branchesUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'tags_url')
        String? tagsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'blobs_url')
        String? blobsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'git_tags_url')
        String? gitTagsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'git_refs_url')
        String? gitRefsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'trees_url')
        String? treesUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'statuses_url')
        String? statusesUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'languages_url')
        String? languagesUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'stargazers_url')
        String? stargazersUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'contributors_url')
        String? contributorsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'subscribers_url')
        String? subscribersUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'subscription_url')
        String? subscriptionUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'commits_url')
        String? commitsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'git_commits_url')
        String? gitCommitsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'comments_url')
        String? commentsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'issue_comment_url')
        String? issueCommentUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'contents_url')
        String? contentsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'compare_url')
        String? compareUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'merges_url')
        String? mergesUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'archive_url')
        String? archiveUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'downloads_url')
        String? downloadsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'issues_url')
        String? issuesUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'pulls_url')
        String? pullsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'milestones_url')
        String? milestonesUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'notifications_url')
        String? notificationsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'labels_url')
        String? labelsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'releases_url')
        String? releasesUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'deployments_url')
        String? deploymentsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'created_at')
        String? createdAt,
    @JsonKey(defaultValue: "", nullable: true, name: 'updated_at')
        String? updatedAt,
    @JsonKey(defaultValue: "", nullable: true, name: 'pushed_at')
        String? pushedAt,
    @JsonKey(defaultValue: "", nullable: true, name: 'git_url') String? gitUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'ssh_url') String? sshUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'clone_url')
        String? cloneUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'svn_url') String? svnUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'homepage')
        String? homepage,
    @JsonKey(defaultValue: 0, nullable: true, name: 'size') int? size,
    @JsonKey(defaultValue: 0, nullable: true, name: 'stargazers_count')
        int? stargazersCount,
    @JsonKey(defaultValue: 0, nullable: true, name: 'watchers_count')
        int? watchersCount,
    @JsonKey(defaultValue: "", nullable: true, name: 'language')
        String? language,
    @JsonKey(defaultValue: false, nullable: true, name: 'has_issues')
        bool? hasIssues,
    @JsonKey(defaultValue: false, nullable: true, name: 'has_projects')
        bool? hasProjects,
    @JsonKey(defaultValue: false, nullable: true, name: 'has_downloads')
        bool? hasDownloads,
    @JsonKey(defaultValue: false, nullable: true, name: 'has_wiki')
        bool? hasWiki,
    @JsonKey(defaultValue: false, nullable: true, name: 'has_pages')
        bool? hasPages,
    @JsonKey(defaultValue: false, nullable: true, name: 'has_discussions')
        bool? hasDiscussions,
    @JsonKey(defaultValue: 0, nullable: true, name: 'forks_count')
        int? forksCount,
    @JsonKey(defaultValue: false, nullable: true, name: 'archived')
        bool? archived,
    @JsonKey(defaultValue: false, nullable: true, name: 'disabled')
        bool? disabled,
    @JsonKey(defaultValue: 0, nullable: true, name: 'open_issues_count')
        int? openIssuesCount,
    @JsonKey(required: true, nullable: true, name: 'license')
        LicenseBean? license,
    @JsonKey(defaultValue: false, nullable: true, name: 'allow_forking')
        bool? allowForking,
    @JsonKey(defaultValue: false, nullable: true, name: 'is_template')
        bool? isTemplate,
    @JsonKey(defaultValue: false, nullable: true, name: 'web_commit_signoff_required')
        bool? webCommitSignoffRequired,
    @JsonKey(defaultValue: [], nullable: true, name: 'topics')
        List<dynamic>? topics,
    @JsonKey(defaultValue: "", nullable: true, name: 'visibility')
        String? visibility,
    @JsonKey(defaultValue: 0, nullable: true, name: 'forks') int? forks,
    @JsonKey(defaultValue: 0, nullable: true, name: 'open_issues')
        int? openIssues,
    @JsonKey(defaultValue: 0, nullable: true, name: 'watchers') int? watchers,
    @JsonKey(defaultValue: "", nullable: true, name: 'default_branch')
        String? defaultBranch,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, Object?> json) =>
      _$DataModelFromJson(json);
}

@freezed
class LicenseBean with _$LicenseBean {
  const factory LicenseBean({
    @JsonKey(defaultValue: "", nullable: true, name: 'key') String? key,
    @JsonKey(defaultValue: "", nullable: true, name: 'name') String? name,
    @JsonKey(defaultValue: "", nullable: true, name: 'spdx_id') String? spdxId,
    @JsonKey(defaultValue: "", nullable: true, name: 'url') String? url,
    @JsonKey(defaultValue: "", nullable: true, name: 'node_id') String? nodeId,
  }) = _LicenseBean;

  factory LicenseBean.fromJson(Map<String, Object?> json) =>
      _$LicenseBeanFromJson(json);
}

@freezed
class OwnerBean with _$OwnerBean {
  const factory OwnerBean({
    @JsonKey(defaultValue: "", nullable: true, name: 'login') String? login,
    @JsonKey(defaultValue: 0, nullable: true, name: 'id') int? id,
    @JsonKey(defaultValue: "", nullable: true, name: 'node_id') String? nodeId,
    @JsonKey(defaultValue: "", nullable: true, name: 'avatar_url')
        String? avatarUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'gravatar_id')
        String? gravatarId,
    @JsonKey(defaultValue: "", nullable: true, name: 'url') String? url,
    @JsonKey(defaultValue: "", nullable: true, name: 'html_url')
        String? htmlUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'followers_url')
        String? followersUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'following_url')
        String? followingUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'gists_url')
        String? gistsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'starred_url')
        String? starredUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'subscriptions_url')
        String? subscriptionsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'organizations_url')
        String? organizationsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'repos_url')
        String? reposUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'events_url')
        String? eventsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'received_events_url')
        String? receivedEventsUrl,
    @JsonKey(defaultValue: "", nullable: true, name: 'type') String? type,
    @JsonKey(defaultValue: false, nullable: true, name: 'site_admin')
        bool? siteAdmin,
  }) = _OwnerBean;

  factory OwnerBean.fromJson(Map<String, Object?> json) =>
      _$OwnerBeanFromJson(json);
}

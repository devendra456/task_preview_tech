// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      id: json['id'] as int,
      nodeId: json['nodeId'] as String,
      name: json['name'] as String,
      fullName: json['fullName'] as String,
      private: json['private'] as bool,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['htmlUrl'] as String,
      description: json['description'] as String,
      fork: json['fork'] as bool,
      url: json['url'] as String,
      forksUrl: json['forksUrl'] as String,
      keysUrl: json['keysUrl'] as String,
      collaboratorsUrl: json['collaboratorsUrl'] as String,
      teamsUrl: json['teamsUrl'] as String,
      hooksUrl: json['hooksUrl'] as String,
      issueEventsUrl: json['issueEventsUrl'] as String,
      eventsUrl: json['eventsUrl'] as String,
      assigneesUrl: json['assigneesUrl'] as String,
      branchesUrl: json['branchesUrl'] as String,
      tagsUrl: json['tagsUrl'] as String,
      blobsUrl: json['blobsUrl'] as String,
      gitTagsUrl: json['gitTagsUrl'] as String,
      gitRefsUrl: json['gitRefsUrl'] as String,
      treesUrl: json['treesUrl'] as String,
      statusesUrl: json['statusesUrl'] as String,
      languagesUrl: json['languagesUrl'] as String,
      stargazersUrl: json['stargazersUrl'] as String,
      contributorsUrl: json['contributorsUrl'] as String,
      subscribersUrl: json['subscribersUrl'] as String,
      subscriptionUrl: json['subscriptionUrl'] as String,
      commitsUrl: json['commitsUrl'] as String,
      gitCommitsUrl: json['gitCommitsUrl'] as String,
      commentsUrl: json['commentsUrl'] as String,
      issueCommentUrl: json['issueCommentUrl'] as String,
      contentsUrl: json['contentsUrl'] as String,
      compareUrl: json['compareUrl'] as String,
      mergesUrl: json['mergesUrl'] as String,
      archiveUrl: json['archiveUrl'] as String,
      downloadsUrl: json['downloadsUrl'] as String,
      issuesUrl: json['issuesUrl'] as String,
      pullsUrl: json['pullsUrl'] as String,
      milestonesUrl: json['milestonesUrl'] as String,
      notificationsUrl: json['notificationsUrl'] as String,
      labelsUrl: json['labelsUrl'] as String,
      releasesUrl: json['releasesUrl'] as String,
      deploymentsUrl: json['deploymentsUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      pushedAt: DateTime.parse(json['pushedAt'] as String),
      gitUrl: json['gitUrl'] as String,
      sshUrl: json['sshUrl'] as String,
      cloneUrl: json['cloneUrl'] as String,
      svnUrl: json['svnUrl'] as String,
      homepage: json['homepage'] as String,
      size: json['size'] as int,
      stargazersCount: json['stargazersCount'] as int,
      watchersCount: json['watchersCount'] as int,
      language: json['language'] as String,
      hasIssues: json['hasIssues'] as bool,
      hasProjects: json['hasProjects'] as bool,
      hasDownloads: json['hasDownloads'] as bool,
      hasWiki: json['hasWiki'] as bool,
      hasPages: json['hasPages'] as bool,
      hasDiscussions: json['hasDiscussions'] as bool,
      forksCount: json['forksCount'] as int,
      mirrorUrl: json['mirrorUrl'],
      archived: json['archived'] as bool,
      disabled: json['disabled'] as bool,
      openIssuesCount: json['openIssuesCount'] as int,
      license: License.fromJson(json['license'] as Map<String, dynamic>),
      allowForking: json['allowForking'] as bool,
      isTemplate: json['isTemplate'] as bool,
      webCommitSignoffRequired: json['webCommitSignoffRequired'] as bool,
      topics: json['topics'] as List<dynamic>,
      visibility: $enumDecode(_$VisibilityEnumMap, json['visibility']),
      forks: json['forks'] as int,
      openIssues: json['openIssues'] as int,
      watchers: json['watchers'] as int,
      defaultBranch: $enumDecode(_$DefaultBranchEnumMap, json['defaultBranch']),
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nodeId': instance.nodeId,
      'name': instance.name,
      'fullName': instance.fullName,
      'private': instance.private,
      'owner': instance.owner,
      'htmlUrl': instance.htmlUrl,
      'description': instance.description,
      'fork': instance.fork,
      'url': instance.url,
      'forksUrl': instance.forksUrl,
      'keysUrl': instance.keysUrl,
      'collaboratorsUrl': instance.collaboratorsUrl,
      'teamsUrl': instance.teamsUrl,
      'hooksUrl': instance.hooksUrl,
      'issueEventsUrl': instance.issueEventsUrl,
      'eventsUrl': instance.eventsUrl,
      'assigneesUrl': instance.assigneesUrl,
      'branchesUrl': instance.branchesUrl,
      'tagsUrl': instance.tagsUrl,
      'blobsUrl': instance.blobsUrl,
      'gitTagsUrl': instance.gitTagsUrl,
      'gitRefsUrl': instance.gitRefsUrl,
      'treesUrl': instance.treesUrl,
      'statusesUrl': instance.statusesUrl,
      'languagesUrl': instance.languagesUrl,
      'stargazersUrl': instance.stargazersUrl,
      'contributorsUrl': instance.contributorsUrl,
      'subscribersUrl': instance.subscribersUrl,
      'subscriptionUrl': instance.subscriptionUrl,
      'commitsUrl': instance.commitsUrl,
      'gitCommitsUrl': instance.gitCommitsUrl,
      'commentsUrl': instance.commentsUrl,
      'issueCommentUrl': instance.issueCommentUrl,
      'contentsUrl': instance.contentsUrl,
      'compareUrl': instance.compareUrl,
      'mergesUrl': instance.mergesUrl,
      'archiveUrl': instance.archiveUrl,
      'downloadsUrl': instance.downloadsUrl,
      'issuesUrl': instance.issuesUrl,
      'pullsUrl': instance.pullsUrl,
      'milestonesUrl': instance.milestonesUrl,
      'notificationsUrl': instance.notificationsUrl,
      'labelsUrl': instance.labelsUrl,
      'releasesUrl': instance.releasesUrl,
      'deploymentsUrl': instance.deploymentsUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'pushedAt': instance.pushedAt.toIso8601String(),
      'gitUrl': instance.gitUrl,
      'sshUrl': instance.sshUrl,
      'cloneUrl': instance.cloneUrl,
      'svnUrl': instance.svnUrl,
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazersCount': instance.stargazersCount,
      'watchersCount': instance.watchersCount,
      'language': instance.language,
      'hasIssues': instance.hasIssues,
      'hasProjects': instance.hasProjects,
      'hasDownloads': instance.hasDownloads,
      'hasWiki': instance.hasWiki,
      'hasPages': instance.hasPages,
      'hasDiscussions': instance.hasDiscussions,
      'forksCount': instance.forksCount,
      'mirrorUrl': instance.mirrorUrl,
      'archived': instance.archived,
      'disabled': instance.disabled,
      'openIssuesCount': instance.openIssuesCount,
      'license': instance.license,
      'allowForking': instance.allowForking,
      'isTemplate': instance.isTemplate,
      'webCommitSignoffRequired': instance.webCommitSignoffRequired,
      'topics': instance.topics,
      'visibility': _$VisibilityEnumMap[instance.visibility]!,
      'forks': instance.forks,
      'openIssues': instance.openIssues,
      'watchers': instance.watchers,
      'defaultBranch': _$DefaultBranchEnumMap[instance.defaultBranch]!,
    };

const _$VisibilityEnumMap = {
  Visibility.PUBLIC: 'PUBLIC',
};

const _$DefaultBranchEnumMap = {
  DefaultBranch.MASTER: 'MASTER',
  DefaultBranch.TRUNK: 'TRUNK',
};

_$_License _$$_LicenseFromJson(Map<String, dynamic> json) => _$_License(
      key: json['key'] as String,
      name: json['name'] as String,
      spdxId: json['spdxId'] as String,
      url: json['url'] as String,
      nodeId: json['nodeId'] as String,
    );

Map<String, dynamic> _$$_LicenseToJson(_$_License instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdxId': instance.spdxId,
      'url': instance.url,
      'nodeId': instance.nodeId,
    };

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      login: $enumDecode(_$LoginEnumMap, json['login']),
      id: json['id'] as int,
      nodeId: $enumDecode(_$NodeIdEnumMap, json['nodeId']),
      avatarUrl: json['avatarUrl'] as String,
      gravatarId: json['gravatarId'] as String,
      url: json['url'] as String,
      htmlUrl: json['htmlUrl'] as String,
      followersUrl: json['followersUrl'] as String,
      followingUrl: $enumDecode(_$FollowingUrlEnumMap, json['followingUrl']),
      gistsUrl: $enumDecode(_$GistsUrlEnumMap, json['gistsUrl']),
      starredUrl: $enumDecode(_$StarredUrlEnumMap, json['starredUrl']),
      subscriptionsUrl: json['subscriptionsUrl'] as String,
      organizationsUrl: json['organizationsUrl'] as String,
      reposUrl: json['reposUrl'] as String,
      eventsUrl: $enumDecode(_$EventsUrlEnumMap, json['eventsUrl']),
      receivedEventsUrl: json['receivedEventsUrl'] as String,
      type: $enumDecode(_$TypeEnumMap, json['type']),
      siteAdmin: json['siteAdmin'] as bool,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'login': _$LoginEnumMap[instance.login]!,
      'id': instance.id,
      'nodeId': _$NodeIdEnumMap[instance.nodeId]!,
      'avatarUrl': instance.avatarUrl,
      'gravatarId': instance.gravatarId,
      'url': instance.url,
      'htmlUrl': instance.htmlUrl,
      'followersUrl': instance.followersUrl,
      'followingUrl': _$FollowingUrlEnumMap[instance.followingUrl]!,
      'gistsUrl': _$GistsUrlEnumMap[instance.gistsUrl]!,
      'starredUrl': _$StarredUrlEnumMap[instance.starredUrl]!,
      'subscriptionsUrl': instance.subscriptionsUrl,
      'organizationsUrl': instance.organizationsUrl,
      'reposUrl': instance.reposUrl,
      'eventsUrl': _$EventsUrlEnumMap[instance.eventsUrl]!,
      'receivedEventsUrl': instance.receivedEventsUrl,
      'type': _$TypeEnumMap[instance.type]!,
      'siteAdmin': instance.siteAdmin,
    };

const _$LoginEnumMap = {
  Login.JAKE_WHARTON: 'JAKE_WHARTON',
};

const _$NodeIdEnumMap = {
  NodeId.MDQ6_VX_NLCJ_Y2_N_TC3: 'MDQ6_VX_NLCJ_Y2_N_TC3',
};

const _$FollowingUrlEnumMap = {
  FollowingUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_FOLLOWING_OTHER_USER:
      'HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_FOLLOWING_OTHER_USER',
};

const _$GistsUrlEnumMap = {
  GistsUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_GISTS_GIST_ID:
      'HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_GISTS_GIST_ID',
};

const _$StarredUrlEnumMap = {
  StarredUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_STARRED_OWNER_REPO:
      'HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_STARRED_OWNER_REPO',
};

const _$EventsUrlEnumMap = {
  EventsUrl.HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_EVENTS_PRIVACY:
      'HTTPS_API_GITHUB_COM_USERS_JAKE_WHARTON_EVENTS_PRIVACY',
};

const _$TypeEnumMap = {
  Type.USER: 'USER',
};

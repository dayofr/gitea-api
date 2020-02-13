import 'package:gitea_openapi/api.dart';
import 'package:test/test.dart';


/// tests for RepositoryApi
void main() {
  var instance = RepositoryApi();

  group('tests for RepositoryApi', () {
    // Create a repository
    //
    //Future<Repository> createCurrentUserRepo({ CreateRepoOption body }) async 
    test('test createCurrentUserRepo', () async {
      // TODO
    });

    // Fork a repository
    //
    //Future<Repository> createFork(String owner, String repo, { CreateForkOption body }) async 
    test('test createFork', () async {
      // TODO
    });

    // Gets the blob of a repository.
    //
    //Future<GitBlobResponse> getBlob(String owner, String repo, String sha) async 
    test('test getBlob', () async {
      // TODO
    });

    // Gets the tag object of an annotated tag (not lightweight tags)
    //
    //Future<AnnotatedTag> getTag(String owner, String repo, String sha) async 
    test('test getTag', () async {
      // TODO
    });

    // Gets the tree of a repository.
    //
    //Future<GitTreeResponse> getTree(String owner, String repo, String sha, { bool recursive, int page, int perPage }) async 
    test('test getTree', () async {
      // TODO
    });

    // List a repository's forks
    //
    //Future<List<Repository>> listForks(String owner, String repo, { int page, int limit }) async 
    test('test listForks', () async {
      // TODO
    });

    // Add a collaborator to a repository
    //
    //Future repoAddCollaborator(String owner, String repo, String collaborator, { AddCollaboratorOption body }) async 
    test('test repoAddCollaborator', () async {
      // TODO
    });

    // Add a topic to a repository
    //
    //Future repoAddTopíc(String owner, String repo, String topic) async 
    test('test repoAddTopíc', () async {
      // TODO
    });

    // Check if a user is a collaborator of a repository
    //
    //Future repoCheckCollaborator(String owner, String repo, String collaborator) async 
    test('test repoCheckCollaborator', () async {
      // TODO
    });

    // Create a branch protections for a repository
    //
    //Future<BranchProtection> repoCreateBranchProtection(String owner, String repo, { CreateBranchProtectionOption body }) async 
    test('test repoCreateBranchProtection', () async {
      // TODO
    });

    // Create a file in a repository
    //
    //Future<FileResponse> repoCreateFile(String owner, String repo, String filepath, CreateFileOptions body) async 
    test('test repoCreateFile', () async {
      // TODO
    });

    // Create a hook
    //
    //Future<Hook> repoCreateHook(String owner, String repo, { CreateHookOption body }) async 
    test('test repoCreateHook', () async {
      // TODO
    });

    // Add a key to a repository
    //
    //Future<DeployKey> repoCreateKey(String owner, String repo, { CreateKeyOption body }) async 
    test('test repoCreateKey', () async {
      // TODO
    });

    // Create a pull request
    //
    //Future<PullRequest> repoCreatePullRequest(String owner, String repo, { CreatePullRequestOption body }) async 
    test('test repoCreatePullRequest', () async {
      // TODO
    });

    // Create a release
    //
    //Future<Release> repoCreateRelease(String owner, String repo, { CreateReleaseOption body }) async 
    test('test repoCreateRelease', () async {
      // TODO
    });

    // Create a release attachment
    //
    //Future<Attachment> repoCreateReleaseAttachment(String owner, String repo, int id, MultipartFile attachment, { String name }) async 
    test('test repoCreateReleaseAttachment', () async {
      // TODO
    });

    // Create a commit status
    //
    //Future<Status> repoCreateStatus(String owner, String repo, String sha, { CreateStatusOption body }) async 
    test('test repoCreateStatus', () async {
      // TODO
    });

    // Delete a repository
    //
    //Future repoDelete(String owner, String repo) async 
    test('test repoDelete', () async {
      // TODO
    });

    // Delete a specific branch protection for the repository
    //
    //Future repoDeleteBranchProtection(String owner, String repo, String name) async 
    test('test repoDeleteBranchProtection', () async {
      // TODO
    });

    // Delete a collaborator from a repository
    //
    //Future repoDeleteCollaborator(String owner, String repo, String collaborator) async 
    test('test repoDeleteCollaborator', () async {
      // TODO
    });

    // Delete a file in a repository
    //
    //Future<FileDeleteResponse> repoDeleteFile(String owner, String repo, String filepath, DeleteFileOptions body) async 
    test('test repoDeleteFile', () async {
      // TODO
    });

    // Delete a Git hook in a repository
    //
    //Future repoDeleteGitHook(String owner, String repo, String id) async 
    test('test repoDeleteGitHook', () async {
      // TODO
    });

    // Delete a hook in a repository
    //
    //Future repoDeleteHook(String owner, String repo, int id) async 
    test('test repoDeleteHook', () async {
      // TODO
    });

    // Delete a key from a repository
    //
    //Future repoDeleteKey(String owner, String repo, int id) async 
    test('test repoDeleteKey', () async {
      // TODO
    });

    // Delete a release
    //
    //Future repoDeleteRelease(String owner, String repo, int id) async 
    test('test repoDeleteRelease', () async {
      // TODO
    });

    // Delete a release attachment
    //
    //Future repoDeleteReleaseAttachment(String owner, String repo, int id, int attachmentId) async 
    test('test repoDeleteReleaseAttachment', () async {
      // TODO
    });

    // Delete a topic from a repository
    //
    //Future repoDeleteTopic(String owner, String repo, String topic) async 
    test('test repoDeleteTopic', () async {
      // TODO
    });

    // Edit a repository's properties. Only fields that are set will be changed.
    //
    //Future<Repository> repoEdit(String owner, String repo, { EditRepoOption body }) async 
    test('test repoEdit', () async {
      // TODO
    });

    // Edit a branch protections for a repository. Only fields that are set will be changed
    //
    //Future<BranchProtection> repoEditBranchProtection(String owner, String repo, String name, { EditBranchProtectionOption body }) async 
    test('test repoEditBranchProtection', () async {
      // TODO
    });

    // Edit a Git hook in a repository
    //
    //Future<GitHook> repoEditGitHook(String owner, String repo, String id, { EditGitHookOption body }) async 
    test('test repoEditGitHook', () async {
      // TODO
    });

    // Edit a hook in a repository
    //
    //Future<Hook> repoEditHook(String owner, String repo, int id, { EditHookOption body }) async 
    test('test repoEditHook', () async {
      // TODO
    });

    // Update a pull request. If using deadline only the date will be taken into account, and time of day ignored.
    //
    //Future<PullRequest> repoEditPullRequest(String owner, String repo, int index, { EditPullRequestOption body }) async 
    test('test repoEditPullRequest', () async {
      // TODO
    });

    // Update a release
    //
    //Future<Release> repoEditRelease(String owner, String repo, int id, { EditReleaseOption body }) async 
    test('test repoEditRelease', () async {
      // TODO
    });

    // Edit a release attachment
    //
    //Future<Attachment> repoEditReleaseAttachment(String owner, String repo, int id, int attachmentId, { EditAttachmentOptions body }) async 
    test('test repoEditReleaseAttachment', () async {
      // TODO
    });

    // Get a repository
    //
    //Future<Repository> repoGet(String owner, String repo) async 
    test('test repoGet', () async {
      // TODO
    });

    // Get a list of all commits from a repository
    //
    //Future<List<Commit>> repoGetAllCommits(String owner, String repo, { String sha, int page, int limit }) async 
    test('test repoGetAllCommits', () async {
      // TODO
    });

    // Get an archive of a repository
    //
    //Future repoGetArchive(String owner, String repo, String archive) async 
    test('test repoGetArchive', () async {
      // TODO
    });

    // Retrieve a specific branch from a repository, including its effective branch protection
    //
    //Future<Branch> repoGetBranch(String owner, String repo, String branch) async 
    test('test repoGetBranch', () async {
      // TODO
    });

    // Get a specific branch protection for the repository
    //
    //Future<BranchProtection> repoGetBranchProtection(String owner, String repo, String name) async 
    test('test repoGetBranchProtection', () async {
      // TODO
    });

    // Get a repository by id
    //
    //Future<Repository> repoGetByID(int id) async 
    test('test repoGetByID', () async {
      // TODO
    });

    // Get a commit's combined status, by branch/tag/commit reference
    //
    //Future<Status> repoGetCombinedStatusByRef(String owner, String repo, String ref, { int page }) async 
    test('test repoGetCombinedStatusByRef', () async {
      // TODO
    });

    // Gets the metadata and contents (if a file) of an entry in a repository, or a list of entries if a dir
    //
    //Future<ContentsResponse> repoGetContents(String owner, String repo, String filepath, { String ref }) async 
    test('test repoGetContents', () async {
      // TODO
    });

    // Gets the metadata of all the entries of the root dir
    //
    //Future<List<ContentsResponse>> repoGetContentsList(String owner, String repo, { String ref }) async 
    test('test repoGetContentsList', () async {
      // TODO
    });

    // Get the EditorConfig definitions of a file in a repository
    //
    //Future repoGetEditorConfig(String owner, String repo, String filepath) async 
    test('test repoGetEditorConfig', () async {
      // TODO
    });

    // Get a Git hook
    //
    //Future<GitHook> repoGetGitHook(String owner, String repo, String id) async 
    test('test repoGetGitHook', () async {
      // TODO
    });

    // Get a hook
    //
    //Future<Hook> repoGetHook(String owner, String repo, int id) async 
    test('test repoGetHook', () async {
      // TODO
    });

    // Get a repository's key by id
    //
    //Future<DeployKey> repoGetKey(String owner, String repo, int id) async 
    test('test repoGetKey', () async {
      // TODO
    });

    // Get a pull request
    //
    //Future<PullRequest> repoGetPullRequest(String owner, String repo, int index) async 
    test('test repoGetPullRequest', () async {
      // TODO
    });

    // Get a file from a repository
    //
    //Future repoGetRawFile(String owner, String repo, String filepath) async 
    test('test repoGetRawFile', () async {
      // TODO
    });

    // Get a release
    //
    //Future<Release> repoGetRelease(String owner, String repo, int id) async 
    test('test repoGetRelease', () async {
      // TODO
    });

    // Get a release attachment
    //
    //Future<Attachment> repoGetReleaseAttachment(String owner, String repo, int id, int attachmentId) async 
    test('test repoGetReleaseAttachment', () async {
      // TODO
    });

    // Get a single commit from a repository
    //
    //Future<Commit> repoGetSingleCommit(String owner, String repo, String sha) async 
    test('test repoGetSingleCommit', () async {
      // TODO
    });

    // Get specified ref or filtered repository's refs
    //
    //Future<List<Reference>> repoListAllGitRefs(String owner, String repo) async 
    test('test repoListAllGitRefs', () async {
      // TODO
    });

    // List branch protections for a repository
    //
    //Future<List<BranchProtection>> repoListBranchProtection(String owner, String repo) async 
    test('test repoListBranchProtection', () async {
      // TODO
    });

    // List a repository's branches
    //
    //Future<List<Branch>> repoListBranches(String owner, String repo) async 
    test('test repoListBranches', () async {
      // TODO
    });

    // List a repository's collaborators
    //
    //Future<List<User>> repoListCollaborators(String owner, String repo, { int page, int limit }) async 
    test('test repoListCollaborators', () async {
      // TODO
    });

    // List the Git hooks in a repository
    //
    //Future<List<GitHook>> repoListGitHooks(String owner, String repo) async 
    test('test repoListGitHooks', () async {
      // TODO
    });

    // Get specified ref or filtered repository's refs
    //
    //Future<List<Reference>> repoListGitRefs(String owner, String repo, String ref) async 
    test('test repoListGitRefs', () async {
      // TODO
    });

    // List the hooks in a repository
    //
    //Future<List<Hook>> repoListHooks(String owner, String repo, { int page, int limit }) async 
    test('test repoListHooks', () async {
      // TODO
    });

    // List a repository's keys
    //
    //Future<List<DeployKey>> repoListKeys(String owner, String repo, { int keyId, String fingerprint, int page, int limit }) async 
    test('test repoListKeys', () async {
      // TODO
    });

    // List a repo's pull requests
    //
    //Future<List<PullRequest>> repoListPullRequests(String owner, String repo, { String state, String sort, int milestone, List<int> labels, int page, int limit }) async 
    test('test repoListPullRequests', () async {
      // TODO
    });

    // List release's attachments
    //
    //Future<List<Attachment>> repoListReleaseAttachments(String owner, String repo, int id) async 
    test('test repoListReleaseAttachments', () async {
      // TODO
    });

    // List a repo's releases
    //
    //Future<List<Release>> repoListReleases(String owner, String repo, { int perPage, int page, int limit }) async 
    test('test repoListReleases', () async {
      // TODO
    });

    // List a repo's stargazers
    //
    //Future<List<User>> repoListStargazers(String owner, String repo, { int page, int limit }) async 
    test('test repoListStargazers', () async {
      // TODO
    });

    // Get a commit's statuses
    //
    //Future<List<Status>> repoListStatuses(String owner, String repo, String sha, { String sort, String state, int page, int limit }) async 
    test('test repoListStatuses', () async {
      // TODO
    });

    // List a repo's watchers
    //
    //Future<List<User>> repoListSubscribers(String owner, String repo, { int page, int limit }) async 
    test('test repoListSubscribers', () async {
      // TODO
    });

    // List a repository's tags
    //
    //Future<List<Tag>> repoListTags(String owner, String repo) async 
    test('test repoListTags', () async {
      // TODO
    });

    // Get list of topics that a repository has
    //
    //Future<TopicName> repoListTopics(String owner, String repo, { int page, int limit }) async 
    test('test repoListTopics', () async {
      // TODO
    });

    // Merge a pull request
    //
    //Future repoMergePullRequest(String owner, String repo, int index, { MergePullRequestOption body }) async 
    test('test repoMergePullRequest', () async {
      // TODO
    });

    // Migrate a remote git repository
    //
    //Future<Repository> repoMigrate({ MigrateRepoForm body }) async 
    test('test repoMigrate', () async {
      // TODO
    });

    // Sync a mirrored repository
    //
    //Future repoMirrorSync(String owner, String repo) async 
    test('test repoMirrorSync', () async {
      // TODO
    });

    // Check if a pull request has been merged
    //
    //Future repoPullRequestIsMerged(String owner, String repo, int index) async 
    test('test repoPullRequestIsMerged', () async {
      // TODO
    });

    // Search for repositories
    //
    //Future<SearchResults> repoSearch({ String q, bool topic, bool includeDesc, int uid, int priorityOwnerId, int starredBy, bool private, bool template, String mode, bool exclusive, String sort, String order, int page, int limit }) async 
    test('test repoSearch', () async {
      // TODO
    });

    // Get signing-key.gpg for given repository
    //
    //Future<String> repoSigningKey(String owner, String repo) async 
    test('test repoSigningKey', () async {
      // TODO
    });

    // Test a push webhook
    //
    //Future repoTestHook(String owner, String repo, int id) async 
    test('test repoTestHook', () async {
      // TODO
    });

    // List a repo's tracked times
    //
    //Future<List<TrackedTime>> repoTrackedTimes(String owner, String repo, { String user, DateTime since, DateTime before, int page, int limit }) async 
    test('test repoTrackedTimes', () async {
      // TODO
    });

    // Transfer a repo ownership
    //
    //Future<Repository> repoTransfer(String owner, String repo, TransferRepoOption body) async 
    test('test repoTransfer', () async {
      // TODO
    });

    // Update a file in a repository
    //
    //Future<FileResponse> repoUpdateFile(String owner, String repo, String filepath, UpdateFileOptions body) async 
    test('test repoUpdateFile', () async {
      // TODO
    });

    // Replace list of topics for a repository
    //
    //Future repoUpdateTopics(String owner, String repo, { RepoTopicOptions body }) async 
    test('test repoUpdateTopics', () async {
      // TODO
    });

    // search topics via keyword
    //
    //Future<List<TopicResponse>> topicSearch(String q, { int page, int limit }) async 
    test('test topicSearch', () async {
      // TODO
    });

    // Check if the current user is watching a repo
    //
    //Future<WatchInfo> userCurrentCheckSubscription(String owner, String repo) async 
    test('test userCurrentCheckSubscription', () async {
      // TODO
    });

    // Unwatch a repo
    //
    //Future userCurrentDeleteSubscription(String owner, String repo) async 
    test('test userCurrentDeleteSubscription', () async {
      // TODO
    });

    // Watch a repo
    //
    //Future<WatchInfo> userCurrentPutSubscription(String owner, String repo) async 
    test('test userCurrentPutSubscription', () async {
      // TODO
    });

    // List a user's tracked times in a repo
    //
    //Future<List<TrackedTime>> userTrackedTimes(String owner, String repo, String user) async 
    test('test userTrackedTimes', () async {
      // TODO
    });

  });
}

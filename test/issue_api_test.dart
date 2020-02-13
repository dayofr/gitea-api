import 'package:gitea_openapi/api.dart';
import 'package:test/test.dart';


/// tests for IssueApi
void main() {
  var instance = IssueApi();

  group('tests for IssueApi', () {
    // Add a label to an issue
    //
    //Future<List<Label>> issueAddLabel(String owner, String repo, int index, { IssueLabelsOption body }) async 
    test('test issueAddLabel', () async {
      // TODO
    });

    // Subscribe user to issue
    //
    //Future issueAddSubscription(String owner, String repo, int index, String user) async 
    test('test issueAddSubscription', () async {
      // TODO
    });

    // Add tracked time to a issue
    //
    //Future<TrackedTime> issueAddTime(String owner, String repo, int index, { AddTimeOption body }) async 
    test('test issueAddTime', () async {
      // TODO
    });

    // Remove all labels from an issue
    //
    //Future issueClearLabels(String owner, String repo, int index) async 
    test('test issueClearLabels', () async {
      // TODO
    });

    // Add a comment to an issue
    //
    //Future<Comment> issueCreateComment(String owner, String repo, int index, { CreateIssueCommentOption body }) async 
    test('test issueCreateComment', () async {
      // TODO
    });

    // Create an issue. If using deadline only the date will be taken into account, and time of day ignored.
    //
    //Future<Issue> issueCreateIssue(String owner, String repo, { CreateIssueOption body }) async 
    test('test issueCreateIssue', () async {
      // TODO
    });

    // Create a label
    //
    //Future<Label> issueCreateLabel(String owner, String repo, { CreateLabelOption body }) async 
    test('test issueCreateLabel', () async {
      // TODO
    });

    // Create a milestone
    //
    //Future<Milestone> issueCreateMilestone(String owner, String repo, { CreateMilestoneOption body }) async 
    test('test issueCreateMilestone', () async {
      // TODO
    });

    // Delete a comment
    //
    //Future issueDeleteComment(String owner, String repo, int id) async 
    test('test issueDeleteComment', () async {
      // TODO
    });

    // Delete a comment
    //
    //Future issueDeleteCommentDeprecated(String owner, String repo, int index, int id) async 
    test('test issueDeleteCommentDeprecated', () async {
      // TODO
    });

    // Remove a reaction from a comment of an issue
    //
    //Future issueDeleteCommentReaction(String owner, String repo, int id, { EditReactionOption content }) async 
    test('test issueDeleteCommentReaction', () async {
      // TODO
    });

    // Remove a reaction from an issue
    //
    //Future issueDeleteIssueReaction(String owner, String repo, int index, { EditReactionOption content }) async 
    test('test issueDeleteIssueReaction', () async {
      // TODO
    });

    // Delete a label
    //
    //Future issueDeleteLabel(String owner, String repo, int id) async 
    test('test issueDeleteLabel', () async {
      // TODO
    });

    // Delete a milestone
    //
    //Future issueDeleteMilestone(String owner, String repo, int id) async 
    test('test issueDeleteMilestone', () async {
      // TODO
    });

    // Delete an issue's existing stopwatch.
    //
    //Future issueDeleteStopWatch(String owner, String repo, int index) async 
    test('test issueDeleteStopWatch', () async {
      // TODO
    });

    // Unsubscribe user from issue
    //
    //Future issueDeleteSubscription(String owner, String repo, int index, String user) async 
    test('test issueDeleteSubscription', () async {
      // TODO
    });

    // Delete specific tracked time
    //
    //Future issueDeleteTime(String owner, String repo, int index, int id) async 
    test('test issueDeleteTime', () async {
      // TODO
    });

    // Edit a comment
    //
    //Future<Comment> issueEditComment(String owner, String repo, int id, { EditIssueCommentOption body }) async 
    test('test issueEditComment', () async {
      // TODO
    });

    // Edit a comment
    //
    //Future<Comment> issueEditCommentDeprecated(String owner, String repo, int index, int id, { EditIssueCommentOption body }) async 
    test('test issueEditCommentDeprecated', () async {
      // TODO
    });

    // Edit an issue. If using deadline only the date will be taken into account, and time of day ignored.
    //
    //Future<Issue> issueEditIssue(String owner, String repo, int index, { EditIssueOption body }) async 
    test('test issueEditIssue', () async {
      // TODO
    });

    // Set an issue deadline. If set to null, the deadline is deleted. If using deadline only the date will be taken into account, and time of day ignored.
    //
    //Future<IssueDeadline> issueEditIssueDeadline(String owner, String repo, int index, { EditDeadlineOption body }) async 
    test('test issueEditIssueDeadline', () async {
      // TODO
    });

    // Update a label
    //
    //Future<Label> issueEditLabel(String owner, String repo, int id, { EditLabelOption body }) async 
    test('test issueEditLabel', () async {
      // TODO
    });

    // Update a milestone
    //
    //Future<Milestone> issueEditMilestone(String owner, String repo, int id, { EditMilestoneOption body }) async 
    test('test issueEditMilestone', () async {
      // TODO
    });

    // Get a comment
    //
    //Future<Comment> issueGetComment(String owner, String repo, int id) async 
    test('test issueGetComment', () async {
      // TODO
    });

    // Get a list of reactions from a comment of an issue
    //
    //Future<List<Reaction>> issueGetCommentReactions(String owner, String repo, int id) async 
    test('test issueGetCommentReactions', () async {
      // TODO
    });

    // List all comments on an issue
    //
    //Future<List<Comment>> issueGetComments(String owner, String repo, int index, { DateTime since, DateTime before }) async 
    test('test issueGetComments', () async {
      // TODO
    });

    // Get an issue
    //
    //Future<Issue> issueGetIssue(String owner, String repo, int index) async 
    test('test issueGetIssue', () async {
      // TODO
    });

    // Get a list reactions of an issue
    //
    //Future<List<Reaction>> issueGetIssueReactions(String owner, String repo, int index, { int page, int limit }) async 
    test('test issueGetIssueReactions', () async {
      // TODO
    });

    // Get a single label
    //
    //Future<Label> issueGetLabel(String owner, String repo, int id) async 
    test('test issueGetLabel', () async {
      // TODO
    });

    // Get an issue's labels
    //
    //Future<List<Label>> issueGetLabels(String owner, String repo, int index) async 
    test('test issueGetLabels', () async {
      // TODO
    });

    // Get a milestone
    //
    //Future<Milestone> issueGetMilestone(String owner, String repo, int id) async 
    test('test issueGetMilestone', () async {
      // TODO
    });

    // Get all of a repository's opened milestones
    //
    //Future<List<Milestone>> issueGetMilestonesList(String owner, String repo, { String state, int page, int limit }) async 
    test('test issueGetMilestonesList', () async {
      // TODO
    });

    // List all comments in a repository
    //
    //Future<List<Comment>> issueGetRepoComments(String owner, String repo, { DateTime since, DateTime before, int page, int limit }) async 
    test('test issueGetRepoComments', () async {
      // TODO
    });

    // List a repository's issues
    //
    //Future<List<Issue>> issueListIssues(String owner, String repo, { String state, String labels, String q, String type, int page, int limit }) async 
    test('test issueListIssues', () async {
      // TODO
    });

    // Get all of a repository's labels
    //
    //Future<List<Label>> issueListLabels(String owner, String repo, { int page, int limit }) async 
    test('test issueListLabels', () async {
      // TODO
    });

    // Add a reaction to a comment of an issue
    //
    //Future<Reaction> issuePostCommentReaction(String owner, String repo, int id, { EditReactionOption content }) async 
    test('test issuePostCommentReaction', () async {
      // TODO
    });

    // Add a reaction to an issue
    //
    //Future<Reaction> issuePostIssueReaction(String owner, String repo, int index, { EditReactionOption content }) async 
    test('test issuePostIssueReaction', () async {
      // TODO
    });

    // Remove a label from an issue
    //
    //Future issueRemoveLabel(String owner, String repo, int index, int id) async 
    test('test issueRemoveLabel', () async {
      // TODO
    });

    // Replace an issue's labels
    //
    //Future<List<Label>> issueReplaceLabels(String owner, String repo, int index, { IssueLabelsOption body }) async 
    test('test issueReplaceLabels', () async {
      // TODO
    });

    // Reset a tracked time of an issue
    //
    //Future issueResetTime(String owner, String repo, int index) async 
    test('test issueResetTime', () async {
      // TODO
    });

    // Search for issues across the repositories that the user has access to
    //
    //Future<List<Issue>> issueSearchIssues({ String state, String labels, String q, int priorityRepoId, String type, int page }) async 
    test('test issueSearchIssues', () async {
      // TODO
    });

    // Start stopwatch on an issue.
    //
    //Future issueStartStopWatch(String owner, String repo, int index) async 
    test('test issueStartStopWatch', () async {
      // TODO
    });

    // Stop an issue's existing stopwatch.
    //
    //Future issueStopStopWatch(String owner, String repo, int index) async 
    test('test issueStopStopWatch', () async {
      // TODO
    });

    // Get users who subscribed on an issue.
    //
    //Future<List<User>> issueSubscriptions(String owner, String repo, int index, { int page, int limit }) async 
    test('test issueSubscriptions', () async {
      // TODO
    });

    // List an issue's tracked times
    //
    //Future<List<TrackedTime>> issueTrackedTimes(String owner, String repo, int index, { DateTime since, DateTime before, int page, int limit }) async 
    test('test issueTrackedTimes', () async {
      // TODO
    });

  });
}

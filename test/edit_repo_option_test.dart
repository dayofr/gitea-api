import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for EditRepoOption
void main() {
    var instance = new EditRepoOption();

  group('test EditRepoOption', () {
    // either `true` to allow merging pull requests with a merge commit, or `false` to prevent merging pull requests with merge commits. `has_pull_requests` must be `true`.
    // bool allowMergeCommits (default value: null)
    test('to test the property `allowMergeCommits`', () async {
      // TODO
    });

    // either `true` to allow rebase-merging pull requests, or `false` to prevent rebase-merging. `has_pull_requests` must be `true`.
    // bool allowRebase (default value: null)
    test('to test the property `allowRebase`', () async {
      // TODO
    });

    // either `true` to allow rebase with explicit merge commits (--no-ff), or `false` to prevent rebase with explicit merge commits. `has_pull_requests` must be `true`.
    // bool allowRebaseExplicit (default value: null)
    test('to test the property `allowRebaseExplicit`', () async {
      // TODO
    });

    // either `true` to allow squash-merging pull requests, or `false` to prevent squash-merging. `has_pull_requests` must be `true`.
    // bool allowSquashMerge (default value: null)
    test('to test the property `allowSquashMerge`', () async {
      // TODO
    });

    // set to `true` to archive this repository.
    // bool archived (default value: null)
    test('to test the property `archived`', () async {
      // TODO
    });

    // sets the default branch for this repository.
    // String defaultBranch (default value: null)
    test('to test the property `defaultBranch`', () async {
      // TODO
    });

    // a short description of the repository.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // ExternalTracker externalTracker (default value: null)
    test('to test the property `externalTracker`', () async {
      // TODO
    });

    // ExternalWiki externalWiki (default value: null)
    test('to test the property `externalWiki`', () async {
      // TODO
    });

    // either `true` to enable issues for this repository or `false` to disable them.
    // bool hasIssues (default value: null)
    test('to test the property `hasIssues`', () async {
      // TODO
    });

    // either `true` to allow pull requests, or `false` to prevent pull request.
    // bool hasPullRequests (default value: null)
    test('to test the property `hasPullRequests`', () async {
      // TODO
    });

    // either `true` to enable the wiki for this repository or `false` to disable it.
    // bool hasWiki (default value: null)
    test('to test the property `hasWiki`', () async {
      // TODO
    });

    // either `true` to ignore whitespace for conflicts, or `false` to not ignore whitespace. `has_pull_requests` must be `true`.
    // bool ignoreWhitespaceConflicts (default value: null)
    test('to test the property `ignoreWhitespaceConflicts`', () async {
      // TODO
    });

    // InternalTracker internalTracker (default value: null)
    test('to test the property `internalTracker`', () async {
      // TODO
    });

    // name of the repository
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // either `true` to make the repository private or `false` to make it public. Note: you will get a 422 error if the organization restricts changing repository visibility to organization owners and a non-owner tries to change the value of private.
    // bool private (default value: null)
    test('to test the property `private`', () async {
      // TODO
    });

    // either `true` to make this repository a template or `false` to make it a normal repository
    // bool template (default value: null)
    test('to test the property `template`', () async {
      // TODO
    });

    // a URL with more information about the repository.
    // String website (default value: null)
    test('to test the property `website`', () async {
      // TODO
    });


  });

}

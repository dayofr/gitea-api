import 'package:gitea_openapi/api.dart';
import 'package:test/test.dart';


/// tests for UserApi
void main() {
  var instance = UserApi();

  group('tests for UserApi', () {
    // Create a repository
    //
    //Future<Repository> createCurrentUserRepo({ CreateRepoOption body }) async 
    test('test createCurrentUserRepo', () async {
      // TODO
    });

    // Add email addresses
    //
    //Future<List<Email>> userAddEmail({ CreateEmailOption body }) async 
    test('test userAddEmail', () async {
      // TODO
    });

    // Check if one user is following another user
    //
    //Future userCheckFollowing(String follower, String followee) async 
    test('test userCheckFollowing', () async {
      // TODO
    });

    // Create an access token
    //
    //Future userCreateToken(String username, { InlineObject accessToken }) async 
    test('test userCreateToken', () async {
      // TODO
    });

    // Check whether a user is followed by the authenticated user
    //
    //Future userCurrentCheckFollowing(String username) async 
    test('test userCurrentCheckFollowing', () async {
      // TODO
    });

    // Whether the authenticated is starring the repo
    //
    //Future userCurrentCheckStarring(String owner, String repo) async 
    test('test userCurrentCheckStarring', () async {
      // TODO
    });

    // Unfollow a user
    //
    //Future userCurrentDeleteFollow(String username) async 
    test('test userCurrentDeleteFollow', () async {
      // TODO
    });

    // Remove a GPG key
    //
    //Future userCurrentDeleteGPGKey(int id) async 
    test('test userCurrentDeleteGPGKey', () async {
      // TODO
    });

    // Delete a public key
    //
    //Future userCurrentDeleteKey(int id) async 
    test('test userCurrentDeleteKey', () async {
      // TODO
    });

    // Unstar the given repo
    //
    //Future userCurrentDeleteStar(String owner, String repo) async 
    test('test userCurrentDeleteStar', () async {
      // TODO
    });

    // Get a GPG key
    //
    //Future<GPGKey> userCurrentGetGPGKey(int id) async 
    test('test userCurrentGetGPGKey', () async {
      // TODO
    });

    // Get a public key
    //
    //Future<PublicKey> userCurrentGetKey(int id) async 
    test('test userCurrentGetKey', () async {
      // TODO
    });

    // List the authenticated user's followers
    //
    //Future<List<User>> userCurrentListFollowers({ int page, int limit }) async 
    test('test userCurrentListFollowers', () async {
      // TODO
    });

    // List the users that the authenticated user is following
    //
    //Future<List<User>> userCurrentListFollowing({ int page, int limit }) async 
    test('test userCurrentListFollowing', () async {
      // TODO
    });

    // List the authenticated user's GPG keys
    //
    //Future<List<GPGKey>> userCurrentListGPGKeys({ int page, int limit }) async 
    test('test userCurrentListGPGKeys', () async {
      // TODO
    });

    // List the authenticated user's public keys
    //
    //Future<List<PublicKey>> userCurrentListKeys({ String fingerprint, int page, int limit }) async 
    test('test userCurrentListKeys', () async {
      // TODO
    });

    // List the repos that the authenticated user owns or has access to
    //
    //Future<List<Repository>> userCurrentListRepos({ int page, int limit }) async 
    test('test userCurrentListRepos', () async {
      // TODO
    });

    // The repos that the authenticated user has starred
    //
    //Future<List<Repository>> userCurrentListStarred({ int page, int limit }) async 
    test('test userCurrentListStarred', () async {
      // TODO
    });

    // List repositories watched by the authenticated user
    //
    //Future<List<Repository>> userCurrentListSubscriptions({ int page, int limit }) async 
    test('test userCurrentListSubscriptions', () async {
      // TODO
    });

    // Create a GPG key
    //
    //Future<GPGKey> userCurrentPostGPGKey({ CreateGPGKeyOption form }) async 
    test('test userCurrentPostGPGKey', () async {
      // TODO
    });

    // Create a public key
    //
    //Future<PublicKey> userCurrentPostKey({ CreateKeyOption body }) async 
    test('test userCurrentPostKey', () async {
      // TODO
    });

    // Follow a user
    //
    //Future userCurrentPutFollow(String username) async 
    test('test userCurrentPutFollow', () async {
      // TODO
    });

    // Star the given repo
    //
    //Future userCurrentPutStar(String owner, String repo) async 
    test('test userCurrentPutStar', () async {
      // TODO
    });

    // List the current user's tracked times
    //
    //Future<List<TrackedTime>> userCurrentTrackedTimes({ DateTime since, DateTime before }) async 
    test('test userCurrentTrackedTimes', () async {
      // TODO
    });

    // delete an access token
    //
    //Future userDeleteAccessToken(String username, int token) async 
    test('test userDeleteAccessToken', () async {
      // TODO
    });

    // Delete email addresses
    //
    //Future userDeleteEmail({ DeleteEmailOption body }) async 
    test('test userDeleteEmail', () async {
      // TODO
    });

    // Get a user
    //
    //Future<User> userGet(String username) async 
    test('test userGet', () async {
      // TODO
    });

    // Get the authenticated user
    //
    //Future<User> userGetCurrent() async 
    test('test userGetCurrent', () async {
      // TODO
    });

    // Get a user's heatmap
    //
    //Future<List<UserHeatmapData>> userGetHeatmapData(String username) async 
    test('test userGetHeatmapData', () async {
      // TODO
    });

    // Get list of all existing stopwatches
    //
    //Future<List<StopWatch>> userGetStopWatches({ int page, int limit }) async 
    test('test userGetStopWatches', () async {
      // TODO
    });

    // List the authenticated user's access tokens
    //
    //Future<List<AccessToken>> userGetTokens(String username, { int page, int limit }) async 
    test('test userGetTokens', () async {
      // TODO
    });

    // List the authenticated user's email addresses
    //
    //Future<List<Email>> userListEmails() async 
    test('test userListEmails', () async {
      // TODO
    });

    // List the given user's followers
    //
    //Future<List<User>> userListFollowers(String username, { int page, int limit }) async 
    test('test userListFollowers', () async {
      // TODO
    });

    // List the users that the given user is following
    //
    //Future<List<User>> userListFollowing(String username, { int page, int limit }) async 
    test('test userListFollowing', () async {
      // TODO
    });

    // List the given user's GPG keys
    //
    //Future<List<GPGKey>> userListGPGKeys(String username, { int page, int limit }) async 
    test('test userListGPGKeys', () async {
      // TODO
    });

    // List the given user's public keys
    //
    //Future<List<PublicKey>> userListKeys(String username, { String fingerprint, int page, int limit }) async 
    test('test userListKeys', () async {
      // TODO
    });

    // List the repos owned by the given user
    //
    //Future<List<Repository>> userListRepos(String username, { int page, int limit }) async 
    test('test userListRepos', () async {
      // TODO
    });

    // The repos that the given user has starred
    //
    //Future<List<Repository>> userListStarred(String username, { int page, int limit }) async 
    test('test userListStarred', () async {
      // TODO
    });

    // List the repositories watched by a user
    //
    //Future<List<Repository>> userListSubscriptions(String username, { int page, int limit }) async 
    test('test userListSubscriptions', () async {
      // TODO
    });

    // List all the teams a user belongs to
    //
    //Future<List<Team>> userListTeams({ int page, int limit }) async 
    test('test userListTeams', () async {
      // TODO
    });

    // Search for users
    //
    //Future<InlineResponse2001> userSearch({ String q, int uid, int page, int limit }) async 
    test('test userSearch', () async {
      // TODO
    });

  });
}

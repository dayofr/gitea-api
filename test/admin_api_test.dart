import 'package:gitea_openapi/api.dart';
import 'package:test/test.dart';


/// tests for AdminApi
void main() {
  var instance = AdminApi();

  group('tests for AdminApi', () {
    // Create an organization
    //
    //Future<Organization> adminCreateOrg(String username, CreateOrgOption organization) async 
    test('test adminCreateOrg', () async {
      // TODO
    });

    // Add a public key on behalf of a user
    //
    //Future<PublicKey> adminCreatePublicKey(String username, { CreateKeyOption key }) async 
    test('test adminCreatePublicKey', () async {
      // TODO
    });

    // Create a repository on behalf of a user
    //
    //Future<Repository> adminCreateRepo(String username, CreateRepoOption repository) async 
    test('test adminCreateRepo', () async {
      // TODO
    });

    // Create a user
    //
    //Future<User> adminCreateUser({ CreateUserOption body }) async 
    test('test adminCreateUser', () async {
      // TODO
    });

    // Delete a user
    //
    //Future adminDeleteUser(String username) async 
    test('test adminDeleteUser', () async {
      // TODO
    });

    // Delete a user's public key
    //
    //Future adminDeleteUserPublicKey(String username, int id) async 
    test('test adminDeleteUserPublicKey', () async {
      // TODO
    });

    // Edit an existing user
    //
    //Future<User> adminEditUser(String username, { EditUserOption body }) async 
    test('test adminEditUser', () async {
      // TODO
    });

    // List all organizations
    //
    //Future<List<Organization>> adminGetAllOrgs({ int page, int limit }) async 
    test('test adminGetAllOrgs', () async {
      // TODO
    });

    // List all users
    //
    //Future<List<User>> adminGetAllUsers({ int page, int limit }) async 
    test('test adminGetAllUsers', () async {
      // TODO
    });

  });
}

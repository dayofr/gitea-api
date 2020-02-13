import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for OrganizationApi
void main() {
  var instance = OrganizationApi();

  group('tests for OrganizationApi', () {
    // Create a repository in an organization
    //
    //Future<Repository> createOrgRepo(String org, { CreateRepoOption body }) async 
    test('test createOrgRepo', () async {
      // TODO
    });

    // Create a repository in an organization
    //
    //Future<Repository> createOrgRepoDeprecated(String org, { CreateRepoOption body }) async 
    test('test createOrgRepoDeprecated', () async {
      // TODO
    });

    // Add a team member
    //
    //Future orgAddTeamMember(int id, String username) async 
    test('test orgAddTeamMember', () async {
      // TODO
    });

    // Add a repository to a team
    //
    //Future orgAddTeamRepository(int id, String org, String repo) async 
    test('test orgAddTeamRepository', () async {
      // TODO
    });

    // Conceal a user's membership
    //
    //Future orgConcealMember(String org, String username) async 
    test('test orgConcealMember', () async {
      // TODO
    });

    // Create an organization
    //
    //Future<Organization> orgCreate(CreateOrgOption organization) async 
    test('test orgCreate', () async {
      // TODO
    });

    // Create a hook
    //
    //Future<Hook> orgCreateHook(String org, CreateHookOption body) async 
    test('test orgCreateHook', () async {
      // TODO
    });

    // Create a team
    //
    //Future<Team> orgCreateTeam(String org, { CreateTeamOption body }) async 
    test('test orgCreateTeam', () async {
      // TODO
    });

    // Delete an organization
    //
    //Future orgDelete(String org) async 
    test('test orgDelete', () async {
      // TODO
    });

    // Delete a hook
    //
    //Future orgDeleteHook(String org, int id) async 
    test('test orgDeleteHook', () async {
      // TODO
    });

    // Remove a member from an organization
    //
    //Future orgDeleteMember(String org, String username) async 
    test('test orgDeleteMember', () async {
      // TODO
    });

    // Delete a team
    //
    //Future orgDeleteTeam(int id) async 
    test('test orgDeleteTeam', () async {
      // TODO
    });

    // Edit an organization
    //
    //Future<Organization> orgEdit(String org, EditOrgOption body) async 
    test('test orgEdit', () async {
      // TODO
    });

    // Update a hook
    //
    //Future<Hook> orgEditHook(String org, int id, { EditHookOption body }) async 
    test('test orgEditHook', () async {
      // TODO
    });

    // Edit a team
    //
    //Future<Team> orgEditTeam(int id, { EditTeamOption body }) async 
    test('test orgEditTeam', () async {
      // TODO
    });

    // Get an organization
    //
    //Future<Organization> orgGet(String org) async 
    test('test orgGet', () async {
      // TODO
    });

    // Get list of organizations
    //
    //Future<List<Organization>> orgGetAll({ int page, int limit }) async 
    test('test orgGetAll', () async {
      // TODO
    });

    // Get a hook
    //
    //Future<Hook> orgGetHook(String org, int id) async 
    test('test orgGetHook', () async {
      // TODO
    });

    // Get a team
    //
    //Future<Team> orgGetTeam(int id) async 
    test('test orgGetTeam', () async {
      // TODO
    });

    // Check if a user is a member of an organization
    //
    //Future orgIsMember(String org, String username) async 
    test('test orgIsMember', () async {
      // TODO
    });

    // Check if a user is a public member of an organization
    //
    //Future orgIsPublicMember(String org, String username) async 
    test('test orgIsPublicMember', () async {
      // TODO
    });

    // List the current user's organizations
    //
    //Future<List<Organization>> orgListCurrentUserOrgs({ int page, int limit }) async 
    test('test orgListCurrentUserOrgs', () async {
      // TODO
    });

    // List an organization's webhooks
    //
    //Future<List<Hook>> orgListHooks(String org, { int page, int limit }) async 
    test('test orgListHooks', () async {
      // TODO
    });

    // List an organization's members
    //
    //Future<List<User>> orgListMembers(String org, { int page, int limit }) async 
    test('test orgListMembers', () async {
      // TODO
    });

    // List an organization's public members
    //
    //Future<List<User>> orgListPublicMembers(String org, { int page, int limit }) async 
    test('test orgListPublicMembers', () async {
      // TODO
    });

    // List an organization's repos
    //
    //Future<List<Repository>> orgListRepos(String org, { int page, int limit }) async 
    test('test orgListRepos', () async {
      // TODO
    });

    // List a particular member of team
    //
    //Future<User> orgListTeamMember(int id, String username) async 
    test('test orgListTeamMember', () async {
      // TODO
    });

    // List a team's members
    //
    //Future<List<User>> orgListTeamMembers(int id, { int page, int limit }) async 
    test('test orgListTeamMembers', () async {
      // TODO
    });

    // List a team's repos
    //
    //Future<List<Repository>> orgListTeamRepos(int id, { int page, int limit }) async 
    test('test orgListTeamRepos', () async {
      // TODO
    });

    // List an organization's teams
    //
    //Future<List<Team>> orgListTeams(String org, { int page, int limit }) async 
    test('test orgListTeams', () async {
      // TODO
    });

    // List a user's organizations
    //
    //Future<List<Organization>> orgListUserOrgs(String username, { int page, int limit }) async 
    test('test orgListUserOrgs', () async {
      // TODO
    });

    // Publicize a user's membership
    //
    //Future orgPublicizeMember(String org, String username) async 
    test('test orgPublicizeMember', () async {
      // TODO
    });

    // Remove a team member
    //
    //Future orgRemoveTeamMember(int id, String username) async 
    test('test orgRemoveTeamMember', () async {
      // TODO
    });

    // Remove a repository from a team
    //
    // This does not delete the repository, it only removes the repository from the team.
    //
    //Future orgRemoveTeamRepository(int id, String org, String repo) async 
    test('test orgRemoveTeamRepository', () async {
      // TODO
    });

    // Search for teams within an organization
    //
    //Future<InlineResponse200> teamSearch(String org, { String q, bool includeDesc, int page, int limit }) async 
    test('test teamSearch', () async {
      // TODO
    });

  });
}

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for NotificationApi
void main() {
  var instance = NotificationApi();

  group('tests for NotificationApi', () {
    // List users's notification threads
    //
    //Future<List<NotificationThread>> notifyGetList({ String all, DateTime since, DateTime before, int page, int limit }) async 
    test('test notifyGetList', () async {
      // TODO
    });

    // List users's notification threads on a specific repo
    //
    //Future<List<NotificationThread>> notifyGetRepoList(String owner, String repo, { String all, DateTime since, DateTime before, int page, int limit }) async 
    test('test notifyGetRepoList', () async {
      // TODO
    });

    // Get notification thread by ID
    //
    //Future<NotificationThread> notifyGetThread(String id) async 
    test('test notifyGetThread', () async {
      // TODO
    });

    // Check if unread notifications exist
    //
    //Future<NotificationCount> notifyNewAvailable() async 
    test('test notifyNewAvailable', () async {
      // TODO
    });

    // Mark notification threads as read
    //
    //Future notifyReadList({ DateTime lastReadAt }) async 
    test('test notifyReadList', () async {
      // TODO
    });

    // Mark notification threads as read on a specific repo
    //
    //Future notifyReadRepoList(String owner, String repo, { DateTime lastReadAt }) async 
    test('test notifyReadRepoList', () async {
      // TODO
    });

    // Mark notification thread as read by ID
    //
    //Future notifyReadThread(String id) async 
    test('test notifyReadThread', () async {
      // TODO
    });

  });
}

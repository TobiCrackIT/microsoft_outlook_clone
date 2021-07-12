import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mallam/model/user.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:mockito/mockito.dart';


class MockDio extends Mock implements Dio{}

void main() {
  test('Given user with age of 34 when birthday is called then user is old', () async {
    // Build our app and trigger a frame.

    final mockDio= MockDio();
    
    //when(mockDio.get(any)).thenAnswer((realInvocation) => Future.value(Response()));

    final user=new User(34,'Philip',mockDio);

    user.birthday();


    // Verify that the age is incremented.
    expect(user.age, 35);
  });
}
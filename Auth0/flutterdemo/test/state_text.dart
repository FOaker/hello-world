import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdemo/main.dart';

final FlutterAppAuth appAuth = FlutterAppAuth();
final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

void main() {
  group('State Tests if log in', () {
    var state = MyApp().createState();

    test('Log in state', () {
      expect(state.isBusy, false);
      expect(state.isLoggedIn, false);

    });
  });
}

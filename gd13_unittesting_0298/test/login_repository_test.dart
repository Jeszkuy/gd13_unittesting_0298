import 'package:flutter_test/flutter_test.dart';
import 'package:gd13_unittesting_0298/repository/login_repository.dart';

void main() {
  test('login success', () async {
    final hasil = await LoginRepository.logintesting(
        username: 'raynald_0298', password: 'd_0298');
    expect(hasil?.data.username, equals('raynald_0298'));
    expect(hasil?.data.password, equals('d_0298'));
  });

  test('login failed', () async {
    final result = await LoginRepository.logintesting(
        username: 'invalid', password: 'invalid');
    expect(result, null);
  });
}

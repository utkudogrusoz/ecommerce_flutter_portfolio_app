final class UrlConstant {
  UrlConstant._init();

  static const baseUrl = '192.168.1.11:8080';
  //static const baseUrl = '192.168.1.49:3000';
  static const serviceVersion = 'v1.0';
  static const apiUrl = '/api/$serviceVersion';

  //AUTH
  static const authUrl = '$apiUrl/auth';
  static const createUserUrl = '$authUrl/register';
  static const loginUrl = '$authUrl/authenticate';
}

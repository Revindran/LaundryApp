class AppExceptions implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  AppExceptions([this.message, this.prefix, this.url]);
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message, String? url])
      : super(message!, 'BadRequest', url!);
// ignore: empty_constructor_bodies
}

class ApiNotFoundException extends AppExceptions {
  ApiNotFoundException([String? message, String? url])
      : super(message!, 'Api Not Found Exception', url!);
// ignore: empty_constructor_bodies
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message, String? url])
      : super(message!, 'Unable to process', url!);
// ignore: empty_constructor_bodies
}

class UnAuthorizedException extends AppExceptions {
  UnAuthorizedException([String? message, String? url])
      : super(message!, 'Un Authorized Exception', url!);
// ignore: empty_constructor_bodies
}

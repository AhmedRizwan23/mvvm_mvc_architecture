class AppException implements Exception {
  final String? message;
  final String? prefix;

  AppException({this.message, this.prefix});

  @override
  String toString() {
    return "$prefix $message";
  }
}

class InternetException extends AppException {
  InternetException({String? internetexception})
      : super(message: internetexception, prefix: "Internet exception");
}

class RequestTimeoutException extends AppException {
  RequestTimeoutException({String? requestimeout})
      : super(message: requestimeout, prefix: "Requesttimout exception ");
}

class ServerException extends AppException {
  ServerException({String? serverexception})
      : super(message: serverexception, prefix: "Serverout");
}

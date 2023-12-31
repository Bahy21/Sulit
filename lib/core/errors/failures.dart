import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  @override
  String toString() {
    return "Server error";
  }
}
class NullValue extends Failure {
  @override
  String toString() {
    return "";
  }
}

class NetWorkFailure extends Failure {
  @override
  String toString() {
    return "Network connection failed";
  }
}

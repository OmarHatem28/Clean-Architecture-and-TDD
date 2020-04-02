import 'package:clean_architecture_and_tdd/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {

  Future<Either<Failure, Type>> call(Params params);

}
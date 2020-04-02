import 'package:clean_architecture_and_tdd/core/errors/failure.dart';
import 'package:clean_architecture_and_tdd/domain_layer/entities/number_trivia_entities/number_trivia_entity.dart';
import 'package:dartz/dartz.dart';

abstract class NumberTriviaRepository {

  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);

  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
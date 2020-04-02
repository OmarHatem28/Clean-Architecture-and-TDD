import 'package:clean_architecture_and_tdd/core/errors/failure.dart';
import 'package:clean_architecture_and_tdd/domain_layer/entities/number_trivia_entities/number_trivia_entity.dart';
import 'package:clean_architecture_and_tdd/domain_layer/repositories/number_trivia_repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call(int number) async {
    return await repository.getConcreteNumberTrivia(number);
  }

}
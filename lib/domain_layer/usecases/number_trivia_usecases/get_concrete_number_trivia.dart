import 'package:clean_architecture_and_tdd/core/errors/failure.dart';
import 'package:clean_architecture_and_tdd/core/usecase/usecase.dart';
import 'package:clean_architecture_and_tdd/domain_layer/entities/number_trivia_entities/number_trivia_entity.dart';
import 'package:clean_architecture_and_tdd/domain_layer/repositories/number_trivia_repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params>{
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }

}

class Params {
  final int number;

  Params({@required this.number});
}
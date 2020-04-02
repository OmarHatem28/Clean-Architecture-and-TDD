import 'package:clean_architecture_and_tdd/domain_layer/entities/number_trivia_entities/number_trivia_entity.dart';
import 'package:clean_architecture_and_tdd/domain_layer/repositories/number_trivia_repositories/number_trivia_repository.dart';
import 'package:clean_architecture_and_tdd/domain_layer/usecases/number_trivia_usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia getConcreteNumberTrivia;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    getConcreteNumberTrivia =
        GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  final int tNumber = 1;
  final tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test(
    'should get trivia for the number from the repository',
    () async {
      // arrange
      when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
          .thenAnswer((_) async => Right(tNumberTrivia));
      // act
      final result = await getConcreteNumberTrivia(Params(number: tNumber));
      // assert
      expect(result, Right(tNumberTrivia));
      verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}

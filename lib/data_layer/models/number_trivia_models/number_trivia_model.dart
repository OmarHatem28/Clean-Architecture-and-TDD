import 'package:clean_architecture_and_tdd/domain_layer/entities/number_trivia_entities/number_trivia_entity.dart';

class NumberTriviaModel {

  Map<String, dynamic> toJson(NumberTrivia numberTrivia) => {
    'number': numberTrivia.number,
    'text': numberTrivia.text,
  };

}
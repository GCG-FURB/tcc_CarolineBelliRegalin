import 'package:music_app/modules/exercise/models/exercise.class.dart';
import 'package:hasura_connect/hasura_connect.dart';

class ExerciseRepository {
  final HasuraConnect _hasuraConnect;
  ExerciseRepository(this._hasuraConnect);

  Future<List<Exercise>> getExercises(levelId) async {
    List<Exercise> listExercises = [];
    Exercise exerciseModel;
    var query = '''
      query getExercises {
        exercises(order_by: {id: asc}, where: {level_id: {_eq: $levelId }}) {
          audio_url
          description
          feedback_correct_description
          feedback_incorrect_description
          help_description
          id
          level_id
          image_url
          response_type
          responses {
            id
            exercise_id
            description
            image_url
            is_correct
            match_response_id
          }
        }
      }
    ''';

    var snapshot = await _hasuraConnect.query(query);

    for (var json in (snapshot['data']['exercises']) as List) {
      exerciseModel = Exercise.fromJson(json);
      listExercises.add(exerciseModel);
    }
    return listExercises;
  }

  createUserExercises(List<Exercise> exercises, int userId) async {
    var query = "";

    for (var exercise in exercises) {
      var exerciseId = exercise.id;
      query = """
        mutation MyMutation {
          insert_user_exercises(objects: {exercise_id: $exerciseId, user_id: $userId}, on_conflict: {constraint: user_exercises_pkey, update_columns: exercise_id}) {
            affected_rows
            returning {
              exercise_id
              user_id
            }
          }
        }
      """;
      _hasuraConnect.mutation(query);
    }
  }
}

import 'package:hasura_connect/hasura_connect.dart';
import 'package:music_app/modules/exercise/models/exercise.class.dart';
import 'package:music_app/modules/shared/auth/user/user_app.class.dart';

class UserRepository {
  final HasuraConnect _hasuraConnect;
  UserRepository(this._hasuraConnect);

  getUser(String email) async {
    var query = """
        query getUser {
          users(where: {email: {_eq: "$email"}}) {
            id
            email
            image_url
            name
            points
          }
        }
      """;

    var snapshot = await _hasuraConnect.query(query);

    if (snapshot['data']['users'].length == 0) {
      return null;
    }
    return UserApp.fromJson(snapshot['data']['users'][0]);
  }

  createUser(String email, String name, String imageUrl) async {
    var query = """
        mutation createUser {
          insert_users(objects: {email: "$email", name: "$name", image_url: "$imageUrl" }) {
            returning {
              id
              email
              image_url
              name
              points
            }
          }
        }
      """;

    var snapshot = await _hasuraConnect.mutation(query);

    return UserApp.fromJson(snapshot['data']['insert_users']['returning'][0]);
  }

  updateUser(String email, String name, String imageUrl, int id) async {
    var query = """
        mutation updateUser {
          update_users(_set: {email: "$email", image_url: "$imageUrl", name: "$name"}, where: {id: {_eq: $id}}) {
            returning {
              id
              email
              image_url
              name
              points
            }
            affected_rows
          }
        }
      """;

    var snapshot = await _hasuraConnect.mutation(query);

    return UserApp.fromJson(snapshot['data']['update_users']['returning'][0]);
  }

  saveUserExercises(List<Exercise> exercises, int userId) async {
    var query = "";

    for (var exercise in exercises) {
      var exerciseId = exercise.id;
      query = """
        mutation saveUserExercises {
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

  saveUserMedal(int medalId, int userId) async {
    var query = """
        mutation saveUserMedal {
          insert_user_medals(objects: {medal_id: $medalId, user_id: $userId}, on_conflict: {constraint: user_medals_pkey, update_columns: medal_id}) {
            affected_rows
            returning {
              user_id
            }
          }
        }
      """;
    _hasuraConnect.mutation(query);
  }

  saveUserEnabledLevels(int levelId, int userId) {
    var query = """
        mutation saveUserLevel {
          insert_user_levels(objects: {level_id: $levelId, user_id: $userId}, on_conflict: {constraint: user_levels_pkey, update_columns: level_id}) {
            affected_rows
            returning {
              user_id
            }
          }
        }
      """;
    _hasuraConnect.mutation(query);
  }

  updateUserPoints(UserApp user, int points) {
    var query = """
        mutation updateUserPoints {
          update_users(where: {id: {_eq: $user.id}}, _inc: {points: $points}) {
            affected_rows
          }
        }
      """;

    user.points += points;
    _hasuraConnect.mutation(query);
  }
}

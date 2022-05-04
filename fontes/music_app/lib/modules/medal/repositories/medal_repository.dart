import 'package:hasura_connect/hasura_connect.dart';
import 'package:music_app/modules/medal/models/medal.class.dart';

class MedalRepository {
  final HasuraConnect _hasuraConnect;
  MedalRepository(this._hasuraConnect);

  getUserMedals(int userId) async {
    List<Medal> listMedals = <Medal>[];
    var query = """
      query getMedals {
        medals {
          description
          id
          image_url
          title
          levels {
            title
          }
          user_medals(where: {user_id: {_eq: $userId}}) {
            user_id
          }
        }
      }
    """;
    var snapshot = await _hasuraConnect.query(query);

    for (var json in (snapshot['data']['medals']) as List) {
      listMedals.add(Medal.fromJson(json));
    }

    return listMedals;
  }
}

import 'package:hasura_connect/hasura_connect.dart';
import 'package:music_app/modules/home/models/session.class.dart';

class SessionRepository {
  final HasuraConnect _hasuraConnect;
  SessionRepository(this._hasuraConnect);

  Future<List<Session>> getSessions(int userId) async {
    List<Session> listSessions = [];
    Session sessionModel;
    var query = '''
      query getSessions {
        sessions(order_by: {id: asc}) {
          id
          title
          levels(order_by: {id: asc}) {
            id
            image_url
            medal_id
            session_id
            title
            medal {
              description
              image_url
              id
            }
            user_levels(where: {user_id: {_eq: $userId}}) {
              level_id
              user_id
            }
          }
        }
      }
    ''';

    var snapshot = await _hasuraConnect.query(query);

    for (var json in (snapshot['data']['sessions']) as List) {
      sessionModel = Session.fromJson(json);
      listSessions.add(sessionModel);
    }
    return listSessions;
  }
}

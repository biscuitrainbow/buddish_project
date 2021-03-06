import 'package:buddish_project/redux/token/token_action.dart';
import 'package:redux/redux.dart';

final tokenReducers = combineReducers<String>([
  TypedReducer<String, SaveToken>(_saveToken),
  TypedReducer<String, DeleteToken>(_deleteToken),
]);

String _saveToken(
  String state,
  SaveToken action,
) {
  return action.token;
}

String _deleteToken(
  String state,
  DeleteToken action,
) {
  return null;
}

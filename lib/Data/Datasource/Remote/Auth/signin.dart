import '../../../../Core/Class/crud.dart';
import '../../../../link_api.dart';

class SigninData {
  Crud crud;
  SigninData(this.crud);

  postData(String email, String password) async {
    var response = await crud.postData(AppLink.signinLink, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}

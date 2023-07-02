import '../../../../Core/Class/crud.dart';
import '../../../../link_api.dart';

class GalleryData {
  Crud crud;
  GalleryData(this.crud);

  postData() async {
    var response = await crud.postData(AppLink.getGlry, {});
    return response.fold((l) => l, (r) => r);
  }
}

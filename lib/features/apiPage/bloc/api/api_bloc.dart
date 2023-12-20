import 'package:learnbloc/features/apiPage/apipage_imports.dart';
import 'package:learnbloc/features/apiPage/repository/getdata/postdata.dart';
import 'package:learnbloc/features/apiPage/repository/model/postmodel.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  ApiBloc() : super(ApiState(data: [])) {
    on<getdata>((event, emit) async {
      List<Post> _data = await apipostdata.fetchData();
      emit(ApiState(data: _data));
    });
  }
}

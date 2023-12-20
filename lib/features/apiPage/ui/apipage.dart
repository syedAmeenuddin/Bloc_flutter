import 'package:learnbloc/features/apiPage/apipage_imports.dart';
import 'package:learnbloc/features/apiPage/bloc/api/api_bloc.dart';

class ApiPage extends StatefulWidget {
  ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  @override
  ApiBloc _apiBloc = ApiBloc();
  @override
  void initState() {
    _apiBloc.add(getdata());
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<ApiBloc, ApiState>(
            bloc: _apiBloc,
            builder: (context, state) {
              return ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(state.data[index].title),
                    );
                  });
            }));
  }
}

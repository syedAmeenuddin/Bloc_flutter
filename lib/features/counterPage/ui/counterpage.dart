import 'package:learnbloc/features/counterPage/counter_page_imports.dart';

class counterpage extends StatefulWidget {
  const counterpage({super.key});

  @override
  State<counterpage> createState() => _counterpageState();
}

class _counterpageState extends State<counterpage> {
  final _counterBloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    print('widget build>?');
    return BlocBuilder<CounterBloc, CounterState>(
        bloc: _counterBloc,
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  print('pressed');
                  _counterBloc
                      .add(CounterIncreamentEvent(incVal: state.count + 1));
                },
                child: Icon(Icons.add)),
            body: SafeArea(
              child: Container(
                child: Center(
                  child: Text(
                    state.count.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
              ),
            ),
          );
        });
  }
}

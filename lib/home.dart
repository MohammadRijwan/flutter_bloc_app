import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/bloc/home_state.dart';
import 'package:flutter_bloc_app/bloc/home_cubit.dart';

class Home extends StatelessWidget {
  final String title;
  const Home({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int _counter=0;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        // _counter=state.counter;
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${_counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter=context.read<HomeCubit>().incre(_counter);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

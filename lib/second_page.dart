import 'package:counter_bloc/counter_bloc.dart';
import 'package:counter_bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            context.read<CounterBloc>().add(IncrementCount());
          },child: Text("Add"),),
          ElevatedButton(onPressed: (){
            context.read<CounterBloc>().add(DecrementCount());
          }, child: Text("Remove"))
        ],
      ),
    );
  }
}

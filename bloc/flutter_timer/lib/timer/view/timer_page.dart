import 'package:flutter/material.dart';
import 'package:flutter_timer/timer/bloc/timer_bloc.dart';
import 'package:flutter_timer/timer/view/timer_view.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ticker.dart' as t;

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerBloc(ticker: const t.Ticker()),
      child: const TimerView(),
    );
  }
}

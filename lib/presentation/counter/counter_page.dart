import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/application/counter/counter_bloc.dart';
import 'package:template/application/localization/locale_cubit.dart';
import 'package:template/application/localization/supported_locales.dart';
import 'package:template/presentation/core/widgets/core_elevated_button.dart';
import 'package:template/presentation/core/widgets/core_title.dart';
import 'package:template/presentation/theme/theme_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return ListView(
          children: [
            CoreTitle(
              text: state.count.toString(),
            ),
            CoreElevatedButton(
              callback: () {
                context.read<CounterBloc>().add(
                      const CounterEvent.add(),
                    );
              },
              text: 'add',
            ),
            CoreElevatedButton(
              callback: () {
                context.read<CounterBloc>().add(
                      const CounterEvent.subtract(),
                    );
              },
              text: 'subtract',
            ),
            CoreElevatedButton(
              callback: () {
                context.read<ThemeCubit>().toggleTheme();
              },
              text: 'change_theme',
            ),
            CoreElevatedButton(
              callback: () {
                if (context.read<LocaleCubit>().getCurrentLocale() ==
                    SupportedLocale.en) {
                  context.read<LocaleCubit>().changeLocale(SupportedLocale.de);
                  return;
                }
                context.read<LocaleCubit>().changeLocale(SupportedLocale.en);
              },
              text: 'change_language',
            ),
          ],
        );
      },
    );
  }
}

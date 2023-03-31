import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/application/localization/app_localizations_setup.dart';
import 'package:template/application/localization/locale_cubit.dart';
import 'package:template/main.dart';
import 'package:template/presentation/routes/app_router.dart';
import 'package:template/presentation/theme/theme_cubit.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (kUseDevicePreview) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
          BlocProvider(
            create: (context) => LocaleCubit(),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeData>(
          builder: (_, theme) {
            return BlocBuilder<LocaleCubit, LocaleState>(
              buildWhen: (previousState, currentState) =>
                  previousState != currentState,
              builder: (_, localeState) {
                return MaterialApp.router(
                  routerConfig: goRouter,
                  debugShowCheckedModeBanner: false,
                  title: 'Template',
                  theme: theme,
                  supportedLocales: AppLocalizationsSetup.supportedLocales,
                  localizationsDelegates:
                      AppLocalizationsSetup.localizationsDelegates,
                  localeResolutionCallback:
                      AppLocalizationsSetup.localeResolutionCallback,
                  locale: localeState.locale,
                  builder: DevicePreview.appBuilder, // device_preview
                  useInheritedMediaQuery: true, // device_preview
                );
              },
            );
          },
        ),
      );
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => LocaleCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return BlocBuilder<LocaleCubit, LocaleState>(
            buildWhen: (previousState, currentState) =>
                previousState != currentState,
            builder: (_, localeState) {
              return MaterialApp.router(
                routerConfig: goRouter,
                debugShowCheckedModeBanner: false,
                title: 'Template',
                theme: theme,
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                locale: localeState.locale,
              );
            },
          );
        },
      ),
    );
  }
}

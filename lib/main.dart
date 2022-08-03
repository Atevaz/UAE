import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sizer/sizer.dart';

import 'business_logic/bloc_observer.dart';
import 'business_logic/global_cubit/global_cubit.dart';
import 'component.dart';
import 'data/data_provider/local/cache_helper.dart';
import 'presentation/router/app_router.dart';
import 'presentation/router/app_router_names.dart';
import 'presentation/styles/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  BlocOverrides.runZoned(
    () async {
      await CacheHelper.init();
      await EasyLocalization.ensureInitialized();
      // TODO add localization here
      runApp(EasyLocalization(
          supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
          path: 'assets/i18n',
          child: MyApp(appRouter: AppRouter())));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({required this.appRouter, Key? key}) : super(key: key);
  final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    // LanguageManager.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => GlobalCubit())),
      ],
      child: BlocConsumer<GlobalCubit, GlobalState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Sizer(
            builder: (context, orientation, deviceType) {
              return LayoutBuilder(builder: (context, constraints) {
                return ScreenUtilInit(
                  designSize: Size(390, 844),
                  builder: (context, child) {
                    return MaterialApp(
                      debugShowCheckedModeBanner: false,
                      title: "H\$M",
                      localizationsDelegates: context.localizationDelegates,
                      supportedLocales: context.supportedLocales,
                      locale: context.locale,
                      onGenerateRoute: widget.appRouter.onGenerateRoute,
                      initialRoute: AppRouterNames.rSplashRoute,
                      theme: AppTheme.appTheme,
                      home: Component(),

                    );
                  },
                );
              });
            },
          );
        },
      ),
    );
  }
}

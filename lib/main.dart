import 'package:lofi_music/constants/exports.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(DevicePreview(
    enabled: true,
    tools: const [
      ...DevicePreview.defaultTools,
    ],
    builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: ThemeConfig().themeData,
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        });
  }
}

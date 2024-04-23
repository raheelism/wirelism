import 'package:flutter/cupertino.dart';

import '../injections_container.dart';

appInitialization() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
}

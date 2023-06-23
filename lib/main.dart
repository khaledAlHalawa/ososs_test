import 'features/app/pages/app.dart';
import 'core/initialization.dart';
import 'core/models/localization_config.dart';
import 'generated/codegen_loader.g.dart';

void main() async {
  await initialization(
    () => const App(),
    localizationConfig: LocalizationConfig(assetLoader: const CodegenLoader()),
  );
}

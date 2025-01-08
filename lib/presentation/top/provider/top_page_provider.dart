import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:list_app/presentation/top/state/top_page_state.dart';

/// top用のProvider(controller)
final topPageStateProvider = NotifierProvider<TopPageNotifier, TopPageState>(
  TopPageNotifier.new,
);

class TopPageNotifier extends Notifier<TopPageState> {
  @override
  TopPageState build() {
    return const TopPageState();
  }
}

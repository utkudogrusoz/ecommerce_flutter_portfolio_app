abstract class INavigationService {
  Future<void> navigateToPage({String? path, Object? data});
  Future<void> navigateToPageAndClearCurrentPage({String? path, Object? data});
}
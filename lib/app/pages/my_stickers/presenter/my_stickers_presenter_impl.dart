import 'package:dart_week_worldcup_album/app/models/groups_stickers_model.dart';
import 'package:dart_week_worldcup_album/app/pages/my_stickers/presenter/my_stickers_presenter.dart';
import 'package:dart_week_worldcup_album/app/pages/my_stickers/view/my_stickers_view.dart';
import 'package:dart_week_worldcup_album/app/repository/stickers/stickers_repository.dart';

class MyStickersPresenterImpl implements MyStickersPresenter {
  final StickersRepository stickersRepository;
  late final MyStickersView _view;

  var album = <GroupsStickersModel>[];
  var statusSelected = 'all';
  List<String>? countries;

  MyStickersPresenterImpl({required this.stickersRepository});

  @override
  Future<void> getMyAlbum() async {
    album = await stickersRepository.getMyAlbum();
    _view.loadedPage([...album]);
  }

  @override
  set view(view) => _view = view;

  @override
  Future<void> statusFilter(String status) async {
    statusSelected = status;
    _view.updateStatusFilter(status);
  }

  @override
  void countryFilter(List<String>? countries) {
    this.countries = countries;
    if (countries == null) {
      _view.updateAlbum(album);
    } else {
      final albumFiltered = [
        ...album.where((element) => countries.contains(element.countryCode))
      ];
      _view.updateAlbum(albumFiltered);
    }
  }

  @override
  Future<void> refresh() async {
    _view.showLoader();
    await getMyAlbum();
    countryFilter(countries);
    statusFilter(statusSelected);
  }
}

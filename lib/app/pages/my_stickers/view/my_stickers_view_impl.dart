import 'package:dart_week_worldcup_album/app/core/ui/helpers/loader.dart';
import 'package:dart_week_worldcup_album/app/core/ui/helpers/messages.dart';
import 'package:dart_week_worldcup_album/app/models/groups_stickers_model.dart';
import 'package:dart_week_worldcup_album/app/pages/my_stickers/my_stickers_page.dart';
import 'package:dart_week_worldcup_album/app/pages/my_stickers/view/my_stickers_view.dart';
import 'package:flutter/material.dart';

abstract class MyStickersViewImpl extends State<MyStickersPage>
    with Loader<MyStickersPage>, Messages<MyStickersPage>
    implements MyStickersView {
  var album = <GroupsStickersModel>[];
  var statusFilter = 'all';
  var countries = <String, String> {};

  @override
  void initState() {
    widget.presenter.view = this;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showLoader();
      widget.presenter.getMyAlbum();
    });
    super.initState();
  }

  @override
  void error(String message) => showError(message);

  @override
  void loadedPage(List<GroupsStickersModel> album) {
    hideLoader();
    setState(() {
      this.album = album;
      countries = {for (var c in album) c.countryCode: c.countryName};
    });
  }

  @override
  void updateStatusFilter(String status) {
    setState(() {
      statusFilter = status;
    });
  }

  @override
  void updateAlbum(List<GroupsStickersModel> album) {
    hideLoader();
    setState(() {
      this.album = album;
    });
  }
}

import 'package:fifa/repository/MetadataRepository.dart';
import 'package:flutter/foundation.dart';

import '../models/Spid.dart';

class MetaDataViewModel extends ChangeNotifier {
  final MetadataRepository _metadataRepository = MetadataRepository();

  MetaDataViewModel({required MetadataRepository metadataRepository});

  List<Spid>? _spidList;
  List<Spid>? get spidList => _spidList;

  List<Spid>? _searchList;
  List<Spid>? get searchList => _searchList;

  Future<void> fetchSpid() async {
    try {
      _spidList = await _metadataRepository.getSpid();
    } catch (e) {
      _spidList = [];
    } finally {
      notifyListeners();
    }
  }

  Future<void> searchSpid(String name) async {
    if (name.isEmpty) {
      _searchList = [];
    } else {
      _searchList = _spidList!
          .where((element) => element.name.contains(name))
          .toList();
    }
    notifyListeners();
  }

  Future<void> searchSpidByCode(int id) async {
    if(id != 0){
      _searchList = _spidList!
          .where((element) => int.parse(element.id.toString().substring(0,3)) == id)
          .toList();

      print(_searchList!.length);
    }
    notifyListeners();
  }

  

  void clearSearchList() {
    _searchList = [];
    notifyListeners();
  }
}

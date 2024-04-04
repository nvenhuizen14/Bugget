import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _startdate = await secureStorage.read(key: 'ff_startdate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_startdate'))!)
          : _startdate;
    });
    await _safeInitAsync(() async {
      _enddate = await secureStorage.read(key: 'ff_enddate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_enddate'))!)
          : _enddate;
    });
    await _safeInitAsync(() async {
      _budget1 = await secureStorage.getString('ff_budget1') ?? _budget1;
    });
    await _safeInitAsync(() async {
      _budget2 = await secureStorage.getString('ff_budget2') ?? _budget2;
    });
    await _safeInitAsync(() async {
      _budget3 = await secureStorage.getString('ff_budget3') ?? _budget3;
    });
    await _safeInitAsync(() async {
      _budget4 = await secureStorage.getString('ff_budget4') ?? _budget4;
    });
    await _safeInitAsync(() async {
      _budget5 = await secureStorage.getString('ff_budget5') ?? _budget5;
    });
    await _safeInitAsync(() async {
      _budget6 = await secureStorage.getString('ff_budget6') ?? _budget6;
    });
    await _safeInitAsync(() async {
      _budget7 = await secureStorage.getString('ff_budget7') ?? _budget7;
    });
    await _safeInitAsync(() async {
      _budget8 = await secureStorage.getString('ff_budget8') ?? _budget8;
    });
    await _safeInitAsync(() async {
      _budget9 = await secureStorage.getString('ff_budget9') ?? _budget9;
    });
    await _safeInitAsync(() async {
      _budget10 = await secureStorage.getString('ff_budget10') ?? _budget10;
    });
    await _safeInitAsync(() async {
      _budget11 = await secureStorage.getString('ff_budget11') ?? _budget11;
    });
    await _safeInitAsync(() async {
      _budget12 = await secureStorage.getString('ff_budget12') ?? _budget12;
    });
    await _safeInitAsync(() async {
      _budget13 = await secureStorage.getString('ff_budget13') ?? _budget13;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  DateTime? _startdate = DateTime.fromMillisecondsSinceEpoch(1687740420000);
  DateTime? get startdate => _startdate;
  set startdate(DateTime? value) {
    _startdate = value;
    value != null
        ? secureStorage.setInt('ff_startdate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_startdate');
  }

  void deleteStartdate() {
    secureStorage.delete(key: 'ff_startdate');
  }

  DateTime? _enddate = DateTime.fromMillisecondsSinceEpoch(1687740420000);
  DateTime? get enddate => _enddate;
  set enddate(DateTime? value) {
    _enddate = value;
    value != null
        ? secureStorage.setInt('ff_enddate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_enddate');
  }

  void deleteEnddate() {
    secureStorage.delete(key: 'ff_enddate');
  }

  String _budget1 = '';
  String get budget1 => _budget1;
  set budget1(String value) {
    _budget1 = value;
    secureStorage.setString('ff_budget1', value);
  }

  void deleteBudget1() {
    secureStorage.delete(key: 'ff_budget1');
  }

  String _budget2 = '';
  String get budget2 => _budget2;
  set budget2(String value) {
    _budget2 = value;
    secureStorage.setString('ff_budget2', value);
  }

  void deleteBudget2() {
    secureStorage.delete(key: 'ff_budget2');
  }

  String _budget3 = '';
  String get budget3 => _budget3;
  set budget3(String value) {
    _budget3 = value;
    secureStorage.setString('ff_budget3', value);
  }

  void deleteBudget3() {
    secureStorage.delete(key: 'ff_budget3');
  }

  String _budget4 = '';
  String get budget4 => _budget4;
  set budget4(String value) {
    _budget4 = value;
    secureStorage.setString('ff_budget4', value);
  }

  void deleteBudget4() {
    secureStorage.delete(key: 'ff_budget4');
  }

  String _budget5 = '';
  String get budget5 => _budget5;
  set budget5(String value) {
    _budget5 = value;
    secureStorage.setString('ff_budget5', value);
  }

  void deleteBudget5() {
    secureStorage.delete(key: 'ff_budget5');
  }

  String _budget6 = '';
  String get budget6 => _budget6;
  set budget6(String value) {
    _budget6 = value;
    secureStorage.setString('ff_budget6', value);
  }

  void deleteBudget6() {
    secureStorage.delete(key: 'ff_budget6');
  }

  String _budget7 = '';
  String get budget7 => _budget7;
  set budget7(String value) {
    _budget7 = value;
    secureStorage.setString('ff_budget7', value);
  }

  void deleteBudget7() {
    secureStorage.delete(key: 'ff_budget7');
  }

  String _budget8 = '';
  String get budget8 => _budget8;
  set budget8(String value) {
    _budget8 = value;
    secureStorage.setString('ff_budget8', value);
  }

  void deleteBudget8() {
    secureStorage.delete(key: 'ff_budget8');
  }

  String _budget9 = '';
  String get budget9 => _budget9;
  set budget9(String value) {
    _budget9 = value;
    secureStorage.setString('ff_budget9', value);
  }

  void deleteBudget9() {
    secureStorage.delete(key: 'ff_budget9');
  }

  String _budget10 = '';
  String get budget10 => _budget10;
  set budget10(String value) {
    _budget10 = value;
    secureStorage.setString('ff_budget10', value);
  }

  void deleteBudget10() {
    secureStorage.delete(key: 'ff_budget10');
  }

  String _budget11 = '';
  String get budget11 => _budget11;
  set budget11(String value) {
    _budget11 = value;
    secureStorage.setString('ff_budget11', value);
  }

  void deleteBudget11() {
    secureStorage.delete(key: 'ff_budget11');
  }

  String _budget12 = '';
  String get budget12 => _budget12;
  set budget12(String value) {
    _budget12 = value;
    secureStorage.setString('ff_budget12', value);
  }

  void deleteBudget12() {
    secureStorage.delete(key: 'ff_budget12');
  }

  String _budget13 = '';
  String get budget13 => _budget13;
  set budget13(String value) {
    _budget13 = value;
    secureStorage.setString('ff_budget13', value);
  }

  void deleteBudget13() {
    secureStorage.delete(key: 'ff_budget13');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}

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

  String _currentUserID = '';
  String get currentUserID => _currentUserID;
  set currentUserID(String value) {
    _currentUserID = value;
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

import 'package:collection/collection.dart';

enum TransactionType {
  Income,
  Expense,
  Investment,
}

enum EventType {
  Upcoming,
  PastDue,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (TransactionType):
      return TransactionType.values.deserialize(value) as T?;
    case (EventType):
      return EventType.values.deserialize(value) as T?;
    default:
      return null;
  }
}

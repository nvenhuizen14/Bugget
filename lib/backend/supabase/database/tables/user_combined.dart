import '../database.dart';

class UserCombinedTable extends SupabaseTable<UserCombinedRow> {
  @override
  String get tableName => 'user_combined';

  @override
  UserCombinedRow createRow(Map<String, dynamic> data) => UserCombinedRow(data);
}

class UserCombinedRow extends SupabaseDataRow {
  UserCombinedRow(super.data);

  @override
  SupabaseTable get table => UserCombinedTable();

  String? get instanceId => getField<String>('instance_id');
  set instanceId(String? value) => setField<String>('instance_id', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get aud => getField<String>('aud');
  set aud(String? value) => setField<String>('aud', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get encryptedPassword => getField<String>('encrypted_password');
  set encryptedPassword(String? value) =>
      setField<String>('encrypted_password', value);

  DateTime? get emailConfirmedAt => getField<DateTime>('email_confirmed_at');
  set emailConfirmedAt(DateTime? value) =>
      setField<DateTime>('email_confirmed_at', value);

  DateTime? get invitedAt => getField<DateTime>('invited_at');
  set invitedAt(DateTime? value) => setField<DateTime>('invited_at', value);

  String? get confirmationToken => getField<String>('confirmation_token');
  set confirmationToken(String? value) =>
      setField<String>('confirmation_token', value);

  DateTime? get confirmationSentAt =>
      getField<DateTime>('confirmation_sent_at');
  set confirmationSentAt(DateTime? value) =>
      setField<DateTime>('confirmation_sent_at', value);

  String? get recoveryToken => getField<String>('recovery_token');
  set recoveryToken(String? value) => setField<String>('recovery_token', value);

  DateTime? get recoverySentAt => getField<DateTime>('recovery_sent_at');
  set recoverySentAt(DateTime? value) =>
      setField<DateTime>('recovery_sent_at', value);

  String? get emailChangeTokenNew => getField<String>('email_change_token_new');
  set emailChangeTokenNew(String? value) =>
      setField<String>('email_change_token_new', value);

  String? get emailChange => getField<String>('email_change');
  set emailChange(String? value) => setField<String>('email_change', value);

  DateTime? get emailChangeSentAt => getField<DateTime>('email_change_sent_at');
  set emailChangeSentAt(DateTime? value) =>
      setField<DateTime>('email_change_sent_at', value);

  DateTime? get lastSignInAt => getField<DateTime>('last_sign_in_at');
  set lastSignInAt(DateTime? value) =>
      setField<DateTime>('last_sign_in_at', value);

  dynamic get rawAppMetaData => getField<dynamic>('raw_app_meta_data');
  set rawAppMetaData(dynamic value) =>
      setField<dynamic>('raw_app_meta_data', value);

  dynamic get rawUserMetaData => getField<dynamic>('raw_user_meta_data');
  set rawUserMetaData(dynamic value) =>
      setField<dynamic>('raw_user_meta_data', value);

  bool? get isSuperAdmin => getField<bool>('is_super_admin');
  set isSuperAdmin(bool? value) => setField<bool>('is_super_admin', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  DateTime? get phoneConfirmedAt => getField<DateTime>('phone_confirmed_at');
  set phoneConfirmedAt(DateTime? value) =>
      setField<DateTime>('phone_confirmed_at', value);

  String? get phoneChange => getField<String>('phone_change');
  set phoneChange(String? value) => setField<String>('phone_change', value);

  String? get phoneChangeToken => getField<String>('phone_change_token');
  set phoneChangeToken(String? value) =>
      setField<String>('phone_change_token', value);

  DateTime? get phoneChangeSentAt => getField<DateTime>('phone_change_sent_at');
  set phoneChangeSentAt(DateTime? value) =>
      setField<DateTime>('phone_change_sent_at', value);

  DateTime? get confirmedAt => getField<DateTime>('confirmed_at');
  set confirmedAt(DateTime? value) => setField<DateTime>('confirmed_at', value);

  String? get emailChangeTokenCurrent =>
      getField<String>('email_change_token_current');
  set emailChangeTokenCurrent(String? value) =>
      setField<String>('email_change_token_current', value);

  int? get emailChangeConfirmStatus =>
      getField<int>('email_change_confirm_status');
  set emailChangeConfirmStatus(int? value) =>
      setField<int>('email_change_confirm_status', value);

  DateTime? get bannedUntil => getField<DateTime>('banned_until');
  set bannedUntil(DateTime? value) => setField<DateTime>('banned_until', value);

  String? get reauthenticationToken =>
      getField<String>('reauthentication_token');
  set reauthenticationToken(String? value) =>
      setField<String>('reauthentication_token', value);

  DateTime? get reauthenticationSentAt =>
      getField<DateTime>('reauthentication_sent_at');
  set reauthenticationSentAt(DateTime? value) =>
      setField<DateTime>('reauthentication_sent_at', value);

  bool? get isSsoUser => getField<bool>('is_sso_user');
  set isSsoUser(bool? value) => setField<bool>('is_sso_user', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  String? get userUsername => getField<String>('user_username');
  set userUsername(String? value) => setField<String>('user_username', value);

  String? get userCursor => getField<String>('user_cursor');
  set userCursor(String? value) => setField<String>('user_cursor', value);
}

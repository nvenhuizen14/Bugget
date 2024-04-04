// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

UserRulesRow? findMatchingRule(
  TransactionsRow transaction,
  List<UserRulesRow>? rules,
) {
  // Check if 'rules' is not null and not empty before attempting to find a match
  if (rules != null && rules.isNotEmpty) {
    try {
      return rules.firstWhere((rule) =>
          rule.userId == transaction.userId &&
          (rule.keyword == null ||
              transaction.description!.contains(rule.keyword!)) &&
          (rule.amountMin == null || transaction.amount! >= rule.amountMin!) &&
          (rule.amountMax == null || transaction.amount! <= rule.amountMax!) &&
          (rule.accountName == null ||
              transaction.accountName == rule.accountName));
    } catch (e) {
      // No matching rule found
      return null;
    }
  }

  // Return null if 'rules' is null or empty
  return null;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

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

import 'package:plaid_flutter/plaid_flutter.dart';

Future<void> initPlaidLink(
  BuildContext context,
  String token,
  Future Function(String publicToken)? onSuccessAction,
) async {
  LinkConfiguration configuration = LinkTokenConfiguration(token: token);

  StreamSubscription<LinkSuccess>? streamSuccess;
  StreamSubscription<LinkExit>? streamExit;

  // Subscribe to the onSuccess event
  streamSuccess = PlaidLink.onSuccess.listen((LinkSuccess event) async {
    final publicToken = event.publicToken;
    print("Public Token: $publicToken");

    // Execute the passed action if it's not null
    if (onSuccessAction != null) {
      await onSuccessAction(publicToken);
    }

    // Clean up after the action is complete
    streamSuccess?.cancel();
  });

  // Handle the Plaid Link close event
  streamExit = PlaidLink.onExit.listen((LinkExit event) {
    print("Plaid Link was closed or canceled.");

    // Optionally perform additional cleanup or UI actions
    streamSuccess?.cancel();
    streamExit?.cancel();

    // You can call a custom cleanup function here if needed
  });

  // Open Plated Link
  try {
    await PlaidLink.open(configuration: configuration);
  } catch (e) {
    print('Error opening Plaid Link: $e');
    // Clean up subscriptions in case of an error
    streamSuccess.cancel();
    streamExit.cancel();
  } // Add your function code here!
}

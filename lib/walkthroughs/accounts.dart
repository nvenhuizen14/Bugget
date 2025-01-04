import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/walkthrough/accounts_toast1/accounts_toast1_widget.dart';

// Focus widget keys for this walkthrough
final listViewWrwfhlxb = GlobalKey();

/// Accounts
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: listViewWrwfhlxb,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const AccountsToast1Widget(),
          ),
        ],
      ),
    ];

import 'dart:convert';

import 'package:account_ledger_library/account_ledger_gist_api.dart';
import 'package:account_ledger_library/account_ledger_gist_api_interactive.dart';
import 'package:account_ledger_library/models/account_ledger_gist_model_v2.dart';
import 'package:args/command_runner.dart';
import 'package:tuple/tuple.dart';

class ProcessGistV4AccountLedgerCommand extends Command {
  @override
  String get description =>
      "Process Account Ledger Entries in Gist main.txt File (Version 4)";

  @override
  String get name => "ProcessGistV4";

  @override
  Future<void> run() async {
    Tuple2<bool, String> gistOperationResult = runAccountLedgerGistV4Operation(
      actionsBeforeExecution: () {
        print('Running GistV4 Operation');
      },
      actionsAfterExecution: (String result) {
        // print('Result : $result');
      },
    );
    if (gistOperationResult.item1) {
      await processAccountLedgerGistV2InterActive(
        AccountLedgerGistV2Model.fromJson(
          jsonDecode(gistOperationResult.item2),
        ),
        isVersion3: true,
      );
    } else {
      print("Gist Operation Failure...");
      print(gistOperationResult.item2);
    }
  }
}
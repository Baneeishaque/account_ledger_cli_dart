import 'dart:convert';

import 'package:account_ledger_library/account_ledger_gist_api.dart';
import 'package:account_ledger_library/account_ledger_gist_api_interactive.dart';
import 'package:account_ledger_library/models/account_ledger_gist_model_v2.dart';
import 'package:args/command_runner.dart';

class ProcessGistV3AccountLedgerCommand extends Command {
  @override
  String get description =>
      "Process Account Ledger Entries in Gist main.txt File (Version 3)";

  @override
  String get name => "ProcessGistV3";

  @override
  Future<void> run() async {
    await processAccountLedgerGistV2InterActive(
      AccountLedgerGistV2Model.fromJson(
        jsonDecode(
          runAccountLedgerGistV3Operation(
            actionsBeforeExecution: () {
              print('Running GistV3 Operation');
            },
            actionsAfterExecution: (String result) {
              // print('Result : $result');
            },
          ),
        ),
      ),
      isVersion3: true,
    );
  }
}

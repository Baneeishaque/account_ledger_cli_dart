import 'dart:convert';

import 'package:account_ledger_library/account_ledger_gist_api.dart';
import 'package:account_ledger_library/account_ledger_gist_api_interactive.dart';
import 'package:account_ledger_library/models/account_ledger_gist_model_v2.dart';
import 'package:args/command_runner.dart';

class ProcessGistV2AccountLedgerCommand extends Command {
  @override
  String get description =>
      "Process Account Ledger Entries in Gist main.txt File (Version 2)";

  @override
  String get name => "ProcessGistV2";

  @override
  void run() {
    processAccountLedgerGistV2InterActive(AccountLedgerGistV2Model.fromJson(
        jsonDecode(runAccountLedgerGistV2Operation(
      actionsBeforeExecution: () {
        print('Running GistV2 Operation');
      },
    ))));
  }
}

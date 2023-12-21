import 'package:account_ledger_library/account_ledger_gist_api_interactive.dart';
import 'package:args/command_runner.dart';

class VerifyGistV2AccountLedgerCommand extends Command {
  @override
  String get description =>
      "Verifies Account Ledger Entries in Gist main.txt File (Version 2)";

  @override
  String get name => "VerifyGistV2";

  @override
  void run() {
    verifyAccountLedgerGistInteractive(isVersion2: true);
  }
}

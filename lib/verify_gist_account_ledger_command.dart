import 'package:account_ledger_library/account_ledger_cli.dart';
import 'package:args/command_runner.dart';

class VerifyGistAccountLedgerCommand extends Command {
  @override
  String get description =>
      "Verifies Account Ledger Entries in Gist main.txt File";

  @override
  String get name => "VerifyGist";

  @override
  void run() {
    verifyAccountLedgerGistInteractive();
  }
}

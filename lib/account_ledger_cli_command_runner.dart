import 'package:account_ledger_cli_dart/verify_gist_account_ledger_command.dart';
import 'package:args/command_runner.dart';

class AccountLedgerCliCommandRunner extends CommandRunner {
  AccountLedgerCliCommandRunner()
      : super("Account-Ledger-Cli-Dart",
            "Account Ledger CLI implementation in Dart");

  @override
  void addCommand(Command command) {
    super.addCommand(VerifyGistAccountLedgerCommand());
  }
}

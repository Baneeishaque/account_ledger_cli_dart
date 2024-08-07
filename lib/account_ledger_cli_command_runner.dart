import 'package:account_ledger_cli_dart/process_gist_v2_account_ledger_command.dart';
import 'package:account_ledger_cli_dart/process_gist_v3_account_ledger_command.dart';
import 'package:account_ledger_cli_dart/process_gist_v4_account_ledger_command.dart';
import 'package:account_ledger_cli_dart/verify_gist_v2_account_ledger_command.dart';
import 'package:args/command_runner.dart';

import 'get_accounts_command.dart';
import 'verify_gist_account_ledger_command.dart';

class AccountLedgerCliCommandRunner extends CommandRunner {
  AccountLedgerCliCommandRunner()
      : super("Account-Ledger-Cli-Dart",
            "Account Ledger CLI implementation in Dart");

  @override
  void addCommand(Command command) {
    super.addCommand(VerifyGistAccountLedgerCommand());
    super.addCommand(GetAccountsAccountLedgerCommand());
    super.addCommand(VerifyGistV2AccountLedgerCommand());
    super.addCommand(ProcessGistV2AccountLedgerCommand());
    super.addCommand(ProcessGistV3AccountLedgerCommand());
    super.addCommand(ProcessGistV4AccountLedgerCommand());
  }
}

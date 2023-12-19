import 'package:account_ledger_library/transaction_api.dart';
import 'package:args/command_runner.dart';

class GetAccountsAccountLedgerCommand extends Command {
  @override
  String get description => "Retrieves the accounts of an user";

  @override
  String get name => "GetAccounts";

  @override
  void run() {
    print(runAccountLedgerGetAccountsOperation());
  }
}

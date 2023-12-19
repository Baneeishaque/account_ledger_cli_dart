import 'dart:io';

import 'package:account_ledger_cli_dart/account_ledger_cli_command_runner.dart';
import 'package:account_ledger_library/account_ledger_cli.dart';
import 'package:args/args.dart';
import 'package:args/command_runner.dart';

const String version = '0.0.1';

void printUsage(ArgParser argParser) {
  print('Usage: dart account_ledger_cli.dart <flags> [arguments]');
  print(argParser.usage);
}

void main(List<String> arguments) {
  CommandRunner accountLedgerCliCommandRunner = AccountLedgerCliCommandRunner();
  final ArgResults results;
  try {
    accountLedgerCliCommandRunner.argParser
      ..addFlag(
        'verbose',
        negatable: false,
        help: 'Show additional command output.',
      )
      ..addFlag(
        'version',
        negatable: false,
        help: 'Print the tool version.',
      );

    results = accountLedgerCliCommandRunner.argParser.parse(arguments);

    bool verbose = false;

    // Process the parsed arguments.
    if (results.wasParsed('verbose')) {
      verbose = true;
    }

    if (verbose) {
      print('[VERBOSE] All arguments: ${results.arguments}');
    }

    if (results.wasParsed('version')) {
      print('account_ledger_cli_dart version: $version');
      return;
    }

    if (results.wasParsed('help')) {
      print(accountLedgerCliCommandRunner.usage);
      return;
    }

    if (results.command == null) {
      startAccountLedgerCli();
    } else {
      try {
        accountLedgerCliCommandRunner.run(arguments);
      } on UsageException catch (e) {
        print(e.message);
        print('');
        // Print usage information if an invalid argument was provided.
        print(accountLedgerCliCommandRunner.usage);
        // Exit code 64 indicates a usage error.
        exit(64);
      }
    }
  } on FormatException catch (e) {
    print(e.message);
    print('');
    // Print usage information if an invalid argument was provided.
    print(accountLedgerCliCommandRunner.usage);
    // Exit code 64 indicates a usage error.
    exit(64);
  }
}

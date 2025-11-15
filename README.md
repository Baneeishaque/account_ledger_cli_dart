# Account Ledger CLI (Dart)

A command-line application for managing account ledgers with support for multiple account types, GitHub Gist integration, and comprehensive transaction processing.

## Features

- Account ledger management
- Gist-based data storage and synchronization
- Multiple account type support (wallet, bank, expense, income, assets)
- Transaction processing and tracking
- Account relationship management
- Bajaj rewards integration (coins and cashback)
- Sheet-based account reporting

## Prerequisites

- Dart SDK
- Java (for certain operations)
- GitHub account (for Gist integration)

## Setup

### Environment Configuration

This application requires environment variables to be configured. Follow these steps:

1. **Copy the example environment file:**

   ```bash
   cp .env_example .env
   ```

2. **Edit `.env` with your specific values:**

   **User Credentials:**
   - `USER_NAME`: Your account username
   - `PASSWORD`: Your account password
   - `USER_ID`: Your unique user ID (positive integer)

   **Account Configuration:**
   - `WALLET_ACCOUNT_ID`: Your wallet account ID (positive integer)
   - `BANK_ACCOUNT_ID`: Your bank account ID (positive integer)
   - `BANK_ACCOUNT_NAME`: Name of your bank account
   - `FREQUENT_1/2/3_ACCOUNT_ID`: IDs for frequently used accounts (positive integers)
   - `FREQUENT_1/2/3_ACCOUNT_NAME`: Names for frequently used accounts

   **Account ID Lists:**

   Configure comma-separated account IDs (positive integers) for various categories:
   - `OPEN_BALANCE_ACCOUNT_IDS`: Open balance accounts
   - `MISC_INCOME_ACCOUNT_IDS`: Miscellaneous income accounts
   - `INVESTMENT_RETURNS_ACCOUNT_IDS`: Investment return accounts
   - `FAMILY_ACCOUNT_IDS`: Family-related accounts
   - `EXPENSE_ACCOUNT_IDS`: Expense accounts
   - `EXPENSE_ACCOUNT_IDS_FOR_SHEET`: Expense accounts for sheet operations
   - `INCOME_ACCOUNT_IDS_FOR_SHEET`: Income accounts for sheet operations
   - `EXPENSE_INCOME_IGNORE_ACCOUNT_IDS_FOR_SHEET`: Accounts to ignore in expense/income sheets
   - `DEBIT_OR_CREDIT_ACCOUNT_IDS_FOR_SHEET`: Debit/credit accounts for sheets
   - `EXPENSE_INCOME_DEBIT_CREDIT_IGNORE_ACCOUNT_IDS_FOR_SHEET`: Combined ignore list
   - `ASSET_ACCOUNT_IDS_FOR_SHEET`: Asset accounts for sheet operations
   - `EXPENSE_INCOME_DEBIT_CREDIT_ASSET_IGNORE_ACCOUNT_IDS_FOR_SHEET`: Comprehensive ignore list

   **Bajaj Integration:**
   - `BAJAJ_COINS_INCOME_ACCOUNT_ID`: Bajaj coins income account ID
   - `BAJAJ_COINS_WALLET_ACCOUNT_ID`: Bajaj coins wallet account ID
   - `BAJAJ_COINS_CONVERSION_RATE`: Conversion rate for Bajaj coins (default: 5)
   - `BAJAJ_CASHBACK_INCOME_ACCOUNT_ID`: Bajaj cashback income account ID
   - `BAJAJ_CASHBACK_ACCOUNT_ID`: Bajaj cashback account ID

   **GitHub Integration:**
   - `GITHUB_TOKEN`: Your GitHub personal access token (requires Gist permissions)
   - `GIST_ID`: Your GitHub Gist ID for data storage
   - `GIST_FILE_LINE_SEPARATOR`: Line separator for Gist files (default: '\n')

   **Server Configuration:**
   - `SERVER_ADDRESS`: Your API server URL
   - `HTTP_API_FOLDER`: API folder path
   - `FILE_EXTENSION`: API file extension

   **Development:**
   - `IS_DEVELOPMENT_MODE`: Set to `true` for development, `false` for production

   **Java Configuration:**
   - `JAVA_HOME_WINDOWS`: Java installation path for Windows
   - `JAVA_HOME_MAC`: Java installation path for macOS
   - `JAVA_HOME_LINUX`: Java installation path for Linux

   *Note: Forward slashes (/) work on all platforms including Windows*

## Installation

1. Clone the repository
2. Install dependencies:

   ```bash
   dart pub get
   ```

3. Configure your `.env` file as described above

## Usage

Run the CLI application:

```bash
dart run bin/account_ledger_cli_dart.dart
```

## Project Structure

```
account_ledger_cli_dart/
├── bin/
│   └── account_ledger_cli_dart.dart    # Main entrypoint
├── lib/
│   ├── account_ledger_cli_command_runner.dart
│   ├── get_accounts_command.dart
│   ├── process_gist_v2_account_ledger_command.dart
│   ├── process_gist_v3_account_ledger_command.dart
│   ├── process_gist_v4_account_ledger_command.dart
│   ├── verify_gist_account_ledger_command.dart
│   └── verify_gist_v2_account_ledger_command.dart
└── account_ledger_library_dart/        # Core library
    ├── lib/
    │   ├── models/                     # Data models
    │   ├── common_utils/               # Utility functions
    │   └── utils/                      # Additional utilities
    └── api/                            # HTTP API examples
```

## Security Notes

- All account IDs should be positive unique integers
- Regularly rotate your `GITHUB_TOKEN`
- Use environment-specific configuration for different deployment environments
- Never commit sensitive credentials to version control

## Development

For development purposes:

1. Set `IS_DEVELOPMENT_MODE=true` in your `.env` file
2. Use the development configuration as needed

## License

## Contributing

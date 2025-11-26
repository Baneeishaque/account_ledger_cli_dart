# GitHub Topics and Tags for account_ledger_cli_dart

This document provides recommended GitHub topics for this repository along with instructions on how to add them.

## Recommended Topics

Based on the repository analysis, the following topics are recommended:

### Primary Topics (Core Technology & Purpose)
- `dart` - Primary programming language
- `dart-lang` - Dart language ecosystem
- `cli` - Command-line interface application
- `command-line` - Command-line tool
- `command-line-tool` - CLI tool category

### Functionality Topics
- `accounting` - Core accounting functionality
- `ledger` - Ledger management
- `account-management` - Account management features
- `personal-finance` - Personal finance management
- `finance` - Finance domain
- `transaction` - Transaction processing
- `expense-tracker` - Expense tracking capabilities
- `budgeting` - Budget management

### Integration Topics
- `gist` - GitHub Gist integration
- `github-gist` - GitHub Gist sync
- `github-api` - GitHub API usage

### Technical Topics
- `dart-package` - Dart package/library
- `cross-platform` - Works on multiple platforms

---

## Methods to Add GitHub Topics

### Method 1: Using GitHub Web Interface (Recommended)

1. Navigate to your repository: https://github.com/Baneeishaque/account_ledger_cli_dart
2. Click on the gear icon (⚙️) next to "About" in the right sidebar
3. In the "Topics" field, enter each topic separated by spaces or commas
4. Click "Save changes"

### Method 2: Using GitHub CLI (gh)

First, install GitHub CLI if not already installed:
```bash
# macOS
brew install gh

# Windows
winget install --id GitHub.cli

# Linux (Debian/Ubuntu)
sudo apt install gh
```

Authenticate with GitHub:
```bash
gh auth login
```

Add topics using the API:
```bash
# Add topics to the repository
gh api -X PUT repos/Baneeishaque/account_ledger_cli_dart/topics \
  -f "names[]=dart" \
  -f "names[]=dart-lang" \
  -f "names[]=cli" \
  -f "names[]=command-line" \
  -f "names[]=command-line-tool" \
  -f "names[]=accounting" \
  -f "names[]=ledger" \
  -f "names[]=account-management" \
  -f "names[]=personal-finance" \
  -f "names[]=finance" \
  -f "names[]=transaction" \
  -f "names[]=expense-tracker" \
  -f "names[]=gist" \
  -f "names[]=github-gist" \
  -f "names[]=github-api" \
  -f "names[]=dart-package" \
  -f "names[]=cross-platform"
```

Or using JSON format:
```bash
gh api -X PUT repos/Baneeishaque/account_ledger_cli_dart/topics \
  --input - <<EOF
{
  "names": [
    "dart",
    "dart-lang",
    "cli",
    "command-line",
    "command-line-tool",
    "accounting",
    "ledger",
    "account-management",
    "personal-finance",
    "finance",
    "transaction",
    "expense-tracker",
    "gist",
    "github-gist",
    "github-api",
    "dart-package",
    "cross-platform"
  ]
}
EOF
```

### Method 3: Using curl with GitHub REST API

```bash
# Set your GitHub personal access token
export GITHUB_TOKEN="your_personal_access_token"

# Add topics using the REST API
curl -X PUT \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/Baneeishaque/account_ledger_cli_dart/topics \
  -d '{"names":["dart","dart-lang","cli","command-line","command-line-tool","accounting","ledger","account-management","personal-finance","finance","transaction","expense-tracker","gist","github-gist","github-api","dart-package","cross-platform"]}'
```

### Method 4: Using Dart HTTP Client

Create a script `add_topics.dart`:

```dart
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final String token = Platform.environment['GITHUB_TOKEN'] ?? '';
  if (token.isEmpty) {
    print('Please set the GITHUB_TOKEN environment variable');
    exit(1);
  }

  final topics = [
    'dart',
    'dart-lang',
    'cli',
    'command-line',
    'command-line-tool',
    'accounting',
    'ledger',
    'account-management',
    'personal-finance',
    'finance',
    'transaction',
    'expense-tracker',
    'gist',
    'github-gist',
    'github-api',
    'dart-package',
    'cross-platform',
  ];

  final response = await http.put(
    Uri.parse('https://api.github.com/repos/Baneeishaque/account_ledger_cli_dart/topics'),
    headers: {
      'Accept': 'application/vnd.github+json',
      'Authorization': 'Bearer $token',
      'X-GitHub-Api-Version': '2022-11-28',
    },
    body: jsonEncode({'names': topics}),
  );

  if (response.statusCode == 200) {
    print('Topics added successfully!');
    print('Response: ${response.body}');
  } else {
    print('Failed to add topics. Status: ${response.statusCode}');
    print('Response: ${response.body}');
  }
}
```

Run the script:
```bash
export GITHUB_TOKEN="your_token"
dart run add_topics.dart
```

### Method 5: Using Python Script

```python
import os
import requests

token = os.environ.get('GITHUB_TOKEN')
if not token:
    print('Please set the GITHUB_TOKEN environment variable')
    exit(1)

topics = [
    'dart',
    'dart-lang',
    'cli',
    'command-line',
    'command-line-tool',
    'accounting',
    'ledger',
    'account-management',
    'personal-finance',
    'finance',
    'transaction',
    'expense-tracker',
    'gist',
    'github-gist',
    'github-api',
    'dart-package',
    'cross-platform',
]

response = requests.put(
    'https://api.github.com/repos/Baneeishaque/account_ledger_cli_dart/topics',
    headers={
        'Accept': 'application/vnd.github+json',
        'Authorization': f'Bearer {token}',
        'X-GitHub-Api-Version': '2022-11-28',
    },
    json={'names': topics}
)

if response.status_code == 200:
    print('Topics added successfully!')
    print(f'Response: {response.json()}')
else:
    print(f'Failed to add topics. Status: {response.status_code}')
    print(f'Response: {response.text}')
```

### Method 6: Using Node.js/JavaScript

```javascript
const https = require('https');

const token = process.env.GITHUB_TOKEN;
if (!token) {
  console.log('Please set the GITHUB_TOKEN environment variable');
  process.exit(1);
}

const topics = [
  'dart',
  'dart-lang',
  'cli',
  'command-line',
  'command-line-tool',
  'accounting',
  'ledger',
  'account-management',
  'personal-finance',
  'finance',
  'transaction',
  'expense-tracker',
  'gist',
  'github-gist',
  'github-api',
  'dart-package',
  'cross-platform',
];

const data = JSON.stringify({ names: topics });

const options = {
  hostname: 'api.github.com',
  port: 443,
  path: '/repos/Baneeishaque/account_ledger_cli_dart/topics',
  method: 'PUT',
  headers: {
    'Accept': 'application/vnd.github+json',
    'Authorization': `Bearer ${token}`,
    'X-GitHub-Api-Version': '2022-11-28',
    'Content-Type': 'application/json',
    'Content-Length': data.length,
    'User-Agent': 'Node.js',
  },
};

const req = https.request(options, (res) => {
  let body = '';
  res.on('data', (chunk) => body += chunk);
  res.on('end', () => {
    if (res.statusCode === 200) {
      console.log('Topics added successfully!');
      console.log('Response:', JSON.parse(body));
    } else {
      console.log(`Failed to add topics. Status: ${res.statusCode}`);
      console.log('Response:', body);
    }
  });
});

req.on('error', (e) => console.error(e));
req.write(data);
req.end();
```

---

## Viewing Current Topics

### Using GitHub CLI
```bash
gh api repos/Baneeishaque/account_ledger_cli_dart/topics
```

### Using curl
```bash
curl -H "Accept: application/vnd.github+json" \
  https://api.github.com/repos/Baneeishaque/account_ledger_cli_dart/topics
```

---

## Complete List of Recommended Topics (Copy-Paste Ready)

```
dart dart-lang cli command-line command-line-tool accounting ledger account-management personal-finance finance transaction expense-tracker gist github-gist github-api dart-package cross-platform
```

---

## Topic Selection Rationale

| Topic | Reason |
|-------|--------|
| `dart` | Primary programming language |
| `dart-lang` | Dart ecosystem identifier |
| `cli` | Command-line interface application |
| `command-line` | CLI tool category |
| `command-line-tool` | Specific tool type |
| `accounting` | Core financial accounting functionality |
| `ledger` | Ledger management purpose |
| `account-management` | Multi-account support (wallet, bank, etc.) |
| `personal-finance` | Personal finance management |
| `finance` | Finance domain |
| `transaction` | Transaction processing feature |
| `expense-tracker` | Expense tracking capability |
| `gist` | GitHub Gist integration |
| `github-gist` | Gist-based data storage |
| `github-api` | GitHub API usage |
| `dart-package` | Dart package structure |
| `cross-platform` | Works on Windows, macOS, Linux |

---

## Notes

- GitHub allows a maximum of 20 topics per repository
- Topics should be lowercase
- Topics should use hyphens instead of spaces
- Topics help with discoverability on GitHub
- Topics are case-insensitive but stored lowercase

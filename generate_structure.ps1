<#
.SYNOPSIS
  🎉 Welcome to the 🎈Flutter Fun Scaffold🎈!
  Creates a new Flutter project and scaffolds a colorful, lively lib/ folder structure.

.DESCRIPTION
  This script will prompt you for your project name with pizzazz, show animated progress dots,
  and sprinkle in emojis to make your day. Because coding should feel like a party! 🥳
#>

# -----------------------------
# 彩 Colorful Header
Write-Host "✨🎉 Flutter Fun Scaffold 🎉✨" -ForegroundColor Cyan
Write-Host "Let's spin up your playground..." -ForegroundColor Yellow

# 1️⃣ Prompt for the project name with flair
$ProjectName = Read-Host -Prompt '🥳 Enter your Flutter project name'
if ([string]::IsNullOrWhiteSpace($ProjectName)) {
    Write-Host "⚠️  Oops! You gotta give me a name! Try again. 👀" -ForegroundColor Red
    exit 1
}

# 2️⃣ Create the Flutter project
Write-Host "🚀 Launching flutter create $ProjectName..." -ForegroundColor Green -NoNewline
flutter create $ProjectName > $null
Write-Host " done! ✅"

# 3️⃣ cd into project

Set-Location $ProjectName

# 4️⃣ Fun progress dots

for ($i = 0; $i -lt 5; $i++) {
    Start-Sleep -Milliseconds 300
    Write-Host -NoNewline "."
}


# 5️⃣ Define folders
$folders = @(
  "lib/core/constants",
  "lib/core/theme",
  "lib/core/utils",
  "lib/data/models",
  "lib/data/services",
  "lib/data/repositories",
  "lib/features/auth/views",
  "lib/features/auth/widgets",
  "lib/features/auth/cubit",
  "lib/features/auth/models",
  "lib/features/dashboard/views",
  "lib/features/dashboard/widgets",
  "lib/features/dashboard/cubit",
  "lib/routing",
  "lib/widgets",
  "lib/config"
)

# 6️⃣ Create folders
foreach ($f in $folders) {
    New-Item -ItemType Directory -Path $f -Force | Out-Null
}

# 7️⃣ Create starter files with emoji flair
$files = @(
  "lib/main.dart",
  "lib/routing/app_router.dart",
  "lib/widgets/custom_button.dart",
  "lib/config/environment.dart",
  "lib/config/app_config.dart"
)

foreach ($file in $files) {
    New-Item -ItemType File -Path $file -Force | Out-Null
    Write-Host "📄 Created $file" -ForegroundColor DarkGray
}

# 8️⃣ Celebrate completion


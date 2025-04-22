# Flutter Fun Scaffold - Full App Types

# ✨✨ Flutter Project Generator with All App Types ✨✨

Write-Host "✨🎉 Flutter Fun Scaffold 🎉✨" -ForegroundColor Cyan
Write-Host "Let's spin up your playground..." -ForegroundColor Yellow

$ProjectName = Read-Host -Prompt '🥳 Enter your Flutter project name'
if ([string]::IsNullOrWhiteSpace($ProjectName)) {
    Write-Host "⚠️  Oops! You gotta give me a name! Try again. 👀" -ForegroundColor Red
    exit 1
}

# Show App Type Choices
$AppTypes = @(
    @{ Id = 1; Name = "Dashboard"; Emoji = [char]::ConvertFromUtf32(0x1F4CA) },
    @{ Id = 2; Name = "E-commerce"; Emoji = [char]::ConvertFromUtf32(0x1F6D2) },
    @{ Id = 3; Name = "Blog"; Emoji = [char]::ConvertFromUtf32(0x1F4DD) },
    @{ Id = 4; Name = "Social Media"; Emoji = [char]::ConvertFromUtf32(0x1F4F1) },
    @{ Id = 5; Name = "Chat"; Emoji = [char]::ConvertFromUtf32(0x1F4AC) },
    @{ Id = 6; Name = "To-do / Task"; Emoji = [char]::ConvertFromUtf32(0x2705) },
    @{ Id = 7; Name = "Fitness / Health"; Emoji = [char]::ConvertFromUtf32(0x1F3CB) },
    @{ Id = 8; Name = "Education / LMS"; Emoji = [char]::ConvertFromUtf32(0x1F4DA) },
    @{ Id = 9; Name = "Music / Podcast"; Emoji = [char]::ConvertFromUtf32(0x1F3A7) },
    @{ Id = 10; Name = "Finance / Banking"; Emoji = [char]::ConvertFromUtf32(0x1F4B0) },
    @{ Id = 11; Name = "Church / Faith"; Emoji = [char]::ConvertFromUtf32(0x1F64F) },
    @{ Id = 12; Name = "Food Delivery"; Emoji = [char]::ConvertFromUtf32(0x1F354) },
    @{ Id = 13; Name = "Travel / Booking"; Emoji = [char]::ConvertFromUtf32(0x2708) },
    @{ Id = 14; Name = "Weather"; Emoji = [char]::ConvertFromUtf32(0x26C6) },
    @{ Id = 15; Name = "Portfolio / Resume"; Emoji = [char]::ConvertFromUtf32(0x1F9D1) },
    @{ Id = 16; Name = "Streaming / Video"; Emoji = [char]::ConvertFromUtf32(0x1F4FA) },
    @{ Id = 17; Name = "Event"; Emoji = [char]::ConvertFromUtf32(0x1F39F) },
    @{ Id = 18; Name = "Custom"; Emoji = [char]::ConvertFromUtf32(0x1F6E0) }
)

Write-Host "`n🌟 Choose your app type:" -ForegroundColor Cyan
foreach ($type in $AppTypes) {
    Write-Host ("{0}. {1} {2}" -f $type.Id, $type.Emoji, $type.Name)
}

$appChoice = Read-Host -Prompt "Enter a number (1-$($AppTypes.Count))"
$SelectedType = $AppTypes | Where-Object { $_.Id -eq [int]$appChoice }

if (-not $SelectedType) {
    Write-Host "❌ Invalid selection. Exiting." -ForegroundColor Red
    exit 1
}

Write-Host "✨ Creating Flutter project '$ProjectName' as a '$($SelectedType.Name) App'..." -ForegroundColor Green
flutter create $ProjectName > $null
Set-Location $ProjectName

$commonFolders = @(
    "lib/core/constants",
    "lib/core/theme",
    "lib/core/utils",
    "lib/data/models",
    "lib/data/services",
    "lib/routing",
    "lib/widgets",
    "lib/config"
)

# App-Specific Folder Templates
$featureMap = @{
    "Dashboard" = @("lib/features/dashboard/views", "lib/features/dashboard/widgets", "lib/features/dashboard/cubit")
    "E-commerce" = @("lib/features/products", "lib/features/cart", "lib/features/checkout", "lib/features/user_profile")
    "Blog" = @("lib/features/posts/views", "lib/features/posts/widgets", "lib/features/posts/editor")
    "Social Media" = @("lib/features/feed", "lib/features/messages", "lib/features/profile")
    "Chat" = @("lib/features/chat/conversations", "lib/features/chat/messages")
    "To-do / Task" = @("lib/features/tasks/views", "lib/features/tasks/widgets")
    "Fitness / Health" = @("lib/features/workouts", "lib/features/nutrition", "lib/features/progress")
    "Education / LMS" = @("lib/features/courses", "lib/features/lessons", "lib/features/quizzes")
    "Music / Podcast" = @("lib/features/audio_player", "lib/features/playlists", "lib/features/discover")
    "Finance / Banking" = @("lib/features/accounts", "lib/features/transactions", "lib/features/budget")
    "Church / Faith" = @("lib/features/sermons", "lib/features/giving", "lib/features/events")
    "Food Delivery" = @("lib/features/restaurants", "lib/features/orders", "lib/features/delivery")
    "Travel / Booking" = @("lib/features/flights", "lib/features/hotels", "lib/features/itinerary")
    "Weather" = @("lib/features/weather/current", "lib/features/weather/forecast")
    "Portfolio / Resume" = @("lib/features/about", "lib/features/projects", "lib/features/contact")
    "Streaming / Video" = @("lib/features/videos", "lib/features/live", "lib/features/profile")
    "Event" = @("lib/features/schedule", "lib/features/rsvp", "lib/features/tickets")
    "Custom" = @("lib/features/your_feature")
}

$featureFolders = $featureMap[$SelectedType.Name]
$allFolders = $commonFolders + $featureFolders
foreach ($f in $allFolders) {
    New-Item -ItemType Directory -Path $f -Force | Out-Null
}

# Create a few starter files
$starterFiles = @(
    "lib/main.dart",
    "lib/routing/app_router.dart",
    "lib/widgets/custom_button.dart",
    "lib/config/environment.dart",
    "lib/config/app_config.dart"
)
foreach ($file in $starterFiles) {
    New-Item -ItemType File -Path $file -Force | Out-Null
    Write-Host "📄 Created $file" -ForegroundColor DarkGray
}

Write-Host "`n🎉 Project '$ProjectName' scaffolded as a '$($SelectedType.Name)' app. You're ready to build! 🚀" -ForegroundColor Magenta

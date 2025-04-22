# Flutter Project Structure Generator 🛠️

This PowerShell script helps you **quickly scaffold a folder structure** and starter files for different types of Flutter apps, such as e-commerce, blogs, church apps, dashboards, and more — all in seconds!

---

## 🚀 Features

- ✅ 18+ predefined app types (e.g., Dashboard, Blog, Church, Travel, etc.)
- ✅ Emojis for better visual selection
- ✅ Automatically creates core folders: `lib/`, `lib/screens/`, `lib/widgets/`, `assets/`, etc.
- ✅ Adds placeholder `.dart` files for `main`, `home`, and reusable widgets
- ✅ Super simple to run on Windows with PowerShell

---

## 📂 Generated Structure (Example)

For an app type like `E-commerce`, the script will generate:

your_app_name/ ├── lib/ │ ├── main.dart │ ├── screens/ │ │ └── home_screen.dart │ └── widgets/ │ └── custom_button.dart ├── assets/ │ └── images/ └── pubspec.yaml

yaml
Copy
Edit

Each app type includes a tailored version of the folders and files relevant to its use case.

---

## 🧰 Prerequisites

- Windows OS
- PowerShell
- Flutter SDK installed (for actual development)

---

## 📝 How to Use

1. **Download or copy** the script into a `.ps1` file, for example:

```powershell
C:\Scripts\generate_structure.ps1
Run PowerShell as Administrator and execute:

powershell
Copy
Edit
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Navigate to your script's folder and run:

powershell
Copy
Edit
.\generate_structure.ps1
Follow the prompt:

You'll see a menu of options to choose from (like "Blog", "Church", "E-commerce"), enter the number and your desired project name — and voilà! 🎉

🧠 Supported App Types

ID	App Type	Emoji
1	Dashboard	📊
2	E-commerce	🛒
3	Blog	📝
4	Social Media	📱
5	Chat	💬
6	To-do / Task	✅
7	Fitness / Health	🏋️
8	Education / LMS	📚
9	Music / Podcast	🎧
10	Finance / Banking	💰
11	Church / Faith	🙏
12	Food Delivery	🍔
13	Travel / Booking	✈️
14	Weather	⛆
15	Portfolio / Resume	🧑💼
16	Streaming / Video	📺
17	Event	🎟️
18	Custom	🛠️
🧪 Example Output
bash
Copy
Edit
Welcome to Flutter Project Generator 🚀
---------------------------------------
1: 📊 Dashboard
2: 🛒 E-commerce
3: 📝 Blog
...
Enter your choice (1-18): 11
Enter your app name: church_connect

✅ Folder structure for "Church / Faith" created at C:\Projects\church_connect
🧑‍💻 Author
Kimemia21
Junior Software Engineer

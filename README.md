# 🗂️ Portfolio — Flutter Web App

A personal portfolio built with **Flutter**, showcasing projects, skills, and contact information.  
Supports **Web**, **Linux**, **Windows**, and **Android** targets.

---

## 📸 Screenshots

### Navigation Menu
![Navigation Menu](assets/images/Portfolio_menu.png)

### About & Skills
![About & Skills](assets/images/Portfolio_about_skills.png)

### Projects (1)
![Projects 1](assets/images/Portfolio_projects1.png)

### Projects (2)
![Projects 2](assets/images/Portfolio_projects2.png)

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) `^3.9.2`
- `make` (available by default on Linux/macOS; use [GNU Make](https://www.gnu.org/software/make/) on Windows)

---

## 🛠️ Makefile Commands

All commands are run from the project root with `make <target>`.

| Target | Description |
|---|---|
| `make get` | Fetch dependencies (`flutter pub get`) |
| `make create` | Create Flutter project skeleton (`flutter create .`) |
| `make run-chrome` | Run on Chrome |
| `make run-linux` | Run on Linux desktop |
| `make run-windows` | Run on Windows desktop |
| `make build-web` | Build for web |
| `make build-linux` | Build for Linux |
| `make build-windows` | Build for Windows |
| `make build-android` | Build for Android |
| `make clean` | Remove build artifacts |
| `make help` | Show all available targets |

---

## ⚙️ Setup & Run

### 1. Clone the repository

```bash
git clone https://github.com/Reiciak/Portfolio.git
cd Portfolio
```

### 2. Install dependencies

```bash
make get
```

### 3. Run the app

```bash
# Web (Chrome)
make run-chrome

# Linux desktop
make run-linux

# Windows desktop
make run-windows
```

### 4. Build for production

```bash
make build-web      # outputs to build/web/
make build-linux    # outputs to build/linux/
make build-windows  # outputs to build/windows/
make build-android  # outputs to build/app/outputs/flutter-apk/
```

---

## 📦 Dependencies

| Package | Purpose |
|---|---|
| `floating_navbar` | Floating navigation bar |
| `url_launcher` | Opening external links |
| `flutter_riverpod` | State management |
| `kalkulator` (git) | Embedded Calculator project |

---

## 📁 Project Structure

```
portfolio/
├── lib/
│   ├── configuration_files/   # App-wide config, layout, project data
│   ├── page/                  # Page sections (title, about, projects, …)
│   └── widgets/               # Reusable widgets
├── assets/
│   └── images/                # All image assets
├── Makefile
└── pubspec.yaml
```

---

## 📄 License

This project is for personal/portfolio use.

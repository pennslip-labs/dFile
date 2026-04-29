# dFile

A retro-styled file manager with a console-like theme. dFile is a lightweight, efficient file management application built with C++ and wxWidgets, offering a nostalgic computing experience with modern functionality.

## About the Project

dFile is a file manager application that combines retro aesthetics with practical file management features. Inspired by vintage terminal interfaces and early GUI file managers, it provides an intuitive way to navigate, organize, and manage files on your system.

### Core Features

- **Retro Console Aesthetic**: Classic terminal-inspired UI with modern responsiveness
- **File Navigation**: Browse directories with sidebar panel and file list view
- **File Operations**: View, organize, and manage files efficiently
- **Details Panel**: Display detailed information about selected files
- **Filter Bar**: Search and filter files by name and attributes
- **Lightweight**: Minimal resource footprint compared to modern file managers

## Requirements

### Build & Runtime Dependencies

#### System Requirements
- **Operating System**: Windows, macOS, or Linux
- **C++ Standard**: C++11 or later
- **RAM**: Minimum 512MB
- **Disk Space**: 50MB for compilation and artifacts

#### Build Dependencies

1. **wxWidgets 3.2.x or later** - Cross-platform GUI toolkit
   - Ubuntu/Debian: `sudo apt-get install libwxgtk3.2-dev`
   - macOS: `brew install wxwidgets`
   - Windows: Download from [wxwidgets.org](https://www.wxwidgets.org/downloads/)

2. **C++ Compiler**
   - **Linux**: GCC 7+ or Clang 5+
     ```bash
     sudo apt-get install build-essential
     ```
   - **macOS**: Xcode Command Line Tools
     ```bash
     xcode-select --install
     ```
   - **Windows**: MSVC 2017+ or MinGW

3. **CMake** (optional, if using CMake build system)
   ```bash
   # Ubuntu/Debian
   sudo apt-get install cmake
   
   # macOS
   brew install cmake
   ```

## Installation & Setup

### Clone the Repository

```bash
git clone https://github.com/slipnut44/dFile.git
cd dFile
```

### Install Dependencies

#### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install libwxgtk3.2-dev build-essential
```

#### macOS
```bash
brew install wxwidgets
```

#### Windows
- Install MSVC Build Tools or Visual Studio
- Download and install wxWidgets from [wxwidgets.org](https://www.wxwidgets.org/downloads/)

## Building

### Using Make (Recommended)

```bash
cd dFile/cpp_files
make
```

The compiled executable will be generated in the `build/` or `bin/` directory.

### Using CMake (if available)

```bash
mkdir build
cd build
cmake ..
make
```

### Using Visual Studio (Windows)

1. Open the Visual Studio solution file (if available)
2. Select Release or Debug configuration
3. Build the solution (Ctrl+Shift+B)

### Compiler Flags (Manual Compilation)

If compiling manually with GCC/Clang:

```bash
g++ -std=c++11 -o dFile cpp_files/dFile_Launcher.cpp cpp_files/*.cpp \
    `wx-config --cxxflags --libs`
```

## Running the Application

### After Building

```bash
# Linux/macOS
./bin/dFile

# Windows
dFile.exe

# Open with specific directory
./bin/dFile /home/user/Documents
```

### Command Line Arguments

```bash
dFile [DIRECTORY]
```

**Examples:**
```bash
dFile                  # Opens current directory
dFile ~/Documents      # Opens Documents folder
dFile /tmp             # Opens /tmp directory
```

## Project Structure

```
dFile/
├── cpp_files/
│   ├── dFile_Launcher.cpp           # Application entry point
│   ├── dFile_Frame.cpp/hpp          # Main application window
│   ├── dFile_Controller.cpp/hpp     # Application controller logic
│   ├── dFile_DirectoryScanner.cpp   # Directory traversal
│   ├── dFile_FileListPanel.cpp/hpp  # File list view component
│   ├── dFile_SidebarPanel.cpp/hpp   # Sidebar navigation
│   ├── dFile_DetailsPanel.cpp/hpp   # File details display
│   ├── dFile_FilterBar.cpp/hpp      # Search/filter component
│   └── hello.cpp                    # Hello world example
├── extras/
│   └── dFile_wireframe.f0           # UI wireframe
├── LICENSE                          # GNU General Public License v3.0
└── README.md
```

## Development

### Architecture

- **Launcher**: Entry point and wxApp initialization
- **Frame**: Main window and UI layout
- **Controller**: Business logic and event handling
- **Panels**: Individual UI components (sidebar, file list, details, filter)
- **DirectoryScanner**: File system traversal and directory reading

### Building from Source

1. Modify source files in `cpp_files/`
2. Rebuild using the appropriate build system
3. Test the new version

### Key Classes

- `dFile_Launcher`: wxApp subclass, handles command-line arguments
- `dFile_Frame`: Main application window and layout
- `dFile_Controller`: Application logic and state management
- `dFile_DirectoryScanner`: Safe directory traversal

## License

This project is licensed under the **GNU General Public License v3.0**. See [LICENSE](LICENSE) for details.

## Features & Roadmap

### Current Features
- Directory browsing
- File listing and details
- Search and filter functionality
- Retro UI theme

### Planned Features
- File operations (copy, move, delete)
- Custom themes
- Keyboard shortcuts
- Favorites/bookmarks

## Contributing

For contributions, feature requests, or bug reports, please open an issue or pull request on GitHub.

## Author

**Shamar Pennant**

---

For more detailed information about features, see the documentation in the `extras/` folder.

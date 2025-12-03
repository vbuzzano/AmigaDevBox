# ApolloDevBox# ApolloDevBox# ApolloDevBox



**Development Kit for AmigaOS Cross-Compilation on Windows**



🧙 Automated setup and management of AmigaOS development environments with VBCC.**Development Kit for AmigaOS Cross-Compilation****Develop AmigaOS programs on Windows with ease.**



---



## 🚀 Quick Start🧙 A magical wizard to setup and manage AmigaOS development environments on Windows with VBCC.ApolloDevBox sets up a complete development environment for AmigaOS in minutes. One command, and you're coding.



```powershell

# Clone this repository

git clone https://github.com/user/ApolloDevBox.git MyProject---## ✨ Features

cd MyProject



# Optional: Configure packages

notepad .box\config.psd1## 🎯 What is ApolloDevBox?- 🚀 **One-command setup** - From zero to compiling in 60 seconds



# Install dependencies- 🔧 **Pre-configured IDE** - VS Code with build tasks and debugging

.\box.ps1 install

ApolloDevBox is a complete development kit that provides:- 📦 **Package manager** - Install SDKs, libraries, and tools easily

# Build your project!

make- **Automated setup** of AmigaOS cross-compilation toolchain (VBCC, NDK, etc.)- 🎯 **Multiple targets** - m68000, m68020, m68040, m68080 (Vampire)

```

- **Package management** for Amiga libraries and tools- 📝 **Project templates** - Program, Commodity, Device driver

---

- **Project templates** with VS Code integration- ⬆️ **Upload to Amiga** - Direct transfer to your Vampire V4

## 🎯 What You Get

- **Makefile generation** for different CPU targets (68000-68080)

- ✅ VBCC cross-compiler (68000-68080)

- ✅ NDK 3.9 headers- **Environment management** for seamless builds## 🚀 Quick Start

- ✅ Package management (auto-download libraries)

- ✅ VS Code integration (tasks, debug, settings)

- ✅ Makefile generation for multi-CPU targets

- ✅ Environment variable management---Open PowerShell and run:



---



## 📦 Commands## 🚀 Quick Start (For Users)```powershell



```powershellirm https://raw.githubusercontent.com/vbuzzano/ApolloDevBox/main/install.ps1 | iex

.\box.ps1 install          # Install all dependencies

.\box.ps1 env list         # List environment variables### Create a New Project```

.\box.ps1 env add KEY=VAL  # Add environment variable

.\box.ps1 pkg list         # List packages status

.\box.ps1 pkg update       # Update packages

.\box.ps1 help             # Show all commands```powershellFollow the prompts, then:

```

# Clone the release repository

---

git clone https://github.com/user/ApolloDevBox-Release.git MyProject```powershell

## 🛠️ Build System

cd MyProjectcd MyProject

The generated Makefile supports multiple CPU targets:

make

```powershell

make CPU=m68000            # Build for 68000# Run the setup wizard```

make CPU=m68020 FPU=68020  # Build for 68020 with FPU

make CPU=m68040 FPU=68040  # Build for 68040.\install.ps1

make CPU=m68080 FPU=68080  # Build for 68080 (Vampire)

make upload                # Upload to Vampire V4That's it! Your program is in `dist/`.

make clean                 # Clean build artifacts

```# Configure your project (edit if needed)



---notepad src\setup.config.psd1## 📁 Project Structure



## 📝 Configuration



### User Config: `.box/config.psd1`# Install dependencies```



Customize your project:cd srcMyProject/

- Project name and description

- Custom packages to install.\setup.ps1 install├── src/                  # Your source code

- Environment variables

- Build settings (CPU, FPU)├── include/              # Header files



Example:# Build your project!├── build/                # Compiled objects

```powershell

@{make CPU=m68000├── dist/                 # Final executable

    Project = @{

        Name = "MyGame"```├── vendor/               # Dependencies

        Description = "My awesome Amiga game"

        Version = "1.0.0"│   ├── ndk/              # AmigaOS NDK (required)

    }

    ---│   ├── sdk/              # Optional SDKs

    Build = @{

        DefaultCPU = "m68080"│   └── tools/            # Compiler, utilities

        DefaultFPU = "68080"

    }## 🛠️ Development (For Contributors)├── .vscode/              # IDE configuration

    

    Packages = @(├── setup.ps1             # Project management

        @{

            Name = "MyLibrary"This is the **development repository**. The release repository is generated from this one.├── setup.config.psd1     # Your settings

            Url = "https://example.com/mylib.lha"

            Extract = @("INC:mylib.h:include/mylib.h")└── Makefile              # Build rules

        }

    )### Repository Structure```

}

```



---```## 🔨 Building



## 🎨 VS Code IntegrationApolloDevBox/                    # Dev repository



Pre-configured files in `.vscode/`:├── Makefile                     # Build & release distribution```powershell

- `tasks.json` - Build, clean, upload tasks

- `launch.json` - Debug configuration├── .gitignoremake                    # Build (default: m68080)

- `settings.json` - Editor settings

├── LICENSEmake CPU=m68000         # Build for classic Amiga

Modify them before running `.\box.ps1 install` if needed.

│make clean              # Clean build files

---

├── devbox/                      # DevBox system codemake upload             # Upload to Vampire V4

## 📂 Structure

│   ├── inc/                     # PowerShell scripts```

```

MyProject/│   ├── tpl/                     # Internal templates

├── .box/                  # DevBox system (don't modify)

│   ├── inc/               # PowerShell scripts│   ├── tools/                   # Binaries (7z, etc.)## ⚙️ Commands

│   ├── tpl/               # Templates

│   ├── tools/             # Tools (7z)│   ├── config.psd1              # Default configuration

│   └── config.psd1        # Your configuration

├── .vscode/               # VS Code config (customizable)│   └── ROADMAP.md               # System roadmap```powershell

├── src/                   # Your source code (created by setup)

├── include/               # Headers (installed by packages)│.\setup.ps1 help              # Show all commands

├── vendor/                # Downloaded packages

├── build/                 # Build artifacts├── templates/                   # User project templates.\setup.ps1 pkg list          # List packages

├── dist/                  # Your executables

├── box.ps1                # DevBox command│   ├── install.ps1              # Bootstrap installer.\setup.ps1 pkg update        # Update packages

├── Makefile               # Build system (generated)

└── README.md              # This file│   ├── setup.ps1                # Project setup script.\setup.ps1 env list          # Show environment

```

│   ├── setup.config.template    # Config template```

---

│   ├── Makefile.template        # Build template

## 🔧 Development

│   ├── Makefile.amiga.template  # Alternative template## 📦 Package Types

This is a release repository. For development, see:

https://github.com/vbuzzano/ApolloDevBox│   └── .vscode/                 # VS Code config



---│| Type | Required | Auto-location | Description |



## 📝 License├── tests/                       # Test suite|------|----------|---------------|-------------|



See LICENSE file.│   ├── test-install.ps1         # Test installer| `NDK` | Yes (1+) | `vendor/ndk/<name>/` | AmigaOS Native Development Kit |



---│   ├── test-packages.ps1        # Test packages| `SDK` | No | `vendor/sdk/<name>/` | Additional SDKs (MUI, Reaction...) |



**Made with ❤️ for the Amiga community by Vincent Buzzano (ReddoC)**│   ├── clean.ps1                # Clean tests| `TOOL` | No | `vendor/tools/<name>/` | Compilers, utilities |


│   └── sandbox/                 # Test environment| `LIB` | No | `vendor/lib/` | Libraries |

│| `INC` | No | `include/` | Header files |

├── docs/                        # Documentation| `SRC` | No | `src/` or specified | Source code |

│

└── _old/                        # Archived code## 🎯 Supported Targets

```

| CPU | Description |

### Dual-Repository Strategy|-----|-------------|

| m68000 | Classic Amiga (A500, A1000, A2000) |

We use **two repositories**:| m68020 | A1200, A2500, A3000 |

| m68040 | A4000, A3000T |

1. **ApolloDevBox** (this repo): Development with flexible structure| m68080 | Vampire V2/V4 |

2. **ApolloDevBox-Release**: Clean distribution for end users

## 📋 Requirements

**Why?** 

- Dev repo can have any structure, tests, docs- Windows 10/11 with PowerShell 5.1+

- Release repo has optimal structure for users- Git for Windows

- Makefile builds and pushes to release repo

## 📄 License

### Development Workflow

MIT License - See [LICENSE](LICENSE)

```bash

# 1. Develop normally---

cd ApolloDevBox

vim devbox/inc/wizard.ps1📖 **Documentation**: [docs/](docs/)  

🐛 **Issues**: [GitHub Issues](https://github.com/vbuzzano/ApolloDevBox/issues)

# 2. Test your changes
make test

# 3. Build distribution
make dist
# → Creates dist/release/ with proper structure

# 4. Release (when ready)
make release
# → Syncs to ../ApolloDevBox-Release
# → Commits, tags, and pushes

# Or manually:
git add -A
git commit -m "feat: awesome feature"
git push origin main
make release  # Push to release repo
```

### Makefile Targets

| Target | Description |
|--------|-------------|
| `make help` | Show available targets |
| `make dist` | Build distribution in `dist/release/` |
| `make release` | Push distribution to release repository |
| `make test` | Run test suite |
| `make clean` | Remove `dist/` directory |
| `make clean-all` | Deep clean (dist + tests) |

### Testing

```powershell
# Run all tests
make test

# Or individual tests
pwsh -File tests/test-install.ps1
pwsh -File tests/test-packages.ps1

# Clean test artifacts
pwsh -File tests/clean.ps1
```

---

## 📦 Release Repository Structure

The generated release has this structure (optimized for users):

```
ApolloDevBox-Release/
├── install.ps1                  # Bootstrap installer
├── README.md                    # User documentation
├── LICENSE
│
└── src/                         # User project template
    ├── setup.ps1                # Setup entry point
    ├── setup.config.psd1        # User configuration
    ├── Makefile                 # Build system
    │
    ├── .vscode/                 # VS Code integration
    │   ├── launch.json
    │   ├── settings.json
    │   └── tasks.json
    │
    └── .box/                    # DevBox system (hidden like .git)
        ├── inc/                 # Scripts
        ├── tpl/                 # Templates
        ├── tools/               # Binaries
        └── config.psd1          # Defaults
```

---

## 🎮 Features

- ✅ Automated VBCC toolchain setup
- ✅ NDK 3.9 integration
- ✅ Package management (download, extract, install)
- ✅ Multi-CPU target support (68000, 68020, 68040, 68080)
- ✅ VS Code integration (tasks, launch, debugging)
- ✅ Environment variable management
- ✅ Makefile generation
- ⚠️ Git update system (planned)
- ⚠️ Pre-configured package repository (planned)

---

## 📝 License

See [LICENSE](LICENSE) file.

---

## 🤝 Contributing

1. Fork this repository (dev repo)
2. Create a feature branch
3. Make your changes
4. Test with `make test`
5. Submit a pull request

---

## 🎯 Roadmap

See [devbox/ROADMAP.md](devbox/ROADMAP.md) for planned features and known issues.

---

**Made with ❤️ for the Amiga community by Vincent Buzzano (ReddoC)**
# AmigaDevBox

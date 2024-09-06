# CARSv2_tools package
a simple, general python package for mature CARSv2 code

### Installation
currently you can only import the code from a local repo

### Structure
```
CARSv2_tools/
├── CARSv2_tools/
│   ├── __init__.py      # Makes the directory a Python package
│   ├── module1.py       # A module
│   ├── module2.py       # Another module
├── scripts/             # shell scripts for batch runs go here
│   ├── run_job.csh
│   └── setup_env.csh
├── tests/               # Directory for your test cases
│   ├── test_module1.py  # Tests for module1
│   └── test_module2.py  # Tests for module2
├── .gitignore           # Files to ignore in version control (e.g., venv, .pyc files)
├── LICENSE              # License for your package
├── README.md            # Description of the package
├── setup.py             # File to configure installation of the package
├── requirements.txt     # List of dependencies
└── MANIFEST.in          # Additional files to include in the package
```

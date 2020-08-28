rem setup environment:
pip uninstall numba
pip uninstall llvmlite
pip uninstall numpy

rem install working numba, and do test
pip install -r working-numba-requirements.txt
python numba-compiler.py
pip uninstall numba
python main.py

rem setup environment again:
pip uninstall numba
pip uninstall llvmlite
pip uninstall numpy

rem install non-working numba, and do test

pip install -r broken-numba-requirements.txt
python numba-compiler.py
pip uninstall numba
python main.py
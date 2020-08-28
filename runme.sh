# setup environment:
pip uninstall numba
pip uninstall llvmlite
pip uninstall numpy

#install working numba, and do test
pip install -r working-numba-requirements.txt
python numba-compiler.py
pip uninstall numba
python main.py

#setup environment again:
pip uninstall numba
pip uninstall llvmlite
pip uninstall numpy

# install non-working numba, and do test

pip install -r broken-numba-requirements.txt
python numba-compiler.py
pip uninstall numba
python main.py
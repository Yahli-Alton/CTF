import sys
import os
import inspect
# import {mod}

if "_posixsubprocess" in sys.modules:
    print("nope")
    os._exit(1)

for k in list(sys.modules):
    del sys.modules[k]

f = inspect.currentframe()
sys.addaudithook((lambda x: lambda *_: x(1))(os._exit))

for k in f.f_builtins:
    f.f_builtins[k] = None
for k in f.f_globals:
    if k != "f":
        f.f_globals[k] = None
for k in f.f_locals:
    f.f_locals[k] = None
del f
del k

# {cod}
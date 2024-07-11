import dis
import opcode

# cod = "print('hi')"

def f():
    exec(globals()["cod"])
# f()
# dis.dis(f)

print(f.__code__.co_names)
dis.dis(f)

from base64 import b64encode
from qiskit import QuantumCircuit, extensions
import numpy
import math

# base = numpy.array([
#     [1 / math.sqrt(2), 0, -1 / math.sqrt(2), 0],
#     [0, 1 / math.sqrt(2), 0, -1 / math.sqrt(2)],
#     [0, 1 / math.sqrt(2), 0, 1 / math.sqrt(2)],
#     [1 / math.sqrt(2), 0, 1 / math.sqrt(2), 0]
# ])
# operator = numpy.array([
#     [math.cos(math.pi / 6), math.sin(math.pi / 6), 0, 0],
#     [-math.sin(math.pi / 6), math.cos(math.pi / 6), 0, 0],
#     [0, 0, 1, 0],
#     [0, 0, 0, 1]
# ])

# gate = numpy.matmul(numpy.matmul(base, operator), base.T)
# gate = list(map(list, gate))
# quantum_gate = extensions.UnitaryGate(gate)

# gate:
# h 0
# cx 0 1

# gate2:
# cx(0, 1)
# 

# alice_x_0
alice_x_0 = QuantumCircuit(2, 1)
## define your circuit here
# alice_x_0.cx(0, 1)
# alice_x_0.h(0)
# alice_x_0.u(math.pi, 0, 0, 0)
# alice_x_0.u(2 * math.pi / 3, 0, 0, 0)
# alice_x_0.h(0)
# alice_x_0.cx(0, 1)
alice_x_0.cx(1, 0)
alice_x_0.u(math.pi, 0, 0, 0)
alice_x_0.u(10 * math.pi / 12, 0, 0, 0)
# bob_y_0.u(2 * math.pi / 3, 0, 0, 0)
alice_x_0.cx(1, 0)

# alice_x_1
alice_x_1 = QuantumCircuit(2, 1)
## define your circuit here
# alice_x_1.cx(0, 1)
# alice_x_1.h(0)
# alice_x_1.u(math.pi, 0, 0, 0)
# alice_x_1.h(0)
# alice_x_1.cx(0, 1)
alice_x_1.cx(1, 0)
alice_x_1.u(math.pi, 0, 0, 0)
alice_x_1.cx(1, 0)

# bob_y_0
bob_y_0 = QuantumCircuit(2, 1)
## define your circuit here
# bob_y_0.cx(0, 1)
# bob_y_0.h(0)
# bob_y_0.u(2 * math.pi / 3, 0, 0, 0)
# bob_y_0.h(0)
# bob_y_0.cx(0, 1)
bob_y_0.cx(1, 0)
alice_x_0.u(10 * math.pi / 12, 0, 0, 0)
# bob_y_0.u(2 * math.pi / 3, 0, 0, 0)
bob_y_0.cx(1, 0)

# bob_y_1
bob_y_1 = QuantumCircuit(2, 1)
## define your circuit here


strategies = [alice_x_0, alice_x_1, bob_y_0, bob_y_1]
strategies = [b64encode(qc.qasm().encode()) for qc in strategies]

# print(strategies)
for strategy in strategies:
    print(strategy.decode("utf-8"))

# # send strategies to server
# from pwn import remote
# r = remote('amt.rs', 31011)

# for strategy in strategies:
#     r.sendline(strategy)

# print(r.recvall())

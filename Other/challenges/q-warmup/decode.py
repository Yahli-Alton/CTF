from qiskit import QuantumCircuit
from qiskit import Aer, execute

backend = Aer.get_backend('qasm_simulator')
# def encode(bits):
#     circuit = QuantumCircuit(8)
#     for i, bit in enumerate(bits):
#         if bit == '1':
#             circuit.x(i)
        
#     for i in range(7, 0, -1):
#         circuit.cx(i, i-1)
    
#     circuit.measure_all()
#     job = execute(circuit, backend, shots=1)
#     result = job.result()
#     result = list(result.get_counts().keys())[0][::-1]

#     ret = int(bits, 2) ^ int(result, 2)
#     return ret

def decode(bits):
    circuit = QuantumCircuit(8)
    for i, bit in enumerate(bits):
        if bit == '1':
            circuit.x(i)
        
    for i in range(1, 8):
        circuit.cx(i, i-1)
    
    circuit.measure_all()
    job = execute(circuit, backend, shots=1)
    result = job.result()
    result = list(result.get_counts().keys())[0][::-1]

    ret = int(bits, 2) ^ int(result, 2)
    return ret

enc = b"\xbe\xb6\xbeXF\xa6\\\xa2\x82\x98\x84R\x9c\x86x~\x82\x98\x86xV"
flag = b""
for i in enc:
    flag += bytes([decode(bin(i)[2:].zfill(8))])

print(flag, flag.hex())

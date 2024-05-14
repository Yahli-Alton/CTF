from qiskit import QuantumCircuit
from qiskit import Aer, execute

backend = Aer.get_backend('qasm_simulator')
def encode(bits):
    circuit = QuantumCircuit(8)
    for i, bit in enumerate(bits):
        if bit == '1':
            circuit.x(i)
        
    for i in range(7, 0, -1):
        circuit.cx(i, i-1)
    
    circuit.measure_all()
    job = execute(circuit, backend, shots=1)
    result = job.result()
    result = list(result.get_counts().keys())[0][::-1]

    ret = int(bits, 2) ^ int(result, 2)
    return ret

def decode(bits):
    global run_results

    return run_results[bits]

run_results = [None] * 256

for i in range(127):
    result = encode(bin(i)[2:].zfill(8))
    if run_results[result] is not None:
        print(i)
    run_results[result] = i

# enc = b"\xbe\xb6\xbeXF\xa6\\\xa2\x82\x98\x84R\x9c\x86x~\x82\x98\x86xV"
enc = b'\xbe\xb6\xbeXF\xa6\\\xa2\x82\x98\x84R\xb4 X\xb0N\xb4\xbaj^f\xd8\xb4X\xa6\xb6j\xd8\xbc \xa6XjX\xb0\xde\xa2j\xd8Xj~HHV'
flag = b""
for i in enc:
    # flag += bytes([decode(bin(i)[2:].zfill(8))])
    flag += bytes([decode(i)])

print(flag, flag.hex())

import subprocess


processes = []

for _ in range(10):
    processes.append(subprocess.Popen(["python3", "sol.py"]))

for i in range(10):
    processes[i].wait(1000000)

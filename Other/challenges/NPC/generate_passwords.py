import cv2
import numpy
import random


with open("hint.dot", "r") as file:
    data = file.read()

nodes = {int(line[: -10]) : (line[-3], i) for i, line in enumerate(data.split("\n")[1: 29])}
lines = [tuple(map(int, line[: -1].split("--"))) for line in data.split("\n")[29: -2]]



matrix = numpy.zeros((len(nodes), len(nodes)))

for id1, id2 in lines:
    matrix[nodes[id1][1], nodes[id2][1]] = 1
    matrix[nodes[id2][1], nodes[id1][1]] = 1

node_connections = [[] for _ in range(len(nodes))]
vector = numpy.zeros((len(nodes), 1))

for letter, node in nodes.values():
    vector[node, 0] = 1
    result = matrix @ vector
    for i, value in enumerate(numpy.nditer(result)):
        if value == 1:
            node_connections[node].append(i)
    vector[node, 0] = 0

print(node_connections)

power_matrix = numpy.linalg.matrix_power(matrix, len(matrix))
long_connections = [[] for _ in range(len(nodes))]
vector = numpy.zeros((len(nodes), 1))

for letter, node in nodes.values():
    vector[node, 0] = 1
    result = matrix @ vector
    for i, value in enumerate(numpy.nditer(result)):
        if value == 1:
            long_connections[node].append(i)
    vector[node, 0] = 0

def find_sequences()

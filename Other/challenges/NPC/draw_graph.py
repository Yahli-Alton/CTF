import cv2
import numpy
import random


with open("hint.dot", "r") as file:
    data = file.read()

nodes = {int(line[: -10]) : (line[-3], (random.randint(0, 2000), random.randint(0, 2000))) for line in data.split("\n")[1: 29]}
lines = [tuple(map(int, line[: -1].split("--"))) for line in data.split("\n")[29: -2]]


image = numpy.zeros((2000, 2000))

for id, (letter, pos) in nodes.items():
    cv2.putText(image, letter, pos, cv2.FONT_HERSHEY_SIMPLEX, 1, (255, 255, 255))

for id1, id2 in lines:
    image = cv2.line(image, nodes[id1][1], nodes[id2][1], (255, 255, 255))

cv2.imwrite("image.png", image)

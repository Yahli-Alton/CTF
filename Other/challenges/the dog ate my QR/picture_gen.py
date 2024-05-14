import cv2
import random
import numpy


def generate_QR(path):
    original = cv2.imread(path)
    
    red_squares = []
    for x in range(original.shape[1]):
        for y in range(original.shape[0]):
            if numpy.array_equal(original[y, x], numpy.array([0, 0, 255])):
                red_squares.append((x, y))
    
    
    while True:
        copy = original.copy()

        for position in red_squares:
            if random.randint(0, 1) == 0:
                copy[position[1], position[0]] = (0, 0, 0)
            else:
                copy[position[1], position[0]] = (255, 255, 255)
            
        yield cv2.resize(copy, (660, 660), interpolation = cv2.INTER_NEAREST)

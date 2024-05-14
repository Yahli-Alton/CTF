import cv2, numpy

car1 = cv2.imread("car1.png")
car2 = cv2.imread("car2.png")
blue = numpy.zeros(car1.shape, dtype=numpy.uint8)


for i in range(car1.shape[0]):
    for j in range(car1.shape[1]):
        blue[i, j, 0] = car1[i, j, 1]

cv2.imshow("frame", blue)
cv2.imshow("frame", blue + car2)
# cv2.imshow("frame", car1 + car2)
cv2.waitKey()

import cv2, numpy


img = cv2.imread("image.jpg")

# new_img = img - cv2.warpAffine(img, numpy.float32([[1, 0, 8], [0, 1, 0]]), (1827, 350))
new_img = img - cv2.warpAffine(img, numpy.float32([[1, 0, 8], [0, 1, 0]]), (1827, 350))
new_img = new_img - cv2.warpAffine(new_img, numpy.float32([[1, 0, 163], [0, 1, 0]]), (1827, 350))

cv2.imshow("frame", new_img)
cv2.waitKey()

import cv2
import numpy as np

av = np.zeros(cv2.imread("C:\\Users\\sharo\\Downloads\\samples\\0.png").shape, dtype=np.uint64)

a = 100

for i in range(400):
    print(i)
    img = cv2.imread("C:\\Users\\sharo\\Downloads\\samples\\" + str(i) + ".png")
    # av += img
    for i in range(img.shape[0]):
        for j in range(img.shape[1]):
            if img[i, j, 0] < a:
                av[i, j] = 0
            if img[i, j, 0] > 255 - a:
                av[i, j] = 255

# av //= 400
av = av.astype(np.uint8)

cv2.imshow("frame", av)
cv2.waitKey()

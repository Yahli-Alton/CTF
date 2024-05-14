import cv2
import numpy as np

av = np.ones(cv2.imread("C:\\Users\\sharo\\Downloads\\samples\\0.png").shape, dtype=np.uint64) * 128

a = 100

for i in range(400):
    print(i)
    img = cv2.imread("C:\\Users\\sharo\\Downloads\\samples\\" + str(i) + ".png")
    # av += img
    av[img < a] -= 2
    av[img > 255 - a] += 2

# av //= 400
av = av.astype(np.uint8)

cv2.imshow("frame", av)
cv2.waitKey()

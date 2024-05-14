import cv2
import numpy as np


slope = -4

img = cv2.imread("approach.png")
img = img.astype(np.int32)
offset = np.zeros(img.shape, dtype=np.int32)
offset[1:, :slope] = img[:-1, -slope:]

new = np.clip(img - offset, 0, 255)
new = new.astype(np.uint8)

cv2.imshow("frame", new * 8)
cv2.waitKey(0)
cv2.imwrite("changed.png", new * 8)


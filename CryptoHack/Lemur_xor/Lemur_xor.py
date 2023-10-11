import cv2

foo = cv2.imread("./Lemur_xor/lemur.png")
bar = cv2.imread("./Lemur_xor/flag.png")

key = cv2.bitwise_xor(foo, bar)
flag = cv2.bitwise_xor(bar, key)
lemur = cv2.bitwise_xor(foo, key)

# cv2.imshow("xored data", flag)
# cv2.imshow("xored key", lemur)
cv2.imshow("xored key", key)
while True:
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
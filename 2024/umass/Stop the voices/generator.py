from PIL import Image
import numpy as np

img = Image.open('FLAG.png').convert('L')
arr = np.asanyarray(img)


def normalize(mat):
    return (mat - mat.min()) / (mat.max() - mat.min()) * 255


for i in range(400):
    noise = np.random.normal(arr, 200)
    noise = normalize(noise)
    noise = noise.astype(np.uint8)
    im = Image.fromarray(noise)
    im.save(f"./samples/{i}.png")

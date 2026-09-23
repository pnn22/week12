import cv2
import numpy as np

# สร้างภาพสีดำขนาด 300x300 pixel
image = np.zeros((300, 300, 3), dtype=np.uint8)

# วาดวงกลมสีเขียวตรงกลางภาพ
cv2.circle(image, (150, 150), 50, (0, 255, 0), -1)

# บันทึกภาพผลลัพธ์
cv2.imwrite('output.jpg', image)
print("Image saved successfully as output.jpg!")
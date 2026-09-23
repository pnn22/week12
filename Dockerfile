# เลือก base image เป็น Python
FROM python:3.9-slim

# กำหนดโฟลเดอร์ทำงานใน container
WORKDIR /app

# คัดลอกไฟล์ requirements ไปติดตั้งไลบรารี
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# คัดลอกไฟล์โค้ดทั้งหมดในโฟลเดอร์นี้เข้าไป
COPY . .

# สั่งให้รันไฟล์ python.py ของคุณเมื่อ Container เริ่มทำงาน
CMD ["python", "python.py"]
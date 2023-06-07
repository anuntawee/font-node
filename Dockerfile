# ใช้ภาพของ Node.js เป็นฐาน
FROM nginx

# ก๊อปปี้ไฟล์ Node.js เข้าสู่โฟลเดอร์ใน Docker image
COPY index.html /usr/share/nginx/html

# เปิดพอร์ตที่ 3000 สำหรับการเข้าถึงแอพพลิเคชัน
EXPOSE 80

# รันคำสั่ง "npm start" เมื่อ Docker container ถูกเรียกใช้งาน
CMD ["nginx", "-g", "daemon off;"]
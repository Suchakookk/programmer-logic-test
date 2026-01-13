# Programmer Logic Test (SQL Server / HTML-CSS / C#)

Repo นี้จัดทำเพื่อส่งงานแบบทดสอบ Programmer Logic Test โดยแยกคำตอบและตัวอย่างออกเป็นหมวดชัดเจน
- SQL Server: สร้างตาราง / insert ข้อมูล / query ตามโจทย์
- HTML & CSS: ตัวอย่างโค้ดหน้าเว็บ + ตาราง + โครงสร้าง CSS
- C#: ตัวอย่าง Console App ง่าย ๆ

## Project Structure
- `docs/` : ไฟล์โจทย์ต้นฉบับ
- `sql/` : สคริปต์ SQL (schema, seed, answers)
- `html-css/` : ตัวอย่าง HTML/CSS
- `csharp/HelloWorld/` : ตัวอย่างโปรเจกต์ C# (Console)

## How to Run

### SQL Server
1) เปิด SQL Server Management Studio (SSMS)
2) รันไฟล์ตามลำดับ:
- `sql/01_schema.sql`
- `sql/02_seed.sql`
- `sql/03_answers.sql`

> หมายเหตุ: ตัวอย่างบางข้อ (เช่น Work/Bonus/Title) ใส่เป็นรูปแบบ JOIN ให้ตามโจทย์ เพราะ schema จริงอาจกำหนดได้หลายแบบ

### HTML & CSS
เปิดไฟล์ด้านล่างด้วย Browser ได้เลย:
- `html-css/01_layout.html`
- `html-css/02_table.html`

### C# (ถ้ามี .NET SDK)
```bash
cd csharp/HelloWorld
dotnet run
```

## Notes
- โค้ดเขียนเน้นให้อ่านง่าย และปรับได้ตามรูปแบบฐานข้อมูล/โจทย์จริง
- ถ้า SQL Server เวอร์ชันเก่าและไม่มี `STRING_AGG` สามารถดูทางเลือกใน `sql/04_notes.sql`

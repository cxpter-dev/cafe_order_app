# TANUKI Cafe (`cafe_order_app`)

โปรเจกต์ฝึกสร้างระบบร้านกาแฟครบวงจรตามขั้นตอนการทำงานจริง (SDLC) — ครอบคลุม **Flutter, JavaScript, Python, Google Cloud, GitHub และ QA/UAT**

> *English Summary:* A full-stack learning project for **TANUKI Cafe** — featuring a Flutter customer app, Python FastAPI backend, JavaScript barista/admin dashboard, and Google Cloud deployment.

---

## โครงสร้างโฟลเดอร์ (Monorepo Structure)

| โฟลเดอร์ | เทคโนโลยี | หน้าที่ |
|---|---|---|
| `docs/` | Markdown | เอกสารแผนงาน (PRD, Architecture, API Contract) |
| `mobile_flutter/` | Flutter (Dart) | แอปสั่งเครื่องดื่มสำหรับลูกค้า |
| `backend_python/` | Python (FastAPI) | ระบบหลังบ้าน คำนวณราคา โค้ดส่วนลด และรับออเดอร์ |
| `web_js/` | JavaScript | หน้าเว็บบาริสต้าดูออเดอร์ + หน้าแอดมินสร้างโค้ดส่วนลด |
| `qa_tests/` | QA / UAT | เอกสาร Test Case, เช็กลิสต์เทสแบบลูกค้า และ Bug Reports |

## เอกสารแผนงาน
- อ่านรายละเอียดเมนู กฎร้าน และโครงสร้างระบบได้ที่ [`docs/PRD_AND_ARCHITECTURE.md`](docs/PRD_AND_ARCHITECTURE.md)

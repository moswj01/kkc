# M Dev - Company Profile Website

บริการพัฒนาโปรแกรมและระบบดิจิทัลแบบครบวงจร

## Description

M Dev คือผู้ให้บริการพัฒนาโปรแกรมและระบบดิจิทัลแบบครบวงจร เรามีความเชี่ยวชาญในการสร้างสรรค์โซลูชันที่ตอบโจทย์ธุรกิจยุคใหม่ ทั้งด้านความเร็ว ความเสถียร และความปลอดภัย โดยมุ่งเน้นการออกแบบที่สวยงาม ใช้งานง่าย และปรับแต่งได้ตามความต้องการของลูกค้า

## Features

### บริการของเรา (Our Services)

- **Mobile Application Development** - พัฒนาแอปทั้ง iOS และ Android ด้วยเทคโนโลยีทันสมัย
- **Web Application Development** - ออกแบบและพัฒนาเว็บแอปที่ตอบสนองทุกอุปกรณ์
- **POS System** - ระบบขายหน้าร้านทั้งแบบ Offline และ Online พร้อมการเชื่อมต่ออุปกรณ์เสริม
- **Delivery Platform** - ระบบจัดการการจัดส่งพร้อมแอปลูกค้า ร้านค้า และไรเดอร์
- **Custom Dashboard & IoT Integration** - แดชบอร์ดแสดงข้อมูลแบบเรียลไทม์ พร้อมเชื่อมต่ออุปกรณ์ IoT

### ผลงานเด่น (Portfolio)

1. **mPOS System** - ระบบ POS สำหรับร้านค้า รองรับการชำระเงินหลายรูปแบบ
2. **SENd – Laundry Delivery Platform** - แพลตฟอร์มส่งซักผ้าอัตโนมัติ ครบวงจร
3. **Smart School Dashboard** - ระบบจัดการโรงเรียนอัจฉริยะ

## Technology Stack

This website is built with:

- **Next.js 15** - React framework with App Router
- **TypeScript** - Type-safe JavaScript
- **Tailwind CSS** - Utility-first CSS framework
- **React Components** - Modular component architecture

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Deployment

### EasyPanel Deployment

This project is optimized for deployment with EasyPanel using Docker.

#### Prerequisites

- EasyPanel account
- Git repository (GitHub/GitLab/Bitbucket)

#### Deploy Steps:

1. **Push to Git Repository**

   ```bash
   git add .
   git commit -m "Ready for EasyPanel deployment"
   git push origin main
   ```

2. **EasyPanel Setup**

   - Log in to your EasyPanel dashboard
   - Click "Create New Service"
   - Select "Source Code"
   - Connect your Git repository
   - Select this repository and main branch

3. **Configuration**

   - Service Name: `mdev-website`
   - Port: `3000`
   - Build Type: `Dockerfile`
   - Dockerfile Path: `./Dockerfile`

4. **Environment Variables** (if needed)

   ```
   NODE_ENV=production
   PORT=3000
   ```

5. **Deploy**
   - Click "Create Service"
   - EasyPanel will automatically build and deploy
   - Your website will be available at your assigned URL

### Docker Build (Local Testing)

```bash
# Build the Docker image
docker build -t mdev-website .

# Run the container
docker run -p 3000:3000 mdev-website
```

## Project Structure

```
src/
├── app/
│   ├── globals.css
│   ├── layout.tsx
│   └── page.tsx
└── components/
    ├── About.tsx
    ├── Contact.tsx
    ├── Hero.tsx
    ├── Portfolio.tsx
    ├── Services.tsx
    └── WhyChooseUs.tsx
```

## Contact Information

- **Phone:** 085-596-1786
- **Email:** contact@mdevservice.tech
- **Website:** www.mdevservice.tech

---

© 2025 M Dev. All rights reserved. | Innovative Software Solutions for Your Business## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.

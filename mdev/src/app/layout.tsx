import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "M Dev - Innovative Software Solutions for Your Business",
  description: "M Dev คือผู้ให้บริการพัฒนาโปรแกรมและระบบดิจิทัลแบบครบวงจร เชี่ยวชาญการสร้างสรรค์โซลูชันที่ตอบโจทย์ธุรกิจยุคใหม่ ทั้งด้านความเร็ว ความเสถียร และความปลอดภัย",
  keywords: "software development, mobile app, web development, POS system, delivery platform, IoT, dashboard, Thai software company",
  authors: [{ name: "M Dev" }],
};

export const viewport = {
  width: 'device-width',
  initialScale: 1,
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="th">
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased font-sans`}
      >
        {children}
      </body>
    </html>
  );
}

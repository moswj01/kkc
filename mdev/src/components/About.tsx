export default function About() {
  return (
    <section className="py-20 bg-gray-50">
      <div className="container mx-auto px-4">
        <div className="max-w-4xl mx-auto text-center">
          <h2 className="text-4xl md:text-5xl font-bold text-gray-800 mb-8">
            เกี่ยวกับเรา
          </h2>
          <h3 className="text-2xl md:text-3xl font-semibold text-red-600 mb-6">
            About Us
          </h3>
          <p className="text-lg text-gray-600 leading-relaxed mb-8">
            M Dev คือผู้ให้บริการพัฒนาโปรแกรมและระบบดิจิทัลแบบครบวงจร เรามีความเชี่ยวชาญในการสร้างสรรค์โซลูชันที่ตอบโจทย์ธุรกิจยุคใหม่ 
            ทั้งด้านความเร็ว ความเสถียร และความปลอดภัย โดยมุ่งเน้นการออกแบบที่สวยงาม ใช้งานง่าย และปรับแต่งได้ตามความต้องการของลูกค้า
          </p>
          
          <div className="grid md:grid-cols-3 gap-8 mt-12">
            <div className="text-center">
              <div className="w-16 h-16 bg-red-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <svg className="w-8 h-8 text-red-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 10V3L4 14h7v7l9-11h-7z" />
                </svg>
              </div>
              <h4 className="text-xl font-semibold text-gray-800 mb-2">ความเร็ว</h4>
              <p className="text-gray-600">พัฒนาและส่งมอบงานอย่างรวดเร็ว</p>
            </div>
            
            <div className="text-center">
              <div className="w-16 h-16 bg-orange-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <svg className="w-8 h-8 text-orange-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
              </div>
              <h4 className="text-xl font-semibold text-gray-800 mb-2">ความเสถียร</h4>
              <p className="text-gray-600">ระบบที่มั่นคงและเชื่อถือได้</p>
            </div>
            
            <div className="text-center">
              <div className="w-16 h-16 bg-rose-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <svg className="w-8 h-8 text-rose-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
                </svg>
              </div>
              <h4 className="text-xl font-semibold text-gray-800 mb-2">ความปลอดภัย</h4>
              <p className="text-gray-600">การรักษาความปลอดภัยข้อมูลระดับสูง</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}

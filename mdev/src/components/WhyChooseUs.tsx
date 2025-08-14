export default function WhyChooseUs() {
  const advantages = [
    {
      title: "ประสบการณ์ตรงในการพัฒนาระบบหลายอุตสาหกรรม",
      description: "เรามีประสบการณ์การทำงานกับธุรกิจหลากหลายประเภท ทำให้เข้าใจความต้องการเฉพาะของแต่ละอุตสาหกรรม",
      icon: (
        <svg className="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z" />
        </svg>
      )
    },
    {
      title: "ความสามารถในการออกแบบ UI/UX ที่สวยและใช้งานง่าย",
      description: "ทีมดีไซเนอร์ของเรามีความเชี่ยวชาญในการสร้างประสบการณ์ผู้ใช้ที่ยอดเยี่ยม ทั้งในด้านความสวยงามและการใช้งาน",
      icon: (
        <svg className="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zM21 5a2 2 0 00-2-2h-4a2 2 0 00-2 2v12a4 4 0 004 4h4a2 2 0 002-2V5z" />
        </svg>
      )
    },
    {
      title: "รองรับการปรับแต่งระบบให้ตรงตามความต้องการของลูกค้า",
      description: "เราเข้าใจว่าธุรกิจแต่ละแห่งมีความต้องการที่แตกต่างกัน จึงให้บริการปรับแต่งระบบให้เหมาะสมกับการใช้งานจริง",
      icon: (
        <svg className="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
        </svg>
      )
    },
    {
      title: "ทีมพัฒนาให้การสนับสนุนหลังการส่งมอบ",
      description: "การดูแลและสนับสนุนหลังการส่งมอบเป็นสิ่งสำคัญ เราพร้อมให้คำปรึกษาและแก้ไขปัญหาตลอดการใช้งาน",
      icon: (
        <svg className="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192L5.636 18.364M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z" />
        </svg>
      )
    }
  ];

  return (
    <section className="py-20 bg-white">
      <div className="container mx-auto px-4">
        <div className="text-center mb-16">
          <h2 className="text-4xl md:text-5xl font-bold text-gray-800 mb-8">
            จุดแข็งของเรา
          </h2>
          <h3 className="text-2xl md:text-3xl font-semibold text-red-600 mb-6">
            Why Choose M Dev?
          </h3>
        </div>
        
        <div className="grid md:grid-cols-2 gap-8 max-w-6xl mx-auto">
          {advantages.map((advantage, index) => (
            <div key={index} className="group">
              <div className="bg-white rounded-xl p-8 shadow-lg hover:shadow-xl transition-all duration-300 border border-gray-100 h-full">
                <div className="flex items-start space-x-4">
                  <div className="flex-shrink-0 w-16 h-16 bg-gradient-to-br from-red-500 to-rose-600 rounded-xl flex items-center justify-center text-white group-hover:scale-110 transition-transform">
                    {advantage.icon}
                  </div>
                  <div className="flex-1">
                    <h4 className="text-xl font-semibold text-gray-800 mb-3 leading-tight">
                      {advantage.title}
                    </h4>
                    <p className="text-gray-600 leading-relaxed">
                      {advantage.description}
                    </p>
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
        
        <div className="text-center mt-16">
          <div className="bg-gradient-to-r from-red-600 to-rose-600 rounded-2xl p-8 text-white max-w-4xl mx-auto">
            <h3 className="text-2xl md:text-3xl font-bold mb-4">
              พร้อมที่จะเริ่มต้นโปรเจกต์ของคุณแล้วหรือยัง?
            </h3>
            <p className="text-lg mb-6 opacity-90">
              ติดต่อเราวันนี้เพื่อปรึกษาและวางแผนการพัฒนาระบบที่เหมาะสมกับธุรกิจของคุณ
            </p>
            <button className="bg-white text-red-600 px-8 py-3 rounded-lg font-semibold hover:bg-gray-100 transition-colors">
              เริ่มปรึกษาโปรเจกต์
            </button>
          </div>
        </div>
      </div>
    </section>
  );
}

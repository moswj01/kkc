export default function Portfolio() {
  const projects = [
    {
      title: "mPOS System",
      description: "ระบบ POS สำหรับร้านค้า รองรับการชำระเงินหลายรูปแบบ พร้อมรายงานการขายและการจัดการสินค้า",
      features: ["ระบบชำระเงินหลายรูปแบบ", "รายงานการขายแบบเรียลไทม์", "การจัดการสินค้าและสต็อก", "การเชื่อมต่ออุปกรณ์เสริม"],
      tech: ["React", "Node.js", "PostgreSQL", "Payment Gateway"],
      color: "red"
    },
    {
      title: "SENd – Laundry Delivery Platform",
      description: "แพลตฟอร์มส่งซักผ้าอัตโนมัติ ครบวงจรทั้งลูกค้า ไรเดอร์ ร้านซัก และระบบแอดมิน",
      features: ["แอปสำหรับลูกค้า", "แอปสำหรับไรเดอร์", "ระบบจัดการร้านซัก", "แดชบอร์ดแอดมิน"],
      tech: ["React Native", "Flutter", "Firebase", "Google Maps API"],
      color: "rose"
    },
    {
      title: "Smart School Dashboard",
      description: "ระบบจัดการโรงเรียนอัจฉริยะ รองรับการเช็กชื่อ การแจ้งข่าวสาร และติดตามผลการเรียน",
      features: ["ระบบเช็กชื่ออัตโนมัติ", "แจ้งข่าวสารแบบเรียลไทม์", "ติดตามผลการเรียน", "รายงานสถิติและกราฟ"],
      tech: ["Vue.js", "Laravel", "MySQL", "WebSocket"],
      color: "pink"
    }
  ];

  const getColorClasses = (color: string) => {
    const colors = {
      red: "from-red-500 to-red-600",
      rose: "from-rose-500 to-rose-600", 
      pink: "from-pink-500 to-pink-600"
    };
    return colors[color as keyof typeof colors] || "from-gray-500 to-gray-600";
  };

  return (
    <section className="py-20 bg-gray-50">
      <div className="container mx-auto px-4">
        <div className="text-center mb-16">
          <h2 className="text-4xl md:text-5xl font-bold text-gray-800 mb-8">
            ผลงานเด่น
          </h2>
          <h3 className="text-2xl md:text-3xl font-semibold text-red-600 mb-6">
            Portfolio
          </h3>
        </div>
        
        <div className="grid lg:grid-cols-1 gap-12 max-w-6xl mx-auto">
          {projects.map((project, index) => (
            <div key={index} className="bg-white rounded-2xl shadow-xl overflow-hidden hover:shadow-2xl transition-shadow">
              <div className={`h-2 bg-gradient-to-r ${getColorClasses(project.color)}`}></div>
              <div className="p-8">
                <div className="flex flex-col lg:flex-row gap-8">
                  <div className="lg:w-2/3">
                    <h4 className="text-2xl font-bold text-gray-800 mb-4">
                      {project.title}
                    </h4>
                    <p className="text-gray-600 mb-6 leading-relaxed">
                      {project.description}
                    </p>
                    
                    <div className="mb-6">
                      <h5 className="text-lg font-semibold text-gray-800 mb-3">คุณสมบัติหลัก:</h5>
                      <ul className="grid grid-cols-1 md:grid-cols-2 gap-2">
                        {project.features.map((feature, idx) => (
                          <li key={idx} className="flex items-center text-gray-600">
                            <svg className="w-4 h-4 text-green-500 mr-2 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                            </svg>
                            {feature}
                          </li>
                        ))}
                      </ul>
                    </div>
                  </div>
                  
                  <div className="lg:w-1/3">
                    <h5 className="text-lg font-semibold text-gray-800 mb-3">เทคโนโลยีที่ใช้:</h5>
                    <div className="flex flex-wrap gap-2">
                      {project.tech.map((tech, idx) => (
                        <span key={idx} className="px-3 py-1 bg-gray-100 text-gray-700 rounded-full text-sm font-medium">
                          {tech}
                        </span>
                      ))}
                    </div>
                    
                    <div className="mt-6">
                      <button className={`w-full bg-gradient-to-r ${getColorClasses(project.color)} text-white px-6 py-3 rounded-lg font-semibold hover:opacity-90 transition-opacity`}>
                        ดูรายละเอียดเพิ่มเติม
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

import Link from "next/link";

export default function Home() {
  return (
    <div className="flex flex-col items-center">
      {/* Hero Section */}
      <section className="w-full bg-gray-900 text-white py-24 md:py-32 relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-r from-cyan-900 to-blue-900 opacity-50 z-0"></div>
        {/* Placeholder for Hero Image */}
        {/* <Image src="/hero-bg.jpg" alt="Townsville" fill className="object-cover z-[-1]" /> */}

        <div className="container mx-auto px-4 relative z-10 text-center">
          <h1 className="text-4xl md:text-6xl font-bold mb-6 leading-tight">
            Property Management <span className="text-cyan-400">Townsville</span>
          </h1>
          <p className="text-xl md:text-2xl mb-10 max-w-2xl mx-auto text-gray-200">
            Dedicated exclusively to managing your investment property.
          </p>
          <div className="flex flex-col sm:flex-row justify-center gap-4">
            <Link href="/contact" className="px-8 py-4 bg-cyan-500 hover:bg-cyan-600 text-white font-bold rounded-full text-lg transition-all transform hover:scale-105 shadow-lg">
              Make The Switch
            </Link>
            <Link href="/owners" className="px-8 py-4 bg-transparent border-2 border-white hover:bg-white hover:text-gray-900 text-white font-bold rounded-full text-lg transition-all">
              For Owners
            </Link>
          </div>
        </div>
      </section>

      {/* Welcome Section */}
      <section className="w-full py-20 bg-white">
        <div className="container mx-auto px-4">
          <div className="max-w-4xl mx-auto text-center">
            <h2 className="text-3xl md:text-4xl font-bold mb-8 text-gray-800">Welcome to Smart Rentals</h2>
            <p className="text-lg text-gray-600 mb-6 leading-relaxed">
              We are Townsville's leading independent property management agency. Unlike traditional real estate agencies, we don't sell houses – we only manage them. This 100% focus means we can deliver a superior level of service and attention to detail for our landlords and tenants.
            </p>
            <p className="text-lg text-gray-600 leading-relaxed">
              Our team of experienced property managers is dedicated to maximizing your rental returns while minimizing the stress of investment property ownership.
            </p>
          </div>
        </div>
      </section>

      {/* Services / Features Grid */}
      <section className="w-full py-20 bg-gray-50">
        <div className="container mx-auto px-4">
          <h2 className="text-3xl font-bold text-center mb-16 text-gray-800">Why Choose Smart Rentals?</h2>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-10">
            {/* Feature 1 */}
            <div className="bg-white p-8 rounded-2xl shadow-sm hover:shadow-md transition-shadow">
              <div className="w-14 h-14 bg-cyan-100 rounded-full flex items-center justify-center mb-6 text-cyan-600 text-2xl">
                ★
              </div>
              <h3 className="text-xl font-bold mb-4 text-gray-800">100% Focus</h3>
              <p className="text-gray-600">
                We don't sell houses. We are 100% dedicated to property management, ensuring your investment gets the attention it deserves.
              </p>
            </div>

            {/* Feature 2 */}
            <div className="bg-white p-8 rounded-2xl shadow-sm hover:shadow-md transition-shadow">
              <div className="w-14 h-14 bg-cyan-100 rounded-full flex items-center justify-center mb-6 text-cyan-600 text-2xl">
                ⚡
              </div>
              <h3 className="text-xl font-bold mb-4 text-gray-800">Proactive Service</h3>
              <p className="text-gray-600">
                We believe in preventing issues before they happen. Our proactive maintenance and inspection routines protect your asset.
              </p>
            </div>

            {/* Feature 3 */}
            <div className="bg-white p-8 rounded-2xl shadow-sm hover:shadow-md transition-shadow">
              <div className="w-14 h-14 bg-cyan-100 rounded-full flex items-center justify-center mb-6 text-cyan-600 text-2xl">
                ♥
              </div>
              <h3 className="text-xl font-bold mb-4 text-gray-800">Tenant Care</h3>
              <p className="text-gray-600">
                Happy tenants mean stable income. We treat tenants with respect and handle their concerns promptly.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="w-full py-24 bg-cyan-600 text-white text-center">
        <div className="container mx-auto px-4">
          <h2 className="text-3xl md:text-4xl font-bold mb-8">Ready to experience the Smart difference?</h2>
          <Link href="/contact" className="inline-block px-10 py-4 bg-white text-cyan-600 font-bold rounded-full text-lg hover:bg-gray-100 transition-colors shadow-lg">
            Contact Us Today
          </Link>
        </div>
      </section>
    </div>
  );
}

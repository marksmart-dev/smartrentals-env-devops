export default function WhoWeAre() {
    return (
        <div className="bg-gray-50 min-h-screen">
            {/* Hero */}
            <section className="bg-cyan-700 text-white py-20">
                <div className="container mx-auto px-4 text-center">
                    <h1 className="text-4xl md:text-5xl font-bold mb-4">Smart Info</h1>
                    <p className="text-xl opacity-90">Who We Are</p>
                </div>
            </section>

            {/* Main Content */}
            <section className="py-20">
                <div className="container mx-auto px-4 max-w-4xl">
                    <div className="bg-white p-10 rounded-2xl shadow-sm mb-12">
                        <h2 className="text-2xl font-bold mb-6 text-gray-800">About Smart Rentals</h2>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                            Smart Rentals Townsville is a dedicated property management agency. We focus 100% on managing your investment property, which means we can deliver a superior level of service and attention to detail.
                        </p>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                            Our team is experienced, professional, and passionate about property management. We use the latest technology and systems to ensure your property is managed efficiently and effectively.
                        </p>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                            Whether you are a landlord or a tenant, you can trust Smart Rentals to provide you with the best possible service.
                        </p>
                    </div>
                </div>
            </section>
        </div>
    );
}

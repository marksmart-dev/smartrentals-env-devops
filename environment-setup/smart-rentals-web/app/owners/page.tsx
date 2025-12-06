import Link from "next/link";

export default function Owners() {
    return (
        <div className="bg-gray-50 min-h-screen">
            {/* Hero */}
            <section className="bg-cyan-700 text-white py-20">
                <div className="container mx-auto px-4 text-center">
                    <h1 className="text-4xl md:text-5xl font-bold mb-4">Owners</h1>
                    <p className="text-xl opacity-90">Everything for Property Owners</p>
                </div>
            </section>

            {/* Main Content */}
            <section className="py-20">
                <div className="container mx-auto px-4 max-w-4xl">
                    <div className="bg-white p-10 rounded-2xl shadow-sm mb-12">
                        <h2 className="text-2xl font-bold mb-6 text-gray-800">Why Choose Smart Rentals?</h2>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                            Are you looking for a property manager who offers high-quality communication and solutions instead of issues to Townsville’s landlords and investors? Or a property manager who is dedicated to delivering 100% customer satisfaction and cares about their client’s valuable property?
                        </p>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                            You’re right to expect better! That’s why Smart Rentals provides a culture of customer service, care, communication and continual improvement. We are focused on challenging the traditional property management stereotype and making investment property ownership as easy as possible for you – so much that we guarantee it!
                        </p>
                    </div>

                    <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mb-12">
                        <div className="bg-white p-8 rounded-2xl shadow-sm">
                            <h3 className="text-xl font-bold mb-4 text-gray-800">Satisfaction Guaranteed</h3>
                            <p className="text-gray-600 mb-6">
                                We work for Free. We want your business and we’ll work for free to earn it.
                            </p>
                            <Link href="/contact" className="text-cyan-600 font-semibold hover:underline">
                                Find out more →
                            </Link>
                        </div>

                        <div className="bg-white p-8 rounded-2xl shadow-sm">
                            <h3 className="text-xl font-bold mb-4 text-gray-800">Compare Us</h3>
                            <p className="text-gray-600 mb-6">
                                This simple 60 second checklist will quickly clarify how your current property manager measures up to Smart Rentals Townsville.
                            </p>
                            <Link href="/contact" className="text-cyan-600 font-semibold hover:underline">
                                Compare Us →
                            </Link>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    );
}

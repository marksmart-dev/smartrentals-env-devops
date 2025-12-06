import Link from "next/link";

export default function Tenants() {
    return (
        <div className="bg-gray-50 min-h-screen">
            {/* Hero */}
            <section className="bg-cyan-700 text-white py-20">
                <div className="container mx-auto px-4 text-center">
                    <h1 className="text-4xl md:text-5xl font-bold mb-4">Tenants</h1>
                    <p className="text-xl opacity-90">We Value Smart Tenants</p>
                </div>
            </section>

            {/* Main Content */}
            <section className="py-20">
                <div className="container mx-auto px-4 max-w-4xl">
                    <div className="bg-white p-10 rounded-2xl shadow-sm mb-12">
                        <h2 className="text-2xl font-bold mb-6 text-gray-800">Our Approach</h2>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                            At Smart Rentals Townsville we recognise that tenants are the lifeblood of our Industry. We treat our Smart Tenants with respect and work to forge long term relationships.
                        </p>
                        <Link href="/contact" className="inline-block px-6 py-3 bg-cyan-100 text-cyan-700 font-semibold rounded-lg hover:bg-cyan-200 transition-colors">
                            Find Out More
                        </Link>
                    </div>

                    <div className="bg-white p-10 rounded-2xl shadow-sm mb-12">
                        <h2 className="text-2xl font-bold mb-6 text-gray-800">Search & Apply Online</h2>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                            It’s easy to search and apply online for all Smart Rentals properties. Simply search any of the properties on this site and click on the “Apply Online” button at the bottom of the listing. From there you will be presented with our online application form.
                        </p>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                            In most cases information for the property will be already completed within the application form to save you time. Once you have completed the required info just hit the submit button and your application will be sent directly to us.
                        </p>
                        <Link href="/" className="inline-block px-6 py-3 bg-cyan-600 text-white font-semibold rounded-lg hover:bg-cyan-700 transition-colors">
                            Search Properties Now
                        </Link>
                    </div>

                    <div className="bg-white p-10 rounded-2xl shadow-sm">
                        <h2 className="text-2xl font-bold mb-6 text-gray-800">Frequently Asked Questions</h2>
                        <p className="text-gray-600 mb-6">
                            How do I organise an inspection? Can I have pets? How do I pay the rent? How do you handle maintenance requests? Find the answers to many common questions here.
                        </p>
                        <Link href="/contact" className="text-cyan-600 font-semibold hover:underline">
                            View FAQs →
                        </Link>
                    </div>
                </div>
            </section>
        </div>
    );
}

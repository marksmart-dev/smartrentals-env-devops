export default function Contact() {
    return (
        <div className="bg-gray-50 min-h-screen">
            {/* Hero */}
            <section className="bg-cyan-700 text-white py-20">
                <div className="container mx-auto px-4 text-center">
                    <h1 className="text-4xl md:text-5xl font-bold mb-4">Contact Us</h1>
                    <p className="text-xl opacity-90">Get in touch with the Smart Rentals team</p>
                </div>
            </section>

            {/* Main Content */}
            <section className="py-20">
                <div className="container mx-auto px-4 max-w-4xl">
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-10">
                        <div className="bg-white p-10 rounded-2xl shadow-sm">
                            <h2 className="text-2xl font-bold mb-6 text-gray-800">Contact Details</h2>
                            <ul className="space-y-6 text-gray-600">
                                <li className="flex items-start">
                                    <span className="mr-4 text-2xl">📍</span>
                                    <div>
                                        <h3 className="font-semibold text-gray-800">Address</h3>
                                        <p>1/123 Sturt Street<br />Townsville City QLD 4810</p>
                                    </div>
                                </li>
                                <li className="flex items-start">
                                    <span className="mr-4 text-2xl">📞</span>
                                    <div>
                                        <h3 className="font-semibold text-gray-800">Phone</h3>
                                        <a href="tel:0747242222" className="hover:text-cyan-600">07 4724 2222</a>
                                    </div>
                                </li>
                                <li className="flex items-start">
                                    <span className="mr-4 text-2xl">✉️</span>
                                    <div>
                                        <h3 className="font-semibold text-gray-800">Email</h3>
                                        <a href="mailto:info@smartrentalstsv.com.au" className="hover:text-cyan-600">info@smartrentalstsv.com.au</a>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div className="bg-white p-10 rounded-2xl shadow-sm">
                            <h2 className="text-2xl font-bold mb-6 text-gray-800">Send us a Message</h2>
                            <form className="space-y-4">
                                <div>
                                    <label htmlFor="name" className="block text-sm font-medium text-gray-700 mb-1">Name</label>
                                    <input type="text" id="name" className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-cyan-500 focus:border-transparent outline-none transition-all" placeholder="Your Name" />
                                </div>
                                <div>
                                    <label htmlFor="email" className="block text-sm font-medium text-gray-700 mb-1">Email</label>
                                    <input type="email" id="email" className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-cyan-500 focus:border-transparent outline-none transition-all" placeholder="your@email.com" />
                                </div>
                                <div>
                                    <label htmlFor="message" className="block text-sm font-medium text-gray-700 mb-1">Message</label>
                                    <textarea id="message" rows={4} className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-cyan-500 focus:border-transparent outline-none transition-all" placeholder="How can we help?"></textarea>
                                </div>
                                <button type="submit" className="w-full py-3 bg-cyan-600 text-white font-bold rounded-lg hover:bg-cyan-700 transition-colors shadow-md">
                                    Send Message
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    );
}

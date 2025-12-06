import Link from 'next/link';

const Footer = () => {
    return (
        <footer className="bg-gray-900 text-white py-12">
            <div className="container mx-auto px-4">
                <div className="grid grid-cols-1 md:grid-cols-4 gap-8">
                    <div>
                        <h3 className="text-xl font-bold mb-4 text-cyan-400">Smart Rentals</h3>
                        <p className="text-gray-400 mb-4">
                            Townsville's dedicated property management specialists. We focus 100% on managing your investment property.
                        </p>
                    </div>

                    <div>
                        <h4 className="text-lg font-semibold mb-4">Quick Links</h4>
                        <ul className="space-y-2">
                            <li><Link href="/" className="text-gray-400 hover:text-cyan-400 transition-colors">Home</Link></li>
                            <li><Link href="/owners" className="text-gray-400 hover:text-cyan-400 transition-colors">Owners</Link></li>
                            <li><Link href="/tenants" className="text-gray-400 hover:text-cyan-400 transition-colors">Tenants</Link></li>
                            <li><Link href="/who-we-are" className="text-gray-400 hover:text-cyan-400 transition-colors">Smart Info</Link></li>
                        </ul>
                    </div>

                    <div>
                        <h4 className="text-lg font-semibold mb-4">Contact Us</h4>
                        <ul className="space-y-2 text-gray-400">
                            <li className="flex items-start">
                                <span className="mr-2">📍</span>
                                <span>1/123 Sturt Street, Townsville City QLD 4810</span>
                            </li>
                            <li className="flex items-center">
                                <span className="mr-2">📞</span>
                                <a href="tel:0747242222" className="hover:text-cyan-400">07 4724 2222</a>
                            </li>
                            <li className="flex items-center">
                                <span className="mr-2">✉️</span>
                                <a href="mailto:info@smartrentalstsv.com.au" className="hover:text-cyan-400">info@smartrentalstsv.com.au</a>
                            </li>
                        </ul>
                    </div>

                    <div>
                        <h4 className="text-lg font-semibold mb-4">Follow Us</h4>
                        <div className="flex space-x-4">
                            <a href="#" className="w-10 h-10 rounded-full bg-gray-800 flex items-center justify-center hover:bg-cyan-500 transition-colors">
                                <span className="sr-only">Facebook</span>
                                FB
                            </a>
                            <a href="#" className="w-10 h-10 rounded-full bg-gray-800 flex items-center justify-center hover:bg-cyan-500 transition-colors">
                                <span className="sr-only">Instagram</span>
                                IG
                            </a>
                        </div>
                    </div>
                </div>

                <div className="border-t border-gray-800 mt-12 pt-8 text-center text-gray-500 text-sm">
                    <p>&copy; {new Date().getFullYear()} Smart Rentals Townsville. All rights reserved.</p>
                </div>
            </div>
        </footer>
    );
};

export default Footer;

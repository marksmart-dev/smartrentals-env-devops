import Link from 'next/link';
import Image from 'next/image';

const Header = () => {
  return (
    <header className="bg-white shadow-md sticky top-0 z-50">
      <div className="container mx-auto px-4 py-4 flex justify-between items-center">
        <Link href="/" className="flex items-center">
            {/* Placeholder for Logo - using text for now or a generic icon */}
            <span className="text-2xl font-bold text-cyan-600 tracking-tighter">Smart Rentals</span>
        </Link>
        
        <nav className="hidden md:flex space-x-8 items-center">
          <Link href="/" className="text-gray-700 hover:text-cyan-600 font-medium transition-colors">
            Home
          </Link>
          <Link href="/owners" className="text-gray-700 hover:text-cyan-600 font-medium transition-colors">
            Owners
          </Link>
          <Link href="/tenants" className="text-gray-700 hover:text-cyan-600 font-medium transition-colors">
            Tenants
          </Link>
          <Link href="/who-we-are" className="text-gray-700 hover:text-cyan-600 font-medium transition-colors">
            Smart Info
          </Link>
        </nav>

        <div className="flex items-center space-x-4">
            <Link href="/contact" className="hidden md:inline-block px-6 py-2 bg-cyan-500 hover:bg-cyan-600 text-white font-semibold rounded-full transition-colors shadow-lg hover:shadow-xl transform hover:-translate-y-0.5">
                Make The Switch
            </Link>
            {/* Mobile Menu Button Placeholder */}
            <button className="md:hidden text-gray-700 focus:outline-none">
                <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" />
                </svg>
            </button>
        </div>
      </div>
    </header>
  );
};

export default Header;

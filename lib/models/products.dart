import 'dart:ui';

class Product {
  dynamic image, title, description;
  dynamic price, size, id;
  dynamic color;
  Product({
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.id,
    this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Iphone 13",
    price: 65000,
    size: 15,
    description:
        "• 15 cm (6.1-inch) Super Retina XDR display.\n• Cinematic mode adds shallow depth of field and shifts focus automatically in your videos.\n• Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording.\n• 12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording.\n• A15 Bionic chip for lightning-fast performance",
    image: "assets/images/iphone13.png",
    color: Color.fromARGB(255, 46, 189, 122),
  ),
  Product(
      id: 2,
      title: "Iphone 14",
      price: 120000,
      size: 15.40,
      description:
          "• 15.40 cm (6.1-inch) Super Retina XDR display.\n• Advanced camera system for better photos in any light.\n• Cinematic mode now in 4K Dolby Vision up to 30 fps.\n• Action mode for smooth, steady, handheld videos.\n• Vital safety technology — Crash Detection calls for help when you can’t",
      image: "assets/images/iphone14.png",
      color: Color(0xFF808080)),
  Product(
    id: 3,
    title: "Motorola g42",
    price: 24999,
    size: 16.43,
    description:
        "• 4 GB RAM | 64 GB ROM; 16.43 cm (6.47 inch) Full HD+ AMOLED Display.\n• 50MP + 8MP + 2MP | 16MP Front Camera.\n• 5000 mAh Lithium polymer Battery.\n• Qualcomm Snapdragon 680 Processor.\n• Human Interface Input: Touch Screen",
    image: "assets/images/motorola2.png",
    color: Color(0xFFCCCCCC),
  ),
  Product(
    id: 4,
    title: "Samsung Galaxy S9",
    price: 80000,
    size: 20,
    description:
        "• Camera: 12 MP Rear camera with Dual Aperture lens (F1.5 & F2.4 modes), Super Slow-mo, AR Emojis, Optical Image Stabilisation, Live Focus, Background Blur Shapes with Rear LED Flash | 8 MP front camera.\n• Display: 14.73 centimeters (5.8-inch) Quad HD+ Super AMOLED Infinity display with 2960x1440 pixels and 18.5:9 aspect ratio.\n•  Battery: 3000 mAH lithium ion battery",
    image: "assets/images/Galaxys9.png",
    color: Color.fromARGB(255, 63, 151, 206),
  ),
  Product(
    id: 5,
    title: "Xiaomi Note 9 pro",
    price: 18000,
    size: 16.5,
    description:
        "• Camera: 108 MP Quad Rear camera setup with 8MP Ultra-wide, 2MP Portrait and 5MP Macro mode | 16 MP front camera.\n• Processor: Qualcomm Snapdragon 732G with Kryo 470 Octa-core; 8nm process; Up to 2.3GHz clock speed.\n• Display: 120Hz high refresh rate FHD+ (1080x2400) AMOLED Dot display; 16.9 centimeters (6.67 inch); 20:9 aspect ratio; HDR 10 support.\n• battery with Type-C connectivity",
    image: "assets/images/xiaomi.png",
    color: Color(0xFFffc764),
  ),
  Product(
    id: 6,
    title: "Iphone 12",
    price: 29499,
    size: 15.5,
    description:
        "• 6.1-inch (15.5 cm diagonal) Super Retina XDR display.\n• Ceramic Shield, tougher than any smartphone glass.\n• A14 Bionic chip, the fastest chip ever in a smartphone.\n• Advanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording.\n• Industry-leading IP68 water resistance",
    image: "assets/images/iphone11.png",
    color: Color(0xFFff7265),
  ),
  Product(
    id: 7,
    title: "Samsung S9",
    price: 39990,
    size: 16.8,
    description:
        "• Camera: 12 MP Rear camera with Dual Aperture lens (F1.5 & F2.4 modes), Super Slow-mo, AR Emojis, Optical Image Stabilisation, Live Focus, Background Blur Shapes with Rear LED Flash | 8 MP front camera.\n• Display: 14.73 centimeters (5.8-inch) Quad HD+ Super AMOLED Infinity display with 2960x1440 pixels and 18.5:9 aspect ratio.\n• Battery: 3000 mAH lithium ion battery",
    image: "assets/images/samsungs8.png",
    color: Color(0xFF0084a3),
  ),
  Product(
    id: 8,
    title: "Telephone😎",
    price: 8000,
    size: 25,
    description:
        "• ONLY Working With BSNL and MTNL Landline.\n• BSNL fiber landline connection not working.\n• Can Use As a Gift To Give Your Relatives Or Friends In Any Occasion.\n• Exhibit with your classy taste to your interior.\n• You Can Put This Beautiful Telephone In Your Home and Office For Decoration Purpose.",
    image: "assets/images/telephone.png",
    color: Color(0xFFffa4ea),
  ),
];

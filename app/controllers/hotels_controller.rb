class HotelsController < ApplicationController
  def show
    @hotel = {
        name: "Diez Hotel Categoría Colombia",
        stars: 5,
        address: "Calle 10A No. 34-11, El Poblado, 050010 Medellín, Colombia",
        tagline: "Stay in the Heart of Medellín",
        description: "Inspired by the culture of Colombia, this designer hotel has luxurious rooms, free Wi-Fi and spa facilities. In the commercial center of Medellin, only 7 blocks from the Poblado Subway.

Each floor is inspired by a different region. The rooms at the Diez Hotel are decorated with local handcrafts in combination with modern technology. All have a view of the mountain and the city.

Wellness facilities include several massage treatments, a sauna and a Turkish steam bath. Guests can also relax in the hot tub, and enjoy the views. The Diez Hotel's tour desk can arrange trips in the area. Souvenirs can be bought in the gift shop.

Dining options are available at Guaduas Bar, Boga and Diez Restaurant, that serve national and international dishes. In the commercial area on the ground floor, several other restaurants have different food choices.

José María Córdova International Airport is 16.1 km away. Free parking is available on site when arriving by car.

El Poblado is a great choice for travelers interested in nightlife, food and shopping.",
        rooms: [
            {
                name: "Basic 2 Bed",
                occupancy: 2,
                price_per_room: 88.99
            },
            {
                name: "Basic Family Room",
                occupancy: 7,
                price_per_room: 98.99
            }
        ],
        reviews: [
            {
                score: 8,
                text: "lorem"
            }
        ]
    }
  end
end

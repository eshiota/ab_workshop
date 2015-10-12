class HotelsController < ApplicationController
  def show
    @breadcrumbs = [
        "Home",
        "Netherlands",
        "Noord-holland",
        "Amsterdam hotels",
        "Amsterdam city center",
        "Grand Hotel Budapest"
    ]

    @hotel = {
        name: "Grand Hotel Budapest",
        stars: 5,
        address: "Herengracht 597, 1017 CE Amsterdam, Netherlands",
        tagline: "Stay in the Heart of Amsterdam",
        description: "Offering an outdoor pool and a restaurant, Grand Hotel Budapest is located in Amsterdam. WiFi access is available. At Hotel Tito you will find a fitness centre and free bikes. Other facilities offered at the property include entertainment staff, a nightclub and water sports facilities. An array of activities can be enjoyed on site or in the surroundings, including skiing, golfing and cycling.

The hotel is 100 metres from Royal Palace Amsterdam, 100 metres from Dam Square and 400 metres from Beurs van Berlage. Schiphol Airport is 11 km away.

Amsterdam City Center is a great choice for travelers interested in sightseeing, nightlife and food.",
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

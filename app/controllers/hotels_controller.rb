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
                author: "Eduardo Shiota",
                score: 8,
                text: "Good location
Friendly staff
Fast wifi"
            },
            {
                author: "Alejandro Fernandez Gomez",
                score: 9,
                text: "Towards two o'clock in the afternoon, while it was snowing hard, long whistles were heard approaching from the east. A great shadow, preceded by a wild light, slowly advanced, appearing still larger through the mist, which gave it a fantastic aspect. No train was expected from the east, neither had there been time for the succour asked for by telegraph to arrive; the train from Omaha to San Francisco was not due till the next day. The mystery was soon explained."
            },
            {
                author: "Alex Tudor",
                score: 7,
                text: "The locomotive, which was slowly approaching with deafening whistles, was that which, having been detached from the train, had continued its route with such terrific rapidity, carrying off the unconscious engineer and stoker. It had run several miles, when, the fire becoming low for want of fuel, the steam had slackened; and it had finally stopped an hour after, some twenty miles beyond Fort Kearney. Neither the engineer nor the stoker was dead, and, after remaining for some time in their swoon, had come to themselves. The train had then stopped. The engineer, when he found himself in the desert, and the locomotive without cars, understood what had happened. He could not imagine how the locomotive had become separated from the train; but he did not doubt that the train left behind was in distress."
            }
        ]
    }
  end
end

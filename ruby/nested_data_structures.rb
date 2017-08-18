highway = {
    lane_1: {
        current_accident: false,
        qualities: {
            material: "aspault",
            pot_holes: 7,
            needs_resurfacing: true,
        },
        vehicles: [
            {car_1: ["Sam","Jim"]
            },
            {car_2: ["Karen"]
            },
        ]
    },
    lane_2: {
        current_accident: true,
        qualities: {
            material: "concrete",
            pot_holes: 1,
            needs_resurfacing: true,
        },
        vehicles: [
            {car_1: ["Frank"]
            },
            {car_2: ["James", "Jamier", "Jamiest"]
            },
        ]
    },
    lane_3: {
        current_accident: false,
        qualities: {
            material: "concrete",
            pot_holes: 0,
            needs_resurfacing: false,
        },
        vehicles: [
            {car_1: ["Kim"]
            },
            {car_2: ["Christian", "Kathy", "JP"]
            },
            {car_3: ["Molly", "Ally", "Al"]
            },
            {car_4: ["Zephyr", "Yoni", "Xavier"]
            },
        ]
    },
    lane_4: {
        current_accident: true,
        qualities: {
            material: "concrete",
            pot_holes: 3,
            needs_resurfacing: true,
        },
        vehicles: [
            {car_1: ["Barry"]
            }
        ]
    }
}

p highway[:lane_1][:vehicles].last[:car_2].first
p highway[:lane_2][:current_accident]
p highway[:lane_3][:vehicles][1][:car_2][2]
p highway[:lane_4][:qualities][:needs_resurfacing]

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Room.destroy_all
Plant.destroy_all
RoomPlant.destroy_all


# Users
u1 = User.create(
	username: "Jens",
	password: "Hola",
	plant_care_rating: 5)


# Rooms
r1 = Room.create(
	user_id: u1.id,
	name: "Living Room",
	temp_F: 70,
	light: 5,
	humidity: 40,
	pet_access: true)

r2 = Room.create(
	user_id: u1.id,
	name: "Bed Room",
	temp_F: 80,
	light: 3,
	humidity: 50,
	pet_access: false)


# Plants
p1 = Plant.create(
	common_name: "ZZ Plant",
	scientific_name: "Zamioculcas zamiifolia",
	temp_f: 72,
	temp_tolerance: 7,
	light_pref: 4,
	light_tolerance: 3,
	humidity_pref: 40,
	difficulty: 1,
	toxic: true
)

p2 = Plant.create(
	common_name: "Chinese Money Plant",
	scientific_name: "Pilea peperomioides",
	temp_f: 70,
	temp_tolerance: 9,
	light_pref: 4,
	light_tolerance: 1,
	humidity_pref: 40,
	difficulty: 1,
	toxic: false
)

p3 = Plant.create(
	common_name: "Snake Plant",
	scientific_name: "Sansevieria trifasciata",
	temp_f: 80,
	temp_tolerance: 10,
	light_pref: 3,
	light_tolerance: 3,
	humidity_pref: 30,
	difficulty: 1,
	toxic: true
)

p4 = Plant.create(
	common_name: "Umbrella Plant",
	scientific_name: "Pilea Peperomioides",
	temp_f: 65,
	temp_tolerance: 10,
	light_pref: 4,
	light_tolerance: 1,
	humidity_pref: 40,
	difficulty: 2,
	toxic: true
)

p5 = Plant.create(
	common_name: "Money Tree",
	scientific_name: "Pachira aquatica",
	temp_f: 65,
	temp_tolerance: 10,
	light_pref: 3,
	light_tolerance: 2,
	humidity_pref: 70,
	difficulty: 2,
	toxic: true
)

p5 = Plant.create(
	common_name: "Devil’s Ivy",
	scientific_name: "Epipremnum aureum",
	temp_f: 70,
	temp_tolerance: 10,
	light_pref: 4,
	light_tolerance: 1,
	humidity_pref: 60,
	difficulty: 3,
	toxic: true
)

p6 = Plant.create(
	common_name: "Bunny Ears Cactus",
	scientific_name: "Epipremnum aureum",
	temp_f: 85,
	temp_tolerance: 15,
	light_pref: 5,
	light_tolerance: 1,
	humidity_pref: 30,
	difficulty: 3,
	toxic: false
)

p7 = Plant.create(
	common_name: "Trident Maple",
	scientific_name: "Acer buergerianum",
	temp_f: 70,
	temp_tolerance: 25,
	light_pref: 4,
	light_tolerance: 1,
	humidity_pref: 60,
	difficulty: 4,
	toxic: false
)

p7 = Plant.create(
	common_name: "Spider Plant",
	scientific_name: "Chlorophytum comosum",
	temp_f: 60,
	temp_tolerance: 7,
	light_pref: 3,
	light_tolerance: 2,
	humidity_pref: 60,
	difficulty: 1,
	toxic: false
)

p8 = Plant.create(
	common_name: "Christmas Cactus",
	scientific_name: "Chlorophytum comosum",
	temp_f: 68,
	temp_tolerance: 8,
	light_pref: 4,
	light_tolerance: 1,
	humidity_pref: 80,
	difficulty: 2,
	toxic: false
)

p9 = Plant.create(
	common_name: "Zebra Plant",
	scientific_name: "Aphelandra squarrosa",
	temp_f: 75,
	temp_tolerance: 8,
	light_pref: 4,
	light_tolerance: 1,
	humidity_pref: 70,
	difficulty: 3,
	toxic: false
)

p10 = Plant.create(
	common_name: "Bird's Nest Fern",
	scientific_name: "Asplenium nidus",
	temp_f: 75,
	temp_tolerance: 8,
	light_pref: 3,
	light_tolerance: 1,
	humidity_pref: 50,
	difficulty: 3,
	toxic: false
)

p11 = Plant.create(
	common_name: "Dragon Tree",
	scientific_name: "Dracaena draco",
	temp_f: 73,
	temp_tolerance: 8,
	light_pref: 4,
	light_tolerance: 1,
	humidity_pref: 60,
	difficulty: 2,
	toxic: true
)

p12 = Plant.create(
	common_name: "Cast Iron Plant",
	scientific_name: "Aspidistra elatior",
	temp_f: 65,
	temp_tolerance: 15,
	light_pref: 2,
	light_tolerance: 3,
	humidity_pref: 45,
	difficulty: 1,
	toxic: true
)


# Room Plants
rp1 = RoomPlant.create(
	room_id: r1.id,
	plant_id: p1.id,
	nickname: "Turtle",
	notes: "Zu Zu Plants are strong and robust in most conditions",
	watering_delay_days: 7)

rp2 = RoomPlant.create(
	room_id: r2.id,
	plant_id: p1.id,
	nickname: "Rock",
	notes: "Zu Zu Plants are strong and robust in most conditions, though a little toxic",
	watering_delay_days: 7)

rp2 = RoomPlant.create(
	room_id: r1.id,
	plant_id: p2.id,
	nickname: "Polka Dot",
	notes: "Even though this Chinese Circle Plants are part of the succulent family, do not place your Pilea in direct sunlight since it will scorch the leaves.",
	watering_delay_days: 7)

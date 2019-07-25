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
	scientific_name: "Zamioculcas Zamiifolia",
	temp_f: 72,
	temp_tolerance: 7,
	light_pref: 4,
	light_tolerance: 3,
	humidity_pref: 40,
	difficulty: 1,
	toxic: true)

p2 = Plant.create(
	common_name: "Chinese Money Plant",
	scientific_name: "Pilea Peperomioides",
	temp_f: 70,
	temp_tolerance: 9,
	light_pref: 4,
	light_tolerance: 1,
	humidity_pref: 40,
	difficulty: 1,
	toxic: false)


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



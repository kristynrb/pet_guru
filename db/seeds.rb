# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# users
User.create(email: "joeschmoe@email.com", password: "password")
User.create(email: "matt@foo.bar", password: "password")
User.create(email: "jimhalpert@email.com", password: "password")

# pets
Pet.create(name: "Jellybean", breed: "dalmation", color: "spotted, black and white", birthday: "June 5, 2015", would_say: "Hello everyone!", user_id: 1)
Pet.create(name: "Banans", breed: "poodle", color: "pink", birthday: "Dec. 6, 2010", would_say: "I'm hungry!", user_id: User.find_by(email: "joeschmoe@email.com").id)
Pet.create(name: "Coco", breed: "lab", color: "brown", birthday: "She's 8 years old", would_say: "Love me!", user_id: User.find_by(email: "joeschmoe@email.com").id)
Pet.create(name: "BobbySue", breed: "cat", color: "orange", birthday: "June 5", would_say: "Stay away from me!", user_id: User.find_by(email: "matt@foo.bar").id)
Pet.create(name: "Blue", breed: "cat", color: "white", birthday: "3-6-07", would_say: "What are you wearing", user_id: 3)
Pet.create(name: "Old Yeller", breed: "frog", color: "green", birthday: "yesterda", would_say: "I hate flies!", user_id: User.find_by(email: "jimhalpert@email.com").id)

# cares
Care.create(food_amount_dry: 2, food_frequency_dry: 3, food_amount_wet: 1, food_frequency_wet: 4, treats: "cheeeese", pet_id: 1)
Care.create(walk_frequency: 2, walk_length: 3, walks_leash: "use the harness", command_name: "Roll over", command_description: "she rolls on the ground", pet_id: Pet.find_by(name: "Blue").id)
Care.create(fears: "everything! he's a baby", additional_details: "don't let him pee in the house", pet_id: 2)
Care.create(fears: "ghosts", additional_details: "he eats house plants", pet_id: 3)
Care.create(walk_frequency: 5, walk_length: 7, walks_leash: "grab a rope", command_name: "Beg", command_description: "puts paws together", pet_id: Pet.find_by(name: "Old Yeller").id)

# plays
Play.create(toy: "ball", park: "central", games: "toss the ball", habits: "chasing squirrels", additional_details: "don't let him off the leash", pet_id: 1)
Play.create(toy: "shoe", park: "gramercy", games: "give me back my shoe", habits: "biting kids", additional_details: "don't let him near kids", pet_id: Pet.find_by(name: "Blue").id)
Play.create(toy: "rope", park: "gramercy", games: "tug of war", habits: "barking", additional_details: "bring the inhaler", pet_id: Pet.find_by(name: "Old Yeller").id)

# medicals
Medical.create(ushots_date: "June 17, 2016", ushots_name: "Flu", allergies: "to everything!", r_vet_name: "Cat Clinic", r_vet_doctor: "Dr. June", pet_id: Pet.find_by(name: "Old Yeller").id)
Medical.create(weight: 2, height: 3, gender: "Male", microchip_id: "12345", pshots_date: "June 2, 2010", pet_id: Pet.find_by(name: "Blue").id)
Medical.create(r_vet_address: "123 Hickory Lane", r_vet_address_city: "New York", r_vet_address_state: "NY", r_vet_zip: "12345", r_vet_phone: "3445-6677-55", pet_id: Pet.find_by(name: "Jellybean").id)
Medical.create(e_contact_name: "Missy", e_contact_phone: "234-566-3333", pet_id: 4)

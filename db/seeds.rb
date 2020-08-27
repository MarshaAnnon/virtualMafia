# Player.destroy_all
Round.destroy_all

# player_types = ['citizen', 'detective', 'doctor', 'mafia', 'narrator']


round1 = Round.create(village_name: "Mafia Land")
round2 = Round.create(village_name: "Cityville Town")
round3 = Round.create(village_name: "Hello World")


5.times do 
  Player.create({
    round_id: round1.id,
    username: Faker::Name.unique.name
  })
end

11.times do 
  Player.create({
    round_id: round2.id,
    username: Faker::Name.unique.name
  })
end

20.times do 
    Player.create({
      round_id: round3.id,
      username: Faker::Name.unique.name
    })
end
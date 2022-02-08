



actor1 = Actor.create({
    first_name: 'Bradley',
    last_name: 'Cooper',
})

actor2 = Actor.create({
    first_name: 'Steve',
    last_name: 'Martin',
})

network1 = Network.create({
    call_letters: "NBC",
    channel: 10
})

show1 = Show.create({
    name: "Wizards of Waverly Place",
    day: "Tues",
    season: "Season 1",
    network_id: network1.id,
    genre: "Comedy"
})

show2 = Show.create({
    name: "Curb Your Enthusiam",
    day: "Tues",
    season: "Season 2",
    network_id: network1.id,
    genre: "Comedy"
})

character = Character.create({
    name: "Larry",
    actor_id: actor1.id,
    show_id: show2.id,
    catchphrase: "HAH!"
})

character2 = Character.create({
    name: "Alex Russo",
    actor_id: actor2.id,
    show_id: show1.id,
    catchphrase: "*Shrug*"
})
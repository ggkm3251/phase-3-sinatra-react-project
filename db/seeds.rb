puts "🌱 Seeding spices..."

# Seed your database here
Developer.create(developer_name: 'Glenn')
Entry.create([
    {
        API: "AdoptAPet",
        Description: "Resource to help get pets adopted",
        Link: "https://www.adoptapet.com/public/apis/pet_list.html",
        Category: "Animals",
        developer_id: 1
    },
    {
        API: "Cat Facts",
        Description: "Daily cat facts",
        Link: "https://alexwohlbruck.github.io/cat-facts/",
        Category: "Animals",
        developer_id: 2
    },
    {
        API: "Cats",
        Description: "Pictures of cats from Tumblr",
        Link: "https://docs.thecatapi.com/",
        Category: "Animals",
        developer_id: 3
    },
    {
        API: "FishWatch",
        Description: "Information and pictures about individual fish species",
        Link: "https://www.fishwatch.gov/developers",
        Category: "Animals",
        developer_id: 4
    },
    {
        API: "Zoo Animals",
        Description: "Facts and pictures of zoo animals",
        Link: "https://zoo-animal-api.herokuapp.com/",
        Category: "Animals",
        developer_id: 5
    }
])

puts "✅ Done seeding!"

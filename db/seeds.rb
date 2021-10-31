# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db=>seed command (or created alongside the database with db=>setup).
#
# Examples=>
#
#   movies = Movie.create([{ name=> 'Star Wars' }, { name=> 'Lord of the Rings' #   }])
#   Character.create(name=> 'Luke', movie=> movies.first)

[
    {
        "alt_icon"=> "running.jpg",
        "category"=> "Cardio",
        "fa_icon"=> "fa-running",
        "id"=> "1",
        "intensity"=> "4",
        "name"=> "Running",
       
    },
    {
        "alt_icon"=> "walking.jpg",
        "category"=> "Cardio",
        "fa_icon"=> "fa-walking",
        "id"=> "2",
        "intensity"=> "1",
        "name"=> "Walking",
        
    },
    {
        "alt_icon"=> "cycling.jpg",
        "category"=> "Cardio",
        "fa_icon"=> "fa-bicycle",
        "id"=> "3",
        "intensity"=> "3",
        "name"=> "Cycling",
        
    },
    {
        "alt_icon"=> "swimming.jpg",
        "category"=> "Cardio",
        "fa_icon"=> "fa-swimming-pool",
        "id"=> "4",
        "intensity"=> "5",
        "name"=> "Swimming",
        
    },
    {
        "alt_icon"=> "dumbbell.jpg",
        "category"=> "Strength",
        "fa_icon"=> "fa-dumbbell",
        "id"=> "5",
        "intensity"=> "4",
        "name"=> "Strength Training",
        
    },
    {
        "alt_icon"=> "hicking.jpg",
        "category"=> "Endurance",
        "fa_icon"=> "fa-hiking",
        "id"=> "6",
        "intensity"=> "4",
        "name"=> "Hicking",
        
    },
    {
        "alt_icon"=> "skiing-nordic.jpg",
        "category"=> "Endurance",
         "fa_icon"=> "fa-skiing-nordic",
        "id"=> "7",
        "intensity"=> "4",
        "name"=> "Nordic Skiing",
        
    },
    {
        "alt_icon"=> "skiing.jpg",
        "category"=> "Dexterity",
         "fa_icon"=> "fa-skiing",
        "id"=> "8",
        "intensity"=> "3",
        "name"=> "Skiing",
        
    },
    {
        "alt_icon"=> "skating.jpg",
        "category"=> "Dexterity",
         "fa_icon"=> "fa-skating",
        "id"=> "9",
        "intensity"=> "2",
        "name"=> "Skating",
        
    },
    {
        "alt_icon"=> "snowboarding.jpg",
        "category"=> "Dexterity",
        "fa_icon"=> "fa-snowboarding",
        "id"=> "10",
        "intensity"=> "4",
        "name"=> "Snowboarding",
        
    },
    {
        "alt_icon"=> "hockey.jpg",
        "category"=> "Endurance",
        "fa_icon"=> "fa-hockey-puck",
        "id"=> "11",
        "intensity"=> "5",
        "name"=> "Hockey",
        
    },
    {
        "alt_icon"=> "table-tennis",
        "category"=> "Cardio",
        "fa_icon"=> "fa-table-tennis",
        "id"=> "12",
        "intensity"=> "5",
        "name"=> "Table Tennis",
       
    }
].each do |activity_type|
	ActivityType.create(activity_type)
end

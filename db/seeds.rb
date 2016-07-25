Practice.delete_all
Resource.delete_all
User.delete_all


#-------------------------------------------------------------------------------------------------------------------------------
# PRACTICES
#-------------------------------------------------------------------------------------------------------------------------------

practices = []

practices << Practice.create(category:"Chant", name:"Om", description:"A word representing the encapsulating consciousness. It can also be translated as 'Amen' or 'Amin.'" , method:"Spoken/Sung")

practices << Practice.create(category:"Chant" , name:"Shema Yisrael! Yhwh Eloheinu, Yhwh Echad", description:"A version of Deuteronomy 6:4, 'Hear Israel I AM is God, I AM is One.'" , method:"Spoken/Sung" )

practices << Practice.create(category:"Chant" , name:"La Illaha Illallah", description:"From the Qur'an, 'There is no deity but God'" , method:"Spoken/Sung" )

practices << Practice.create(category:"Chant" , name:"Om Namah Shivaya", description:"A Vedic/Tantric/Himalayan Chant known as 'Five-Syllable Mantra', 'I bow to the Divine/Absolute Consciousness'", method:"Spoken/Sung")

practices << Practice.create(category:"Chant" , name:"Om Mani Padme Hum", description:"Chant to Avalokitesavara a.k.a Chenrezig, Bodhisattva of Compassion, 'All hail the Jewel hidden in the Lotus'", method:"Spoken/Sung" )

practices << Practice.create(category:"Chant" , name:"Sanctus, Sanctus, Sanctus, Dominus Deus Sabaoth", description:"From the Ordinary of the Mass, 'Holy, Holy, Holy, Lord God of Hosts'", method:"Spoken/Sung" )

practices << Practice.create(category:"Chant" , name:"Gate, Gate, Para Gate, Parasamgate, Bodhi Svaha", description:"From Pradna Paramith, Heart Sutra, 'Gone! Gone! Beyond Gone,Far Beyond Gone Awakening- So Be It'", method:"Spoken/Sung" )

practices << Practice.create(category:"Seated Meditation", name:"Stillness/Source" , description:"Find the source of the root thought 'I' and leave the mind there.", method:"Silent")

practices << Practice.create(category:"Seated Meditation", name:"Breath Control", description:"The breath is regulated by dividing one breath into 4 parts. Inhale- 5 seconds.Hold-In 5 seconds.Exhale - 5 seconds. Hold-out - 5 seconds.Do not force this practice. It should feel comfortable. Each step should span the 5 duration.", method:"Silent")

practices << Practice.create(category:"Seated Meditation", name:"Devotional Visualization", description:"Picture your ideal divine form internally, or stare at a physical representation. Each time the mind wanders, refocus it on your favorite part of that form.", method:"Silent")

practices << Practice.create(category:"Seated Meditation", name:"Abstract Visualization", description:"Focus the eyes on the space between the eyebrows. Imagine a light there. Each time the mind wanders return your focus to the light.", method:"Silent")

practices << Practice.create(category:"Seated Meditation", name:"Abstract Visualization 2", description:"Focus on the heart. Imagine a light there. Relax your gaze or have eyes closed. Each time the mind wanders return your focus to the light.", method:"Silent")

practices << Practice.create(category:"Seated Meditation", name:"Silent Chanting" , description:"Choose a chant to repeat internally.", method:"Silent")

practices << Practice.create(category:"Seated Meditation", name:"Guided Audio", description:"Follow the steps of the guided audio as provided." , method:"Audio" )

practices << Practice.create(category:"Body", name:"Yoga Asana", description:"A set of postures meant to clean and prepare the body for seated meditation. Refer to resources to perform this practice.", method:"Studio" )

practices << Practice.create(category:"Body", name:"Yoga Asana", description:"A set of postures meant to clean and prepare the body for seated meditation. Refer to resources to perform this practice.", method:"Self Study" )

practices << Practice.create(category:"Body", name:"QiGong", description:"A set of repetitive exercises that build and balance energy. Refer to resources to perform this practice.", method:"Studio" )

practices << Practice.create(category:"Body", name:"QiGong", description:"A set of repetitive exercises that build and balance energy. Refer to resources to perform this practice.", method:"Self Study" )

practices << Practice.create(category:"Body", name:"Traditional Aerobic Exercise", description:"Exercises such as running, walking, swimming, etc. during which you can focus on your breath. Refer to resources to perform this practice.", method:"Exercise")

practices << Practice.create(category:"Service", name:"Food", description:"If you can’t feed a hundred people, then feed just one. -Mother Teresa", method:"Task")

practices << Practice.create(category:"Service", name:"Companionship", description:"The sage has no concern for himself, but makes the concerns of others his own. -Tao Te Ching", method:"Task")

practices << Practice.create(category:"Service", name:"Assistance", description:"When I was young, I admired clever people. Now that I am old, I admire kind people. -Abraham Joshua Heschel", method:"Task")

practices << Practice.create(category:"Service", name:"Environmental Care", description:"Look deep into nature, and then you will understand everything better. —Albert Einstein", method:"Task")

practices << Practice.create(category:"Service", name:"Animals", description:"The good man is the friend of all living things. — Mahatma Gandhi", method:"Task")



#-------------------------------------------------------------------------------------------------------------------------------
# RESOURCES
#-------------------------------------------------------------------------------------------------------------------------------

resources = []

      # LINKS

resources << Resource.create(name:"Sky Ting Yoga", category:"Body", url:"http://www.skytingyoga.com/", type:"Link",  description:"Sky Ting Yoga Studio", practice_id: 15)

resources << Resource.create(name:"Bhakti Center", category:"Body", url:"http://bhakticenter.org/", type:"Link", description:"Bhakti Center", practice_id: 15)

resources << Resource.create(name:"Dharma Yoga Center", category:"Body", url:"http://www.dharmayogacenter.com/#6/40.747/-74.015", type:"Link", description:"Dharma Yoga Center", practice_id: 15)

resources << Resource.create(name:"The Shala", category:"Body", url:"http://theshala.com/", type:"Link", description:"The Shala Yoga House", practice_id: 15)

resources << Resource.create(name:"Tao of Healing", category:"Body", url:"http://taoofhealing.com/", type:"Link", description:"Tao of Healing", practice_id: 17)

resources << Resource.create(name:"Center for Taiji Studies", category:"Body", url:"http://www.centerfortaiji.com/", type:"Link", description:"Center for Taiji Studies", practice_id: 17)

resources << Resource.create(name:"Tai Chi", category:"Body", url:"http://www.nytaichi.com/hwon.htm", type:"Link", description:"Classical Yang Family Tai Chi Chuan", practice_id: 17)

resources << Resource.create(name:"Wu Tang", category:"Body", url:"http://www.qigongnyc.com/", type:"Link", description:"Wu Tang Physical Culture Association", practice_id: 17)

resources << Resource.create(name:"Food", category:"Service", url:"http://www.coalitionforthehomeless.org/", type:"Link", description:"Coalition for the Homeless", practice_id: 20)

resources << Resource.create(name:"Food", category:"Service", url:"https://www.bowery.org/", type:"Link", description:"The Bowery Mission", practice_id: 20)

resources << Resource.create(name:"Companionship", category:"Service" , url:"https://www.newyorkcares.org/program-areas/seniors", type:"Link", description:"Elder Companionship through New York Care", practice_id: 21)

resources << Resource.create(name:"Companionship", category:"Service" , url:"http://www.hpcanys.org/community-resources/volunteer-opportunities/", type:"Link", description:"New York State Hospice opportunities to support the dying and their families", practice_id: 21)

resources << Resource.create(name:"Assistance", category:"Service" , url:"http://www.nychealthandhospitals.org/hhc/html/contact/Volunteering.shtml#1", type:"Link", description:"A variety of opportunities can be found at NYC Hospitals to assist those in need", practice_id: 22)

resources << Resource.create(name:"Assistance" , category:"Service" , url:"https://www.newyorkcares.org/program-areas/special-needs" , type:"Link", description:"New York Cares programs for assisting people with special needs", practice_id: 22)

resources << Resource.create(name:"Environmental Care", category:"Service" , url:"http://www.lesecologycenter.org/about/jobs-internships/" , type:"Link", description:"Lower East Side Ecology Center", practice_id: 23)

resources << Resource.create(name:"Environmental Care", category:"Service" , url:"http://portsidenewyork.org/volunteer/", type:"Link", description:"PortSide New York to support better urban waterways", practice_id: 23)

resources << Resource.create(name:"Animals", category:"Service" , url:"http://www.nycacc.org/Volunteer.htm", type:"Link", description:"Animal Care Centers of NYC always need help as they are legally bound to accept any animal surrendered to them", practice_id: 24)

resources << Resource.create(name:"Animals", category:"Service" , url:"http://www.barcshelter.org/", type:"Link", description:"Brooklyn Animal Resource Coalition in Williamsburg lets you drop in and walk a pup", practice_id: 24)

      # READINGS

resources << Resource.create(name:"Bhagavad Gita", category:"Readings" , url:"https://s3.amazonaws.com/the-still-life/Readings/Bhagavad-Gita.pdf", type:"Reading", description:"Hindu Scripture", practice_id: 7)

      # AUDIOS
resources << Resource.create(name:"Shema Yisrael", category:"Recordings" , url:"https://s3.amazonaws.com/the-still-life/Audio/Shema+Yisrael.mp3", type:"Audio", description:"Traditional Jewish Chant", practice_id: 2)

resources << Resource.create(name:"Sanctus", category:"Recordings" , url:"https://s3.amazonaws.com/the-still-life/Audio/Sanctus.mp3", type:"Audio", description:"Traditional Christian Chant", practice_id: 6)

resources << Resource.create(name:"Om Namah Shivaya", category:"Recordings" , url:"https://s3.amazonaws.com/the-still-life/Audio/OmNamahShivaya.mp3", type:"Audio", description:"Traditional Hindu Chant", practice_id: 4)

resources << Resource.create(name:"Om Mani Padme Hum", category:"Recordings" , url:"https://s3.amazonaws.com/the-still-life/Audio/OmManiPadmeHum.mp3", type:"Audio", description:"Traditional Buddhist Chant", practice_id: 5)

resources << Resource.create(name:"La Illaha Illallah", category:"Recordings" , url:"https://s3.amazonaws.com/the-still-life/Audio/La+Illaha+Ilallah.mp3", type:"Audio", description:"Traditional Islamic Chant", practice_id: 3)

resources << Resource.create(name:"Gate Gate Paragate", category:"Recordings" , url:"https://s3.amazonaws.com/the-still-life/Audio/Gate+Gate+Paragate.mp3", type:"Audio", description:"Non-traditional Chant", practice_id: 7)

resources << Resource.create(name:"Om", category:"Recordings" , url:"https://s3.amazonaws.com/the-still-life/Audio/Om.mp3", type:"Audio", description:"Classical Chant", practice_id: 1)



#-------------------------------------------------------------------------------------------------------------------------------
# USERS
#-------------------------------------------------------------------------------------------------------------------------------

users = []

users << User.create!({
                         first_name: "Seth",
                         last_name: "Goldman",
                         username: "sethdaniel89",
                         email: "seth.daniel.goldman@gmail.com",
                         password: "workinghard",
                         about_me: "In a world, one man must stand to defeat evil, but not through the typical feats of strength. The path to meditation is the strongest route to overcoming the demons that haunt so many.",
                         gender: "male",
                         age: 27,
                         admin: true,
                         activated: true,
                         activated_at: Time.zone.now,
                         practice: Practice.first
                         })

users << User.create!({
                        first_name: "Jonathan",
                        last_name: "Philippou",
                        username: "jonathan",
                        email: "jonathan@gmail.com",
                        password: "jonathan",
                        about_me: "Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon Jon",
                        gender: "boy",
                        age: 10,
                        admin: true,
                        activated: true,
                        activated_at: Time.zone.now,
                        practice: Practice.first
                        })

100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  users << User.create!({
                         first_name: first_name,
                         last_name: last_name,
                         username: Faker::Internet.user_name("#{first_name} #{last_name[0..2]}", %w(. _ -)),
                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                         password: Faker::Internet.password(8, 15),
                         about_me: Faker::Hipster.paragraph,
                         gender: ["male", "female"].sample,
                         age: rand(15..120),
                         activated: true,
                         activated_at: Time.zone.now
                         })
end

#-------------------------------------------------------------------------------------------------------------------------------
# REGIMENS
#-------------------------------------------------------------------------------------------------------------------------------

regimens = []
# 90.times do
# regimens << Regime.create!({
#                         duration: 5,
#                         completion: true,
#                         practice: Practice.first,
#                         user: User.first
#                         })
# end

# 1000.times do
#       praactice = practice.sample
# regimens << Regime.create!({
#                         duration: 5,
#                         description: "My daily regimen",
#                         completion: true,
#                         practice: practices.sample,
#                         user: users.sample

#       })























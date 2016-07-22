
Practice.create(category:"Chant", name:"Om", description:"A word representing the encapsulating consciousness. It can also be translated as 'Amen' or 'Amin.'" , method:"Spoken/Sung")

Practice.create(category:"Chant" , name:"Shema Yisrael! Yhwh Eloheinu, Yhwh Echad", description:"A version of Deuteronomy 6:4, 'Hear Israel I AM is God, I AM is One.'" , method:"Spoken/Sung" )

Practice.create(category:"Chant" , name:"La Illaha Illallah", description:"From the Qur'an, 'There is no deity but God'" , method:"Spoken/Sung" )

Practice.create(category:"Chant" , name:"Om Namah Shiv'aya", description:"A Vedic/Tantric/Himalayan Chant known as 'Five-Syllable Mantra', 'I bow to the Divine/Absolute Consciousness'", method:"Spoken/Sung")

Practice.create(category:"Chant" , name:"Om Mani Padme Hum", description:"Chant to Avalokitesavara a.k.a Chenrezig, Bodhisattva of Compassion, 'All hail the Jewel hidden in the Lotus'", method:"Spoken/Sung" )

Practice.create(category:"Chant" , name:"Sanctus, Sanctus, Sanctus, Dominus Deus Sabaoth", description:"From the Ordinary of the Mass, 'Holy, Holy, Holy, Lord God of Hosts'", method:"Spoken/Sung" )

Practice.create(category:"Chant" , name:"Gate, Gate, Para Gate, Parasamgate, Bodhi Svaha", description:"From Pradna Paramith, Heart Sutra, 'Gone! Gone! Beyond Gone,Far Beyond Gone Awakening- So Be It'", method:"Spoken/Sung" )

Practice.create(category:"Seated Meditation", name:"Stillness/Source" , description:"Find the source of the root thought 'I' and leave the mind there.", method:"Silent")

Practice.create(category:"Seated Meditation", name:"Breath Control", description:"The breath is regulated by dividing one breath into 4 parts. Inhale- 5 seconds.Hold-In 5 seconds.Exhale - 5 seconds. Hold-out - 5 seconds.Do not force this practice. It should feel comfortable. Each step should span the 5 duration.", method:"Silent")

Practice.create(category:"Seated Meditation", name:"Devotional Visualization", description:"Picture your ideal divine form internally, or stare at a physical representation. Each time the mind wanders, refocus it on your favorite part of that form.", method:"Silent")

Practice.create(category:"Seated Meditation", name:"Abstract Visualization", description:"Focus the eyes on the space between the eyebrows. Imagine a light there. Each time the mind wanders return your focus to the light.", method:"Silent")

Practice.create(category:"Seated Meditation", name:"Abstract Visualization 2", description:"Focus on the heart. Imagine a light there. Relax your gaze or have eyes closed. Each time the mind wanders return your focus to the light.", method:"Silent")

Practice.create(category:"Seated Meditation", name:"Silent Chanting" , description:"Choose a chant to repeat internally.", method:"Silent")

Practice.create(category:"Seated Meditation", name:"Guided Audio", description:"Follow the steps of the guided audio as provided." , method:"Audio" )

Practice.create(category:"Body", name:"Yoga Asana", description:"A set of postures meant to clean and prepare the body for seated meditation. Refer to resources to perform this practice.", method:"studio" )

Practice.create(category:"Body", name:"Yoga Asana", description:"A set of postures meant to clean and prepare the body for seated meditation. Refer to resources to perform this practice.", method:"self_study" )

Practice.create(category:"Body", name:"QiGong", description:"A set of repetitive exercises that build and balance energy. Refer to resources to perform this practice.", method:"studio" )

Practice.create(category:"Body", name:"QiGong", description:"A set of repetitive exercises that build and balance energy. Refer to resources to perform this practice.", method:"self_study" )

Practice.create(category:"Body", name:"Traditional Aerobic Exercise", description:"Exercises such as running, walking, swimming, etc. during which you can focus on your breath. Refer to resources to perform this practice.", method:"exercise")

Practice.create(category:"Service", name:"Food", description:"Golden Rule", method:"Task")

Practice.create(category:"Service", name:"Companionship", description:"Golden Rule", method:"Task")

Practice.create(category:"Service", name:"Assistance", description:"Golden Rule", method:"Task")

Practice.create(category:"Service", name:"Environmental Care", description:"Golden Rule", method:"Task")

User.delete_all

users = []
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
                         })
end


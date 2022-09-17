# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.destroy_all

NEXTDOOR = 'nextdoor'
Twitter = 'twitter'

Message.create(body: 'Does anyone know what kind of spider this is? I went to Helen Casey Memorial butterfly garden in Sterling Virginia today.', provider: NEXTDOOR, city: 'Sterling', state: 'VA', zipcode: '20163')
Message.create(body: 'Hello, I am a mobile (in-home) tutor for children ages Prek-2nd grades! Please give me a shout out if you are interested or know someone who is! Please visit my website at clayjarlearning.com', provider: NEXTDOOR, city: 'Lenah Ridge Pl', state: 'VA', zipcode: '20105')
Message.create(body: 'Who would have ever thought that an old Data Center may turn out to be a future farm?  Looks like the first conversion is going to be in Herndon.  I sincerely hope they are successful!', provider: NEXTDOOR, city: 'Gainesville', state: 'VA', zipcode: '20155')
Message.create(body: 'There was a recent post of some young men starting a moving business, helping pack and load furnishings. I can’t seem to find it now. Does anyone have their contact info?', provider: NEXTDOOR, city: 'Haymarket', state: 'VA', zipcode: '20168')
Message.create(body: 'I offer mobile mechanic services. I have 24 years experience as an automotive technician. Contact me if you want to save a bunch of money on your next brake job or repair. I travel to you. 757-800-9202', provider: NEXTDOOR, city: 'Ashburn', state: 'VA', zipcode: '20147')
Message.create(body: 'Hello neighbors! My daughter is currently in her sophomore year of highschool and is a hard working A student. She’s looking for kids to tutor! She loves working with kids and the teaching atmosphere so she thinks this is a great start. She has some working experience in the teaching field and is taking classes related to working with kids like early childhood development. She gets along really easily and is fun to work with! She is available to work 2 days per week from any range of 45-60 minutes! If your interested please feel free to shoot me a message!', provider: NEXTDOOR, city: 'Chantilly', state: 'VA', zipcode: '20120')
Message.create(body: "Heres some advice when getting any work done to your roof. I'm in the process of getting quotes on getting my roof replaced. My contractor and ins adjuster inspected my roof and could see where someone, obviously the previous co that gave me a quote, actually ripped shingles off my roof to make it look like more damage than actually is. I never knew this was a thing. First can you not trust ANYONE anymore, I mean really? So if you have someone checking your roof, at least stand in your yard and watch them. Unbelievable!", provider: NEXTDOOR, city: 'Ashburn', state: 'VA', zipcode: '20147')
Message.create(body: 'Hello! My name is Isabel Losinski, and I am currently a student at NOVA community college. I just wanted to offer any dog sitting needs! I am a dog lover, as I have 4 dogs of my own and I have plenty of experience, starting in 2015. Let me know if you are in need. I live in the Purcellville area. My number is 703-965-9562.', provider: NEXTDOOR, city: 'Purcellville', state: 'VA', zipcode: '20132')
Message.create(body: '$250 Futon and sofa chair', provider: NEXTDOOR, city: 'Stone Ridge, Stone Ridge', state: 'VA', zipcode: '20166')
Message.create(body: "It seems like a new scam is out.  We received a letter from.Ashley furniture telling us we have a a unpaid balance and we have to respond within 5days or we will be put through collection..
And we can call or text the numbers provided in the letter.  When does company ask u to text.  
But long story short. We looked up the email domain and it's in Russian...
Fyu.  We don't finance anything with Ashley ever.", city: 'Stone Ridge, Stone Ridge', state: 'VA', zipcode: '20166')

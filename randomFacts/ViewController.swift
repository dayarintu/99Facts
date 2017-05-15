//
//  ViewController.swift
//  randomFacts
//
//  Created by Dayakar Reddy Marri on 4/20/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var funFactButn: UIButton!
    
    
    let colorProvider = bgColorProvider()

    var facts = ["There are 60,000 miles of blood vessels in the human body 😱 " ,
                 "Greatest person in the world is Me 😊 ",
                 "The average four year-old child asks over four hundred questions a day. 🤔 " ,
                 "Humans shed 40 pounds of skin in their lifetime, completely replacing their outer skin every month." ,
                 "The average adult human has two to nine pounds of bacteria in his or her body." ,
                 "More germs are transferred shaking hands than kissing 😘 " ,
                 "A Human Being will have 50,000 to 70,000 thoughts per day 😱 " ,
                 "Smiling and Laughing Reduce Stress 😀 😂 " ,
                 "There are more than 100 benefits of meditating everyday 🙏🙏🙏🤔",
                 "Banging your head against a wall burns 150 calories an hour🤔",
                 "In the UK, it is illegal to eat mince pies on Christmas Day!🤔",
                 "Pteronophobia is the fear of being tickled by feathers!🤔",
                 
                 "When hippos are upset, their sweat turns red.🤔",
                 
                 "A flock of crows is known as a murder.🤔",
                 
                 "Facebook Addiction Disorder is a mental disorder identified by Psychologists.🤔",
                 
                 "The average woman uses her height in lipstick every 5 years.🤔",
                 
                 "29th May is officially “Put a Pillow on Your Fridge Day“.🤔",
                 
                 "Cherophobia is the fear of fun.🤔",
                 "Human saliva has a boiling point three times that of regular water.🤔",
                 "If you lift a kangaroo’s tail off the ground it can’t hop.🤔",
                 "Bananas are curved because they grow towards the sun.🤔",
                 "Billy goats urinate on their own heads to smell more attractive to females.🤔",
                 "The person who invented the Frisbee was cremated and made into frisbees after he died!🤔",
                 "During your lifetime, you will produce enough saliva to fill two swimming pools.🤔",
                 "If Pinokio says “My Nose Will Grow Now”, it would cause a paradox.🤔",
                 "Polar bears can eat as many as 86 penguins in a single sitting. (If they lived in the same place)🤔",
                 "King Henry VIII slept with a gigantic axe beside him.🤔",
                 "Movie trailers were originally shown after the movie, which is why they were called “trailers”.🤔",
                 "An eagle can kill a young deer and fly away with it.🤔",
                 "Heart attacks are more likely to happen on a Monday.🤔",
                 "If you consistently fart for 6 years & 9 months, enough gas is produced to create the energy of an atomic bomb!🤔",
                 "in 2015, more people were killed from injuries caused by taking a selfie than by shark attacks.🤔",
                 "The top six foods that make your fart are beans, corn, bell peppers, cauliflower, cabbage and milk!🤔",
                 "There is a species of spider called the Hobo Spider.🤔",
                 "A lion’s roar can be heard from 5 miles away!🤔",
                 "A toaster uses almost half as much energy as a full-sized oven.🤔",
                 "A baby spider is called a spiderling.🤔",
                 "You cannot snore and dream at the same time.🤔",
                 "The following can be read forward and backwards: Do geese see God? 😳",
                 "A baby octopus is about the size of a flea when it is born.🤔",
                 "A sheep, a duck and a rooster were the first passengers in a hot air balloon.🤔",
                 "In Uganda, 50% of the population is under 15 years of age.🤔",
                 "Hitler’s mother considered abortion but the doctor persuaded her to keep the baby.🤔",
                 "Arab women can initiate a divorce if their husbands don’t pour coffee for them.🤔",
                 "Recycling one glass jar saves enough energy to watch TV for 3 hours.🤔",
                 "Smearing a small amount of dog feces on an insect bite will relieve the itching and swelling.🤔",
                 "Catfish are the only animals that naturally have an odd number of whiskers.🤔",
                 "Facebook, Skype and Twitter are all banned in China.🤔",
                 "95% of people text things they could never say in person.🤔",
                 "The Titanic was the first ship to use the SOS signal.🤔",
                 "About 8,000 Americans are injured by musical instruments each year.🤔",
                 "The French language has seventeen different words for ‘surrender’.🤔",
                 "Nearly three percent of the ice in Antarctic glaciers is penguin urine.🤔",
                 "Bob Dylan’s real name is Robert Zimmerman.",
                 "A crocodile can’t poke its tongue out🤔",
                 "Sea otters hold hands when they sleep so they don’t drift away from each other. 🤔",
                 
                 "A small child could swim through the veins of a blue whale. 🤔",
                 
                 "The human brain can read up to 1,000 words per minute. 🤔",
                 "A full head of human hair is strong enough to support 12 tonnes  🤔" ,
                 " In 30 minutes, the human body gives off enough heat to bring a gallon of water to the boil  🤔" ,
                 
                 "We have the same amount of hairs on our body as a chimpanzee. Most are useless and so fine that they are invisible 🤔",
                 
                 "The atoms that make up your human body today are same atoms that formed during the Big Bang 13.7 billion years ago 🤔" ,
                 
                 "Human bone is as strong as granite. A block of bone the size of a matchbox could support nine tonnes of weight 🤔" ,
                 
                 "Humans share 50% of their DNA with bananas 🤔" ,
                 
                 "On average, a person says 4,800 words in 24 hours 🤔" ,
                 
                 "By the age of 60 most people lose half of their taste buds 🤔" ,
                 
                 "During a person’s lifetime, they spend about 2 weeks kissing 🤔" ,
                 
                 "100,000 chemical reactions occur in the human brain every second 🤔",
                 "50,000 cells in your body died and were replaced by new ones while you were reading this sentence 🤔" ,
                 "Nerve impulses sent from the brain move at a speed of 274 km/h. 🤔",
                 "Your skull is made up of 29 different bones 🤔",
                 "An adult dog has 42 teeth 🤔",
                 "A dog’s sense of smell is more than 1 million times stronger than that of a person 🤔",
                 "The average body temperature for a dog is 101.2”",
                 "People have been keeping dogs for pets for 12,000 years. 🤔",
                 "The youngest girl to ever be divorced was 10 years old 🤔",
                 "There are more living organisms in a teaspoonful of soil than there are people on earth 🤔",
                 "Our galaxy probably contains at least 2 billion planets like Earth. 🤔",
                 "The earth's deepest known point equals to 24.5 Empire State Buildings end to end. 🤔",
                 "The highest place on Earth, and closest to space, is Mount Chimborazo in the Andes. 🤔",
                 "Krubera Cave, the deepest known cave on Earth, has depth of 2,197 m (7,208 ft) 🤔",
                 "20% of the Earth's oxygen is produced by the Amazon rainforest. 🤔",
                 "1.3 million Earths could fit into the Sun. 🤔",
                 "There are approximately 3.04 trillion trees on earth. 🤔",
                 "Eating oatmeal boosts seratonin, which calms your brain and improves your mood 🤔",
                 "Farting helps reduce high blood pressure and is good for your health. 🤔",
                 "1 Can of Soda a day increases your chances of getting type 2 diabetes by 22%. 🤔",
                 "Exercise, like walking, can reduce Cancer'>breast cancer risk by 25%. 🤔",
                 "The U.S. spends more money per person on healthcare than any other developed country 🤔",
                 "People who read books live an average of almost 2 years longer than those who do not read at all, a Yale research found. 🤔",
                 "Drinking clean water and breathing fresh air treats more than 50% of diseases 🤔",
                 "You Make Most of Your Decisions Unconsciously 🤔",
                 "90% of people text things they can't say in person 🤔",
                 "People who understand SARCASM well are good at reading people's mind 🤔",
                 "Psychology says that people who are lying to you tend to LOOK-UP and to their LEFT 🤔" ,
                 "Women speak about 20,000 words a day. Thats 30,000 more than the average man 🤔" ,
                 "In Russia there are 9 million more women than men 🤔" ,
                 "Women spend nearly one year of their lives deciding what to wear 🤔",
                 "Men lie 6 times a day , twice as often as women 🤔"
    ]
    
    
        func randomFacts(facts: [String]) -> String {
        let num = arc4random_uniform(UInt32(facts.count))
        
        
        return facts[Int(num)]
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.buttonOutlet.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func factButton(_ sender: Any) {
        playSound()
        
        textView.text =  randomFacts(facts: facts)
    
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButn.tintColor = randomColor
        }
}







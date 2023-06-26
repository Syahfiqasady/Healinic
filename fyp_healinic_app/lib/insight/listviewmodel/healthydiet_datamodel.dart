import 'package:flutter/material.dart';

class HealthyDietData {
  HealthyDietData({
    this.name = "",
    this.t1 = "",
    this.t2 = "",
    this.t3 = "",
    this.t4 = "",
    this.t5 = "",
    this.t6 = "",
    this.image = "",
    this.desc1 = "",
    this.desc2 = "",
    this.desc3 = "",
    this.desc4 = "",
    this.desc5 = "",
    this.desc6 = "",
  });

  String name;
  String t1;
  String t2;
  String t3;
  String t4;
  String t5;
  String t6;
  String image;
  String desc1;
  String desc2;
  String desc3;
  String desc4;
  String desc5;
  String desc6;

  static List<HealthyDietData> healthydietList = <HealthyDietData>[
    HealthyDietData(
      name: "Eating Well for Mental Health",
      image: "assets/Image/h1.jpg",
      t1: "",
      desc1:
          "One of the biggest health impairments is society’s reliance on processed foods. These foods are high in flours and sugar and train the brain to crave more of them, rather than nutrient-rich foods such as fruits and vegetables."
          "\nA lot of the processed foods we eat are highly addictive and stimulate the dopamine centers in our brain, which are associated with pleasure and reward. In order to stop craving unhealthy foods, you’ve got to stop eating those foods."
          "You actually start to change the physiology in the brain when you pull added sugars and refined carbohydrates from your diet.",
      t2: "Stress and Depression",
      desc2:
          "Sugar and processed foods can lead to inflammation throughout the body and brain, which may contribute to mood disorders, including anxiety and depression. When we’re feeling stressed or depressed, it’s often processed foods we reach for in search of a quick pick-me-up."
          "\n During busy or difficult periods, a cup of coffee stands in for a complete breakfast and fresh fruits and vegetables are replaced with high-fat, high-calorie fast food. When feeling down, a pint of ice cream becomes dinner (or you skip dinner altogether)."
          "\nAccording to the American Dietetic Association, people tend to either eat too much or too little when depressed or under stress. Eat too much and you find yourself dealing with sluggishness and weight gain."
          "Eat too little and the resulting exhaustion makes this a hard habit to break. In either case, poor diet during periods of stress and depression only makes matters worse. This cycle is a vicious one, but it can be overcome."
          "\nTo boost your mental health, focus on eating plenty of fruits and vegetables along with foods rich in omega-3 fatty acids, such as salmon. "
          "Dark green leafy vegetables in particular are brain protective. Nuts, seeds and legumes, such as beans and lentils, are also excellent brain foods.",
      t3: "A Healthy Gut",
      desc3:
          "Researchers continue to prove the old adage that you are what you eat, most recently by exploring the strong connection between our intestines and brain. Our guts and brain are physically linked via the vagus nerve, and the two are able to send messages to one another."
          "While the gut is able to influence emotional behavior in the brain, the brain can also alter the type of bacteria living in the gut."
          "According to the American Psychological Association, gut bacteria produce an array of neurochemicals that the brain uses for the regulation of physiological and mental processes, including mood. "
          "It’s believed 95 percent of the body's supply of serotonin, a mood stabilizer, is produced by gut bacteria."
          "Stress is thought to suppress beneficial gut bacteria.",
      t4: "Mindful Eating",
      desc4:
          "Paying attention to how you feel when you eat, and what you eat, is one of the first steps in making sure you’re getting well-balanced meals and snacks. "
          "Since many of us don’t pay close attention to our eating habits, nutritionists recommend keeping a food journal."
          "Documenting what, where and when you eat is a great way to gain insight into your patterns."
          "\nIf you find you overeat when stressed, it may be helpful to stop what you’re doing when the urge to eat arises, and to write down your feelings."
          "By doing this, you may discover what’s really bothering you. If you undereat, it may help to schedule five or six smaller meals instead of three large ones."
          "\nSometimes, stress and depression are severe and can’t be managed alone. For some, eating disorders develop. "
          "If you find it hard to control your eating habits, whether you’re eating too much or too little, your health may be in jeopardy. "
          "If this is the case, you should seek professional counseling. Asking for help is never a sign of weakness or failure, especially in situations too difficult to handle alone.",
      t5: "",
      desc5: "Source: stutterhealth",
      t6: "",
      desc6: "",
    ),
    HealthyDietData(
      name: "Brain Food ",
      image: "assets/Image/h2.jpg",
      t1: "",
      desc1:
          "Your brain and nervous system depend on nutrition to build new proteins, cells and tissues."
          "In order to function effectively, your body requires a variety of carbohydrates, proteins and minerals."
          "To get all the nutrients that improve mental functioning, nutritionists suggest eating meals and snacks that include a variety of foods, instead of eating the same meals each day."
          "\nHere are the top three foods to incorporate into a healthy mental diet:",
      t2: "1. Complex carbohydrates",
      desc2: "Such as brown rice and starchy vegetables can give you energy."
          "Quinoa, millet, beets and sweet potatoes have more nutritional value and will keep you satisfied longer than the simple carbohydrates found in sugar and candy.",
      t3: "2. Lean proteins",
      desc3: "Lend energy that allows your body to think and react quickly."
          "Good sources of protein include chicken, meat, fish, eggs, soybeans, nuts and seeds.",
      t4: "3. Fatty acids",
      desc4: "Crucial for the proper function of your brain and nervous system."
          "You can find them in fish, meat, eggs, nuts and flaxseeds.",
      t5: "",
      desc5: "",
      t6: "",
      desc6: "Source: stutterhealth",
    ),
    HealthyDietData(
      name: "Healthy Eating Tips",
      image: "assets/Image/h3.jpg",
      t1: "",
      desc1:
          "1. Steer clear of processed snack foods, such as potato chips, which can impair your ability to concentrate. Pass up sugar-filled snacks, such as candy and soft drinks, which lead to ups and downs in energy levels.",
      t2: "",
      desc2:
          "2. Consume plenty of healthy fats, such as olive oil, coconut oil and avocado. This will support your brain function. ",
      t3: "",
      desc3:
          "3. Have a healthy snack when hunger strikes, such as fruit, nuts, hard-boiled eggs, baked sweet potatoes or edamame."
          "This will give you more energy than packaged products.",
      t4: "",
      desc4: "4. Don’t shop while hungry, since you’ll be more apt to make unhealthy impulse purchases.",
      t5: "",
      desc5:
      "5. Think about where and when you eat. Don’t eat in front of the television, which can be distracting and cause you to overeat. "
          "Instead, find a place to sit, relax and really notice what you’re eating. Chew slowly. Savor the taste and texture.",
      t6: "",
      desc6:

          "Source: stutterhealth",
    ),
    HealthyDietData(
      name: "Food for your mood: How what you eat affects your mental health",
      image: "assets/Image/h4.jpg",
      t1: "The science behind food and mood",
      desc1:
          "The connection between diet and emotions stems from the close relationship between your brain and your gastrointestinal tract, often called the “second brain.”"
          "\nHere’s how it works: "
          "\nYour GI tract is home to billions of bacteria that influence the production of neurotransmitters, chemical substances that constantly carry messages from the gut to the brain. "
          "(Dopamine and serotonin are two common examples.)"
          "\nEating healthy food promotes the growth of “good” bacteria, which in turn positively affects neurotransmitter production."
          "A steady diet of junk food, on the other hand, can cause inflammation that hampers production. "
          "When neurotransmitter production is in good shape, your brain receives these positive messages loud and clear, and your emotions reflect it."
          "But when production goes awry, so might your mood."
          "\nWhen you stick to a diet of healthy food, you’re setting yourself up for fewer mood fluctuations"
          " an overall happier outlook and an improved ability to focus."
          "Studies have even found that healthy diets can help with symptoms of depression and anxiety."
          "Unhealthy diets have been linked to an increased risk of dementia or stroke.",
      t2: "Foods that help you be healthy",
      desc2:
          "So what should you put in your cart and on your plate? Here’s a quick overview of what to look for next time you’re in the grocery store. You’ll want to aim for a mix at meal time.",
      t3: "Whole foods",
      desc3:
          "Some studies have shown that preservatives, food colorings and other additives may cause or worsen hyperactivity and depression."
          "So if you have one thing to remember, it's to eat real food, or food that’s minimally processed and has a few healthy ingredients."
          "Think fresh fruits and vegetables.",
      t4: "Fiber",
      desc4:
          "Plant-based foods are full of fiber, which helps your body absorb glucose – or food sugars – more slowly and helps you avoid sugar rushes and crashes."
          "Fiber-rich foods include fruits, vegetables, and nutrient-filled carbs like whole grains and beans.",
      t5: "Antioxidants",
      desc5:
          "These inflammation fighters are especially plentiful in berries, leafy green vegetables, the spice turmeric and foods with Omega-3 fatty acids, including salmon and black chia seeds."
          "Dark chocolate also contains antioxidants – and sugar – so indulge in moderation.",
      t6: "Vitamin D",
      desc6:
          "Vitamin D helps with the production of serotonin, and we usually get it from exposure to sunlight."
          "But mushrooms – especially reishi, cordycep and maitake – are another good source."
          "(If you are deficient in vitamin D, your doctor may also recommend taking a supplement."
          "\n\n\nSource: aetna",
    ),
    HealthyDietData(
      name: "On your plate and on with your life",
      image: "assets/Image/h5.jpg",
      t1: "",
      desc1:
          "Incorporating good-for-your-mood foods into your diet may take some extra effort at first."
          "Preparea week’s worth of chopped veggies and soaked and cooked beans ahead of time, so DIY meals are easier to whip up and just as tempting as take-out. "
          "Strapped for time? You can use frozen or canned vegetables without the salt and 10-minute brown rice, quinoa or whole-grain couscous.",
      t2: "",
      desc2:
          "You can also try making small healthy food swaps, like trading white rice, pasta and bread for whole-grain versions."
          "This helps increase good fiber in your body, which aids in digestion. "
          "And instead of a bag of chips, choose a side salad packed with nuts, seeds and colorful vegetables for extra flavor.",
      t3: "",
      desc3: "General nutrition rules still apply. "
          "This means staying hydrated, not skipping meals and being mindful of your caffeine and alcohol intake. "
          "Both can directly impact your mood or anxiety level."
          "You may want to discuss with your doctor if you can drink caffeine or alcohol, and if so, how frequently and how much in order to stay healthy.",
      t4: "",
      desc4: "You don't have to make every healthy change immediately."
          "You may find it easier to take it week by week. "
          "For instance, you could start by adding more vegetables to your diet one week, cutting down on sweets the next, replacing some meats with beans in week 3, and so on",
      t5: "",
      desc5:
          "Being mindful of the healthy foods entering your body is also effective, especially when it comes to combating cravings."
          "Appreciate each smell, food texture and taste for each food."
          "And take note of how the nutritious snacks and meals make you feel afterward. "
          "Some people who move to a mostly plant-based diet, for instance, often notice that their energy and focus are sustained throughout the day.",
      t6: "",
      desc6:
          "It may take days or week before you start to feel the mood-boosting effects of a better diet, "
          "depending on how many changes you implement. "
          "Over time, healthy eating, along with regular exercise and medication, helped her overcome depression. "
          "\n\n\nSource: aetna",
    ),
    HealthyDietData(
      name: "Top 6 Foods to Eat Every Day",
      image: "assets/Image/h6.jpg",
      t1: "1. Chia Seeds",
      desc1: "Chia seeds have a high concentration of omega-3 fatty acids."
          "In fact, one tablespoon of chia seeds contains 1,769 milligrams of omega-3s."
          "These nutrients play a role in the functioning of serotonin and dopamine, both critical to mood and mental health."
          "\nFurthermore, chia seeds contain magnesium, which is sometimes referred to as “the stress antidote.”"
          "Some doctors and scientists believe that depression rates are increasing because we no longer get enough magnesium in our diet. ",
      t2: "2. Walnuts",
      desc2:
          "Walnuts are another rich, plant-based source of omega-3 fatty acids."
          " In addition to impacting hormones, omega-3s support overall brain health. "
          "Deficiency in DHA (the chief omega) is associated with mental health disorders, including depression, ADHD, bipolar disorder, and schizophrenia."
          "\nMoreover, numerous studies have demonstrated that omega-3 fatty acids support brain function and reduce depression symptoms.  ",
      t3: "3. Broccoli",
      desc3:
          "Scientists have found that low folic acid is associated with depression. "
          "As a result, folate is an important food for mental health. "
          "And broccoli is high in folate, as well as fiber and vitamin C."
          "\nFurthermore, fiber is what’s known as a “prebiotic.” Prebiotics create a friendly environment for probiotic bacteria to flourish in the gut."
          " And gut health is important for mental health, because the gut helps control our production of serotonin."
          "\nMoreover, broccoli contains selenium. "
          "Some studies suggest that low levels of selenium might contribute to depression, anxiety, and fatigue. Therefore, broccoli is one of the best foods to fight depression. ",
      t4: "4. Dark Leafy Greens",
      desc4:
          "Dark leafy greens like spinach, chard, kale, collard greens, and beet greens contain a wealth of nutrients, including the following:"
          "\n Iron "
          "\n Calcium "
          "\n Magnesium "
          "\n Potassium "
          "\n Folate"
          "\n Omega-3 fatty acids "
          "\nFolate (a form of vitamin B9), Magnesium, and Omega-3s all support mental health and brain health."
          " Furthermore, studies show that deficiencies in folate may contribute to depression, fatigue, and insomnia."
          " So, it’s important to get lots of leafy greens, among other foods you should eat everyday, in order to maintain healthy folate levels. ",
      t5: "5. Yogurt",
      desc5: "Yogurt is a cultured (fermented) food."
          " Therefore, it contains billions of probiotic bacteria, which make it an excellent food for mental as well as physical health. "
          "Probiotics help break down nutrients so the body can absorb them better. "
          "Consequently, we can digest our food better. "
          "As a result, the body and brain are able to more easily access the nutrients in our food. ",
      t6: "6. Berries",
      desc6:
          "Blueberries, raspberries, strawberries, blackberries, and other berries contain potent antioxidants. Therefore, they are particularly supportive for mental health. "
          "\nIn depressed patients, antioxidant levels were lower than those of a control group who did not have a mental health diagnosis."
          " Furthermore, antioxidant levels increased following treatment for depression. "
          "\n\n\nSource: mewportinstitute",
    ),
  ];
}

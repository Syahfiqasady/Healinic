import 'package:flutter/material.dart';

class FitnessData {
  FitnessData({
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

  static List<FitnessData> fitnessList = <FitnessData>[
    FitnessData(
        name: "How do I get started — and stay motivated?",
        image: "assets/Image/f1.jpg",
        t1: "•	Identify what you enjoy doing.",
        desc1:
            "Figure out what type of physical activities you're most likely to do, and think about when and how you'd be most likely to follow through. For instance, would you be more likely to do some gardening in the evening, start your day with a jog, or go for a bike ride or play basketball with your children after school? Do what you enjoy to help you stick with it.",
        t2: "•	Get your mental health professional's support. ",
        desc2:
            "ExerciseTalk to your doctor or mental health professional for guidance and support. Discuss an exercise program or physical activity routine and how it fits into your overall treatment plan. is important for people with mental illness – it not only boosts our mood, concentration and alertness, but improves our cardiovascular and overall physical health.",
        t3: "•	Set reasonable goals. ",
        desc3:
            "Your mission doesn't have to be walking for an hour five days a week. Think realistically about what you may be able to do and begin gradually. Tailor your plan to your own needs and abilities rather than setting unrealistic guidelines that you're unlikely to meet.",
        t4: "•	Don't think of exercise or physical activity as a chore. ",
        desc4:
            "If exercise is just another 'SHOULD' in your life that you don't think you're living up to, you'll associate it with failure. Rather, look at your exercise or physical activity schedule the same way you look at your therapy sessions or medication — as one of the tools to help you get better.",
        t5: "•	Analyze your barriers. ",
        desc5:
            "Figure out what's stopping you from being physically active or exercising. If you feel self-conscious, for instance, you may want to exercise at home. If you stick to goals better with a partner, find a friend to work out with or who enjoys the same physical activities that you do. If you don't have money to spend on exercise gear, do something that's cost-free, such as regular walking. If you think about what's stopping you from being physically active or exercising, you can probably find an alternative solution.",
        t6: "Prepare for setbacks and obstacles. ",
        desc6:
            "Give yourself credit for every step in the right direction, no matter how small. If you skip exercise one day, that doesn't mean you can't maintain an exercise routine and might as well quit. Just try again the next day. Stick with it."),
    FitnessData(
      name: "How does exercise help depression and anxiety?",
      image: "assets/Image/f2.jpg",
      t1: "•	Releasing feel-good endorphins",
      desc1:
          "Natural cannabis-like brain chemicals (endogenous cannabinoids) and other natural brain chemicals that can enhance your sense of well-being",
      t2: "•	Taking your mind off worries  ",
      desc2:
          "You can get away from the cycle of negative thoughts that feed depression and anxiety",
      t3: "•	Gain confidence. ",
      desc3:
          "Meeting exercise goals or challenges, even small ones, can boost your self-confidence. Getting in shape can also make you feel better about your appearance.",
      t4: "•	Get more social interaction.  ",
      desc4:
          "Exercise and physical activity may give you the chance to meet or socialize with others. Just exchanging a friendly smile or greeting as you walk around your neighborhood can help your mood.",
      t5: "•	Cope in a healthy way ",
      desc5:
          "Doing something positive to manage depression or anxiety is a healthy coping strategy. Trying to feel better by drinking alcohol, dwelling on how you feel, or hoping depression or anxiety will go away on its own can lead to worsening symptoms.",
    ),
    FitnessData(
        name: "5 tips for exercising with depression",
        image: "assets/Image/f3.jpg",
        t1: "",
        desc1:
            "It’s natural and normal to feel depressed at times, especially when life throws you a curve ball. Depression is a mood state, just like happy, excited or sad. Across the spectrum of symptoms, there are distinctly different types of depression. It looks different on everyone. Some might not be able to eat or sleep, others eat too much and are too fatigued to get out of bed.",
        t2: "BIOLOGICALLY",
        desc2:
            "Exercise releases endorphins (anti-stress hormones), 40 types of them to be exact. One of the effects these have is that they calm the brain and relieve muscle pain during strenuous exercise. Exercise also regulates all of the same neurotransmitters targeted by antidepressants."
            "\nFor starters, it immediately elevates norepinephrine, waking up the brain and getting it going. As well as improving self-esteem, which is one component of depression. Exercise boosts dopamine, which improves mood and feelings of wellness, and jump-starts the attention system. Dopamine is important because it is all about driving motivation and attention. That’s why getting started is the hardest part!",
        t3: "PSYCHOSOCIALLY ",
        desc3:
            "To feeling good when you exercise, you feel good about yourself, and that has a positive effect that can’t be traced to a particular chemical or area in the brain. What we do know is that norepinephrine and serotonin, which are both boosted with exercise, act on the limbic system (the amygdala, the hypothalamus and the hippocampus)."
            "\nThis part of the brain is responsible for things like how we perceive and regulate our emotions. Even small doses of exercises are effective at improving people’s quality of life and psychosocial functioning.",
        t4: "TIPS FOR GETTING STARTED",
        desc4:
            "If you’ve been feeling down, adding exercise into your day is a great place to start. Try it, even if you don’t feel like it! If you do it consistently, you’ll slowly start to feel better. The stability of the routine alone can dramatically improve mood.",
        t5: "Tips from an Exercise Physiologist: ",
        desc5: "• It’s important to keep expectations reasonable\n"
            "• Exercise outside, or in an environment that stimulates your senses\n"
            "• Exercise with somebody\n"
            "• Something is better than nothing!\n"
            "• Try to form an exercise routine – this adds to feelings of stability\n",
        t6: "",
        desc6:
            "So next time you feel flat, move your body (even if it’s just out of the house!)."),
    FitnessData(
        name: "5 of the best exercise for your mental health ",
        image: "assets/Image/f4.jpg",
        t1: "",
        desc1:
            "First and foremost, it’s important to remember that the best exercise for your own wellbeing is the one that you enjoy."
            "Moving in a way that is enjoyable for you is key to making it a positive habit you can stick to in the long-term. "
            "So whether you’re hitting the gym for a workout, or dancing around your kitchen, "
            "the important thing is to find what works for you and gets you moving in a way that makes you feel good. \n"
            "Still not sure where to start? Here are some of our favourite mood-boosting exercises for a little inspiration!",
        t2: "1. WALKING  ",
        desc2:
            "Walking may seem like a tamer option for staying healthy, but the joy of it is that it’s free, is relatively low impact, "
            "and gets you out in the fresh air. Going for a walk can help to ease stress, and help with mental health issues like anxiety and depression. "
            "Even as little as a 15-minute walk can be enough to clear your head\n"
            "Another excellent feature of walking is that you can increase the intensity as you’d like.\n "
            "If you’re totally new to exercising or have any physical limitations, you can ease your way in with a gentle stroll. "
            "As you get more used to that, you can build up to faster walks, or take on some steeper slopes to push the challenge."
            "You’ll be able to enjoy all of the psychological benefits, but with the added bonus of pushing your body into a fitter state. ",
        t3: "2. YOGA ",
        desc3:
            "Yoga’s foundations are based around spirituality and, with its close ties to meditation and thoughtful breathing exercises, "
            "it continues to be synonymous with relaxation and tranquility. The benefits of yoga have led to it being a well-regarded practice tool of psychotherapy.\n"
            "Yoga is said to increase body awareness, ease stress, and ease muscle tension. "
            "Plus, it can be a calming exercise that allows you to centre entirely on yourself and your body, which explains why so many people regularly enjoy the mental health benefits of yoga. ",
        t4: "3. HIGH INTENSITY INTERVAL TRAINING (HIIT)  ",
        desc4:
            "If you’re looking for a workout that is going to be challenging, but at the same time as giving your emotional wellbeing a boost,"
            " then HIIT or circuit training could be a good option.\n"
            "It’s a fantastic way to increase your heart rate, often requires little to no equipment, and can be completed in a short amount of time. ",
        t5: "4. RUNNING",
        desc5:
            "Running is often one of the most celebrated exercises for combining physical fitness with mental wellbeing. Similarly to walking, it can be totally free, can take place out in the fresh air, "
            "and has the benefit of being an activity you can easily transfer to the gym by stepping onto the treadmill."
            "\nOn a run, mood-elevating endorphins combine with the post-run ‘runners high’, encouraging a feeling of well being and even mild euphoria."
            "Runners also regularly celebrate the benefits of stress-relief and better sleep, both of which can really add towards improved emotional wellbeing, relieving anxiety and fighting depression. ",
        t6: "5. RESISTANCE TRAINING",
        desc6:
            " Resistance training is exercise that involves pushing or pulling against some kind of force, whether that’s free weights, weights machines or even your own body weight."
            "The focus is on improving strength or building muscle, which in turn can offer a wide range of positive effects on your body, from improved bone health to improved functioning in your everyday life."),
    FitnessData(
        name: "10 Mental Health Exercise you can do anywhere",
        image: "assets/Image/f5.jpg",
        t1: "•	Releasing feel-good endorphins",
        desc1:
            "Natural cannabis-like brain chemicals (endogenous cannabinoids) and other natural brain chemicals that can enhance your sense of well-being",
        t2: "•	Taking your mind off worries  ",
        desc2:
            "You can get away from the cycle of negative thoughts that feed depression and anxiety",
        t3: "•	Gain confidence. ",
        desc3: "",
        t4: "•	Get more social interaction.  ",
        desc4: "",
        t5: "Analyze your barriers. ",
        desc5: ".",
        t6: "•	Cope in a healthy way. ",
        desc6: " "),
  ];
}

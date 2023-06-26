import 'package:flutter/material.dart';

class MotivationData {
  MotivationData({
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

  static List<MotivationData> motivationList = <MotivationData>[
    MotivationData(
      name: "Strategies for Boosting Motivation When You’re Depressed",
      image: "assets/Image/m1.jpeg",
      t1: "1. Get out of bed and out of pajamas ",
      desc1:
          "The simple act of getting up is a good first victory of the day. Leave a few sticky notes with positive affirmations where you can see them, such as: “Yes, you can do it,” “Every long journey starts with one step,” or “Never give up!” "
          "\nYour brain digests whatever thoughts you create, so feed it positive ones. ",
      t2: "2. Go for a walk ",
      desc2:
          "Exercise helps your body release endorphins, the feel-good hormones. Exercising for at least 35 minutes a day, five days a week, can improve symptoms of mild to moderate depression. "
          "It may also help treat more severe forms of depression. ",
      t3: "3. Get your hands dirty to get a mood lift ",
      desc3:
          "According to a studyTrusted Source with mice, a certain type of bacteria found in dirt (Mycobacterium vaccae) may enhance the production of serotonin."
          "Serotonin in turn helps decrease the symptoms of depression."
          "\nBacteria found in fermented foodsTrusted Source, such as yogurt, can also enhance moods by reducing anxiety and potentially improving symptoms of depression. ",
      t4: "4. Don’t overschedule ",
      desc4:
          "If you can only accomplish one or two tasks, that’s fine. Congratulate yourself for every task or goal you complete, no matter how small. "
          "\nThat will help improve your confidence and sense of motivation. ",
      t5: "5. Avoid negativity ",
      desc5:
          "Reading the news or surfing the internet, talking to people who leave you feeling drained and negative, or revisiting sad topics —these activities can all have an impact on your mood and motivation. Instead, focus on feelings of gratitude."
          "\nRead uplifting content and surround yourself with positive people. ",
      t6: "6. Get enough sleep ",
      desc6:
          "Depression can be physically draining. Sleeping too much or too little affects your mood. Aim for eight hours a day. "
          "\n\n\nSource: healthline",
    ),
    MotivationData(
      name: "What to Do When You Have No Motivation",
      image: "assets/Image/m2.jpeg",
      t1: "Act as If You Feel Motivated ",
      desc1:
          "You may be able to trick yourself into feeling motivated by changing your behavior. "
          "Act as if you felt motivated, and your actions may change your emotions."
          "\nFor example, rather than sit on the couch in your pajamas all day waiting for motivation to strike, get dressed and get moving. "
          "You might find that taking action will increase your motivation, which makes it easier to keep going. "
          "\nSo ask yourself, “What would I be doing right now if I felt motivated?” Consider what you’d be wearing, how you’d be thinking, and what actions you’d be taking."
          "Then, do these things, and see if your motivation level increases.",
      t2: "Argue the Opposite ",
      desc2:
          "When you’re struggling with motivation, you’ll likely come up with a long list of reasons why you shouldn’t take any action. You might think, “It’ll be too hard,” or, “I’ll never get it done anyway.” "
          "\nThese types of thoughts will keep you stuck. "
          "\nArguing the opposite can help you see both ends of the spectrum. It can also remind you that an overly pessimistic outcome isn’t completely accurate."
          "There’s a chance that things might work out better than you expect. "
          "And you might find that developing a more balanced outlook will help you feel more motivated to try.",
      t3: "Practice Self-Compassion ",
      desc3:
          "Rather than beat yourself up for mistakes or call yourself names, create a kinder inner dialogue. "
          "\nThis doesn’t mean you need to repeat exaggeratedly positive affirmations like, “I’m the best person in the world,” however. "
          "\nInstead, healthy self-compassion balances self-acceptance with self-improvement. Acknowledge your flaws, mistakes, and failures with honesty. "
          "But don’t indulge in a pity party."
          "Speak to yourself like a trusted friend. Ask yourself, “What would I say to a friend who had this problem?” You’d likely be much kinder to someone else than you are toward yourself."
          "\nSo start treating yourself like a good friend.",
      t4: "Use the 10-Minute Rule ",
      desc4:
          "When you dread doing something—like walking on the treadmill for three miles—you’ll lack motivation to do it. "
          "\nYou can reduce your feelings of dread, however, by proving to yourself that the task isn’t as bad as you think or that you have the strength to tolerate it better than you envision."
          "\nThe 10-minute rule can help you get started. Give yourself permission to quit a task after 10 minutes. When you reach the 10-minute mark, ask yourself if you want to keep going or quit."
          "\nYou’ll likely find that you have enough motivation to keep going."
          "\nGetting started on a task is usually the hardest part. Once you get going, however, it’s much easier to keep going. Fighting!",
      t5: "Practice Self-Care ",
      desc5:
          "You’ll struggle with motivation as long as you aren’t caring for yourself. Sleep-deprivation, a poor diet, and lack of leisure time are just a few things that can make trudging through the day more difficult than ever."
          "\n1. Exercise regularly."
          "\n2. Get plenty of sleep. "
          "\n3. Drink water, and eat a healthy diet."
          "\n4. Make time for leisure and fun."
          "\n5. Use healthy coping skills to deal with stress."
          "\n6. Avoid unhealthy habits, like binge eating and drinking too much alcohol.",
      t6: "Pair a Dreaded Task With Something You Enjoy ",
      desc6: "Your emotions play a major role in your motivation level. "
          "If you’re sad, bored, lonely, or anxious, your desire to tackle a tough challenge or complete a tedious task will suffer. "
          "\nBoost your mood by adding a little fun to something you’re not motivated to do. "
          "You’ll feel happier and you might even look forward to doing the task when it’s regularly paired with something fun."
          "\n\n\nSource: healthline",
    ),
    MotivationData(
      name: "Getting motivated",
      image: "assets/Image/m3.jpg",
      t1: "Ways to keep on track",
      desc1:
          "Make your goal part of your routine by using a diary or app for reminders."
          "\nPositive self-talk is important and effective in managing depression or anxiety. Instead of saying 'I can't', say 'I can try'."
          "\nMindfulness helps keep you relaxed and focused."
          "\nStart a class or join a support group. Support groups can be as effective as professional help."
          "\nReward yourself when you have completed a step or goal.",
      t2: "Ways to stay motivated ",
      desc2:
          "Regularly review your goals and progress. Seeing progress is a great motivator in itself, and also improves your self-esteem. "
          "\nContinue to set new goals. Think about what you want to achieve next week, next month and next year. Tackle one goal at a time so you don’t feel overwhelmed."
          "\nKeep the momentum up. It takes up to 3 months to develop a new habit, so keeping the momentum and routine helps it feel more automatic over time."
          "\nFind mentors – a mentor is someone who is experienced in the habit you want to change. Finding social or support groups with the same interest can help you find a mentor."
          "\nSurround yourself with positive people. Positive friends and family enhance your positive self-talk, which also helps to manage the symptoms of depression and anxiety."
          "\nUse exercise as one of your daily goals to improve your mental health.",
      t3: " ",
      desc3: "",
      t4: " ",
      desc4: " ",
      t5: " ",
      desc5: " ",
      t6: " ",
      desc6: "Source: verywellmind",
    ),
    MotivationData(
      name: "Causes of Having No Motivation",
      image: "assets/Image/m4.jpg",
      t1: " ",
      desc1:
          "Sometimes, no motivation can be the problem. At other times, it’s merely the symptom of a bigger problem. "
          "\nFor example, if you’re a perfectionist, your lack of motivation may stem from the fear that you won’t complete a task flawlessly. Until you address this need to be perfect, your motivation isn’t likely to increase."
          "\nAt other times, your lack of motivation may cause you to procrastinate. And the more you procrastinate, the less motivated you feel. In this case, improving your motivation to get work done can help you feel better and perform better."
          "\nSo it’s important to take a few minutes to consider why you might have trouble motivating yourself. Here are some common reasons for a lack of motivation:",
      t2: "Avoidance of discomfort.",
      desc2:
          "Whether you don’t want to feel bored when doing a mundane task, or you are trying to avoid feelings of frustration by dodging a tough challenge, sometimes a lack of motivation stems from a desire to avoid uncomfortable feelings. ",
      t3: "Self-doubt. ",
      desc3:
          "When you think you can’t do something—or are convinced you can’t tolerate the distress associated with a certain task—you’ll likely struggle to get started. ",
      t4: "Being over-extended. ",
      desc4:
          "When you have a lot going on in life, you’ll likely feel overwhelmed. And this feeling can zap your motivation. ",
      t5: "Lack of commitment to a goal. ",
      desc5:
          "Agreeing to a task simply because you felt obligated, or declaring a resolution out of peer pressure, may mean your heart really isn’t in it. And you likely won’t take action when you aren’t committed to your goal. ",
      t6: "Mental health issues. A lack of motivation is a common symptom of  ",
      desc6:
          "A lack of motivation is a common symptom of depression. It can also be linked to other mental illnesses, like anxiety. So it’s important to consider whether your mental health may be affecting your motivation level."
          "\n\n\nSource: verywellmind",
    ),
    MotivationData(
      name: "Can we improve our motivation when we’re exhausted?",
      image: "assets/Image/m5.jpg",
      t1: " ",
      desc1:
          "We’re all motivated by different things and at different points in our lives. The same task can have more intrinsic motivators at certain times and more extrinsic motivators at others. And most tasks have a combination of the two."
          "But sometimes, some of us have: ",
      t2: "So, what can we do about this little or no motivation? ",
      desc2:
          "Let’s start off with, it’s not hopeless! We can start our journey down the road to improved motivation — with some small steps. "
          "\nWhen shopping, have you seen huge displays of vitamins, herbs, and other supplements like purple dandelion touted as energy boosters? They’re even added to teas, soft drinks and many other foods."
          "\nHowever, there’s not much evidence that energy boosters like chamomile, turmeric ginseng, or crushed owls eyes actually work. Fortunately, we have ways to enhance our own natural energy levels and improve our motivation."
          "\nWe all have downers or lows in terms of energy and motivation. We can be stuck and overwhelmed from time to time, which can reduce motivation. It’s at times like this when we need to find that motivation within ourselves. "
          "\nThe next time you feel exhausted and unmotivated, try one or several of the following suggestions to get motivated again."
          "\n\n\nSource: healthlinecom",
      t3: "Want to improve your motivation? Just get started! ",
      desc3:
          "Take action. Move. Do something. Get up out of your chair, if you’re physically able. Now, standing, raise your arms and hands up above over your head, as though reaching for the sky. Go on. "
          "\nYou need to practice all this, so that when you really need it, you can use it in an instant. Hands up, and stretch…….."
          "\nLetting loose all the body parts, allowing a non-disrupted flow of energy throughout it. "
          "This will make the blood flow better, especially coming to your head which needs to focus on demanding cognitive tasks. So stand up from your chair and stretch yourself out because it will make you more energized.”"
          "\nYou can also try some simple stretches at work, in college or uni and even in your local park."
          "\nAfter a few minutes of reaching up and stretching, relax. Put your arms down by your sides and as you do so, relax some more."
          "\nMake sure your shoulders drop down from your ears, unclench your teeth and your jaw, and uncurl your fingers."
          "\nRelax. And breathe.",
      t4: "Control your stress ",
      desc4:
          "We all know that stress-induced emotions consume massive amounts of our energy and reduce our motivation. So, know your limits as to how much stress you can realistically take on. "
          "\nTalking to family, close friends, or perhaps a counsellor can all help reduce stress and get your mojo back. Relationships play a major part in our lives and are the main source of our happiness."
          "\nSo, one of the best energy boosters is actually meeting up and just having a good time. In the meantime, when you start to feel stressed, stop!"
          "\nTake a moment, and breathe. "
          "\nFirst, exhale through your mouth, in little puffs – out until you feel you can’t do it anymore."
          "\nSecond, inhale slowly and deeply, in through your nose until your lungs are filled with air. Out again through your mouth, little puffs, slowly."
          "\nIn through your nose. When you’ve done this three times, you can stop, and relax.",
      t5: "Lighten your load ",
      desc5:
          "Overwork is one reason for fatigue i.e. at work or at home, or because of our ever-increasing social commitments."
          "However, you can also be fatigued due to depression or other mental illnesses. Try streamlining your list of ‘have- to-do’ activities. "
          "List your priorities in terms of the essential tasks first. Cut back on those that are less important. You might want to try asking people for help, at home, at work or in your role as fundraiser at the kids’ school. "
          "\nStart by saying “No!” to people who regularly ask favours — you don’t have to tell them why or that you’re too stressed out and overloaded. "
          "\nSay calmly and firmly “No!” and if you must elaborate, try saying “No, not today.” And. Smile. "
          "\nThen don’t suddenly change your mind, like “Oh! Okay, go on then,” even if they persist.",
      t6: "Stay in the moment ",
      desc6:
          "Whenever we’re doing something, we’re always thinking about the next thing we’ve got to do. So we’re constantly chasing things in the future, which is never quite here, in the moment. "
          "\nFor example:"
          "\nYou’re working on a project at work at the moment, but you can’t stop thinking about the meeting you’ve got in an hour. When you get to the meeting, you’re thinking about picking the kids up and what’s for dinner. "
          "During dinner you’re thinking about the call you have to make to mum before you go to bed."
          "\nWhen you finally get into bed, you’re thinking about (nope, not that) putting a wash on before breakfast. "
          "On you go, in this never-ending cycle until you’re dizzy, you’re exhausted, out of energy and motivation to do anything. Sound familiar?"
          "\nStop! Stay in the moment and enjoy now! We can all try to plan for the future, but I’ve yet to meet someone who can see into the future."
          "\nSo, stop wasting time thinking and worrying about things that might never happen. Living in the moment not only brings energy but saves the energy you’d waste thinking and worrying about everything you’ve got to do next."
          "\nMindfulness is an effective tool you can use to stay, and live in the moment."
          "\n\n\nSource: mentalhealth360",
    ),
  ];
}

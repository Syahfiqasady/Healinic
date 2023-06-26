import 'package:flutter/material.dart';

class HotlineListData {
  HotlineListData({
    this.name = ' ',
    this.caption = ' ',
    this.email = ' ',
    this.website = ' ',
    this.number = ' ',
  });

  String name, caption, email, website, number;

  static List<HotlineListData> hotlinelist = <HotlineListData>[
    HotlineListData(
      name: 'BEFRIENDERS',

      caption:
          'Befrienders is a not-for-profit organisation providing emotional support 24 hours a day, 7 days a week, to people who are lonely, in distress, in despair, and having suicidal thoughts - without charge. ',
      email: 'sam@befrienders.org.my',
      website: 'https://www.befrienders.org.my/ ',
      number: '03-76272929',
    ),
    HotlineListData(
      name: 'MALAYSIAN MENTAL HEALTH ASSOCIATION (MMHA)',

      caption:
          'Malaysian Mental Health Association provides support via their phone line on any mental health issues. MMHA also has qualified mental health professionals ie. clinical psychologist, and counselors providing psychological support services. Financial subsidies are readily available to ensure that necessary therapy and support is given to anyone who needs it.',
      email: 'admin@mmha.org.my',
      website: 'https://mmha.org.my/',
      number: '03-2780 6803',
    ),
    HotlineListData(
      name: 'MIASA',

      caption:
          'MIASA offers various programs for patients and carers including: Support Group, Therapeutic Assessment, Circle Time & Support Programmes, Islamic spiritual therap',
      email: 'miasa.malaysia@gmail.com',
      website: 'http://miasa.org.my/',
      number: '6019-236-2423',
    ),
    HotlineListData(
      name: 'LIFE LINE ASSOCIATION MALAYSIA',

      caption:
          'Lifeline accosiation Malaysia offers free consultation service face-to-face, over the phone and through email. Their motto is Help is as close as the telephone',
      email: 'counselling@lifeline.org.my',
      website: 'http://lifeline.org.my/',
      number: '03-42657995',
    ),
    HotlineListData(
      name: 'ALL WOMEN’S ACTION SOCIETY (AWAM)',
      caption:
          'AWAM provides counselling and legal aid services to survivors of gender-based violence. Their helpline is open to everyone both women and men.',
      email: 'awam@awam.org.my',
      website: 'https://www.facebook.com/AWAMMalaysia/',
      number: '03-7877 0224',
    ),
    HotlineListData(
      name: 'WOMEN’S AID ORGANIZATION (WAO)',
      caption:
          'WAO provides free and confidential services to survivors of domestic violence, rape, and other forms of violence.',
      email: 'info@wao.org.my',
      website: 'https://wao.org.my/',
      number: '603 7956 3488',
    ),
  ];
}

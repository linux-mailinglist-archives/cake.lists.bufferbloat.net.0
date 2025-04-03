Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EA268AD0093
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AFD413D599;
	Fri,  6 Jun 2025 06:41:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206460;
	bh=Uo9YDJNegxK9xX0aGplKClcrFrk0vs6yyIScQOt9k1I=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=LsFhq8GdoC3cCEcJkEDE6HJGobtLUipE+Lq0uOytsiymdX04k8z6PZZxFFCanpJgS
	 w5z1ew/3SMCxO/p1jdMV2z5CoLkhIcjocX1wftGoi8iqcq7QBPHuJRWz/UcrlfFuc5
	 2pBaiA7i8NcUV+qE5TtocHAQnpYgFTr3Vec0HE78oXM/9+H9dQpPl3/SsRul3T7zED
	 E9YR3j7n5yQpPMgMJtD6ZkkRtRkXIVl3hF4roDpcYYrYLnyft+CK36sFObGHecGug8
	 9AaidqUBREbzGFnSihDAjZ71UiqfBdwfzyptczNumJ5JyajXijdzG5EQ7xHVxRCbyJ
	 Sk9vI87q89G/A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from strange.networkguild.org (strange.networkguild.org
 [IPv6:2600:3c02:e000:dd::1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 830C03B2A4;
 Wed,  2 Apr 2025 23:28:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=iconia.com;
 s=strange; t=1743650934;
 bh=qtc+wBYnr+7/+oP28oP06runs9nvrYTRAA0MFAm0Kj4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HTfEYepHWwXL0htTwZLJ74wbi954d1xlIGyOP72V1rY5O2PaAZ5W7MMTrqOkaLVOv
 8hTGNdASfkmzMx/cLjGJ8ObU0WL2KDmno3l0SC3qA0iUb2f/PqRefQIfJkm3SNfsUF
 8YkVJaxfpEA8WmPFJWLAezV2OATOLHkXjLS9YZCFXWURJ4dq9Yh9w0MfJ8apGsYuOO
 9PIZIItEpDvSZ8OIT534G+AGy8sj6KZ8XYDUnNe91vvRNxfcv7yB5Zhiqr0e0Xsveu
 eq+V/DqKJFwoW5JaT93ZFUpj86QQ+na57h+6vtt3L8+I4WZ5J3RKceXOCFdLb9qXeA
 qRBnrQcw6oQnQ==
Received: from auth (localhost [127.0.0.1]) (authenticated bits=0)
 by strange.networkguild.org (8.17.1.9/8.17.1.9/Debian-2+deb12u2) with ESMTPSA
 id 5333Smga2351029
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT);
 Wed, 2 Apr 2025 23:28:48 -0400
Received: by mail-qt1-f180.google.com with SMTP id
 d75a77b69052e-47690a4ec97so4468541cf.2; 
 Wed, 02 Apr 2025 20:28:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCU6Kt1LFEj1PFvtgkvly2mA8ZpZq0TpHpBMHwS+G1t8o2sG2TE9KzXUrIQx6Ej0QLs2VZIkNV7mX52/N+3sO/U=@lists.bufferbloat.net,
 AJvYcCUEfypVF4PTM0Zc+wqDdmPb+uS1YBzyKFK0AKVEMAHzIu6MmxCnvAD9LpFiq7c096xWv60tUDqU36fRmTyZnw==@lists.bufferbloat.net,
 AJvYcCUKU2dave66ziGqVpivv/0naWZjJu5CUuCuKisPs+YozvuZk+ARPdea3/tehIFE0kldmS0vDjL+y2alD4RKiKY=@lists.bufferbloat.net,
 AJvYcCUebilEZUEd1R92N73uYwu6zrDgASrQnAJ63ImsMQHV2kjsvY8nlFc7qz/q1EIigN96+wlrkHkVNklJkzbcFg==@lists.bufferbloat.net,
 AJvYcCUhSOjB8XavcbBTXMttuCzk2eCdAIXmIRkNClmibXRPcbUqK3OvqX+jcNCxfjORzvluTrUequ8=@lists.bufferbloat.net,
 AJvYcCV1G6ugrB8FWa8vf9gAfS9tELSYqDt1KliedRV2fbP8ctlpgdiGEVBMvGceITtBkeWp2YJbam0=@lists.bufferbloat.net,
 AJvYcCVCoyhnxygVGw2rt9xMqxRAeXQjDwKoRd9CJaJsHgy5IDeqdJRDh6iEELFGAVxQOngEuIhiJw==@lists.bufferbloat.net,
 AJvYcCVTuLASYvXKhZXuoIxP+ZYsSVeRiuSUvpjGzChkCs7T4rC6tadZVHkQ+k0xkzqUnTcIah1c@lists.bufferbloat.net,
 AJvYcCVgubVdvItjyfrJGphNqnQ/UEMSqIQj2wiLrQeZrbNyIRyQst7sJKRoqsqGOefMYsU3M/iomNrsit0=@!
 lists.bufferbloat.net,
 AJvYcCWk1o3RR6XQ9J4mGcGF5hZ0jvTMUO/AKrY13+e4Xg+saeJa50i8/qUepgPZwCBUU0dj1FrfBYq0JvlQ@lists.bufferbloat.net,
 AJvYcCWuf7xG+TbzupWH2oJTIVdjdtQARrEBLfalcIAXab2ViNHPycL+6DqkZVzlzvv5zXiQbxlCEnzNfA==@lists.bufferbloat.net,
 AJvYcCXM9ofG04kohr+imW05asV+71awbNjLQeeYiO7T7vqO4ypDXVrneIKARVmK/kqYdHO/LBdAqJBLeoDzM3bjF64n@lists.bufferbloat.net,
 AJvYcCXgQtL2I/cD8SeK3AS278w7FO/2RbrIfJhELIimGiXxxl86pwh01MfdIKxsEug7SpPI5TDoCVhLlMU=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yyk+2gNnhFMhZz4PHK9X6e8xjUhLzb9Nnd2vtd8DzlgUzvQpXk2
 uIc+w5gNaqcZJVGV7TIj+sr2fTeuNTvilcRUyaXjAXWF0kpGMocgllua7Fqe3M6wqvPOCWGkNo9
 enp5qiSXbbisrwc8LW7v/ULV1NR0=
X-Google-Smtp-Source: AGHT+IH0HR5e1US3lxnsBmxo38qRsbBwse7yYIXO4/7JPmDpeRC4g3FXA1bATau1jaoPr2sAwF7AOqsDnsuymhAwoiE=
X-Received: by 2002:ac8:5786:0:b0:471:fdf5:3cd7 with SMTP id
 d75a77b69052e-4791b27f6cdmr9225381cf.37.1743650927155; Wed, 02 Apr 2025
 20:28:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
In-Reply-To: <1743623511.52759201@apps.rackspace.com>
Date: Wed, 2 Apr 2025 20:28:10 -0700
X-Gmail-Original-Message-ID: <CAEf-zrgetDepQuBLXeO7-pRyfVH4gV2mpQtfwO8Eqc+YxbgPVg@mail.gmail.com>
X-Gm-Features: AQ5f1JrgjS8cZ-yDTULOkWri6GeHziY1yZCRIDRcfQFQZQE0yaaTWJr7k4Bhm10
Message-ID: <CAEf-zrgetDepQuBLXeO7-pRyfVH4gV2mpQtfwO8Eqc+YxbgPVg@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
X-Virus-Scanned: clamav-milter 1.0.7 at strange.networkguild.org
X-Virus-Status: Clean
X-BitDefender-Scanner: Clean, Agent: BitDefender Milter 3.1.7 on
 strange.networkguild.org, sigver: 7.98633
X-BitDefender-Spam: No (0)
X-BitDefender-SpamStamp: Build: [Engines: 2.19.4.1579, Dats: 871106, Stamp:
 3], Multi: [Enabled, t: (0.000011,0.114938)], BW: [Enabled, t: (0.000007),
 whitelisted: geoff@iconia.com], APM: [Enabled, Score: 500, t:
 (0.033371,0.000716), Flags: BA7B0291; NN_LARGISH_BIGGISH; NN_PLEASURE;
 NN_BEGIN_TAG_NOT_OK; NN_EXEC_H_DICTIONARY_EMAIL_ADDRESSES;
 NN_LEGIT_VALID_REPLY; NN_LEGIT_SUMM_400_WORDS; NN_LEGIT_S_SQARE_BRACKETS;
 NN_LEGIT_ML_MAIL_LIST_ADN], RTDA: [Disabled], total: 0(775)
X-BitDefender-CF-Stamp: none
X-Spam-Status: No, score=-99.0 required=5.0 autolearn=disabled
X-Spam-Report: *  -99 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.0 HTML_MESSAGE BODY: HTML included in message
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on
 strange.networkguild.org
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
	=?utf-8?q?=5BStarlink=5D__=5BBloat=5D_In_loving_memory_of_?=
	=?utf-8?q?Dave_T=C3=A4ht_=3C3?=
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: the keyboard of geoff goodfellow via Cake <cake@lists.bufferbloat.net>
Reply-To: the keyboard of geoff goodfellow <geoff@iconia.com>
Cc: "cerowrt-users@lists.bufferbloat.net"
 <cerowrt-users@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 Internet-history <internet-history@elists.isoc.org>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============0839383114957255130=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0839383114957255130==
Content-Type: multipart/alternative; boundary="0000000000002023260631d75ecf"

--0000000000002023260631d75ecf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

vis-a-vis* "**thinking about how we could get Dave recognized for his
contributions" =E2=9E=94=E2=9E=94 *At The Very Least Dave should immediatel=
y
be posthumously nominated to The InternetHallOfFame.org as Dave Most
Certainly Qualifies For *"Recognizing the People **Who Bring the Internet
to Life"*

geoff

On Wed, Apr 2, 2025 at 12:52=E2=80=AFPM David P. Reed via Starlink <
starlink@lists.bufferbloat.net> wrote:

> Hi all -
>
>
>
> I've already shared my sadness and appreciation of my good friend Dave on
> LinkedIn.
>
> I met him through Jim Gettys at the beginning of the Bufferbloat
> discovery, and besides our long correspondence, I hope I have given him
> enough support over the years - including introducing him to my network o=
f
> friends, some of whom are on this list. Others he found by himself.
> He's been a one-person social network out there, who got things done
> beyond what institutions seem to be able to do. (And he amazed me by
> managing to get a stodgy IETF crowd to pay attention to the congestion
> control issue, despite much institutional resistance, and academic
> networking researchers who never got the point). Of course, Jason Livingo=
od
> worked behind the scenes very hard to bypass corporate resistance, too.
>
> Also, I can share something that few knew about - I brought Dave into an
> ex parte policy discussion at the FCC about an idea being promoted that t=
he
> FCC should require all routers the FCC certified to have a complete "lock=
ed
> down" configuration that could not be changed by users. I got brought in
> because of my FCC TAC involvement around Software Defined Radio. But the
> folks behind the proposal were just using that as an excuse - they wanted
> really to block WISPs by raising the cost of WiFi routers. Dave, who knew
> more than anything why re-flashing routers made them MORE secure and coul=
d
> explain it in a disarming way to lawyers and policymakers, managed to get
> the commissioners to understand that security wasn't something the FCC
> could certify, and also why commercial routers weren't at all secure. He
> was so much better at explaining in what you might call an inclusive,
> folksy way that he changed the FCC's approach significantly - away from
> Certifying Security entirely. (The SDR issue ended up not being relevant =
to
> routers, though SDR is still a complex policy issue that is holding back
> innovation in wireless systems.) I'm certain Dave has had much impact of
> this sort.
>
>
>
> However, Dave's passing s very frustrating to me because of two things:
>
>
>
> 1) there is no one who can replace Dave. The things he made happen will
> continue, but he was only getting started on issues like improving WiFi.
> Again, the resistance to improving WiFi is both institutional and
> corporate, and researchers won't challenge the institutional and corporat=
e
> shibboleths that get in the way of solving critical problems in the 802.1=
1
> implementation and systems architecture domain. (Unfortunately, WiFi has
> become a political term that is being used by "wireless" operators and
> their suppliers to fight for or against monopoly control of the airwaves,
> very parallel to the problems of getting engineering solutions on Interne=
t
> fabric that deal with congestion. So it can't be done in the institutions
> and corporations focused away from the engineering challenges. That's why
> Dave was needed.)
>
> 2) I was thinking about how we could get Dave recognized for his
> contributions. Like other unsung heroes, Dave didn't work for BBN or some
> other moneyed entity who would commission a book or a memorial. (BBN paid
> Katie Hafner to write the text that later turned into her book "When
> Wizards Stay Up Late", which oddly only talked about the ARPANET/Internet
> pioneers who worked for BBN, omitting many of my Internet colleagues.)
> Dave wasn't the kind of guy that gets Awards from the Computer History
> Museum or the ACM or IEEE. He wasn't beloved at IETF or ISOC that I know
> of. He's in the category of folks like Noel Chiappa or Bram Cohen or
> Richard Stallman or Aaron Swartz - people I think really changed the way =
we
> think about computing and internetworking, but who won't be in the offici=
al
> histories.
>
> I was hoping (before this week) to try to
>
> On Wednesday, April 2, 2025 09:59, "Livingood, Jason via Cake" <
> cake@lists.bufferbloat.net> said:
>
> > Very sad news indeed! I had the pleasure of working closely with Dave
> for 15
> > years. He was generous with his time and had a unique way of bringing
> people
> > together to make the internet better for everyone!
> >
> >
> > I had to go down memory lane to recall when I first really started
> working with
> > him. It may have been around 2010 or so. In 2012, I started sending
> funds his way
> > via my day job to help him and his merry network of collaborators work
> to develop
> > the CoDel AQM.
> >
> >
> > Funding him was not necessarily easy, as Dave had a unique way of
> working and was
> > best when he had complete autonomy and only loosely outlined goals -
> typically
> > hard to sell in a big company. But he could make things happen, so it
> worked. And
> > I knew when he started complaining about maintenance needs on his boat,
> or the
> > need to recruit a new person to the project, or about a great new (and
> practical!)
> > idea, that it was time to top up his funding. ;-)
> >
> >
> > That initial CoDel support in 2012 was extended to underwrite work on
> his idea to
> > develop RRUL, the first real working latency test that I can remember
> > (https://www.bufferbloat.net/projects/bloat/wiki/RRUL_Spec/
> > <https://www.bufferbloat.net/projects/bloat/wiki/RRUL_Spec/>). He was
> also
> > helpful in introducing me to Simon Kelley, developer of dnsmasq, so we
> could
> > underwrite some IPv6 features in dnsmasq (and Dave convinced Simon to
> come to an
> > IETF meeting to help gather requirements and meet folks).
> >
> >
> > Dave got CoDel working, so we developed a compelling demo of CoDel on a
> DOCSIS
> > network (via a CeroWrt-based router connected to a cable modem) and
> brought him
> > along to IETF-86 in March 2013 in Orlando - see interview with Dave at
> > https://youtu.be/NuHYOu4aAqg?si=3Dp0SJHLNpp_6n7XP9&t=3D195
> > <https://youtu.be/NuHYOu4aAqg?si=3Dp0SJHLNpp_6n7XP9&t=3D195>.
> >
> >
> > From 2014-2017, I was able to make additional financial support happen
> for him, so
> > he could do R&D into how to improve buffer bloat in WiFi network links
> and
> > equipment, a project he called "Make WiFi Fast". In 2020-2021 and 2024,
> I found
> > funding for his work again, this time to work on accelerating AQM
> adoption in the
> > real world & work related to the CAKE AQM.
> >
> >
> > Thanks in part to my longstanding collaboration with Dave, tens of
> millions of
> > DOCSIS users in our network have AQM and thus far better network
> responsiveness.
> > The same is true for AQMs he worked on, CeroWrt, LibreQoS, and other
> projects. He
> > succeeded in his goal to make the internet better for everyone!
> >
> >
> > We will miss you, Dave!
> >
> >
> > Jason
> >
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
> >
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>


--=20
Geoff.Goodfellow@iconia.com
living as The Truth is True

--0000000000002023260631d75ecf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><=
font face=3D"verdana, sans-serif">vis-a-vis<i style=3D""> &quot;</i><i>thin=
king about how we could get Dave recognized for his contributions&quot; =E2=
=9E=94=E2=9E=94 </i>At The Very Least Dave should immediately be=C2=A0posth=
umously=C2=A0nominated to The <a href=3D"http://InternetHallOfFame.org">Int=
ernetHallOfFame.org</a>=C2=A0as Dave Most Certainly Qualifies For <i><b>&qu=
ot;Recognizing the People=C2=A0</b></i><i><b>Who Bring the Internet to Life=
<span class=3D"gmail_default" style=3D"">&quot;</span></b></i></font></div>=
<div class=3D"gmail_default" style=3D""><i><b><span class=3D"gmail_default"=
 style=3D""><font face=3D"verdana, sans-serif"><br></font></span></b></i></=
div><div class=3D"gmail_default" style=3D""><font face=3D"verdana, sans-ser=
if">geoff</font></div></div><br><div class=3D"gmail_quote gmail_quote_conta=
iner"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 2, 2025 at 12:52=E2=
=80=AFPM David P. Reed via Starlink &lt;<a href=3D"mailto:starlink@lists.bu=
fferbloat.net">starlink@lists.bufferbloat.net</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><font face=3D"arial" size=3D"2=
"><p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Hi a=
ll -</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">I&#39;=
ve already shared my sadness and appreciation of my good friend Dave on Lin=
kedIn.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">I met =
him through Jim Gettys at the beginning of the Bufferbloat discovery, and b=
esides our long correspondence, I hope I have given him enough support over=
 the years - including introducing him to my network of friends, some of wh=
om are on this list. Others he found by himself.=C2=A0<br>He&#39;s been a o=
ne-person social network out there, who got things done beyond what institu=
tions seem to be able to do. (And he amazed me by managing to get a stodgy =
IETF crowd to pay attention to the congestion control issue, despite much i=
nstitutional resistance, and academic networking researchers who never got =
the point). Of course, Jason Livingood worked behind the scenes very hard t=
o bypass corporate resistance, too.<br><br>Also, I can share something that=
 few knew about - I brought Dave into an ex parte policy discussion at the =
FCC about an idea being promoted that the FCC should require all routers th=
e FCC certified to have a complete &quot;locked down&quot; configuration th=
at could not be changed by users. I got brought in because of my FCC TAC in=
volvement around Software Defined Radio. But the folks behind the proposal =
were just using that as an excuse - they wanted really to block WISPs by ra=
ising the cost of WiFi routers. Dave, who knew more than anything why re-fl=
ashing routers made them MORE secure and could explain it in a disarming wa=
y to lawyers and policymakers, managed to get the commissioners to understa=
nd that security wasn&#39;t something the FCC could certify, and also why c=
ommercial routers weren&#39;t at all secure. He was so much better at expla=
ining in what you might call an inclusive, folksy way that he changed the F=
CC&#39;s approach significantly - away from Certifying Security entirely. (=
The SDR issue ended up not being relevant to routers, though SDR is still a=
 complex policy issue that is holding back innovation in wireless systems.)=
 I&#39;m certain Dave has had much impact of this sort.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Howeve=
r, Dave&#39;s passing s very frustrating to me because of two things:</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">1) the=
re is no one who can replace Dave. The things he made happen will continue,=
 but he was only getting started on issues like improving WiFi. Again, the =
resistance to improving WiFi is both institutional and corporate, and resea=
rchers won&#39;t challenge the institutional and corporate shibboleths that=
 get in the way of solving critical problems in the 802.11 implementation a=
nd systems architecture domain. (Unfortunately, WiFi has become a political=
 term that is being used by &quot;wireless&quot; operators and their suppli=
ers to fight for or against monopoly control of the airwaves, very parallel=
 to the problems of getting engineering solutions on Internet fabric that d=
eal with congestion. So it can&#39;t be done in the institutions and corpor=
ations focused away from the engineering challenges. That&#39;s why Dave wa=
s needed.)<br><br>2) I was thinking about how we could get Dave recognized =
for his contributions. Like other unsung heroes, Dave didn&#39;t work for B=
BN or some other moneyed entity who would commission a book or a memorial. =
(BBN paid Katie Hafner to write the text that later turned into her book &q=
uot;When Wizards Stay Up Late&quot;, which oddly only talked about the ARPA=
NET/Internet pioneers who worked for BBN, omitting many of my Internet coll=
eagues.)=C2=A0 Dave wasn&#39;t the kind of guy that gets Awards from the Co=
mputer History Museum or the ACM or IEEE. He wasn&#39;t beloved at IETF or =
ISOC that I know of. He&#39;s in the category of folks like Noel Chiappa or=
 Bram Cohen or Richard Stallman or Aaron Swartz - people I think really cha=
nged the way we think about computing and internetworking, but who won&#39;=
t be in the official histories.<br><br>I was hoping (before this week) to t=
ry to=C2=A0</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">On Wed=
nesday, April 2, 2025 09:59, &quot;Livingood, Jason via Cake&quot; &lt;<a h=
ref=3D"mailto:cake@lists.bufferbloat.net" target=3D"_blank">cake@lists.buff=
erbloat.net</a>&gt; said:<br><br></p>
<div id=3D"m_-1481734346731098877SafeStyles1743620774">
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">&gt; V=
ery sad news indeed! I had the pleasure of working closely with Dave for 15=
<br>&gt; years. He was generous with his time and had a unique way of bring=
ing people<br>&gt; together to make the internet better for everyone!<br>&g=
t; <br>&gt; <br>&gt; I had to go down memory lane to recall when I first re=
ally started working with<br>&gt; him. It may have been around 2010 or so. =
In 2012, I started sending funds his way<br>&gt; via my day job to help him=
 and his merry network of collaborators work to develop<br>&gt; the CoDel A=
QM.<br>&gt; <br>&gt; <br>&gt; Funding him was not necessarily easy, as Dave=
 had a unique way of working and was<br>&gt; best when he had complete auto=
nomy and only loosely outlined goals - typically<br>&gt; hard to sell in a =
big company. But he could make things happen, so it worked. And<br>&gt; I k=
new when he started complaining about maintenance needs on his boat, or the=
<br>&gt; need to recruit a new person to the project, or about a great new =
(and practical!)<br>&gt; idea, that it was time to top up his funding. ;-)<=
br>&gt; <br>&gt; <br>&gt; That initial CoDel support in 2012 was extended t=
o underwrite work on his idea to<br>&gt; develop RRUL, the first real worki=
ng latency test that I can remember<br>&gt; (<a href=3D"https://www.bufferb=
loat.net/projects/bloat/wiki/RRUL_Spec/" target=3D"_blank">https://www.buff=
erbloat.net/projects/bloat/wiki/RRUL_Spec/</a><br>&gt; &lt;<a href=3D"https=
://www.bufferbloat.net/projects/bloat/wiki/RRUL_Spec/" target=3D"_blank">ht=
tps://www.bufferbloat.net/projects/bloat/wiki/RRUL_Spec/</a>&gt;). He was a=
lso<br>&gt; helpful in introducing me to Simon Kelley, developer of dnsmasq=
, so we could<br>&gt; underwrite some IPv6 features in dnsmasq (and Dave co=
nvinced Simon to come to an<br>&gt; IETF meeting to help gather requirement=
s and meet folks).<br>&gt; <br>&gt; <br>&gt; Dave got CoDel working, so we =
developed a compelling demo of CoDel on a DOCSIS<br>&gt; network (via a Cer=
oWrt-based router connected to a cable modem) and brought him<br>&gt; along=
 to IETF-86 in March 2013 in Orlando - see interview with Dave at<br>&gt; <=
a href=3D"https://youtu.be/NuHYOu4aAqg?si=3Dp0SJHLNpp_6n7XP9&amp;t=3D195" t=
arget=3D"_blank">https://youtu.be/NuHYOu4aAqg?si=3Dp0SJHLNpp_6n7XP9&amp;t=
=3D195</a><br>&gt; &lt;<a href=3D"https://youtu.be/NuHYOu4aAqg?si=3Dp0SJHLN=
pp_6n7XP9&amp;t=3D195" target=3D"_blank">https://youtu.be/NuHYOu4aAqg?si=3D=
p0SJHLNpp_6n7XP9&amp;t=3D195</a>&gt;.<br>&gt; <br>&gt; <br>&gt; From 2014-2=
017, I was able to make additional financial support happen for him, so<br>=
&gt; he could do R&amp;D into how to improve buffer bloat in WiFi network l=
inks and<br>&gt; equipment, a project he called &quot;Make WiFi Fast&quot;.=
 In 2020-2021 and 2024, I found<br>&gt; funding for his work again, this ti=
me to work on accelerating AQM adoption in the<br>&gt; real world &amp; wor=
k related to the CAKE AQM.<br>&gt; <br>&gt; <br>&gt; Thanks in part to my l=
ongstanding collaboration with Dave, tens of millions of<br>&gt; DOCSIS use=
rs in our network have AQM and thus far better network responsiveness.<br>&=
gt; The same is true for AQMs he worked on, CeroWrt, LibreQoS, and other pr=
ojects. He<br>&gt; succeeded in his goal to make the internet better for ev=
eryone!<br>&gt; <br>&gt; <br>&gt; We will miss you, Dave!<br>&gt; <br>&gt; =
<br>&gt; Jason<br>&gt;<br>&gt; ____________________________________________=
___<br>&gt; Cake mailing list<br>&gt; <a href=3D"mailto:Cake@lists.bufferbl=
oat.net" target=3D"_blank">Cake@lists.bufferbloat.net</a><br>&gt; <a href=
=3D"https://lists.bufferbloat.net/listinfo/cake" target=3D"_blank">https://=
lists.bufferbloat.net/listinfo/cake</a><br>&gt; </p>
</div></font>_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><font color=3D"#888888"><font color=3D"#888888">=
<span style=3D"font-family:verdana,sans-serif"><a href=3D"mailto:Geoff.Good=
fellow@iconia.com" target=3D"_blank">Geoff.Goodfellow@iconia.com</a></span>=
</font></font><font color=3D"#888888"><br><div dir=3D"ltr"><div style=3D"fo=
nt-family:verdana,sans-serif;display:inline">living as The Truth is True<br=
></div></div><div><div style=3D"font-family:verdana,sans-serif;display:inli=
ne"><br></div></div></font></div></div></div>

--0000000000002023260631d75ecf--

--===============0839383114957255130==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0839383114957255130==--

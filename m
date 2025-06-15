Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A35D3ADAC83
	for <lists+cake@lfdr.de>; Mon, 16 Jun 2025 11:57:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4204F3CB53;
	Mon, 16 Jun 2025 05:57:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1750067871;
	bh=Mzc0wBuxmj+p7hWdGJPo+SWG/GqXcEhzb2AZFuwgzrs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=mJ8n0CZHOYUsfB1jGUWNS5b8+pJ+SqAIcdMawbP8/TZLkc2x/fwQrwLa+AxEO61pD
	 5hT+d6GPc+skQmd2VsrlK9Whx9wy5M/a9wIFQwz307A1GCetp8hdPyz46sPrz05UtF
	 bwuCMuFWOjfQRwura1OixHNoayzCZ7VrEtR9jI9OpJPA7pQzqz4YSE5HwSE5nET4p4
	 z7x5W2xaScH9byeiNNXJ7JonmErWAAl7lJukPJCTlWktJNJmqIQMoJHu7sif7K2rd9
	 o4K6l1TkEuMTVEn07oMj6tFftJo+4/0FqjC/lFk4uvrcgC1SBXiRz1Fs5Ahlz4vDdh
	 c9qpy3gw1dTYg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from strange.networkguild.org (strange.networkguild.org
 [IPv6:2600:3c02:e000:dd::1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 532A13B29D;
 Sun, 15 Jun 2025 12:21:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=iconia.com;
 s=strange; t=1750004494;
 bh=xTAxmj2JEjoTMLvkERyVKHd3dkl14ADsCFYcq/lLWkA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PTeRXHzv5X+VV9ra9N3lGEqVD1c32Lg1DMd0/dT0YllIxmMV9wZOGc3x98U41GOIt
 jEDOF1ZXKYMISG91VRLFBDGtSvIj+0HiW1iBkd+mUTyrDSGS/bgNRJBWX0fh8+rlSb
 P90lVlUahkvvV9QAuGJWHYFXYi+fs4LPS7r695A8fgB1i3CGXnQmnwwLw/waFT2ODr
 XxuS2Z9mC+y0Shcm6btYYqU4uJfioIqs0NB0y6PS+kMH+amDF1kfjEg3KbLc+GNUKz
 GoJj0Xl0g4951CFdSdPHqpHaiFnUQ2f++cYcGZ05JKA9MpCf4F2aLIhIjdMxfaLQKA
 htfSgVEMIKLDA==
Received: from auth (localhost [127.0.0.1]) (authenticated bits=0)
 by strange.networkguild.org (8.17.1.9/8.17.1.9/Debian-2+deb12u2) with ESMTPSA
 id 55FGLX8E1373575
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT);
 Sun, 15 Jun 2025 12:21:33 -0400
Received: by mail-qt1-f169.google.com with SMTP id
 d75a77b69052e-4a43972dcd7so49867141cf.3; 
 Sun, 15 Jun 2025 09:21:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCV3PVFwVQ+1QiRdkMY0DP05ZOKdkBIQfsOkTGFjZz38OqSSC1y4vUIM4SdeFYlWmWDhlxC6inJQyGnx@lists.bufferbloat.net,
 AJvYcCVJnKM0CeWWVqb20+4y0WAm+MWKR4h6BFTXhBdMUPw7ORruis7YX11tapmqIgQ4I1Wv0rJ1Qic=@lists.bufferbloat.net,
 AJvYcCVyBLXEs0CyUoDVlvfxcMWXYwyceJeEtwDd2OwUyTra7XMJCJiG7LMiRnLASsV2gab0iiEH@lists.bufferbloat.net,
 AJvYcCXHhC64+DyK0JvYMZ8pDcA7puO2gN40LOgNl5QiOXraPN9FJX1uGI53QRJHAmCbZH+Q/tXjfC1oqiE=@lists.bufferbloat.net,
 AJvYcCXPao6tYKIDrNLYcOFKVE3OA4rQbkJF+fgGy9EcsEHUVb2bNI7Wqv2mGf52HHO5vB+D4P2xnQ==@lists.bufferbloat.net,
 AJvYcCXa95JIvSjJbRNAKk6TVM8YCUJTkLjfXVwggCIzhzpiG6/6J10twPKvMzF4x+jgNCcb1gTfrFE=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwbYHF8XHop4VyR9Vsuz132qNQKBOW6UCIZp62mg3KzXrY3bZcw
 SK5P3EMoR1DY0OP+qoarGDSnMwz4NDVxxvNgKd88oq8/uAxB6LQdD2OWvHnBLfaMm35E/G7dJw7
 2liUIo5cFtdMcaAqB40Q3LdqcUqOFwN0=
X-Google-Smtp-Source: AGHT+IGcrwwRXemnWZqHfE7Q8Q+ng+A6fjgjLPRQDjxaapiHsDzoRYOPb0K9vokTgkLKxu7dS8V0p3LOheIB4RR8baE=
X-Received: by 2002:ac8:5953:0:b0:4a4:3147:41d6 with SMTP id
 d75a77b69052e-4a73c55c3cemr94382471cf.15.1750004493201; Sun, 15 Jun 2025
 09:21:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
In-Reply-To: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
Date: Sun, 15 Jun 2025 09:20:56 -0700
X-Gmail-Original-Message-ID: <CAEf-zriqpW5Feyj-eRBiX7xiozy43n5Gkr7CvrjVYT-+RwvgfQ@mail.gmail.com>
X-Gm-Features: AX0GCFveZrq_1qHmrM61Y6QlL7C1AsLxXci31K2Maoil8te8618MxOSXMrwBN9s
Message-ID: <CAEf-zriqpW5Feyj-eRBiX7xiozy43n5Gkr7CvrjVYT-+RwvgfQ@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Virus-Scanned: clamav-milter 1.0.7 at strange.networkguild.org
X-Virus-Status: Clean
X-BitDefender-Scanner: Clean, Agent: BitDefender Milter 3.1.7 on
 strange.networkguild.org, sigver: 7.99020
X-BitDefender-Spam: No (0)
X-BitDefender-SpamStamp: Build: [Engines: 2.19.6.1586, Dats: 871106, Stamp:
 3], Multi: [Enabled, t: (0.000007,0.019125)], BW: [Enabled, t: (0.000006),
 whitelisted: geoff@iconia.com], APM: [Enabled, Score: 500, t:
 (0.012358,0.000278), Flags: BA7B0291; NN_BEGIN_TAG_NOT_OK;
 NN_LEGIT_VALID_REPLY; NN_LEGIT_SUMM_400_WORDS; NN_LEGIT_S_SQARE_BRACKETS;
 NN_LEGIT_ML_MAIL_LIST_ADN], RTDA: [Disabled], total: 0(775)
X-BitDefender-CF-Stamp: none
X-Spam-Status: No, score=-99.0 required=5.0 autolearn=disabled
X-Spam-Report: *  -99 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.0 HTML_MESSAGE BODY: HTML included in message
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on
 strange.networkguild.org
X-Mailman-Approved-At: Mon, 16 Jun 2025 05:57:50 -0400
Subject: Re: [Cake] [Starlink] Announcing the LibreQoS Bufferbloat Test
	Platform
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
Cc: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat-ietf@lists.bufferbloat.net,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============1950422412798050866=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1950422412798050866==
Content-Type: multipart/alternative; boundary="0000000000002c378e06379eac15"

--0000000000002c378e06379eac15
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

re: *thoughts and feedback!*

your https://test.libreqos.com tests of [Single User Test] & [Virtual
Household Mode] both give yours truly bufferbloat grades of *A+ *

whereas the https://www.waveform.com/tools/bufferbloat test gives yours
truly a bufferbloat brade grade of *C*

https://www.waveform.com/tools/bufferbloat?test-id=3Db13810f2-e999-4045-8e8=
b-ab3ab8b957c5

#1.) Why/What's the difference?

#2.) Who/Which one to believe=C2=BF

g


On Sun, Jun 15, 2025 at 4:58=E2=80=AFAM Frantisek Borsik via Starlink <
starlink@lists.bufferbloat.net> wrote:

> Hello to all,
>
> We're excited to announce the release of the *LibreQoS Bufferbloat Test*
> =E2=80=93 an open-source bufferbloat testing solution designed specifical=
ly for
> ISPs and network operators to deploy for their customers.
>
> *Link*
> https://test.libreqos.com
>
> *What Makes This Different*
>
> While there are several bufferbloat testing tools available, this platfor=
m
> addresses a critical gap: ISP-deployable infrastructure that provides bot=
h
> traditional testing and realistic household simulation.
>
> As Dave T=C3=A4ht highlighted in his influential article "What's Wrong wi=
th
> Speed Tests" <https://blog.cerowrt.org/post/speedtests/>, traditional
> speed tests fail to measure what users actually experience. We tried to
> address Dave's points to make a better speed test that focuses on the
> metric that matters: latency under load in realistic usage scenarios.
>
> *Two Complementary Test Modes*
>
> *Single User Test Mode*
>
>    - Traditional sequential load testing (baseline =E2=86=92 download =E2=
=86=92 upload =E2=86=92
>    bidirectional)
>    - Measures working latency and jitter during each phase
>    - Familiar A+ to F grading based on latency under load increases
>    - Comparable to existing tools like DSLReports Speed Test and Waveform
>    Bufferbloat Test
>
>
> *Virtual Household Mode (The Innovation)*
>
> Process-isolated simulation of 4 concurrent users with authentic traffic
> patterns:
>
>    - Alex (Gaming): 1.5 Mbps constant, jitter-sensitive for competitive
>    gaming
>    - Sarah (Video Conference): 2.5 Mbps bidirectional, Teams simulation
>    with working latency monitoring
>    - Jake (Netflix HD): 25 Mbps bursts (1s on, 4s off), realistic
>    streaming patterns
>    - Computer (Background): Up to 200 Mbps continuous download, system
>    updates
>
>
> Real-world relevance: Tests latency under load when multiple family
> members are online simultaneously
>
> Advanced grading: Network fairness, jitter measurement, and per-user
> working latency analysis
>
> *Why (not only) ISPs Need This*
>
> *The traditional approach of sending customers to third-party speed test
> sites has limitations:*
>
>    - No control over test methodology or server placement
>    - Limited correlation with customer support tickets
>    - Generic results that don't reflect real-world usage patterns
>    - No integration with ISP operational systems
>
> *This platform enables (not only) ISPs to:*
>
>    - Host their own testing infrastructure with full control
>    - Integrate with support systems via telemetry APIs
>    - Provide customers with realistic household testing scenarios
>    - Correlate test results with network performance and customer
>    complaints
>
>
> *Open Source & Community*
>
> The entire platform is open source and available here:
> https://github.com/LibreQoE/bufferbloat_test
>
> We've designed this to be:
>
>    - Easy to deploy for (not only) ISPs of any size
>    - Scientifically meaningful in its measurement methodology
>    - Realistic in its simulation of actual household usage
>    - Integrable with existing ISP operational workflows
>
>
>
> *Community Feedback Requested*
> We'd love feedback from the bufferbloat.net community on:
>
>    - Test methodology: Are we measuring the right metrics?
>    - Grading thresholds: Do our A+ to F grades align with real-world
>    impact?
>    - Virtual household scenarios: What other realistic usage patterns
>    should we simulate?
>    - ISP adoption: What barriers exist for ISP deployment?
>
>
>
> *Technical Discussion*
> We'd welcome discussion about:
>
>    - Measurement accuracy for working latency and jitter in virtual
>    household mode
>    - Traffic pattern authenticity (gaming, video conferencing, streaming)
>    - Grading methodology for latency under load in complex multi-user
>    scenarios
>    - Integration approaches for ISP operational systems
>
>
> The platform represents our attempt to bridge the gap between academic
> bufferbloat research and practical ISP operations, building on the
> foundational work of researchers like Dave T=C3=A4ht and the broader buff=
erbloat
> community. We believe that widespread ISP deployment of proper bufferbloa=
t
> testing infrastructure will ultimately benefit the entire internet
> ecosystem.
>
>
> *Looking forward to the community's thoughts and feedback!*
> Best regards,
>
> The LibreQoS Team
>
>
> *In loving memory of Dave T=C3=A4ht: *1965-2025
>
> https://libreqos.io/2025/04/01/in-loving-memory-of-dave/
>
>
> https://www.linkedin.com/in/frantisekborsik
>
> Signal, Telegram, WhatsApp: +421919416714
>
> iMessage, mobile: +420775230885
>
> Skype: casioa5302ca
>
> frantisek.borsik@gmail.com
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>


--=20
Geoff.Goodfellow@iconia.com
living as The Truth is True

--0000000000002c378e06379eac15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default"><font face=
=3D"verdana, sans-serif">re:=C2=A0<b>thoughts and feedback!</b></font></div=
><div class=3D"gmail_default"><font face=3D"verdana, sans-serif"><br></font=
></div><div class=3D"gmail_default"><font face=3D"verdana, sans-serif">your=
=C2=A0<a href=3D"https://test.libreqos.com/" target=3D"_blank">https://test=
.libreqos.com</a>=C2=A0tests of [Single User Test] &amp; [Virtual Household=
 Mode] both give yours truly bufferbloat grades of <b>A+=C2=A0</b></font></=
div><div class=3D"gmail_default"><font face=3D"verdana, sans-serif"><br></f=
ont></div><div class=3D"gmail_default"><font face=3D"verdana, sans-serif">w=
hereas the=C2=A0<a href=3D"https://www.waveform.com/tools/bufferbloat">http=
s://www.waveform.com/tools/bufferbloat</a>=C2=A0test gives yours truly a bu=
fferbloat brade grade of <b>C</b></font></div><div class=3D"gmail_default">=
<font face=3D"verdana, sans-serif"><br></font></div><div class=3D"gmail_def=
ault"><font face=3D"verdana, sans-serif"><a href=3D"https://www.waveform.co=
m/tools/bufferbloat?test-id=3Db13810f2-e999-4045-8e8b-ab3ab8b957c5">https:/=
/www.waveform.com/tools/bufferbloat?test-id=3Db13810f2-e999-4045-8e8b-ab3ab=
8b957c5</a><br></font></div><div class=3D"gmail_default"><font face=3D"verd=
ana, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"verdana, sans-serif">#1.) Why/What&#39;s the difference?</font></div><d=
iv class=3D"gmail_default"><font face=3D"verdana, sans-serif"><br></font></=
div><div class=3D"gmail_default"><font face=3D"verdana, sans-serif">#2.) Wh=
o/Which one to believe=C2=BF</font></div><div class=3D"gmail_default"><font=
 face=3D"verdana, sans-serif"><br></font></div><div class=3D"gmail_default"=
><font face=3D"verdana, sans-serif">g</font></div><div class=3D"gmail_defau=
lt" style=3D"font-family:verdana,sans-serif;font-size:small"><br></div></di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sun, Jun 15, 2025 at 4:58=E2=80=AFAM Frantisek Borsik =
via Starlink &lt;<a href=3D"mailto:starlink@lists.bufferbloat.net">starlink=
@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div>Hello to all,<br><br>We&#39;re =
excited to announce the release of the <b>LibreQoS Bufferbloat Test</b> =E2=
=80=93 an open-source bufferbloat testing solution designed specifically fo=
r ISPs and network operators to deploy for their customers.<br><br><b>Link<=
/b><br><a href=3D"https://test.libreqos.com" target=3D"_blank">https://test=
.libreqos.com</a><br><br><b>What Makes This Different</b><br><br>While ther=
e are several bufferbloat testing tools available, this platform addresses =
a critical gap: ISP-deployable infrastructure that provides both traditiona=
l testing and realistic household simulation.<br><br>As Dave T=C3=A4ht high=
lighted in his influential article <a href=3D"https://blog.cerowrt.org/post=
/speedtests/" target=3D"_blank">&quot;What&#39;s Wrong with Speed Tests&quo=
t;</a>, traditional speed tests fail to measure what users actually experie=
nce. We tried to address Dave&#39;s points to make a better speed test that=
 focuses on the metric that matters: latency under load in realistic usage =
scenarios.<br><br><b>Two Complementary Test Modes</b><br><br><i>Single User=
 Test Mode</i><br><ul><li>Traditional sequential load testing (baseline =E2=
=86=92 download =E2=86=92 upload =E2=86=92 bidirectional)</li><li>Measures =
working latency and jitter during each phase</li><li>Familiar A+ to F gradi=
ng based on latency under load increases</li><li>Comparable to existing too=
ls like DSLReports Speed Test and Waveform Bufferbloat Test<br></li></ul><b=
r><i>Virtual Household Mode (The Innovation)</i><br><br>Process-isolated si=
mulation of 4 concurrent users with authentic traffic patterns:<br><ul><li>=
Alex (Gaming): 1.5 Mbps constant, jitter-sensitive for competitive gaming</=
li><li>Sarah (Video Conference): 2.5 Mbps bidirectional, Teams simulation w=
ith working latency monitoring</li><li>Jake (Netflix HD): 25 Mbps bursts (1=
s on, 4s off), realistic streaming patterns</li><li>Computer (Background): =
Up to 200 Mbps continuous download, system updates<br></li></ul><br>Real-wo=
rld relevance: Tests latency under load when multiple family members are on=
line simultaneously<br><br>Advanced grading: Network fairness, jitter measu=
rement, and per-user working latency analysis<br><br><b>Why (not only) ISPs=
 Need This</b><br><br><i>The traditional approach of sending customers to t=
hird-party speed test sites has limitations:</i><br><ul><li>No control over=
 test methodology or server placement</li><li>Limited correlation with cust=
omer support tickets</li><li>Generic results that don&#39;t reflect real-wo=
rld usage patterns</li><li>No integration with ISP operational systems</li>=
</ul><i>This platform enables (not only) ISPs to:</i><br><ul><li>Host their=
 own testing infrastructure with full control</li><li>Integrate with suppor=
t systems via telemetry APIs</li><li>Provide customers with realistic house=
hold testing scenarios</li><li>Correlate test results with network performa=
nce and customer complaints<br></li></ul><br><b>Open Source &amp; Community=
</b><br><br>The entire platform is open source and available here: <a href=
=3D"https://github.com/LibreQoE/bufferbloat_test" target=3D"_blank">https:/=
/github.com/LibreQoE/bufferbloat_test</a><br><br>We&#39;ve designed this to=
 be:<br><ul><li>Easy to deploy for (not only) ISPs of any size</li><li>Scie=
ntifically meaningful in its measurement methodology</li><li>Realistic in i=
ts simulation of actual household usage</li><li>Integrable with existing IS=
P operational workflows<br></li></ul><br><b>Community Feedback Requested<br=
></b><br>We&#39;d love feedback from the <a href=3D"http://bufferbloat.net"=
 target=3D"_blank">bufferbloat.net</a> community on:<br><ul><li>Test method=
ology: Are we measuring the right metrics?</li><li>Grading thresholds: Do o=
ur A+ to F grades align with real-world impact?</li><li>Virtual household s=
cenarios: What other realistic usage patterns should we simulate?</li><li>I=
SP adoption: What barriers exist for ISP deployment?<br></li></ul><br><b>Te=
chnical Discussion<br></b><br>We&#39;d welcome discussion about:<br><ul><li=
>Measurement accuracy for working latency and jitter in virtual household m=
ode</li><li>Traffic pattern authenticity (gaming, video conferencing, strea=
ming)</li><li>Grading methodology for latency under load in complex multi-u=
ser scenarios</li><li>Integration approaches for ISP operational systems<br=
></li></ul><br>The platform represents our attempt to bridge the gap betwee=
n academic bufferbloat research and practical ISP operations, building on t=
he foundational work of researchers like Dave T=C3=A4ht and the broader buf=
ferbloat community. We believe that widespread ISP deployment of proper buf=
ferbloat testing infrastructure will ultimately benefit the entire internet=
 ecosystem.<br><br><b>Looking forward to the community&#39;s thoughts and f=
eedback!<br></b><br>Best regards,<br><br>The LibreQoS Team</div><div><div d=
ir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34=
,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><b><u></=
u>In loving memory of Dave T=C3=A4ht:=C2=A0</b><span style=3D"color:rgb(32,=
33,36)">1965-2025</span></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34=
,34)"><u></u><a href=3D"https://libreqos.io/2025/04/01/in-loving-memory-of-=
dave/" target=3D"_blank">https://libreqos.io/2025/04/01/in-loving-memory-of=
-dave/</a></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><br></p>=
<p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"https://www=
.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" target=3D"=
_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u></p><p=
 class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsA=
pp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"co=
lor:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u></p><p clas=
s=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u>=
</u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mai=
lto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_b=
lank">frantisek.borsik@gmail.com</a></p></div></div></div></div></div></div=
></div></div></div></div></div></div>
_______________________________________________<br>
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

--0000000000002c378e06379eac15--

--===============1950422412798050866==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1950422412798050866==--

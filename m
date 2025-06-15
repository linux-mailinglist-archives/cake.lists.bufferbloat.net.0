Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C2DADA2AD
	for <lists+cake@lfdr.de>; Sun, 15 Jun 2025 18:53:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7ADCF3CB42;
	Sun, 15 Jun 2025 12:53:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1750006396;
	bh=tdOrKVCiAbesoMrjNCnXcoyMiJbXxGBGEf2Nq5x11eU=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=nKny6RY2w75nH9cawuV9NSCt8mvRCTMtLHe7sY0GOxuU23uGD+slAxTh1+Qff7SIb
	 KDRY7Gi7xEQwympzbC4Qt26siHiUNqJT23JZVP5XfLtEfITjGraoj3s6IVdM0NO6ac
	 yyR+WNaqWbjhxa/wueZjb79RHBGhBAa+EWQWeYZmuZCurZ7yFAdDa85jjy3jVGAHNt
	 qG+/l+vf8+H3K9+FNCvhQY2cE6tNNESmbLvvDNYA7i5lifswt6nm7fN4KMh4o/hAI1
	 cm0vBrHwxnRIqWgg1/zbymJ+mw5zVYp4jZG11AfK3pnwlLO1l/JCx7xIyyNsSquxC/
	 85dLtxD1fw29Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from fhigh-b3-smtp.messagingengine.com
 (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1AFA43B29D;
 Sun, 15 Jun 2025 12:53:15 -0400 (EDT)
Received: from phl-compute-08.internal (phl-compute-08.phl.internal
 [10.202.2.48])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 2A20F2540163;
 Sun, 15 Jun 2025 12:53:14 -0400 (EDT)
Received: from phl-imap-09 ([10.202.2.99])
 by phl-compute-08.internal (MEProxy); Sun, 15 Jun 2025 12:53:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 cc:cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1750006394; x=1750092794; bh=vQ8MdZFcnS
 MOot4PGKBO+6O2edVHD/PlO3TbJ0jBV4Y=; b=eNI25RMl8+Pv9uK9H4MxzBzS7k
 F1ol0iIg9ymTd8NT/ty7MN8RbEK3sj2ba0H9e6xs9G4sKqkzYE3cSCnfAZ0o8/04
 QJm0ccJ2p74thRS/UWlipZ80hc6rvMo2FE3KhN/5rrOfakn1GpQbRsC4fvxlz+o2
 lKhkP8RpPoG+Cr5y68vPe7toY++BQwxYtAbLTna9qUYCZR5FaYSplO8NfyhQ7+kE
 S3ljao5t3MkQ0XqZ9scDmwwTaJMTcjS8+7rWO8tJzWSrDrpHZfwOWlWrl/tgGTh9
 PN07l77nuntURt6wPpCqITOBT5C0VIYxuVPBPz/O+3u4qhxnGTY/pUxdIZNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1750006394; x=1750092794; bh=vQ8MdZFcnSMOot4PGKBO+6O2edVHD/PlO3T
 bJ0jBV4Y=; b=Uks2k7uSIh6riFvVBTB4UJppCATuWlmyv5rZDhbKz4SICgDGbh9
 6if48MRLYmsF4TiJRCSsIcrGmNxou90LKId54uWjNu9KnTIMHuUdXA/JQJWn2Ayt
 FZdVQHbAUn2CwkhprHdRbed6vENI9VKqbWk6754AjcKy6HTcgbG3W/oC56msVm+F
 MNuXlQLZlcbLNIeR656SuwX+AsuCDbiWZnIXmMXkTWpJRHFa8CD9IzhQ/gihEaqx
 4rB8oH3m7mOr09nRIroBytWfekrQH/wULZ9PG96hQqFRX4JVyW9kupfRJFp7jkGE
 zVnT9h11f18JMLeeiXLRYrrVjqJlEC5PtDw==
X-ME-Sender: <xms:efpOaClJb4ulaj_KaE1OUnFQAcXe6Anp-iJF5VVpTrduJTbogZwBQw>
 <xme:efpOaJ0Y36EEuop7KJ4oMiAYnFHHXr13oQKPK9dNzs57LsVpGhaL2OhnomFpoyiaF
 o5_xivUYI9qesf7zw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvgedvfecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtsegrtderreertdej
 necuhfhrohhmpedfpfhilhhsucetnhgurhgvrghsucfuvhgvvgdfuceomhgvsehlohgthh
 hnrghirhdrnhgvtheqnecuggftrfgrthhtvghrnhepvefgtdevtedtgfeuleekfeeijefg
 udetleethfeiveetffdtgffffeeigedtjedunecuffhomhgrihhnpehimhhguhhrrdgtoh
 hmpdhlihgsrhgvqhhoshdrtghomhdpfigrvhgvfhhorhhmrdgtohhmpdgtvghrohifrhht
 rdhorhhgpdhgihhthhhusgdrtghomhdpsghufhhfvghrsghlohgrthdrnhgvthdplhhisg
 hrvghqohhsrdhiohdplhhinhhkvgguihhnrdgtohhmnecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehlohgthhhnrghirhdrnhgvthdpnh
 gspghrtghpthhtohepuddupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehfrhgr
 nhhtihhsvghkrdgsohhrshhikhesghhmrghilhdrtghomhdprhgtphhtthhopehgvghofh
 hfsehitghonhhirgdrtghomhdprhgtphhtthhopehhfiholhhvvghrshhonheslhhisghr
 vghqohhsrdhiohdprhgtphhtthhopehrohgsvghrtheslhhisghrvghqohhsrdhiohdprh
 gtphhtthhopegslhhorghtqdhivghtfheslhhishhtshdrsghufhhfvghrsghlohgrthdr
 nhgvthdprhgtphhtthhopegslhhorghtsehlihhsthhsrdgsuhhffhgvrhgslhhorghtrd
 hnvghtpdhrtghpthhtoheptggrkhgvsehlihhsthhsrdgsuhhffhgvrhgslhhorghtrdhn
 vghtpdhrtghpthhtoheptghouggvlheslhhishhtshdrsghufhhfvghrsghlohgrthdrnh
 gvthdprhgtphhtthhopehlihgsrhgvqhhosheslhhishhtshdrsghufhhfvghrsghlohgr
 thdrnhgvth
X-ME-Proxy: <xmx:efpOaArhNirU-6ViponvsBjp99I4x6BmShjyZuR3p-7Xv2sBSVmhFA>
 <xmx:efpOaGk5qK0wsmrEwF53stK92ChmFIOJVi_EsSM1uITQ2gY0DOP_ZQ>
 <xmx:efpOaA2MREvU51nfmfyfbhbxsf2lit62x2XtIUnT9dLFJ4j8nV4OJg>
 <xmx:efpOaNvr5YQWNP42w1cZWuqhhwwavtrXH2EIUaaRRJaiOpLyd-4IJQ>
 <xmx:efpOaHId-V1p3M3FWbS90RnKNzPPrFzcLQc6vYpqy2sPlaxKLLsGZAbP>
Feedback-ID: i6a5b4305:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 522003020061; Sun, 15 Jun 2025 12:53:13 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T73d355fa67b694f7
Date: Sun, 15 Jun 2025 23:52:46 +0700
To: "the keyboard of geoff goodfellow" <geoff@iconia.com>,
 "Frantisek Borsik" <frantisek.borsik@gmail.com>
Message-Id: <6684dff4-c2a1-4f41-be9a-71162f256031@app.fastmail.com>
In-Reply-To: <CAEf-zriqpW5Feyj-eRBiX7xiozy43n5Gkr7CvrjVYT-+RwvgfQ@mail.gmail.com>
References: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
 <CAEf-zriqpW5Feyj-eRBiX7xiozy43n5Gkr7CvrjVYT-+RwvgfQ@mail.gmail.com>
Subject: Re: [Cake] [Bloat] [Starlink] Announcing the LibreQoS Bufferbloat
	TestPlatform
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
From: Nils Andreas Svee via Cake <cake@lists.bufferbloat.net>
Reply-To: Nils Andreas Svee <me@lochnair.net>
Cc: Dave Taht <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Jeremy Austin <rpm@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============7023020450750040541=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7023020450750040541==
Content-Type: multipart/alternative;
 boundary=4293ca6755f24b8a8b23a516f501e52b

--4293ca6755f24b8a8b23a516f501e52b
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Just tried it too: https://imgur.com/a/F2cNZd4, also getting A+ overall,=
 and "only" A for bidirectional.

I seem to be getting a 200+ ms spike right at the beginning of the basel=
ine test, which skews the results.
This happened at least on a couple of tests, but after a few tries it go=
t better. At least with ICMP ping separately I don't see any spikes like=
 that.

Best Regards
Nils

On Sun, Jun 15, 2025, at 23:20, the keyboard of geoff goodfellow via Blo=
at wrote:
> re: *thoughts and feedback!*
>=20
> your https://test.libreqos.com tests of [Single User Test] & [Virtual =
Household Mode] both give yours truly bufferbloat grades of *A+ *
>=20
> whereas the https://www.waveform.com/tools/bufferbloat test gives your=
s truly a bufferbloat brade grade of *C*
>=20
> https://www.waveform.com/tools/bufferbloat?test-id=3Db13810f2-e999-404=
5-8e8b-ab3ab8b957c5
>=20
> #1.) Why/What's the difference?
>=20
> #2.) Who/Which one to believe=C2=BF
>=20
> g
>=20
>=20
> On Sun, Jun 15, 2025 at 4:58=E2=80=AFAM Frantisek Borsik via Starlink =
<starlink@lists.bufferbloat.net> wrote:
>> Hello to all,
>>=20
>> We're excited to announce the release of the *LibreQoS Bufferbloat Te=
st* =E2=80=93 an open-source bufferbloat testing solution designed speci=
fically for ISPs and network operators to deploy for their customers.
>>=20
>> *Link*
>> https://test.libreqos.com
>>=20
>> *What Makes This Different*
>>=20
>> While there are several bufferbloat testing tools available, this pla=
tform addresses a critical gap: ISP-deployable infrastructure that provi=
des both traditional testing and realistic household simulation.
>>=20
>> As Dave T=C3=A4ht highlighted in his influential article "What's Wron=
g with Speed Tests" <https://blog.cerowrt.org/post/speedtests/>, traditi=
onal speed tests fail to measure what users actually experience. We trie=
d to address Dave's points to make a better speed test that focuses on t=
he metric that matters: latency under load in realistic usage scenarios.
>>=20
>> *Two Complementary Test Modes*
>>=20
>> *Single User Test Mode*
>>  =E2=80=A2 Traditional sequential load testing (baseline =E2=86=92 do=
wnload =E2=86=92 upload =E2=86=92 bidirectional)
>>  =E2=80=A2 Measures working latency and jitter during each phase
>>  =E2=80=A2 Familiar A+ to F grading based on latency under load incre=
ases
>>  =E2=80=A2 Comparable to existing tools like DSLReports Speed Test an=
d Waveform Bufferbloat Test
>>=20
>> *Virtual Household Mode (The Innovation)*
>>=20
>> Process-isolated simulation of 4 concurrent users with authentic traf=
fic patterns:
>>  =E2=80=A2 Alex (Gaming): 1.5 Mbps constant, jitter-sensitive for com=
petitive gaming
>>  =E2=80=A2 Sarah (Video Conference): 2.5 Mbps bidirectional, Teams si=
mulation with working latency monitoring
>>  =E2=80=A2 Jake (Netflix HD): 25 Mbps bursts (1s on, 4s off), realist=
ic streaming patterns
>>  =E2=80=A2 Computer (Background): Up to 200 Mbps continuous download,=
 system updates
>>=20
>> Real-world relevance: Tests latency under load when multiple family m=
embers are online simultaneously
>>=20
>> Advanced grading: Network fairness, jitter measurement, and per-user =
working latency analysis
>>=20
>> *Why (not only) ISPs Need This*
>>=20
>> *The traditional approach of sending customers to third-party speed t=
est sites has limitations:*
>>  =E2=80=A2 No control over test methodology or server placement
>>  =E2=80=A2 Limited correlation with customer support tickets
>>  =E2=80=A2 Generic results that don't reflect real-world usage patter=
ns
>>  =E2=80=A2 No integration with ISP operational systems
>> *This platform enables (not only) ISPs to:*
>>  =E2=80=A2 Host their own testing infrastructure with full control
>>  =E2=80=A2 Integrate with support systems via telemetry APIs
>>  =E2=80=A2 Provide customers with realistic household testing scenari=
os
>>  =E2=80=A2 Correlate test results with network performance and custom=
er complaints
>>=20
>> *Open Source & Community*
>>=20
>> The entire platform is open source and available here: https://github=
.com/LibreQoE/bufferbloat_test
>>=20
>> We've designed this to be:
>>  =E2=80=A2 Easy to deploy for (not only) ISPs of any size
>>  =E2=80=A2 Scientifically meaningful in its measurement methodology
>>  =E2=80=A2 Realistic in its simulation of actual household usage
>>  =E2=80=A2 Integrable with existing ISP operational workflows
>>=20
>> *Community Feedback Requested
*
>> We'd love feedback from the bufferbloat.net community on:
>>  =E2=80=A2 Test methodology: Are we measuring the right metrics?
>>  =E2=80=A2 Grading thresholds: Do our A+ to F grades align with real-=
world impact?
>>  =E2=80=A2 Virtual household scenarios: What other realistic usage pa=
tterns should we simulate?
>>  =E2=80=A2 ISP adoption: What barriers exist for ISP deployment?
>>=20
>> *Technical Discussion
*
>> We'd welcome discussion about:
>>  =E2=80=A2 Measurement accuracy for working latency and jitter in vir=
tual household mode
>>  =E2=80=A2 Traffic pattern authenticity (gaming, video conferencing, =
streaming)
>>  =E2=80=A2 Grading methodology for latency under load in complex mult=
i-user scenarios
>>  =E2=80=A2 Integration approaches for ISP operational systems
>>=20
>> The platform represents our attempt to bridge the gap between academi=
c bufferbloat research and practical ISP operations, building on the fou=
ndational work of researchers like Dave T=C3=A4ht and the broader buffer=
bloat community. We believe that widespread ISP deployment of proper buf=
ferbloat testing infrastructure will ultimately benefit the entire inter=
net ecosystem.
>>=20
>> *Looking forward to the community's thoughts and feedback!
*
>> Best regards,
>>=20
>> The LibreQoS Team
>>=20
>> *__In loving memory of Dave T=C3=A4ht: *1965-2025
>> __https://libreqos.io/2025/04/01/in-loving-memory-of-dave/
>>=20
>> https://www.linkedin.com/in/frantisekborsik____
>> Signal, Telegram, WhatsApp: +421919416714 ____
>> iMessage, mobile: +420775230885____
>> Skype: casioa5302ca____
>> frantisek.borsik@gmail.com
>> _______________________________________________
>> Starlink mailing list
>> Starlink@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/starlink
>=20
>=20
> --
> Geoff.Goodfellow@iconia.com
>=20
> living as The Truth is True
>=20
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>=20

--4293ca6755f24b8a8b23a516f501e52b
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title></head><body><div>Just tried i=
t too:&nbsp;<a href=3D"https://imgur.com/a/F2cNZd4">https://imgur.com/a/=
F2cNZd4</a>, also getting A+ overall, and "only" A for bidirectional.</d=
iv><div><br></div><div>I seem to be getting a 200+ ms spike right at the=
 beginning of the baseline test, which skews the results.</div><div>This=
 happened at least on a couple of tests, but after a few tries it got be=
tter. At least with ICMP ping separately I don't see any spikes like tha=
t.</div><div><br></div><div id=3D"sig44785538"><div class=3D"signature">=
Best Regards</div><div class=3D"signature">Nils</div></div><div><br></di=
v><div>On Sun, Jun 15, 2025, at 23:20, the keyboard of geoff goodfellow =
via Bloat wrote:</div><blockquote type=3D"cite" id=3D"qt" style=3D""><di=
v dir=3D"ltr"><div dir=3D"ltr"><div class=3D"qt-gmail_default"><span cla=
ss=3D"font" style=3D"font-family:verdana, sans-serif;">re:&nbsp;<b>thoug=
hts and feedback!</b></span></div><div class=3D"qt-gmail_default"><span =
class=3D"font" style=3D"font-family:verdana, sans-serif;"></span><br></d=
iv><div class=3D"qt-gmail_default"><span class=3D"font" style=3D"font-fa=
mily:verdana, sans-serif;">your&nbsp;<a href=3D"https://test.libreqos.co=
m/" target=3D"_blank">https://test.libreqos.com</a>&nbsp;tests of [Singl=
e User Test] &amp; [Virtual Household Mode] both give yours truly buffer=
bloat grades of <b>A+&nbsp;</b></span></div><div class=3D"qt-gmail_defau=
lt"><span class=3D"font" style=3D"font-family:verdana, sans-serif;"></sp=
an><br></div><div class=3D"qt-gmail_default"><span class=3D"font" style=3D=
"font-family:verdana, sans-serif;">whereas the&nbsp;<a href=3D"https://w=
ww.waveform.com/tools/bufferbloat">https://www.waveform.com/tools/buffer=
bloat</a>&nbsp;test gives yours truly a bufferbloat brade grade of <b>C<=
/b></span></div><div class=3D"qt-gmail_default"><span class=3D"font" sty=
le=3D"font-family:verdana, sans-serif;"></span><br></div><div class=3D"q=
t-gmail_default"><span class=3D"font" style=3D"font-family:verdana, sans=
-serif;"><a href=3D"https://www.waveform.com/tools/bufferbloat?test-id=3D=
b13810f2-e999-4045-8e8b-ab3ab8b957c5">https://www.waveform.com/tools/buf=
ferbloat?test-id=3Db13810f2-e999-4045-8e8b-ab3ab8b957c5</a></span></div>=
<div class=3D"qt-gmail_default"><span class=3D"font" style=3D"font-famil=
y:verdana, sans-serif;"></span><br></div><div class=3D"qt-gmail_default"=
><span class=3D"font" style=3D"font-family:verdana, sans-serif;">#1.) Wh=
y/What's the difference?</span></div><div class=3D"qt-gmail_default"><sp=
an class=3D"font" style=3D"font-family:verdana, sans-serif;"></span><br>=
</div><div class=3D"qt-gmail_default"><span class=3D"font" style=3D"font=
-family:verdana, sans-serif;">#2.) Who/Which one to believe=C2=BF</span>=
</div><div class=3D"qt-gmail_default"><span class=3D"font" style=3D"font=
-family:verdana, sans-serif;"></span><br></div><div class=3D"qt-gmail_de=
fault"><span class=3D"font" style=3D"font-family:verdana, sans-serif;">g=
</span></div><div class=3D"qt-gmail_default" style=3D"font-family:verdan=
a, sans-serif;font-size:small;"><br></div></div><div><br></div><div clas=
s=3D"qt-gmail_quote qt-gmail_quote_container"><div dir=3D"ltr" class=3D"=
qt-gmail_attr">On Sun, Jun 15, 2025 at 4:58=E2=80=AFAM Frantisek Borsik =
via Starlink &lt;<a href=3D"mailto:starlink@lists.bufferbloat.net">starl=
ink@lists.bufferbloat.net</a>&gt; wrote:</div><blockquote class=3D"qt-gm=
ail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;ma=
rgin-left:0.8ex;border-left-width:1px;border-left-style:solid;border-lef=
t-color:rgb(204, 204, 204);padding-left:1ex;"><div dir=3D"ltr"><div><div=
>Hello to all,</div><div><br></div><div>We're excited to announce the re=
lease of the <b>LibreQoS Bufferbloat Test</b> =E2=80=93 an open-source b=
ufferbloat testing solution designed specifically for ISPs and network o=
perators to deploy for their customers.</div><div><br></div><div><b>Link=
</b></div><div><a href=3D"https://test.libreqos.com" target=3D"_blank">h=
ttps://test.libreqos.com</a></div><div><br></div><div><b>What Makes This=
 Different</b></div><div><br></div><div>While there are several bufferbl=
oat testing tools available, this platform addresses a critical gap: ISP=
-deployable infrastructure that provides both traditional testing and re=
alistic household simulation.</div><div><br></div><div>As Dave T=C3=A4ht=
 highlighted in his influential article <a href=3D"https://blog.cerowrt.=
org/post/speedtests/" target=3D"_blank">"What's Wrong with Speed Tests"<=
/a>, traditional speed tests fail to measure what users actually experie=
nce. We tried to address Dave's points to make a better speed test that =
focuses on the metric that matters: latency under load in realistic usag=
e scenarios.</div><div><br></div><div><b>Two Complementary Test Modes</b=
></div><div><br></div><div><i>Single User Test Mode</i></div><ul><li>Tra=
ditional sequential load testing (baseline =E2=86=92 download =E2=86=92 =
upload =E2=86=92 bidirectional)</li><li>Measures working latency and jit=
ter during each phase</li><li>Familiar A+ to F grading based on latency =
under load increases</li><li>Comparable to existing tools like DSLReport=
s Speed Test and Waveform Bufferbloat Test</li></ul><div><br></div><div>=
<i>Virtual Household Mode (The Innovation)</i></div><div><br></div><div>=
Process-isolated simulation of 4 concurrent users with authentic traffic=
 patterns:</div><ul><li>Alex (Gaming): 1.5 Mbps constant, jitter-sensiti=
ve for competitive gaming</li><li>Sarah (Video Conference): 2.5 Mbps bid=
irectional, Teams simulation with working latency monitoring</li><li>Jak=
e (Netflix HD): 25 Mbps bursts (1s on, 4s off), realistic streaming patt=
erns</li><li>Computer (Background): Up to 200 Mbps continuous download, =
system updates</li></ul><div><br></div><div>Real-world relevance: Tests =
latency under load when multiple family members are online simultaneousl=
y</div><div><br></div><div>Advanced grading: Network fairness, jitter me=
asurement, and per-user working latency analysis</div><div><br></div><di=
v><b>Why (not only) ISPs Need This</b></div><div><br></div><div><i>The t=
raditional approach of sending customers to third-party speed test sites=
 has limitations:</i></div><ul><li>No control over test methodology or s=
erver placement</li><li>Limited correlation with customer support ticket=
s</li><li>Generic results that don't reflect real-world usage patterns</=
li><li>No integration with ISP operational systems</li></ul><div><i>This=
 platform enables (not only) ISPs to:</i></div><ul><li>Host their own te=
sting infrastructure with full control</li><li>Integrate with support sy=
stems via telemetry APIs</li><li>Provide customers with realistic househ=
old testing scenarios</li><li>Correlate test results with network perfor=
mance and customer complaints</li></ul><div><br></div><div><b>Open Sourc=
e &amp; Community</b></div><div><br></div><div>The entire platform is op=
en source and available here: <a href=3D"https://github.com/LibreQoE/buf=
ferbloat_test" target=3D"_blank">https://github.com/LibreQoE/bufferbloat=
_test</a></div><div><br></div><div>We've designed this to be:</div><ul><=
li>Easy to deploy for (not only) ISPs of any size</li><li>Scientifically=
 meaningful in its measurement methodology</li><li>Realistic in its simu=
lation of actual household usage</li><li>Integrable with existing ISP op=
erational workflows</li></ul><div><br></div><div><b>Community Feedback R=
equested<br></b></div><div>We'd love feedback from the <a href=3D"http:/=
/bufferbloat.net" target=3D"_blank">bufferbloat.net</a> community on:</d=
iv><ul><li>Test methodology: Are we measuring the right metrics?</li><li=
>Grading thresholds: Do our A+ to F grades align with real-world impact?=
</li><li>Virtual household scenarios: What other realistic usage pattern=
s should we simulate?</li><li>ISP adoption: What barriers exist for ISP =
deployment?</li></ul><div><br></div><div><b>Technical Discussion<br></b>=
</div><div>We'd welcome discussion about:</div><ul><li>Measurement accur=
acy for working latency and jitter in virtual household mode</li><li>Tra=
ffic pattern authenticity (gaming, video conferencing, streaming)</li><l=
i>Grading methodology for latency under load in complex multi-user scena=
rios</li><li>Integration approaches for ISP operational systems</li></ul=
><div><br></div><div>The platform represents our attempt to bridge the g=
ap between academic bufferbloat research and practical ISP operations, b=
uilding on the foundational work of researchers like Dave T=C3=A4ht and =
the broader bufferbloat community. We believe that widespread ISP deploy=
ment of proper bufferbloat testing infrastructure will ultimately benefi=
t the entire internet ecosystem.</div><div><br></div><div><b>Looking for=
ward to the community's thoughts and feedback!<br></b></div><div>Best re=
gards,</div><div><br></div><div>The LibreQoS Team</div></div><div><div d=
ir=3D"ltr" class=3D"qt-gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div><p class=3D"qt-MsoNormal" style=3D"=
color:rgb(34, 34, 34);"><br></p><p class=3D"qt-MsoNormal" style=3D"color=
:rgb(34, 34, 34);"><b><u></u>In loving memory of Dave T=C3=A4ht:&nbsp;</=
b><span style=3D"color:rgb(32, 33, 36);">1965-2025</span></p><p class=3D=
"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);"><u></u><a href=3D"https:=
//libreqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">ht=
tps://libreqos.io/2025/04/01/in-loving-memory-of-dave/</a></p><p class=3D=
"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);"><br></p><p class=3D"qt-M=
soNormal" style=3D"color:rgb(34, 34, 34);"><a href=3D"https://www.linked=
in.com/in/frantisekborsik" style=3D"color:rgb(17, 85, 204);" target=3D"_=
blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u></p>=
<p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);">Signal, Teleg=
ram, WhatsApp: +421919416714&nbsp;<u></u><u></u></p><p class=3D"qt-MsoNo=
rmal" style=3D"color:rgb(34, 34, 34);">iMessage, mobile: +420775230885<u=
></u><u></u></p><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34)=
;">Skype: casioa5302ca<u></u><u></u></p><p class=3D"qt-MsoNormal" style=3D=
"color:rgb(34, 34, 34);"><a href=3D"mailto:frantisek.borsik@gmail.com" s=
tyle=3D"color:rgb(17, 85, 204);" target=3D"_blank">frantisek.borsik@gmai=
l.com</a></p></div></div></div></div></div></div></div></div></div></div=
></div></div><div>_______________________________________________</div><=
div> Starlink mailing list</div><div> <a href=3D"mailto:Starlink@lists.b=
ufferbloat.net" target=3D"_blank">Starlink@lists.bufferbloat.net</a></di=
v><div> <a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D=
"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/st=
arlink</a></div></blockquote></div><div><br></div><div><br></div><div><s=
pan class=3D"qt-gmail_signature_prefix">--</span></div><div dir=3D"ltr" =
class=3D"qt-gmail_signature"><div dir=3D"ltr"><div><span class=3D"color"=
 style=3D"color:#888888;"><span class=3D"color" style=3D"color:#888888;"=
><span class=3D"font" style=3D"font-family:verdana, sans-serif;"><a href=
=3D"mailto:Geoff.Goodfellow@iconia.com" target=3D"_blank">Geoff.Goodfell=
ow@iconia.com</a></span></span></span></div><span class=3D"color" style=3D=
"color:#888888;"><div><br></div><div dir=3D"ltr"><div style=3D"font-fami=
ly:verdana, sans-serif;display:inline;">living as The Truth is True</div=
></div><div><div style=3D"font-family:verdana, sans-serif;display:inline=
;"><br></div></div></span></div></div></div><div>_______________________=
________________________</div><div>Bloat mailing list</div><div><a href=3D=
"mailto:Bloat@lists.bufferbloat.net">Bloat@lists.bufferbloat.net</a></di=
v><div><a href=3D"https://lists.bufferbloat.net/listinfo/bloat">https://=
lists.bufferbloat.net/listinfo/bloat</a></div><div><br></div></blockquot=
e><div><br></div></body></html>
--4293ca6755f24b8a8b23a516f501e52b--

--===============7023020450750040541==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7023020450750040541==--

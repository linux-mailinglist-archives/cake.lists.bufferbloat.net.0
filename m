Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 618138B6579
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A4ED03CBD0;
	Mon, 29 Apr 2024 18:18:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429133;
	bh=6fJD7YAjL3NQ5I/SDGOGQ+S5edObCqBa/JmXOjlSIJk=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=jf5TKX9vUHLgvyy0NMpUBeARiVszNXoW6U3poKTx5FMgLwLpSHN2waEnq9m/JSqjw
	 3WMUY3NAxz0hyDlk8sNlimINwUQT7WCXDQRevc2KW/Rf9ZJ2WMJf3OHgZhN0XAKafP
	 T8CEC6WlDCc3DKHGBrHWakqW38mOYKsAwvBUa9Zm3tM77ZVOokSaroej7LK0CNti2o
	 oslfvqLgqn/6c56vD66LhQr+CCCnmT0+bF6dwmuDWAGpvvee//Fq340n8lk2OsBWT3
	 WDGPLgpDp95U9gNgPf42WHh/mm/kYdEWWYKtB2rEZJrouXs8fLUHul9f4AjSj1cxM+
	 u1TuQJXrLHXuA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bosmailout05.eigbox.net (bosmailout05.eigbox.net [66.96.186.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 17B633B29E;
 Thu,  5 Jan 2023 19:30:47 -0500 (EST)
Received: from [10.20.15.1] (helo=bosmailscan01.eigbox.net)
 by bosmailout05.eigbox.net with esmtp (Exim)
 id 1pDadC-00059K-EX; Thu, 05 Jan 2023 19:30:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=alum.mit.edu; s=dkim; h=Sender:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NWBwSqZLBZ72hlquh5wKPCazfKtHF7jKgskHlZws8oA=; b=fmGD8RBG4X58DgGF+pF0kSX0Ew
 7d6990jz8W1ZxFKRLdSa0J4BnIsG6L8VhPLyOCz7yRrMs632anrNsappljtswDmGnmBwQ7QnIgZeA
 cf72qEoaBP4AiXHgVttORN5vC8zq2HAob1bUJDLftbUTeI+kXx5YZtOExOTeh0Fvm/gI2Lcfggsec
 JkjWVU/AqyDNpJIWnSoRnLz1djxYCS19tKK6TAmNn2B/kOC9jtK4dFpAaa1TUwejEeOnXmVDpoML/
 MNOW13bDUcHb3YiobRD+cOlpOtBLJOVcYoM/cM3hbwP1H6slZeIokoVrgCYzFPnrWPWqzIIa+ZMNE
 iufDjmkw==;
Received: from [10.115.3.33] (helo=bosimpout13)
 by bosmailscan01.eigbox.net with esmtp (Exim)
 id 1pDadC-0000Ai-47; Thu, 05 Jan 2023 19:30:46 -0500
Received: from bosauthsmtp19.yourhostingaccount.com ([10.20.18.19])
 by bosimpout13 with 
 id 5CWi2900J0QhFXN01CWleU; Thu, 05 Jan 2023 19:30:46 -0500
X-Authority-Analysis: v=2.3 cv=H7JAP9Qi c=1 sm=1 tr=0
 a=9UqFsMnAB6EOkiq4MrOclQ==:117 a=nIEF4cAZMyOU5h9mcfI6lg==:17
 a=RvmDmJFTN0MA:10 a=6ulraYUaiNAA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=kurRqvosAAAA:8
 a=9z4KhwH7AAAA:8 a=EG7W4yiQAAAA:8 a=jU4qhlNgAAAA:8 a=ftY8msikBdlFRi-zDFAA:9
 a=wPNLvfGTeEIA:10 a=SSmOFEACAAAA:8 a=0qUAkXjY9p34v_8f_FgA:9
 a=ui9unRtFpKfzlmHn:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=frz4AuCg-hUA:10 a=kbxRQ_lfPIoQnHsAj2-A:22 a=9x6Z1owHLtSA86P_KKuR:22
Received: from c-67-180-86-211.hsd1.ca.comcast.net ([67.180.86.211]:60753
 helo=SRA6) by bosauthsmtp19.eigbox.net with esmtpa (Exim)
 id 1pDad8-0001gk-68; Thu, 05 Jan 2023 19:30:42 -0500
To: "'Sebastian Moeller'" <moeller0@gmx.de>,
 "'rjmcmahon'" <rjmcmahon@rjmcmahon.com>
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <845161E4-474C-44A9-92D4-1702748A3DA1@jonathanfoulkes.com>
 <eca6010e810ba85e6ab5d420b6c882db@rjmcmahon.com>
 <305203F9-4875-4A7F-939E-B54E64AA060A@gmx.de>
In-Reply-To: <305203F9-4875-4A7F-939E-B54E64AA060A@gmx.de>
Date: Thu, 5 Jan 2023 16:30:31 -0800
Organization: SRA
Message-ID: <251832186E514080B5F1CF858F09A5ED@SRA6>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Adkg9or8G/UxQ58HRqmp5xoUdRwH1QAa4xDw
X-MimeOLE: Produced By Microsoft MimeOLE
X-EN-UserInfo: f809475445fb8041985048e338e1a001:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dickroy@intellicommunications.com
X-EN-OrigIP: 67.180.86.211
X-EN-OrigHost: c-67-180-86-211.hsd1.ca.comcast.net
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Starlink] [Bloat] [Rpm] the grinch meets
	cloudflare'schristmas present
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
From: Dick Roy via Cake <cake@lists.bufferbloat.net>
Reply-To: dickroy@alum.mit.edu
Cc: 'Rpm' <rpm@lists.bufferbloat.net>, jf@jonathanfoulkes.com,
 'IETF IPPM WG' <ippm@ietf.org>, 'libreqos' <libreqos@lists.bufferbloat.net>,
 'Cake List' <cake@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4247083673829168689=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.

--===============4247083673829168689==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0644_01D92123.0DD0F3F0"

This is a multi-part message in MIME format.

------=_NextPart_000_0644_01D92123.0DD0F3F0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

=20

=20

-----Original Message-----
From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf =
Of
Sebastian Moeller via Starlink
Sent: Thursday, January 5, 2023 3:12 AM
To: rjmcmahon
Cc: Dave Taht via Starlink; IETF IPPM WG; jf@jonathanfoulkes.com; =
libreqos;
Cake List; Rpm; bloat
Subject: Re: [Starlink] [Bloat] [Rpm] the grinch meets =
cloudflare'schristmas
present

=20

Hi Bob,

=20

=20

> On Jan 4, 2023, at 21:02, rjmcmahon via Bloat
<bloat@lists.bufferbloat.net> wrote:

>=20

> Curious to why people keep calling capacity tests speed tests? A semi =
at
55 mph isn't faster than a porsche at 141 mph because its load volume is
larger.

=20

      [SM] I am not sure whether answering the "why" is likely to =
getting us
closer to remedy the situation. IMHO we are unlikely to change that just =
as
we are unlikely to change the equally debatable use of "bandwidth" as
synonym for "maximal capacity"... These two ships have sailed no matter =
how
much shouting at clouds is going to happen ;)

[RR] I hope that this not true, however I am not doubting your =
assertion!
:-)  The capacity of a channel of bandwidth W (in its simplest form) is
well-known to be:

=20

C =3D W*log2(1 + P/N)in units of bits/sec

=20

There is no such thing generally as =93maximal capacity=94, only =
=93capacity as a
function of the parameters of the channel P, N, and W=94 which turns out =
to be
the =93maximum error-free (very important!) rate of information =
transfer=94
given the power (P) of the transmission and the power (N) of the noise =
in
that channel of bandwidth W.=20

=20

My theory about the way is, this is entirely marketing driven, both =
device
manufacturers/ISPs and end-users desire to keep things simple so ideally =
a
single number and a catchy name... "Speed" as in top-speed was already a
well known quantity for motor vehicles that consumers as a group had
accepted to correlate with price. Now purist will say that "speed" is
already well-defined as distance/time and "amount of data" is not a =
viable
distance measure (how many bits are there in a meter?), but since when =
has
marketing and the desire for simply single-number "quality indicators" =
ever
cared much for the complexities of the real world?

      Also when remembering the old analog modem and ISDN days, at that =
time
additional capacity truly was my main desirable, so marketing by max
capacity was relevant to me independent of how this was called, I would =
not
be amazed if I was not alone with that view. I guess that single measure =
and
the wrong name simply stuck...

[RR] As I recall the old analog modem days, modems were =93labeled=94 by =
their
achievable data rates, e.g. =93this is a 14.4 kbps modem=94 and the =
notion of
achieving channel capacity was quite well-known in that people actually
realized that at 56 kbps, modems were nearly at the capacity of those
mile-long twisted-pair copper wires to the CO with 3kHz bandwidth =
low-pass
filters on the end and they could stop trying to build faster ones :-)=20

=20

Personally I try to use rate instead of speed or bandwidth, but I note =
that
I occasionally fail without even noticing it.

=20

Technically I agree that one way latency is more closely related to =
"speed"
as between any two end-points there is always a path the information =
travels
that has a "true" length, so speed could be defined as
network-path-length/OWD, but that would only be the average speed over =
the
path... I am not sure how informative or marketable this wuld be for
end-users though ;)

[RR] Again, transit time is only one component of latency, and one that
could be accounted for by simply stating the =93minimal achievable =
latency=94
for any given channel is the transit time of the information.  =
Information
simply can not flow faster than the speed of light in this universe as =
we
understand it today, so EVERY communication channel has a non-zero =
transit
time from source to destination. :-) Comparing latency to =93speed of
transmission=94 is just not useful IMO for just this reason. IMO, a more
useful concept of latency is the excess transit time over the =
theoretical
minimum that results from all the real-world =93interruptions=94 in the
transmission path(s) including things like regeneration of optical =
signals
in long cables, switching of network layer protocols in gateways (header
manipulation above layer 4), and yes, of course, buffering in switches =
and
routers :-)  These are things that can be =93minimized=94 by appropriate =
system
design (the topic of these threads actually!).  The only way to decrease
transit time is to =93go wireless everywhere, eliminate our atmosphere, =
and
then get physically closer to each other=94! :-) Like it or not, we live =
in a
Lorentz-ian space-time continuum also know as =93our world=94 :-)=20

=20

Cheers,


RR=20

=20

=20

Regards

      Sebastian

=20

=20

=20

>=20

> Bob

>> HNY Dave and all the rest,

>> Great to see yet another capacity test add latency metrics to the

>> results. This one looks like a good start.

>> Results from my Windstream DOCSIS 3.1 line (3.1 on download only, up

>> is 3.0) Gigabit down / 35Mbps up provisioning. Using an IQrouter Pro

>> (an i5 x86) with Cake set for 710/31 as this ISP can=92t deliver

>> reliable low-latency unless you shave a good bit off the targets. My

>> local loop is pretty congested.

>> Here=92s the latest Cloudflare test:

>> And an Ookla test run just afterward:

>> They are definitely both in the ballpark and correspond to other =
tests

>> run from the router itself or my (wired) MacBook Pro.

>> Cheers,

>> Jonathan

>>> On Jan 4, 2023, at 12:26 PM, Dave Taht via Rpm
<rpm@lists.bufferbloat.net> wrote:

>>> Please try the new, the shiny, the really wonderful test here:

>>> https://speed.cloudflare.com/

>>> I would really appreciate some independent verification of

>>> measurements using this tool. In my brief experiments it appears - =
as

>>> all the commercial tools to date - to dramatically understate the

>>> bufferbloat, on my LTE, (and my starlink terminal is out being

>>> hacked^H^H^H^H^H^Hworked on, so I can't measure that)

>>> My test of their test reports 223ms 5G latency under load , where

>>> flent reports over 2seconds. See comparison attached.

>>> My guess is that this otherwise lovely new  tool, like too many,

>>> doesn't run for long enough. Admittedly, most web objects (their

>>> target market) are small, and so long as they remain small and not

>>> heavily pipelined this test is a very good start... but I'm pretty

>>> sure cloudflare is used for bigger uploads and downloads than that.

>>> There's no way to change the test to run longer either.

>>> I'd love to get some results from other networks (compared as usual =
to

>>> flent), especially ones with cake on it. I'd love to know if they

>>> measured more minimum rtts that can be obtained with fq_codel or =
cake,

>>> correctly.

>>> Love Always,

>>> The Grinch

>>> --

>>> This song goes out to all the folk that thought Stadia would work:

>>>
https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-698136666=
560
7352320-FXtz

>>> Dave T=E4ht CEO, TekLibre, LLC

>>>
<image.png><tcp_nup-2023-01-04T090937.211620.LTE.flent.gz>_______________=
___
_____________________________

>>> Rpm mailing list

>>> Rpm@lists.bufferbloat.net

>>> https://lists.bufferbloat.net/listinfo/rpm

>> _______________________________________________

>> Rpm mailing list

>> Rpm@lists.bufferbloat.net

>> https://lists.bufferbloat.net/listinfo/rpm

> _______________________________________________

> Bloat mailing list

> Bloat@lists.bufferbloat.net

> https://lists.bufferbloat.net/listinfo/bloat

=20

_______________________________________________

Starlink mailing list

Starlink@lists.bufferbloat.net

https://lists.bufferbloat.net/listinfo/starlink


------=_NextPart_000_0644_01D92123.0DD0F3F0
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 77.95pt 1.0in 77.95pt;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>-----Original Message-----<br>
From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf =
Of Sebastian
Moeller via Starlink<br>
Sent: Thursday, January 5, 2023 3:12 AM<br>
To: rjmcmahon<br>
Cc: Dave Taht via Starlink; IETF IPPM WG; jf@jonathanfoulkes.com; =
libreqos;
Cake List; Rpm; bloat<br>
Subject: Re: [Starlink] [Bloat] [Rpm] the grinch meets =
cloudflare'schristmas
present</span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Hi Bob,<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; On Jan 4, 2023, at 21:02, rjmcmahon via Bloat
&lt;bloat@lists.bufferbloat.net&gt; wrote:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Curious to why people keep calling capacity tests speed =
tests? A
semi at 55 mph isn't faster than a porsche at 141 mph because its load =
volume
is larger.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>=A0=A0=A0=A0=A0 [SM] I am not sure whether answering the =
&quot;why&quot; is
likely to getting us closer to remedy the situation. IMHO we are =
unlikely to
change that just as we are unlikely to change the equally debatable use =
of
&quot;bandwidth&quot; as synonym for &quot;maximal capacity&quot;... =
These two
ships have sailed no matter how much shouting at clouds is going to =
happen ;)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
>[RR] I
hope that this not true, however I am not doubting your assertion! =
</span></font></i></b><b><i><font
color=3Dblack face=3DWingdings><span =
style=3D'font-family:Wingdings;color:black;
font-weight:bold;font-style:italic'>J</span></font><font =
color=3Dblack><span
style=3D'color:black'>=A0 The capacity of a channel of bandwidth W (in =
its simplest
form) is well-known to be:<o:p></o:p></span></font></i></b></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
><o:p>&nbsp;</o:p></span></font></i></b></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
>C =3D
W*log2(1 + P/N)in units of bits/sec<o:p></o:p></span></font></i></b></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
><o:p>&nbsp;</o:p></span></font></i></b></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
>There is
no such thing generally as &#8220;maximal capacity&#8221;, only =
&#8220;capacity
as a function of the parameters of the channel P, N, and W&#8221; which =
turns
out to be the &#8220;maximum error-free (very important!) rate of =
information
transfer&#8221; given the power (P) of the transmission and the power =
(N) of
the noise in that channel of bandwidth W. </span></font></i></b><font
color=3Dblack><span style=3D'color:black'><o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>My theory about the way is, this is entirely marketing driven, =
both
device manufacturers/ISPs and end-users desire to keep things simple so =
ideally
a single number and a catchy name... &quot;Speed&quot; as in top-speed =
was
already a well known quantity for motor vehicles that consumers as a =
group had
accepted to correlate with price. Now purist will say that =
&quot;speed&quot; is
already well-defined as distance/time and &quot;amount of data&quot; is =
not a
viable distance measure (how many bits are there in a meter?), but since =
when
has marketing and the desire for simply single-number &quot;quality
indicators&quot; ever cared much for the complexities of the real =
world?<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>=A0=A0=A0=A0=A0 Also when remembering the old analog modem and =
ISDN days, at that
time additional capacity truly was my main desirable, so marketing by =
max
capacity was relevant to me independent of how this was called, I would =
not be
amazed if I was not alone with that view. I guess that single measure =
and the
wrong name simply stuck...<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
>[RR] As
I recall the old analog modem days, modems were &#8220;labeled&#8221; by =
their achievable
data rates, e.g. &#8220;this is a 14.4 kbps modem&#8221; and the notion =
of
achieving channel capacity was quite well-known in that people actually
realized that at 56 kbps, modems were nearly at the capacity of those =
mile-long
twisted-pair copper wires to the CO with 3kHz bandwidth low-pass filters =
on the
end and they could stop trying to build faster ones =
</span></font></i></b><b><i><font
color=3Dblack face=3DWingdings><span =
style=3D'font-family:Wingdings;color:black;
font-weight:bold;font-style:italic'>J</span></font><font =
color=3Dblack><span
style=3D'color:black'> </span></font></i></b><font color=3Dblack><span
style=3D'color:black'><o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Personally I try to use rate instead of speed or bandwidth, but =
I note
that I occasionally fail without even noticing =
it.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Technically I agree that one way latency is more closely related =
to
&quot;speed&quot; as between any two end-points there is always a path =
the
information travels that has a &quot;true&quot; length, so speed could =
be
defined as network-path-length/OWD, but that would only be the average =
speed
over the path... I am not sure how informative or marketable this wuld =
be for
end-users though ;)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
>[RR] Again,
transit time is only one component of latency, and one that could be =
accounted
for by simply stating the &#8220;minimal achievable latency&#8221; for =
any
given channel is the transit time of the information. =A0Information =
simply can
not flow faster than the speed of light in this universe as we =
understand it
today, so EVERY communication channel has a non-zero transit time from =
source
to destination. </span></font></i></b><b><i><font color=3Dblack =
face=3DWingdings><span
style=3D'font-family:Wingdings;color:black;font-weight:bold;font-style:it=
alic'>J</span></font><font
color=3Dblack><span style=3D'color:black'> Comparing latency to =
&#8220;speed of
transmission&#8221; is just not useful IMO for just this reason. IMO, a =
more
useful concept of latency is the excess transit time over the =
theoretical
minimum that results from all the real-world &#8220;interruptions&#8221; =
in the
transmission path(s) including things like regeneration of optical =
signals in
long cables, switching of network layer protocols in gateways (header =
manipulation
above layer 4), and yes, of course, buffering in switches and routers =
</span></font></i></b><b><i><font
color=3Dblack face=3DWingdings><span =
style=3D'font-family:Wingdings;color:black;
font-weight:bold;font-style:italic'>J</span></font><font =
color=3Dblack><span
style=3D'color:black'> =A0These are things that can be =
&#8220;minimized&#8221; by
appropriate system design (the topic of these threads actually!). =A0The =
only way
to decrease transit time is to &#8220;go wireless everywhere, eliminate =
our
atmosphere, and then get physically closer to each other&#8221;! =
</span></font></i></b><b><i><font
color=3Dblack face=3DWingdings><span =
style=3D'font-family:Wingdings;color:black;
font-weight:bold;font-style:italic'>J</span></font><font =
color=3Dblack><span
style=3D'color:black'> Like it or not, we live in a Lorentz-ian =
space-time
continuum also know as &#8220;our world&#8221; =
</span></font></i></b><b><i><font
color=3Dblack face=3DWingdings><span =
style=3D'font-family:Wingdings;color:black;
font-weight:bold;font-style:italic'>J</span></font><font =
color=3Dblack><span
style=3D'color:black'> <o:p></o:p></span></font></i></b></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
><o:p>&nbsp;</o:p></span></font></i></b></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
>Cheers,<o:p></o:p></span></font></i></b></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
><br>
RR </span></font></i></b><font color=3Dblack><span =
style=3D'color:black'><o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Regards<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>=A0=A0=A0=A0=A0 Sebastian<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Bob<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; HNY Dave and all the rest,<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Great to see yet another capacity test add latency =
metrics to
the<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; results. This one looks like a good =
start.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Results from my Windstream DOCSIS 3.1 line (3.1 on =
download only,
up<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; is 3.0) Gigabit down / 35Mbps up provisioning. Using an
IQrouter Pro<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; (an i5 x86) with Cake set for 710/31 as this ISP =
can&#8217;t
deliver<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; reliable low-latency unless you shave a good bit off =
the
targets. My<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; local loop is pretty =
congested.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Here&#8217;s the latest Cloudflare =
test:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; And an Ookla test run just =
afterward:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; They are definitely both in the ballpark and correspond =
to
other tests<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; run from the router itself or my (wired) MacBook =
Pro.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Cheers,<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Jonathan<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; On Jan 4, 2023, at 12:26 PM, Dave Taht via Rpm
&lt;rpm@lists.bufferbloat.net&gt; wrote:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; Please try the new, the shiny, the really wonderful =
test
here:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; =
https://speed.cloudflare.com/<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; I would really appreciate some independent =
verification of<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; measurements using this tool. In my brief =
experiments it
appears - as<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; all the commercial tools to date - to dramatically
understate the<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; bufferbloat, on my LTE, (and my starlink terminal =
is out
being<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; hacked^H^H^H^H^H^Hworked on, so I can't measure =
that)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; My test of their test reports 223ms 5G latency =
under load
, where<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; flent reports over 2seconds. See comparison =
attached.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; My guess is that this otherwise lovely new=A0 tool, =
like too
many,<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; doesn't run for long enough. Admittedly, most web =
objects
(their<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; target market) are small, and so long as they =
remain small
and not<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; heavily pipelined this test is a very good start... =
but
I'm pretty<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; sure cloudflare is used for bigger uploads and =
downloads
than that.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; There's no way to change the test to run longer =
either.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; I'd love to get some results from other networks =
(compared
as usual to<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; flent), especially ones with cake on it. I'd love =
to know
if they<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; measured more minimum rtts that can be obtained =
with
fq_codel or cake,<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; correctly.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; Love Always,<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; The Grinch<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; --<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; This song goes out to all the folk that thought =
Stadia
would work:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt;
https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-698136666=
5607352320-FXtz<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; Dave T=E4ht CEO, TekLibre, =
LLC<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; =
&lt;image.png&gt;&lt;tcp_nup-2023-01-04T090937.211620.LTE.flent.gz&gt;___=
____________________________________________<o:p></o:p></span></font></p>=


<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; Rpm mailing list<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; =
Rpm@lists.bufferbloat.net<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; =
https://lists.bufferbloat.net/listinfo/rpm<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; =
_______________________________________________<o:p></o:p></span></font><=
/p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Rpm mailing list<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Rpm@lists.bufferbloat.net<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; =
https://lists.bufferbloat.net/listinfo/rpm<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
_______________________________________________<o:p></o:p></span></font><=
/p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Bloat mailing list<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Bloat@lists.bufferbloat.net<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
https://lists.bufferbloat.net/listinfo/bloat<o:p></o:p></span></font></p>=


<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>_______________________________________________<o:p></o:p></span>=
</font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Starlink mailing list<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Starlink@lists.bufferbloat.net<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>https://lists.bufferbloat.net/listinfo/starlink<o:p></o:p></span>=
</font></p>

</div>

</body>

</html>

------=_NextPart_000_0644_01D92123.0DD0F3F0--


--===============4247083673829168689==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4247083673829168689==--


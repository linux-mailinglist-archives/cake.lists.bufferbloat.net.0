Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCC73E4AAF
	for <lists+cake@lfdr.de>; Mon,  9 Aug 2021 19:17:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A21103CB58;
	Mon,  9 Aug 2021 13:17:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628529462;
	bh=uL5QXpPAkuixnobAbg/tE7jZkxKXP3xwI8j8SP/3wfc=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=BmlrZ+wW8ySmldT6hymYEXk1URY/B0yYr1P58v7UoNcIiaaqD84GjP1Luatli600C
	 21uLH7BBrwoTWW2rqiHKjFJte7hwX+dKMXFvS7uDzhjENlPSeOD7Y1OKHfk+t4vfrP
	 5xG91jLW/J2uzxzKlHY8Q8Trz5PYRNqDe3Qbs71tBqks4I2ln4mykavv7ED1t9x+FO
	 hmtGs1dUeF/+G3D4DUfqeG3f91vC1H8Q66DhcFsPxudqhrrOOAxN0fo/IwReZb/aO9
	 Zaqdfe6ka+TM7gKvz7Y/u/P2epYYc7PIV0tesCxNPF/ip1UjRyUmBRzW42kpkjRAz1
	 WDoDQCy+OqFxQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bosmailout08.eigbox.net (bosmailout08.eigbox.net [66.96.189.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CE5133B2A4;
 Sun,  8 Aug 2021 01:04:22 -0400 (EDT)
Received: from bosmailscan08.eigbox.net ([10.20.15.8])
 by bosmailout08.eigbox.net with esmtp (Exim)
 id 1mCaz0-0002OU-DU; Sun, 08 Aug 2021 01:04:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=alum.mit.edu; s=dkim; h=Sender:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yY4C+ij6dePRxl4NzbQR3YiAltpcNKIpO0W8Pz0ksjQ=; b=4CTIi9DcMb0s4hsAHHTQGK+GQ6
 oJdsqtNBm2pQsQnxlDKRKHSU9uN1FhKeYmAdy1B/FHHRlX6OpCWg1r+HRKWrqCcYLslHhCnNzkmdF
 LeQ4Qja9FUtc00YyKYE9LRYGh8udJh5mPoJNT+lQCWZWQLnhvqV/uB15h5pfN7NjaPmFhwf1pVRXs
 TrEPHWDOQZ9psVzwsEmGGfqWkH990fAX15Bz5zjEtWeZDzfoi012vckMb8c3LVm9OlgBsQRhBRj3r
 jfZuM1fX9XYS3Y7Rzd39yBEOTrZs/BDucBczQvEAWVg++6I0NGihH+ZQOX54cxlCZ4J4++A6LGmYj
 j89Pa4NA==;
Received: from [10.115.3.33] (helo=bosimpout13)
 by bosmailscan08.eigbox.net with esmtp (Exim)
 id 1mCaz0-0000GG-5o; Sun, 08 Aug 2021 01:04:22 -0400
Received: from bosauthsmtp17.yourhostingaccount.com ([10.20.18.17])
 by bosimpout13 with 
 id et4J2500A0N5uqq01t4M4x; Sun, 08 Aug 2021 01:04:22 -0400
X-Authority-Analysis: v=2.3 cv=RNUo47q+ c=1 sm=1 tr=0
 a=f4kFLigMKr8AH7rIJ//qJA==:117 a=x+7tlP9+fMpTIVJEmcsKvw==:17
 a=MhDmnRu9jo8A:10 a=Wo7qeYC63mUA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=kurRqvosAAAA:8
 a=uYVGJH5IAAAA:8 a=dJvYDnJI8rs9tBeDG7QA:9 a=CjuIK1q_8ugA:10 a=SSmOFEACAAAA:8
 a=-xanLQjlmxnFQP_hNSgA:9 a=2mcMFP_YITZjYGnI:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=kbxRQ_lfPIoQnHsAj2-A:22 a=ZkEWZNUrOYKkpCLSUeX7:22
Received: from c-73-222-32-85.hsd1.ca.comcast.net ([73.222.32.85]:62846
 helo=SRA6) by bosauthsmtp17.eigbox.net with esmtpa (Exim)
 id 1mCayw-0005ku-Fw; Sun, 08 Aug 2021 01:04:18 -0400
From: "Dick Roy" <dickroy@alum.mit.edu>
To: "'Bob McMahon'" <bob.mcmahon@broadcom.com>, "'David Lang'" <david@lang.hm>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <CAHb6LvqsZFDDkC1qjr9ccXNjFtq1qnAevQpccNFydP4BOVVL1Q@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108021607160.810590@qynat-yncgbc>
 <e9302d22-8a4a-a74b-658d-c5d4c1c88987@candelatech.com>
 <CAHb6Lvp851pVCt+zUv1PZgpHafCG4RPXEwMn6=CJFXhVf9fK8w@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108022007460.810590@qynat-yncgbc>
 <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
In-Reply-To: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
Date: Sat, 7 Aug 2021 22:04:07 -0700
Organization: SRA
Message-ID: <C2F8AFB15FAD4A91BF9A870505084D59@SRA6>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdeLuSlehgCWGfOLQuaOPFk4uJ3x0AAV6VFQ
X-MimeOLE: Produced By Microsoft MimeOLE
X-EN-UserInfo: f809475445fb8041985048e338e1a001:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dickroy@intellicommunications.com
X-EN-OrigIP: 73.222.32.85
X-EN-OrigHost: c-73-222-32-85.hsd1.ca.comcast.net
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:17:41 -0400
Subject: Re: [Cake] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
	Internet Quality workshop CFP for the internet architecture board
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
Reply-To: dickroy@alum.mit.edu
Cc: 'Cake List' <cake@lists.bufferbloat.net>,
 'Make-Wifi-fast' <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 'cerowrt-devel' <cerowrt-devel@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7358063256306577006=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.

--===============7358063256306577006==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0416_01D78BD8.2B4FDD10"

This is a multi-part message in MIME format.

------=_NextPart_000_0416_01D78BD8.2B4FDD10
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

 

  _____  

From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf Of
Bob McMahon
Sent: Monday, August 2, 2021 8:23 PM
To: David Lang
Cc: starlink@lists.bufferbloat.net; Make-Wifi-fast; Cake List;
codel@lists.bufferbloat.net; cerowrt-devel; bloat
Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
Internet Quality workshop CFP for the internet architecture board

 

The distance matrix defines signal attenuations/loss between pairs.  

[RR] Which makes it a path loss matrix rather than a distance matrix
actually.

It's straightforward to create a distance matrix that has hidden nodes
because all "signal  loss" between pairs is defined.  Let's say a 120dB
attenuation path will cause a node to be hidden as an example.

     A    B     C    D 

A   -   35   120   65

B         -      65   65

C               -       65

D                         -

So in the above, AC are hidden from each other but nobody else is. It does
assume symmetry between pairs but that's typically true.

[RR] I'm guessing you really mean reciprocal rather than symmetric. An RF
channel is reciprocal if the loss when A is transmitting to B is the same as
that when B is transmitting to A. When the tx powers and rx sensitivities
are such that when combined with the path loss(es) the "link budget" is  the
same in both directions, the links are balanced and therefore have the same
capacity. 



The RF device takes these distance matrices as settings and calculates the
five branch tree values (as demonstrated in the video). 

There are limitations to solutions though but I've found those not to be an
issue to date. I've been able to produce hidden nodes quite readily. Add the
phase shifters and spatial stream powers can also be affected, but this
isn't shown in this simple example.

Bob

 

On Mon, Aug 2, 2021 at 8:12 PM David Lang <david@lang.hm> wrote:

I guess it depends on what you are intending to test. If you are not going
to 
tinker with any of the over-the-air settings (including the number of
packets 
transmitted in one aggregate), the details of what happen over the air don't

matter much.

But if you are going to be doing any tinkering with what is getting sent,
and 
you ignore the hidden transmitter type problems, you will create a solution
that 
seems to work really well in the lab and falls on it's face out in the wild 
where spectrum overload and hidden transmitters are the norm (at least in
urban 
areas), not rare corner cases.

you don't need to include them in every test, but you need to have a way to 
configure your lab to include them before you consider any
settings/algorithm 
ready to try in the wild.

David Lang

On Mon, 2 Aug 2021, Bob McMahon wrote:

> We find four nodes, a primary BSS and an adjunct one quite good for lots
of
> testing.  The six nodes allows for a primary BSS and two adjacent ones. We
> want to minimize complexity to necessary and sufficient.
>
> The challenge we find is having variability (e.g. montecarlos) that's
> reproducible and has relevant information. Basically, the distance
matrices
> have h-matrices as their elements. Our chips can provide these h-matrices.
>
> The parts for solid state programmable attenuators and phase shifters
> aren't very expensive. A device that supports a five branch tree and 2x2
> MIMO seems a very good starting point.
>
> Bob
>
> On Mon, Aug 2, 2021 at 4:55 PM Ben Greear <greearb@candelatech.com> wrote:
>
>> On 8/2/21 4:16 PM, David Lang wrote:
>>> If you are going to setup a test environment for wifi, you need to
>> include the ability to make a fe cases that only happen with RF, not with
>> wired networks and
>>> are commonly overlooked
>>>
>>> 1. station A can hear station B and C but they cannot hear each other
>>> 2. station A can hear station B but station B cannot hear station A 3.
>> station A can hear that station B is transmitting, but not with a strong
>> enough signal to
>>> decode the signal (yes in theory you can work around interference, but
>> in practice interference is still a real thing)
>>>
>>> David Lang
>>>
>>
>> To add to this, I think you need lots of different station devices,
>> different capabilities (/n, /ac, /ax, etc)
>> different numbers of spatial streams, and different distances from the
>> AP.  From download queueing perspective, changing
>> the capabilities may be sufficient while keeping all stations at same
>> distance.  This assumes you are not
>> actually testing the wifi rate-ctrl alg. itself, so different throughput
>> levels for different stations would be enough.
>>
>> So, a good station emulator setup (and/or pile of real stations) and a
few
>> RF chambers and
>> programmable attenuators and you can test that setup...
>>
>>  From upload perspective, I guess same setup would do the job.
>> Queuing/fairness might depend a bit more on the
>> station devices, emulated or otherwise, but I guess a clever AP could
>> enforce fairness in upstream direction
>> too by implementing per-sta queues.
>>
>> Thanks,
>> Ben
>>
>> --
>> Ben Greear <greearb@candelatech.com>
>> Candela Technologies Inc  http://www.candelatech.com
>>
>
>


This electronic communication and the information and any files transmitted
with it, or attached to it, are confidential and are intended solely for the
use of the individual or entity to whom it is addressed and may contain
information that is confidential, legally privileged, protected by privacy
laws, or otherwise restricted from disclosure to anyone else. If you are not
the intended recipient or the person responsible for delivering the e-mail
to the intended recipient, you are hereby notified that any use, copying,
distributing, dissemination, forwarding, printing, or copying of this e-mail
is strictly prohibited. If you received this e-mail in error, please return
the e-mail to the sender, delete it from your computer, and destroy any
printed copy of it.


------=_NextPart_000_0416_01D78BD8.2B4FDD10
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
	{color:blue;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:Arial;
	color:navy;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dblue>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><font =
size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>

<hr size=3D3 width=3D"100%" align=3Dcenter tabindex=3D-1>

</span></font></div>

<p class=3DMsoNormal><b><font size=3D2 face=3DTahoma><span =
style=3D'font-size:10.0pt;
font-family:Tahoma;font-weight:bold'>From:</span></font></b><font =
size=3D2
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'> =
Starlink
[mailto:starlink-bounces@lists.bufferbloat.net] <b><span =
style=3D'font-weight:
bold'>On Behalf Of </span></b>Bob McMahon<br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Monday, August 2, =
2021 8:23
PM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> David Lang<br>
<b><span style=3D'font-weight:bold'>Cc:</span></b>
starlink@lists.bufferbloat.net; Make-Wifi-fast; Cake List;
codel@lists.bufferbloat.net; cerowrt-devel; bloat<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Re: [Starlink] =
[Cake]
[Make-wifi-fast] [Cerowrt-devel] Due Aug 2: Internet Quality workshop =
CFP for
the internet architecture board</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>The distance =
matrix
defines signal attenuations/loss between pairs.&nbsp; <font =
color=3Dnavy><span
style=3D'color:navy'><o:p></o:p></span></font></span></font></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><b><i><font size=3D2 =
color=3Dnavy
face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial;color:navy;
font-weight:bold;font-style:italic'>[RR] Which makes it a path loss =
matrix
rather than a distance matrix =
actually.<o:p></o:p></span></font></i></b></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>It's =
straightforward to
create a distance matrix that has hidden nodes because all =
&quot;signal&nbsp;
loss&quot;&nbsp;between&nbsp;pairs is defined.&nbsp; Let's say a 120dB
attenuation path will cause a node to be hidden as an =
example.<o:p></o:p></span></font></p>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>&nbsp; &nbsp; &nbsp;A&nbsp; &nbsp; B&nbsp; &nbsp; &nbsp;C&nbsp; =
&nbsp;
D&nbsp;<o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>A&nbsp; &nbsp;-&nbsp; &nbsp;35&nbsp; &nbsp;120&nbsp; =
&nbsp;65<o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>B&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; &nbsp; =
65&nbsp;
&nbsp;65<o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>C&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; =
&nbsp;
&nbsp; &nbsp;65<o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>D&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;
&nbsp; &nbsp; &nbsp;-<br>
<br>
So in the above, AC are hidden from each other&nbsp;but nobody else is. =
It does
assume symmetry between&nbsp;pairs but that's typically true.<font =
color=3Dnavy><span
style=3D'color:navy'><o:p></o:p></span></font></span></font></p>

<p class=3DMsoNormal><b><i><font size=3D2 color=3Dnavy =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial;color:navy;font-weight:bold;
font-style:italic'>[RR] I&#8217;m guessing you really mean reciprocal =
rather than
symmetric. An RF channel is reciprocal if the loss when A is =
transmitting to B
is the same as that when B is transmitting to A. When the tx powers and =
rx sensitivities
are such that when combined with the path loss(es) the &#8220;link =
budget&#8221;
is &nbsp;the same in both directions, the links are balanced and =
therefore have
the same capacity. <o:p></o:p></span></font></i></b></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><br>
<br>
The RF device takes these distance matrices&nbsp;as settings and =
calculates the
five branch tree values (as demonstrated in the video). <font =
color=3Dnavy><span
style=3D'color:navy'><o:p></o:p></span></font></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>There are limitations&nbsp;to solutions&nbsp;though but I've =
found
those not to be an issue to date. I've been able to produce hidden nodes =
quite
readily. Add the phase shifters&nbsp;and spatial stream powers can also =
be
affected, but this isn't shown in this simple example.<br>
<br>
Bob<o:p></o:p></span></font></p>

</div>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>On Mon, Aug 2, 2021 at 8:12 PM David Lang &lt;<a
href=3D"mailto:david@lang.hm">david@lang.hm</a>&gt; =
wrote:<o:p></o:p></span></font></p>

</div>

<blockquote style=3D'border:none;border-left:solid #CCCCCC =
1.0pt;padding:0in 0in 0in 6.0pt;
margin-left:4.8pt;margin-right:0in'>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>I guess it depends on what you are intending to test. If you are =
not
going to <br>
tinker with any of the over-the-air settings (including the number of =
packets <br>
transmitted in one aggregate), the details of what happen over the air =
don't <br>
matter much.<br>
<br>
But if you are going to be doing any tinkering with what is getting =
sent, and <br>
you ignore the hidden transmitter type problems, you will create a =
solution
that <br>
seems to work really well in the lab and falls on it's face out in the =
wild <br>
where spectrum overload and hidden transmitters are the norm (at least =
in urban
<br>
areas), not rare corner cases.<br>
<br>
you don't need to include them in every test, but you need to have a way =
to <br>
configure your lab to include them before you consider any =
settings/algorithm <br>
ready to try in the wild.<br>
<br>
David Lang<br>
<br>
On Mon, 2 Aug 2021, Bob McMahon wrote:<br>
<br>
&gt; We find four nodes, a primary BSS and an adjunct one quite good for =
lots
of<br>
&gt; testing.&nbsp; The six nodes allows for a primary BSS and two =
adjacent
ones. We<br>
&gt; want to minimize complexity to necessary and sufficient.<br>
&gt;<br>
&gt; The challenge we find is having variability (e.g. montecarlos) =
that's<br>
&gt; reproducible and has relevant information. Basically, the distance
matrices<br>
&gt; have h-matrices as their elements. Our chips can provide these =
h-matrices.<br>
&gt;<br>
&gt; The parts for solid state programmable attenuators and phase =
shifters<br>
&gt; aren't very expensive. A device that supports a five branch tree =
and 2x2<br>
&gt; MIMO seems a very good starting point.<br>
&gt;<br>
&gt; Bob<br>
&gt;<br>
&gt; On Mon, Aug 2, 2021 at 4:55 PM Ben Greear &lt;<a
href=3D"mailto:greearb@candelatech.com" =
target=3D"_blank">greearb@candelatech.com</a>&gt;
wrote:<br>
&gt;<br>
&gt;&gt; On 8/2/21 4:16 PM, David Lang wrote:<br>
&gt;&gt;&gt; If you are going to setup a test environment for wifi, you =
need to<br>
&gt;&gt; include the ability to make a fe cases that only happen with =
RF, not
with<br>
&gt;&gt; wired networks and<br>
&gt;&gt;&gt; are commonly overlooked<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 1. station A can hear station B and C but they cannot hear =
each
other<br>
&gt;&gt;&gt; 2. station A can hear station B but station B cannot hear =
station
A 3.<br>
&gt;&gt; station A can hear that station B is transmitting, but not with =
a
strong<br>
&gt;&gt; enough signal to<br>
&gt;&gt;&gt; decode the signal (yes in theory you can work around =
interference,
but<br>
&gt;&gt; in practice interference is still a real thing)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; David Lang<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; To add to this, I think you need lots of different station =
devices,<br>
&gt;&gt; different capabilities (/n, /ac, /ax, etc)<br>
&gt;&gt; different numbers of spatial streams, and different distances =
from the<br>
&gt;&gt; AP.&nbsp; From download queueing perspective, changing<br>
&gt;&gt; the capabilities may be sufficient while keeping all stations =
at same<br>
&gt;&gt; distance.&nbsp; This assumes you are not<br>
&gt;&gt; actually testing the wifi rate-ctrl alg. itself, so different
throughput<br>
&gt;&gt; levels for different stations would be enough.<br>
&gt;&gt;<br>
&gt;&gt; So, a good station emulator setup (and/or pile of real =
stations) and a
few<br>
&gt;&gt; RF chambers and<br>
&gt;&gt; programmable attenuators and you can test that setup...<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; From upload perspective, I guess same setup would do the =
job.<br>
&gt;&gt; Queuing/fairness might depend a bit more on the<br>
&gt;&gt; station devices, emulated or otherwise, but I guess a clever AP =
could<br>
&gt;&gt; enforce fairness in upstream direction<br>
&gt;&gt; too by implementing per-sta queues.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Ben<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" =
target=3D"_blank">greearb@candelatech.com</a>&gt;<br>
&gt;&gt; Candela Technologies Inc&nbsp; <a =
href=3D"http://www.candelatech.com"
target=3D"_blank">http://www.candelatech.com</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<o:p></o:p></span></font></p>

</blockquote>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><br>
</span></font><font size=3D2><span =
style=3D'font-size:10.0pt;background:white'>This
electronic communication and the information and any files transmitted =
with it,
or attached to it, are confidential and are intended solely for the use =
of the
individual or entity to whom it is addressed and may contain information =
that is
confidential, legally privileged, protected by privacy laws, or =
otherwise
restricted from disclosure to anyone else. If you are not the intended
recipient or the person responsible for delivering the e-mail to the =
intended
recipient, you are hereby notified that any use, copying, distributing,
dissemination, forwarding, printing, or copying of this e-mail is =
strictly
prohibited. If you received this e-mail in error, please return the =
e-mail to
the sender, delete it from your computer, and destroy any printed copy =
of it.</span></font><o:p></o:p></p>

</div>

</body>

</html>

------=_NextPart_000_0416_01D78BD8.2B4FDD10--


--===============7358063256306577006==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7358063256306577006==--


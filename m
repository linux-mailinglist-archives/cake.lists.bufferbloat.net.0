Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 126F33E4AB0
	for <lists+cake@lfdr.de>; Mon,  9 Aug 2021 19:17:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BC2373CB5D;
	Mon,  9 Aug 2021 13:17:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628529462;
	bh=aBgml1sdxiY4Ce4Jnq9ZEHxydtN5aOmEIQkgZaOH1d8=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=RZv/7vtF4ZJhfE3CR04KUDKLjgVdOcp2CXiR5j7r9vZMGDzcpbER3YVgYRCEkL2xw
	 yrKtCViAJMdf9nwMCztD/ieRAY1TK5z656p7ucBXwHYHoaWiR+phxE3zUkq59bG7WF
	 mlprbORRJ9EPshVZqYW6owpXei7PCw00U378wmpQkUJF6f47hDonFCbJHENBtF3ryY
	 BBgxITKBzHv8GU3uD4l2u+oabpVcK0PPUeRCvkZcYaVI0ufm3G40LWUhSXkxfDRHVQ
	 ljIGxxO6suuh3o3RA3HGofrR5rJTsnuRuJlcNH9Q37q1Ku2W2Pu2elExEg0Nv9W2i4
	 aFEBv+kUMU/Zw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bosmailout03.eigbox.net (bosmailout03.eigbox.net [66.96.189.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0F33F3B2A4;
 Sun,  8 Aug 2021 01:07:24 -0400 (EDT)
Received: from bosmailscan07.eigbox.net ([10.20.15.7])
 by bosmailout03.eigbox.net with esmtp (Exim)
 id 1mCb1w-0003du-Jr; Sun, 08 Aug 2021 01:07:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=alum.mit.edu; s=dkim; h=Sender:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EdpSaR5G7fhK6U1sb/QzzNU3gc+1NzcA00TTlG7j0wo=; b=CrgC1ghTg16V/NuQ2TIOcgaB8F
 OT8cK9gKulrZynzOUtK1BcjY0OC2t+YdXNfNoCK3LbZlGZ7WzsPAMno2BiIqcyEAdL1PEKaMvzots
 NAiW8m//yMKVgcl9ye/rRBkmCIoRqYfNdB/9fwcDTNIUOVRV8UqZKk2Zz8B7UuqfAMCbPCEGP5cO8
 QfBRC9nV3OmHQ90ONVm3S9IgvPhbVRo7y3L0FZQFWapXQy3/xfXZsLGxMd//STcFtRc4c646bs+41
 HfE3CQknVp9iQb8kMCcNZtBenOZEeNQavug+YpNngChj9M7njctYQVN/3iLRoTzoqeOywjlaC37ID
 T9GUnvKA==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan07.eigbox.net with esmtp (Exim)
 id 1mCb1w-0003DM-Bx; Sun, 08 Aug 2021 01:07:24 -0400
Received: from bosauthsmtp17.yourhostingaccount.com ([10.20.18.17])
 by bosimpout12 with 
 id et7M250070N5uqq01t7QDE; Sun, 08 Aug 2021 01:07:24 -0400
X-Authority-Analysis: v=2.3 cv=d4VuNSrE c=1 sm=1 tr=0
 a=f4kFLigMKr8AH7rIJ//qJA==:117 a=x+7tlP9+fMpTIVJEmcsKvw==:17
 a=MhDmnRu9jo8A:10 a=Wo7qeYC63mUA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=kurRqvosAAAA:8
 a=vnREMb7VAAAA:8 a=YFxKG3qYSPYyhrXa8CUA:9 a=CjuIK1q_8ugA:10 a=SSmOFEACAAAA:8
 a=ep-1REjJ53oY9iy638UA:9 a=_JJLYtIFgNr7T-jv:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=kbxRQ_lfPIoQnHsAj2-A:22
Received: from c-73-222-32-85.hsd1.ca.comcast.net ([73.222.32.85]:62870
 helo=SRA6) by bosauthsmtp17.eigbox.net with esmtpa (Exim)
 id 1mCb1s-0007Wb-TR; Sun, 08 Aug 2021 01:07:21 -0400
From: "Dick Roy" <dickroy@alum.mit.edu>
To: "'Bob McMahon'" <bob.mcmahon@broadcom.com>,
 "'Leonard Kleinrock'" <lk@cs.ucla.edu>
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
 <8677F5C4-1893-4A61-A13C-3C8BE17CB789@cs.ucla.edu>
 <CAHb6LvpQP_jCiHeNJAD9qt+wB-HqUAW7N6aGJ+6-PXg+KE5Z2Q@mail.gmail.com>
In-Reply-To: <CAHb6LvpQP_jCiHeNJAD9qt+wB-HqUAW7N6aGJ+6-PXg+KE5Z2Q@mail.gmail.com>
Date: Sat, 7 Aug 2021 22:07:10 -0700
Organization: SRA
Message-ID: <4F6EFB347C08475A9F53B24E0D8BEAE2@SRA6>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdeLuSXLoB3QE7ijRwazGNR+Tg5yUQAWbdqw
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
Content-Type: multipart/mixed; boundary="===============0334299453745427656=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.

--===============0334299453745427656==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_042C_01D78BD8.98096BB0"

This is a multi-part message in MIME format.

------=_NextPart_000_042C_01D78BD8.98096BB0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

 

  _____  

From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf Of
Bob McMahon
Sent: Monday, August 2, 2021 6:24 PM
To: Leonard Kleinrock
Cc: starlink@lists.bufferbloat.net; Make-Wifi-fast; Cake List;
codel@lists.bufferbloat.net; cerowrt-devel; bloat
Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
Internet Quality workshop CFP for the internet architecture board

 

I found the following talk relevant to distances between all the nodes.
https://www.youtube.com/watch?v=PNoUcQTCxiM 

Distance is an abstract idea but applies to energy into a node as well as
phylogenetic trees. It's the same problem, i.e. fitting a distance matrix
using some sort of tree. I've found the five branch tree works well for four
nodes.

[RR] These trees are means for approximating a higher dimensional real-world
problem with a lower dimensional structure.  You may be doing this to save
hardware when trying to cable up some complex test scenarios, however I'm
wondering why?  Why not just put the STAs in the lab and turn them on rather
than cabling them?



Bob 

 

On Mon, Aug 2, 2021 at 5:37 PM Leonard Kleinrock <lk@cs.ucla.edu> wrote:

These cases are what my student, Fouad Tobagi and I called the Hidden
Terminal Problem (with the Busy Tone solution) back in 1975.

Len 


> On Aug 2, 2021, at 4:16 PM, David Lang <david@lang.hm> wrote:
> 
> If you are going to setup a test environment for wifi, you need to include
the ability to make a fe cases that only happen with RF, not with wired
networks and are commonly overlooked
> 
> 1. station A can hear station B and C but they cannot hear each other
> 2. station A can hear station B but station B cannot hear station A 3.
station A can hear that station B is transmitting, but not with a strong
enough signal to decode the signal (yes in theory you can work around
interference, but in practice interference is still a real thing)
> 
> David Lang
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


------=_NextPart_000_042C_01D78BD8.98096BB0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
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
2021 6:24
PM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> Leonard Kleinrock<br>
<b><span style=3D'font-weight:bold'>Cc:</span></b> =
starlink@lists.bufferbloat.net;
Make-Wifi-fast; Cake List; codel@lists.bufferbloat.net; cerowrt-devel; =
bloat<br>
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

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>I found the following talk relevant to distances between all the
nodes.&nbsp;&nbsp;<a =
href=3D"https://www.youtube.com/watch?v=3DPNoUcQTCxiM">https://www.youtub=
e.com/watch?v=3DPNoUcQTCxiM</a>
<br>
<br>
Distance is an abstract idea but applies to energy into a node as well =
as
phylogenetic trees. It's the same problem, i.e. fitting a distance =
matrix using
some sort of tree. I've found the five branch tree works well for four =
nodes.<font
color=3Dnavy><span =
style=3D'color:navy'><o:p></o:p></span></font></span></font></p>

<p class=3DMsoNormal><b><i><font size=3D2 color=3Dnavy =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial;color:navy;font-weight:bold;
font-style:italic'>[RR] These trees are means for approximating a higher
dimensional real-world problem with a lower dimensional structure. =
&nbsp;You may be
doing this to save hardware when trying to cable up some complex test =
scenarios,
however I&#8217;m wondering why? &nbsp;Why not just put the STAs in the =
lab and turn them
on rather than cabling them?<o:p></o:p></span></font></i></b></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><br>
<br>
Bob&nbsp;<o:p></o:p></span></font></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>On Mon, Aug 2, 2021 at 5:37 PM Leonard Kleinrock &lt;<a
href=3D"mailto:lk@cs.ucla.edu">lk@cs.ucla.edu</a>&gt; =
wrote:<o:p></o:p></span></font></p>

</div>

<blockquote style=3D'border:none;border-left:solid #CCCCCC =
1.0pt;padding:0in 0in 0in 6.0pt;
margin-left:4.8pt;margin-right:0in'>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>These cases =
are what my
student, Fouad Tobagi and I called the Hidden Terminal Problem (with the =
Busy
Tone solution) back in 1975.<br>
<br>
Len <br>
<br>
<br>
&gt; On Aug 2, 2021, at 4:16 PM, David Lang &lt;<a =
href=3D"mailto:david@lang.hm"
target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt; <br>
&gt; If you are going to setup a test environment for wifi, you need to =
include
the ability to make a fe cases that only happen with RF, not with wired
networks and are commonly overlooked<br>
&gt; <br>
&gt; 1. station A can hear station B and C but they cannot hear each =
other<br>
&gt; 2. station A can hear station B but station B cannot hear station A =
3.
station A can hear that station B is transmitting, but not with a strong =
enough
signal to decode the signal (yes in theory you can work around =
interference,
but in practice interference is still a real thing)<br>
&gt; <br>
&gt; David Lang<br>
&gt; <o:p></o:p></span></font></p>

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
that
is confidential, legally privileged, protected by privacy laws, or =
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

------=_NextPart_000_042C_01D78BD8.98096BB0--


--===============0334299453745427656==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0334299453745427656==--


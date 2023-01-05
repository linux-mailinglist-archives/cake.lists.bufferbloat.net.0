Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D26E98B6578
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 964323CBCA;
	Mon, 29 Apr 2024 18:18:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429133;
	bh=PJHGiRUTWfSmYZiuE0ttmFcFN+uiMtoCK/chrM69D9E=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=J0GItDCBZyftT3iw3MkwLRSBl/qhk7P28bHgMImeuOQq6nTz62GZn0wIgaJq/bQGB
	 k8WmUfvtMoVPRcfDusgSQJaJNLaIDP4cw0zW2HCY7zD+mS+n0TaxqlhoP1h823tuHS
	 OvJrl3E/AWi+1sMzc/gJGEt6o8cil4h0PFQXr7XxsV1rz0Byypfc38XB56wLNj+kDs
	 bOUGrDYIyldm+vFCZXjabp0IbyUUjOkt6ireVJ0kl0ZeOc7dRyo6EWm97EblOM/aLN
	 XPWJi8T4kPPEta4fvBmxRMr8Ts0ayIqyrV3hFhEHw/28amULXxq1pH4Ghju1gQYfEN
	 XW8KBBlj2viuQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bosmailout07.eigbox.net (bosmailout07.eigbox.net [66.96.184.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AE2323B29D;
 Wed,  4 Jan 2023 23:25:28 -0500 (EST)
Received: from [10.20.15.5] (helo=bosmailscan05.eigbox.net)
 by bosmailout07.eigbox.net with esmtp (Exim)
 id 1pDHom-0002kW-86; Wed, 04 Jan 2023 23:25:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=alum.mit.edu; s=dkim; h=Sender:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0oegLws0gwIGfQnxBuwK6T5OGluFReCcBShiZ3r/7xE=; b=vFZNlVDVZ9ob+7NAY2qY1JDfMX
 dhQ8eWQzf55bM6KTYCBhB38Kum0R+glLiD9bDywVIrUavrxshxmSnTsRbWd3zN9KbEjfhfLQ9+E1c
 IhjfcuhQzurlX/mZho+cWoZlei++0FO/urtEP5N2nbiBJRTbJhFje1SwhPCNxZImS1LQzH3bprFoz
 RFm7BsqO5YeiupgCIw+bBQQk4zf83cPLuvWMN+MimazdeEfgRT42w1s+aTCn4NrUF9cr/Hgw4eiQz
 b14MfobrbXhTQU0MDQXKGIR1UAY4WWoMoSsp0EPEBUgZmtLkPVav00D0GqyQlm183bhHHC+WKHBHK
 vaL0CO3w==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan05.eigbox.net with esmtp (Exim)
 id 1pDHol-0002nb-T1; Wed, 04 Jan 2023 23:25:27 -0500
Received: from bosauthsmtp19.yourhostingaccount.com ([10.20.18.19])
 by bosimpout12 with 
 id 4sRQ2900A0QhFXN01sRTGX; Wed, 04 Jan 2023 23:25:27 -0500
X-Authority-Analysis: v=2.3 cv=d4VuNSrE c=1 sm=1 tr=0
 a=9UqFsMnAB6EOkiq4MrOclQ==:117 a=nIEF4cAZMyOU5h9mcfI6lg==:17
 a=RvmDmJFTN0MA:10 a=6ulraYUaiNAA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=kurRqvosAAAA:8
 a=sqLpaOU98Sibaej4QDEA:9 a=CjuIK1q_8ugA:10 a=SSmOFEACAAAA:8
 a=mfzmceUD9aQHwcEKoncA:9 a=cCWrsjBgupgKbIaN:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=kbxRQ_lfPIoQnHsAj2-A:22
Received: from c-67-180-86-211.hsd1.ca.comcast.net ([67.180.86.211]:58466
 helo=SRA6) by bosauthsmtp19.eigbox.net with esmtpa (Exim)
 id 1pDHoi-00033a-30; Wed, 04 Jan 2023 23:25:24 -0500
To: <jf@jonathanfoulkes.com>,
	"'Dave Taht'" <dave.taht@gmail.com>
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <845161E4-474C-44A9-92D4-1702748A3DA1@jonathanfoulkes.com>
In-Reply-To: <845161E4-474C-44A9-92D4-1702748A3DA1@jonathanfoulkes.com>
Date: Wed, 4 Jan 2023 20:25:14 -0800
Organization: SRA
Message-ID: <CE74727AA11B44E1BC95B9989EAB59A4@SRA6>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdkgcaeiPghvVlbWRwSWq3zsa9MO0QASVTcA
X-MimeOLE: Produced By Microsoft MimeOLE
X-EN-UserInfo: f809475445fb8041985048e338e1a001:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dickroy@intellicommunications.com
X-EN-OrigIP: 67.180.86.211
X-EN-OrigHost: c-67-180-86-211.hsd1.ca.comcast.net
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Starlink] [Rpm] the grinch meets cloudflare's christmas
	present
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
Cc: 'Cake List' <cake@lists.bufferbloat.net>, 'Rpm' <rpm@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>,
 'libreqos' <libreqos@lists.bufferbloat.net>, 'IETF IPPM WG' <ippm@ietf.org>
Content-Type: multipart/mixed; boundary="===============4622606069497185845=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.

--===============4622606069497185845==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_04E8_01D9207A.ACF13C50"

This is a multi-part message in MIME format.

------=_NextPart_000_04E8_01D9207A.ACF13C50
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

HNY to all!

 

Seems to me that we often get distracted by nomenclature needlessly.
Perhaps it's time to agree on the lexicon that should be used going forward
so as to avoid such distractions.

 

Perhaps a place to start is "the technical facts":

 

1)    "capacity" is a property of a link (or links) that specifies the
theoretically achievable maximum error-free transmission rate of
data/information through a noisy channel (or channels, the multidimensiaonl
version of the capacity theorem).  Yes, it's much more complicated than that
in general, however the basic principle is easy to understand. "You can only
get so much water through a hose of size X with an applied pressure of
magnitude Y.")

2)    "maximum achievable throughput/data-rate" of a channel is the maximum
rate (always <= channel capacity) at which information can be exchanged in
the channel as implemented (under all conditions).

3)    achieved/measured "data rate" is the measured/estimated rate of
information transmission (always <= maximum achievable rate" for that
channel) in a channel under a given set of conditions. 

4)    "latency" is the amount of time it takes information to get from a
source to its destination (there may be multiple destinations each with
different latencies :-)).  Latency may (or may not) include the unavoidable
consequence of the laws of physics that state information can not travel
faster than the "speed" of light (actually the "speed" in whatever medium
and by whatever mode the information is actually being transported)! Tin
cans and strings have a transmission speed that depends critically on how
hard each person at the end of the "link" are pulling on their cans! :-) The
point is that when included, information transmission times from source to
destination set a lower bound on the "latency" of that link/channel.

5)    . (feel free to add more :-)

 

My two cents!



RR

 

-----Original Message-----
From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf Of
jf--- via Starlink
Sent: Wednesday, January 4, 2023 11:20 AM
To: Dave Taht
Cc: Dave Taht via Starlink; IETF IPPM WG; libreqos; Cake List; Rpm; bloat
Subject: Re: [Starlink] [Rpm] the grinch meets cloudflare's christmas
present

 

HNY Dave and all the rest,

 

Great to see yet another capacity test add latency metrics to the results.
This one looks like a good start.

 

Results from my Windstream DOCSIS 3.1 line (3.1 on download only, up is 3.0)
Gigabit down / 35Mbps up provisioning. Using an IQrouter Pro (an i5 x86)
with Cake set for 710/31 as this ISP can't deliver reliable low-latency
unless you shave a good bit off the targets. My local loop is pretty
congested.

 

Here's the latest Cloudflare test:

 


------=_NextPart_000_04E8_01D9207A.ACF13C50
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
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
 /* List Definitions */
 @list l0
	{mso-list-id:1187137351;
	mso-list-type:hybrid;
	mso-list-template-ids:1756560226 67698705 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>HNY to all!<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Seems to me that we often get distracted by nomenclature =
needlessly. &nbsp;Perhaps
it&#8217;s time to agree on the lexicon that should be used going =
forward so as
to avoid such distractions.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Perhaps a place to start is &#8220;the technical =
facts&#8221;:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span style=3D'font-size:10.0pt'><span
style=3D'mso-list:Ignore'>1)<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]>&#8220;capacity&#8221;
is a property of a link (or links) that specifies the theoretically =
achievable
maximum error-free transmission rate of data/information through a noisy
channel (or channels, the multidimensiaonl version of the capacity =
theorem). &nbsp;Yes,
it&#8217;s much more complicated than that in general, however the basic
principle is easy to understand. &#8220;You can only get so much water =
through
a hose of size X with an applied pressure of magnitude =
Y.&#8221;)<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span style=3D'font-size:10.0pt'><span
style=3D'mso-list:Ignore'>2)<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]>&#8220;maximum
achievable throughput/data-rate&#8221; of a channel is the maximum rate =
(always
&lt;=3D channel capacity) at which information can be exchanged in the =
channel as
implemented (under all conditions).<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span style=3D'font-size:10.0pt'><span
style=3D'mso-list:Ignore'>3)<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]>achieved/measured
&#8220;data rate&#8221; is the measured/estimated rate of information =
transmission
(always &lt;=3D maximum achievable rate&#8221; for that channel) in a =
channel
under a given set of conditions. <o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span style=3D'font-size:10.0pt'><span
style=3D'mso-list:Ignore'>4)<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]>&#8220;latency&#8221;
is the amount of time it takes information to get from a source to its
destination (there may be multiple destinations each with different =
latencies <font
face=3DWingdings><span =
style=3D'font-family:Wingdings'>J</span></font>).&nbsp; Latency
may (or may not) include the unavoidable consequence of the laws of =
physics
that state information can not travel faster than the =
&#8220;speed&#8221; of
light (actually the &#8220;speed&#8221; in whatever medium and by =
whatever mode
the information is actually being transported)! Tin cans and strings =
have a
transmission speed that depends critically on how hard each person at =
the end
of the &#8220;link&#8221; are pulling on their cans! <font =
face=3DWingdings><span
style=3D'font-family:Wingdings'>J</span></font> The point is that when =
included, information
transmission times from source to destination set a lower bound on the =
&#8220;latency&#8221;
of that link/channel.<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span style=3D'font-size:10.0pt'><span
style=3D'mso-list:Ignore'>5)<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]>&#8230;
(feel free to add more <font face=3DWingdings><span =
style=3D'font-family:Wingdings'>J</span></font><o:p></o:p></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>My two cents!<br>
<br>
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>RR<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>-----Original Message-----<br>
From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf =
Of jf---
via Starlink<br>
Sent: Wednesday, January 4, 2023 11:20 AM<br>
To: Dave Taht<br>
Cc: Dave Taht via Starlink; IETF IPPM WG; libreqos; Cake List; Rpm; =
bloat<br>
Subject: Re: [Starlink] [Rpm] the grinch meets cloudflare's christmas =
present</span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>HNY Dave and all the rest,<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Great to see yet another capacity test add latency metrics to =
the
results. This one looks like a good start.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Results from my Windstream DOCSIS 3.1 line (3.1 on download =
only, up is
3.0) Gigabit down / 35Mbps up provisioning. Using an IQrouter Pro (an i5 =
x86)
with Cake set for 710/31 as this ISP can&#8217;t deliver reliable =
low-latency
unless you shave a good bit off the targets. My local loop is pretty =
congested.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Here&#8217;s the latest Cloudflare =
test:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------=_NextPart_000_04E8_01D9207A.ACF13C50--


--===============4622606069497185845==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4622606069497185845==--


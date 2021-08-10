Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FFD3E8556
	for <lists+cake@lfdr.de>; Tue, 10 Aug 2021 23:33:32 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 322353CB42;
	Tue, 10 Aug 2021 17:33:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628631207;
	bh=qvmTN/Eopnh+/lpJ7LAV1yC+ZY52Qcyji4C6M0VNNG0=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=GdbG8laTv8z0yUK4/ORtWbzVfwL/QhfRZ43P1DjxvNRYtXvTHnMSDttFQal9O+WOj
	 L3Qp+cxVg/aOYySUfkDXUBHX3+wlLZbe9pdxkoiGyzoqWY1/m69ounL3JFFro27fp6
	 8GWCw9lOtx44A/8PnxXdlV1WA+13bV/zJB4lil233Du/3iGSicRdZe2aBdElfSgm/D
	 aMa+dzD0xHBc65JgG8Zu7sjYeB9PfLMsGBZEe9YE3AG+u56WMcdSKdOO+pdUevJC+1
	 Hrl7hjqqHzqRm4wyXU4gz7JlH38wJl0j2Tf8RIRhHQsU9WLUBsOzc9q7PA+3xdqEWE
	 ntYAlspO5pJ/Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bosmailout03.eigbox.net (bosmailout03.eigbox.net [66.96.185.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 89BAA3B2A4;
 Tue, 10 Aug 2021 16:16:20 -0400 (EDT)
Received: from bosmailscan02.eigbox.net ([10.20.15.2])
 by bosmailout03.eigbox.net with esmtp (Exim)
 id 1mDYAe-0001mp-4G; Tue, 10 Aug 2021 16:16:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=alum.mit.edu; s=dkim; h=Sender:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VwSSSEl/t3LhzdPG81tDhwwpISqXxgVxf1VBHcwJNrE=; b=L5TfceIF7tCUzaRofXGU2BJQas
 t54nE8ns9ih9b3Sj0QRSmNK+I+kjTZbqv7G+GkqkWCg4s2aDKVXUhGdrIvP52yYOUU2Z2kzGxV2cj
 RuqhDmWKHLL5RLaArYZl6ejiLf0on54ITAKoMj79dMhXNNhhM4bgKNVFbGwZQeXEWt5hwzOSDGIDu
 34d6Qhw+LTwPcaimDUwLn89dewhMTI06wr2dqyCOwB+tQicwLYKEIIhyMH3nqtCv/x/voLG7CipzH
 XUyIz2NlPzHeZ9RdBb4d4cp2DTlvPDhNMfTETPFlbY3UZvccZM+H6SgB5fj9SOedWxEXOpt8Z3UdA
 ZY7Hpkjw==;
Received: from [10.115.3.34] (helo=bosimpout04)
 by bosmailscan02.eigbox.net with esmtp (Exim)
 id 1mDYAd-0006fp-S2; Tue, 10 Aug 2021 16:16:19 -0400
Received: from bosauthsmtp17.yourhostingaccount.com ([10.20.18.17])
 by bosimpout04 with 
 id fwGG2500B0N5uqq01wGKKB; Tue, 10 Aug 2021 16:16:19 -0400
X-Authority-Analysis: v=2.1 cv=asA8CEpV c=1 sm=1 tr=0
 a=f4kFLigMKr8AH7rIJ//qJA==:117 a=x+7tlP9+fMpTIVJEmcsKvw==:17
 a=L9H7d07YOLsA:10 a=9cW_t1CCXrUA:10 a=s5jvgZ67dGcA:10 a=MhDmnRu9jo8A:10
 a=Wo7qeYC63mUA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=hPoJL0YCAAAA:8
 a=NNP_xJrmPD_ohMxKK8QA:9 a=CjuIK1q_8ugA:10 a=SSmOFEACAAAA:8
 a=QdQXN5mmsqSB4wWReGcA:9 a=6sKWoUBcLqHEHAFD:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
Received: from c-73-222-32-85.hsd1.ca.comcast.net ([73.222.32.85]:57781
 helo=SRA6) by bosauthsmtp17.eigbox.net with esmtpa (Exim)
 id 1mDYAa-0004RF-BX; Tue, 10 Aug 2021 16:16:16 -0400
From: "Dick Roy" <dickroy@alum.mit.edu>
To: "'Bob McMahon'" <bob.mcmahon@broadcom.com>
References: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
 <202108101410.17AEAR4w075939@gndrsh.dnsmgr.net>
 <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6>
 <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com>
 <03CA2CDA3EC5415DA229F835BE039994@SRA6>
 <CAHb6LvoiVZq91m-C3iJFC95fYLPHCY3zQo6O0XTUDAJquu5KbQ@mail.gmail.com>
In-Reply-To: <CAHb6LvoiVZq91m-C3iJFC95fYLPHCY3zQo6O0XTUDAJquu5KbQ@mail.gmail.com>
Date: Tue, 10 Aug 2021 13:16:05 -0700
Organization: SRA
Message-ID: <92A399A23FEE4C52ADFC1734E6840756@SRA6>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdeOHOTTGFCx3Ls7RHKZxN6fDRBwQQAB2MsA
X-MimeOLE: Produced By Microsoft MimeOLE
X-EN-UserInfo: f809475445fb8041985048e338e1a001:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dickroy@intellicommunications.com
X-EN-OrigIP: 73.222.32.85
X-EN-OrigHost: c-73-222-32-85.hsd1.ca.comcast.net
X-Mailman-Approved-At: Tue, 10 Aug 2021 17:33:25 -0400
Subject: [Cake] Anhyone have a spare couple a hundred million ... Elon may
	need to start a go-fund-me page!
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
Cc: starlink@lists.bufferbloat.net,
 'Make-Wifi-fast' <make-wifi-fast@lists.bufferbloat.net>,
 'Cake List' <cake@lists.bufferbloat.net>,
 'codel' <codel@lists.bufferbloat.net>,
 'cerowrt-devel' <cerowrt-devel@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>,
 "'Rodney W. Grimes'" <starlink@gndrsh.dnsmgr.net>
Content-Type: multipart/mixed; boundary="===============1948029750821885166=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.

--===============1948029750821885166==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_02B2_01D78DE9.E6968700"

This is a multi-part message in MIME format.

------=_NextPart_000_02B2_01D78DE9.E6968700
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

You may find this of some relevance!

 

https://arstechnica.com/tech-policy/2021/07/ajit-pai-apparently-mismanaged-9
-billion-fund-new-fcc-boss-starts-cleanup/

 

Cheers (or whatever!),

 

RR

 


------=_NextPart_000_02B2_01D78DE9.E6968700
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
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
10.0pt;font-family:Arial;color:navy'>You may find this of some =
relevance!<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><a
href=3D"https://arstechnica.com/tech-policy/2021/07/ajit-pai-apparently-m=
ismanaged-9-billion-fund-new-fcc-boss-starts-cleanup/">https://arstechnic=
a.com/tech-policy/2021/07/ajit-pai-apparently-mismanaged-9-billion-fund-n=
ew-fcc-boss-starts-cleanup/</a><o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Cheers (or =
whatever!),<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>RR<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------=_NextPart_000_02B2_01D78DE9.E6968700--


--===============1948029750821885166==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1948029750821885166==--


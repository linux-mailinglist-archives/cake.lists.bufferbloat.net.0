Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A4FA6B242
	for <lists+cake@lfdr.de>; Fri, 21 Mar 2025 01:31:37 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 70FD03CB40;
	Thu, 20 Mar 2025 20:31:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1742517096;
	bh=ENy2slsRBnnzwldCCHmAmVoBBlmLehdyaZ/sNzffQfo=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Ipt/eIijtAOhv2kz6bUIrLq2KTD6q0jBGr+EDwiqO9KxMQAy9SCi7er88pW2F4XF/
	 4tAKpz2vMeuLJeUtw0du1W3liLJAwf4dU7YbXnCknis1MxBf4bpFrzxrOsGEdVdgh5
	 Kz0TwMHU4X9QWFFeRT6c66bzA8J477jdS+TMR87jVYdQ/9iFwxtlLrmQWOK5FnPhS/
	 DlIhftsgV6LzX8vK4EQcUJnFbHMD51xBHo1kfXFzWzqVWqqQlELKogTj9ZJKfVMAcl
	 gYqEQZzFEVDu4olsrmzkMw0x3CUZ/JWR+UScIsHO7di68kS/gbZ9MXoBxyzU86+IZl
	 ZLv4LPm/w3+6A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp-out3.cloudwebhosting.com (smtp-out3.cloudwebhosting.com
 [216.55.99.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D2C093B29D
 for <cake@lists.bufferbloat.net>; Thu, 20 Mar 2025 20:31:34 -0400 (EDT)
Received: from localhost (smtp-out.cloudwebhosting.com [216.55.99.163])
 by smtp-out.cloudwebhosting.com (SMTP-Out) with ESMTP id 614D35B5F967;
 Thu, 20 Mar 2025 19:31:35 -0500 (CDT)
X-SPAM-VIRUS-Scanned: Outbound Email Gateway Filter Ver 2.1 at
 smtp-out.cloudwebhosting.com
Received: from smtp-out.cloudwebhosting.com ([216.55.99.163])
 by localhost (smtp-out.cloudwebhosting.com [216.55.99.163]) (smtp-out,
 port 10024)
 with ESMTP id VFaLtYBRUJND; Thu, 20 Mar 2025 19:31:34 -0500 (CDT)
Received: from cloud208.cloudwebhosting.com (cloud208.cloudwebhosting.com
 [165.140.70.189])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp-out.cloudwebhosting.com (SMTP-Out) with ESMTPS id BC5005B5F96E;
 Thu, 20 Mar 2025 19:31:34 -0500 (CDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=inacomptc.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PBdWJB29tLP9cK+C9MV+B22dvctVgQ3k5EkWfvYd4/g=; b=QY3k06YI8YYq0ROm3Bi9SaAuJX
 FX8iztpxuzkVA4LV/lKnzGJ4SjBobTb5OvR5ibUilOP7F0KouNrXov9lN+2UzlU6BKKkxUcGe63J1
 P1b/7qYPuskWUXIsyn64diuw7pbD+NTFC/wlrJDQ1J/eP6HvATSpbX560UITiD0hHyj6nqPBweCUm
 t5cLttq+WC1kVPd1GiDJ7HODvQCMjP0Q7PRnOA69GmEHl9ZDNUtE3r5/GnRrQl77qWZumA5BqvMxe
 EY8bpDlIIoJhCgZuC71JBQBWbGovoyQ8L19JHekWehLAVHgepHINTe6v85qgkSIOQUV3cG6Cr89Ot
 D3RfHHjg==;
Received: from syn-172-222-101-200.res.spectrum.com ([172.222.101.200]:50475
 helo=HomeLaptop24)
 by cloud208.cloudwebhosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.98.1)
 (envelope-from <jordan@inacomptc.com>) id 1tvQIO-00000006rSK-1R1V;
 Thu, 20 Mar 2025 18:31:32 -0600
To: "'Frantisek Borsik'" <frantisek.borsik@gmail.com>,
 "'Cake List'" <cake@lists.bufferbloat.net>
References: <CAJUtOOh3DEL==w8uYTkPEyhZpgYbLx5xbyLJtXCCpNUE+SQyJg@mail.gmail.com>
In-Reply-To: <CAJUtOOh3DEL==w8uYTkPEyhZpgYbLx5xbyLJtXCCpNUE+SQyJg@mail.gmail.com>
Date: Thu, 20 Mar 2025 20:31:32 -0400
Message-ID: <018c01db99f8$988454b0$c98cfe10$@inacomptc.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGxLCT66nezQgOzKJN4M0g+jTrZX7PRmLpA
Content-Language: en-us
X-Get-Message-Sender-Via: cloud208.cloudwebhosting.com: authenticated_id:
 jordan@inacomptc.com
X-Authenticated-Sender: cloud208.cloudwebhosting.com: jordan@inacomptc.com
Subject: Re: [Cake] CAKE is going to be deployed on Alta Labs any day now!
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
From: Jordan Szuch via Cake <cake@lists.bufferbloat.net>
Reply-To: jordan@inacomptc.com
Content-Type: multipart/mixed; boundary="===============1392797063908291439=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multipart message in MIME format.

--===============1392797063908291439==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_018D_01DB99D7.117329E0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_018D_01DB99D7.117329E0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Looks like you were right on, Frank.

=20

Route10 Firmware 1.4d Released! - Routers - Alta Labs =
<https://forum.alta.inc/t/route10-firmware-1-4d-released/4893>=20

=20

Jordan

=20

From: Cake <cake-bounces@lists.bufferbloat.net> On Behalf Of Frantisek =
Borsik via Cake
Sent: Tuesday, March 18, 2025 6:01 PM
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] CAKE is going to be deployed on Alta Labs any day now!

=20

Should be pushed through production in day or two and they will be =
talking about it on https://streamyard.com/watch/ubYm2AffWkYi this =
Wednesday,  March 19, at 1PM EST / 12PM CST / 11AM MST / 10AM PST

=20

Can't wait.

=20

All the best,

=20

Frank

Frantisek (Frank) Borsik

=20

 <https://www.linkedin.com/in/frantisekborsik> =
https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714=20

iMessage, mobile: +420775230885

Skype: casioa5302ca

 <mailto:frantisek.borsik@gmail.com> frantisek.borsik@gmail.com


------=_NextPart_000_018D_01DB99D7.117329E0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:Inter;
	panose-1:2 0 5 3 0 0 0 2 0 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:Inter;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:Inter'>Looks like you were right =
on, Frank.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:Inter'><o:p>&nbsp;</o:p></span></p>=
<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:Inter'><a =
href=3D"https://forum.alta.inc/t/route10-firmware-1-4d-released/4893">Rou=
te10 Firmware 1.4d Released! - Routers - Alta =
Labs</a><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:Inter'><o:p>&nbsp;</o:p></span></p>=
<p class=3DMsoNormal><span =
style=3D'color:black'>Jordan</span><o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:Inter'><o:p>&nbsp;</o:p></span></p>=
<div style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt =
0in 0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
Cake &lt;cake-bounces@lists.bufferbloat.net&gt; <b>On Behalf Of =
</b>Frantisek Borsik via Cake<br><b>Sent:</b> Tuesday, March 18, 2025 =
6:01 PM<br><b>To:</b> Cake List =
&lt;cake@lists.bufferbloat.net&gt;<br><b>Subject:</b> [Cake] CAKE is =
going to be deployed on Alta Labs any day =
now!<o:p></o:p></span></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Should be pushed through production in day or two and =
they will be talking about it on&nbsp;<a =
href=3D"https://streamyard.com/watch/ubYm2AffWkYi">https://streamyard.com=
/watch/ubYm2AffWkYi</a> this Wednesday,&nbsp;&nbsp;March 19, at 1PM EST =
/ 12PM CST / 11AM MST / 10AM PST<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Can't wait.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><div><div><div><div><di=
v><div><div><div><div><div><div><div><p class=3DMsoNormal>All the =
best,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'color:#222222'>Frank<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'color:#222222'>Frantisek (Frank) Borsik<o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'color:#222222'>&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'color:#222222'><a =
href=3D"https://www.linkedin.com/in/frantisekborsik" =
target=3D"_blank"><span =
style=3D'color:#1155CC'>https://www.linkedin.com/in/frantisekborsik</span=
></a><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'color:#222222'>Signal, Telegram, WhatsApp: =
+421919416714&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'color:#222222'>iMessage, mobile: =
+420775230885<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'color:#222222'>Skype: casioa5302ca<o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'color:#222222'><a href=3D"mailto:frantisek.borsik@gmail.com" =
target=3D"_blank"><span =
style=3D'color:#1155CC'>frantisek.borsik@gmail.com</span></a><o:p></o:p><=
/span></p></div></div></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></body></html>
------=_NextPart_000_018D_01DB99D7.117329E0--


--===============1392797063908291439==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1392797063908291439==--


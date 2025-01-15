Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD7EA12D0E
	for <lists+cake@lfdr.de>; Wed, 15 Jan 2025 21:57:24 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9A2BD3CB39;
	Wed, 15 Jan 2025 15:57:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736974642;
	bh=+eC0V/GJsndUvtDT8qMbNNhoBbycwFLnKWSugAv1r1E=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=n4ZbD78RtTJuVknvwyfgxIM++/BMq9V5xD9sKDpHj8zR9JfDpN6huvTZO8FZxDel1
	 2D8JhLRzuZMlb9ipAXKduveYDPFiV6PnRsmeJ2zlg9s1MhFuY15WLkdJGm23U9i8Mk
	 wMjWAOa1WvGXPoBOqn7oyqeZkGrzzvh/U3b1+Wm9ZKSsMaJeUcuMzpGCHDvF5htF4m
	 bduR0nLwZBi9DSwnGq03y3yPcmD9PlV4ni3QrQtQ/+c729MHZz5gEnAegPNlLFvkkv
	 ufWju2sSQgtXw9uFfjy/bD+OiOdEaMwhl+qr1CTFa1Fk/Y1ptBDTXDnXVcpDGudQYg
	 74zbLL8OB8XTA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp-out2.cloudwebhosting.com (smtp-out2.cloudwebhosting.com
 [216.55.99.164])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A6BD43B2A4
 for <cake@lists.bufferbloat.net>; Wed, 15 Jan 2025 15:57:20 -0500 (EST)
Received: from localhost (smtp-out.cloudwebhosting.com [216.55.99.163])
 by smtp-out.cloudwebhosting.com (SMTP-Out) with ESMTP id C74FD5B5F910
 for <cake@lists.bufferbloat.net>; Wed, 15 Jan 2025 14:57:20 -0600 (CST)
X-SPAM-VIRUS-Scanned: Outbound Email Gateway Filter Ver 2.1 at
 smtp-out.cloudwebhosting.com
Received: from smtp-out.cloudwebhosting.com ([216.55.99.163])
 by localhost (smtp-out.cloudwebhosting.com [216.55.99.163]) (smtp-out,
 port 10024)
 with ESMTP id 6ix14inNr5hC for <cake@lists.bufferbloat.net>;
 Wed, 15 Jan 2025 14:57:20 -0600 (CST)
Received: from cloud208.cloudwebhosting.com (cloud208.cloudwebhosting.com
 [165.140.70.189])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp-out.cloudwebhosting.com (SMTP-Out) with ESMTPS id 250935B600A6
 for <cake@lists.bufferbloat.net>; Wed, 15 Jan 2025 14:57:18 -0600 (CST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=inacomptc.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T0yLXEwDnAl6Lv51hjbnpALiN3GSj8uwNp/Il9OJ/Gg=; b=0TnmOOeXBgvw9hV9MBZ19nB3M/
 R0uYABYQh2O9rqdaRNIH3FNpHjtyvelSTtSYyiyFmlhs6u/aYKUtLFnOcFAk6I1/OjxJA4ChLg5F5
 iYDj9QhMeksbF1WH3+mMaKKzJm1cStjBJzNT4s4a/lnziX90JbbeQ4lVuvcyvqgY5mi+AdhvU8RkG
 /rWuA+ycv4BdzZNWalJnI03wX2ZO7f5KMUeGV+l9jBQiL/AMsmRrNyEkKHd5BbSZmQoY8TGSQpih1
 na8IAjxp7UHD/mtVrEt/qqZSIFU0ZU7JTqRNXcLpZ6ypobwx7VEzz7U+kWCsmnbdHh5NlWyJCd9da
 NIRvY2tw==;
Received: from syn-075-129-181-105.res.spectrum.com ([75.129.181.105]:65366
 helo=DESKTOP3O0ME24)
 by cloud208.cloudwebhosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.98)
 (envelope-from <jordan@inacomptc.com>) id 1tYARv-0000000GbcH-3wQy
 for cake@lists.bufferbloat.net; Wed, 15 Jan 2025 13:57:16 -0700
To: <cake@lists.bufferbloat.net>
Date: Wed, 15 Jan 2025 15:57:16 -0500
Message-ID: <01ba01db6790$0f7af6f0$2e70e4d0$@inacomptc.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdtnjoNvK5bBrjPWRlK9q5JH+5SiTQ==
Content-Language: en-us
X-Get-Message-Sender-Via: cloud208.cloudwebhosting.com: authenticated_id:
 jordan@inacomptc.com
X-Authenticated-Sender: cloud208.cloudwebhosting.com: jordan@inacomptc.com
Subject: [Cake] CAKE & fq_codel in hardware
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
Content-Type: multipart/mixed; boundary="===============1542097721538661856=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multipart message in MIME format.

--===============1542097721538661856==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_01BB_01DB6766.26A51600"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_01BB_01DB6766.26A51600
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Happened to be listening to a Q&A from relatively new SMB network vendor
Alta Labs (https://www.alta.inc/) and was surprised to find a fairly
straight forward discussion about wanting to implement CAKE in their router
hardware (https://www.alta.inc/route10) and fq_codel in their wireless
access points (https://www.alta.inc/access-points). Also included a brief
aside about attempting to work with their chipset vendor on it. Qualcomm if
I'm remembering correctly.

 

https://www.youtube.com/live/aJ4Tjoqz2NY?t=2662s

 

Just wanted to share since I wasn't expecting that question and it's
associated answer to pop up!

 

Jordan


------=_NextPart_000_01BB_01DB6766.26A51600
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#467886" vlink=3D"#96607D" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Happened to be listening to a =
Q&amp;A from relatively new SMB network vendor Alta Labs (<a =
href=3D"https://www.alta.inc/">https://www.alta.inc/</a>) and was =
surprised to find a fairly straight forward discussion about wanting to =
implement CAKE in their router hardware (<a =
href=3D"https://www.alta.inc/route10">https://www.alta.inc/route10</a>) =
and fq_codel in their wireless access points (<a =
href=3D"https://www.alta.inc/access-points">https://www.alta.inc/access-p=
oints</a>). Also included a brief aside about attempting to work with =
their chipset vendor on it. Qualcomm if I&#8217;m remembering =
correctly.<b><o:p></o:p></b></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><a =
href=3D"https://www.youtube.com/live/aJ4Tjoqz2NY?t=3D2662s">https://www.y=
outube.com/live/aJ4Tjoqz2NY?t=3D2662s</a><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Just wanted =
to share since I wasn&#8217;t expecting that question and it&#8217;s =
associated answer to pop up!<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><div><div><div><div=
><p class=3DMsoNormal><span style=3D'color:black'>Jordan</span><span =
style=3D'mso-ligatures:none'><o:p></o:p></span></p></div></div></div></di=
v></div></div></div></div></body></html>
------=_NextPart_000_01BB_01DB6766.26A51600--


--===============1542097721538661856==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1542097721538661856==--


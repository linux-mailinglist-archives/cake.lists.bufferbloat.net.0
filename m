Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFBB105B8F
	for <lists+cake@lfdr.de>; Thu, 21 Nov 2019 22:05:13 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B25653CB38;
	Thu, 21 Nov 2019 16:05:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1574370311;
	bh=FD4U7gRnqCyLbxtVpW6jDFnTTAlC/WmZnDVqbAf296I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=eddsalR3ZMT9D6j3rYX2NqU6uIIMVJw/fZDhJfGBH6cSblaVzykkIxqB10JmLF2NA
	 6/muJ5YV7lj5Y7xuXDcceX9TfVwEROXrKYMBYQB6c9FBmSkdL+pidhkPfGC0cqxtWq
	 crxBuVosSyxfn5bHsDVX80NfdnuE2Vi06jmm2LLhAwcb4/4LhRUpUuvAPqLyf/IBoD
	 IH4OmpA7R7InUvTK2GNPyE8fwRybIQroCQWdBRzQAO8kvpTKsCLgg8LurOnKsu+O7b
	 9iZt2H/gTEshoaWyZ2nUw90icvA377Z6pMM9qieFub9IzAYWytFh4MKbvW1RyLkqPA
	 c9E+YSPsBuv3Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sa.plexicomm.net (sa.plexicomm.net [204.80.232.21])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E8C7E3B29E
 for <cake@lists.bufferbloat.net>; Thu, 21 Nov 2019 16:05:10 -0500 (EST)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by sa.plexicomm.net (Postfix) with ESMTP id 0E479412E77
 for <cake@lists.bufferbloat.net>; Thu, 21 Nov 2019 16:03:45 -0500 (EST)
X-Virus-Scanned: Debian amavisd-new at plexicomm.net
X-Spam-Flag: NO
X-Spam-Score: -0.077
X-Spam-Level: 
X-Spam-Status: No, score=-0.077 tagged_above=-9999 required=4.5
 tests=[DKIM_SIGNED=0.1, DKIM_VALID=-0.1, DKIM_VALID_AU=-0.1,
 DKIM_VALID_EF=-0.1, HTML_MESSAGE=0.125, SPF_HELO_PASS=-0.001,
 SPF_PASS=-0.001] autolearn=unavailable autolearn_force=no
Authentication-Results: sa.plexicomm.net (amavisd-new);
 dkim=pass (1024-bit key) header.d=plexicomm.net
Received: from sa.plexicomm.net ([127.0.0.1])
 by localhost (sa.plexicomm.net [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yJ65OMqoGXoA for <cake@lists.bufferbloat.net>;
 Thu, 21 Nov 2019 16:03:44 -0500 (EST)
Received: from mail.plexicomm.net (mail.plexicomm.net [204.80.232.17])
 by sa.plexicomm.net (Postfix) with ESMTP id AFA91412E67
 for <cake@lists.bufferbloat.net>; Thu, 21 Nov 2019 16:03:44 -0500 (EST)
DKIM-Signature: a=rsa-sha256; t=1574370305; x=1574975105; s=key1;
 d=plexicomm.net; c=relaxed/relaxed; v=1;
 bh=+jN2aykvH8dFETJwQUB2mT5IuMUjMucFAL51OrRrqVI=;
 h=From:Reply-To:Subject:Date:Message-ID:To:MIME-Version:Content-Type; 
 b=uh0QMkCsqKkJnnOz9tpRTMVMda9JQw9i9QpNSybiiq4siQFAhUyWxD6iRXc+i7Tg57sVwk9e73HstJStumLqQZtlQ14+aPFCAyLSYgxOpvcfjiNap5PPf4iCYewuHLMVL6TeAr0aEOZck6vtV+TpGi/Rks0BZBTXB5U0RTEuE24=
Received: from [192.168.1.13] ([204.80.232.28])
 by mail.plexicomm.net (12.2.0 x64) with ASMTP id 201911211605059772
 for <cake@lists.bufferbloat.net>; Thu, 21 Nov 2019 16:05:05 -0500
From: "Adam Moffett" <adam@plexicomm.net>
To: cake@lists.bufferbloat.net
Date: Thu, 21 Nov 2019 21:05:10 +0000
Message-Id: <em287ad38a-b2b3-4e82-9836-99fab879ad14@adam-pc>
User-Agent: eM_Client/7.2.36908.0
Mime-Version: 1.0
Subject: [Cake] Cake implementations
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
Reply-To: Adam Moffett <adam@plexicomm.net>
Content-Type: multipart/mixed; boundary="===============5107443178870479136=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5107443178870479136==
Content-Type: multipart/alternative;
 boundary="------=_MBCD398952-0D04-4E4E-A1E1-18E6F519FBCE"

--------=_MBCD398952-0D04-4E4E-A1E1-18E6F519FBCE
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A colleague just turned me onto Cake.

My impression is that this is a research project, and that the hope is=20
for commercial products to implement cake algorithms in their equipment.=20
  Is that about right?

Are there any commercial products already using Cake?


-- Adam Moffett, Network Engineer
Plexicomm - Internet Solutions | www.plexicomm.net
Office: 1.866.759.4678 | Fax: 1.866.852.4688

--------=_MBCD398952-0D04-4E4E-A1E1-18E6F519FBCE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>

<style id=3D"signatureStyle">#xc1632dc684ef4bf #x6b4112b2336441458c6ac4b6cb=
37c9c3 a
{color: rgb(0, 0, 238);}
#xc1632dc684ef4bf #x6b4112b2336441458c6ac4b6cb37c9c3 a:visited
{color: rgb(85, 26, 139);}
#xc1632dc684ef4bf #x6b4112b2336441458c6ac4b6cb37c9c3
{font-family: "Segoe UI"; font-size: 12pt; background-color: rgb(255, 255,=
 255); color: rgb(0, 0, 0); margin-left: 0px; margin-right: 8px;}
#xc1632dc684ef4bf #x6b4112b2336441458c6ac4b6cb37c9c3
{font-family: "Segoe UI"; font-size: 12pt;}
</style>
<style id=3D"css_styles">
blockquote.cite { margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; padding=
-top: 0px; }
a img { border: 0px; }
li[style=3D'text-align: center;'], li[style=3D'text-align: right;'] {  list=
-style-position: inside;}
body { font-family: Segoe UI; font-size: 12pt;   }
</style>
</head>
<body><div>A colleague just turned me onto Cake.=C2=A0=C2=A0</div><div><br=
 /></div><div>My impression is that this is a research project, and that the =
hope is for commercial products to implement cake algorithms in their equi=
pment.=C2=A0 Is that about right?</div><div><br /></div><div>Are there any=
 commercial products already using Cake?</div><div><br /></div>
<div><br /></div><div id=3D"signature_old"><div id=3D"xc1632dc684ef4bf"><di=
v id=3D"x6b4112b2336441458c6ac4b6cb37c9c3"><div><div id=3D"signature_old">-=
- Adam Moffett, Network Engineer<br />Plexicomm - Internet Solutions | <a h=
ref=3D"www.plexicomm.net">www.plexicomm.net</a><br />Office: 1.866.759.4678 =
| Fax: 1.866.852.4688<br /></div><div></div></div></div></div></div><div><=
br /></div>
</body></html>
--------=_MBCD398952-0D04-4E4E-A1E1-18E6F519FBCE--


--===============5107443178870479136==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5107443178870479136==--


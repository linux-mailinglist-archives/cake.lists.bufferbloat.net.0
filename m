Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C1510734A
	for <lists+cake@lfdr.de>; Fri, 22 Nov 2019 14:33:39 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BFE6E3CB3F;
	Fri, 22 Nov 2019 08:33:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1574429618;
	bh=F56waBmmQUa95g4z1byBUOIKuBsXriWyifO95cW2z7w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=WYusBO1hH+CWm+AUcZye57e1IoR3TSK8CCvTXcFq0tauPZKaguLfmdBJD5XnkKJZS
	 3/c2P7VMh1b7GOFeUn3qUfjd/QpQtXJ5xycbzlDrSgIVcJGdTDV44kcj73IvZBvFnQ
	 v8C5lY2J1oKjeNFreIttZ3tu33sxJz1JERC5TSp4n2qNiUX/kbLTk5n6pfQ9WLXemL
	 7/hwTUp0z7+SP/dtkPSLczIOSi0hOQJK3x7GSCfpgmBzt2MVEj87RRCDNFcOISFXhv
	 og6MPMpS7IhgspHszJJD3pOkDx+OH7gsRclTFmxI4fYFCBpH7+yZ8xpUBtjv+qc6nh
	 2S5J2daHpedwg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sa.plexicomm.net (sa.plexicomm.net [204.80.232.21])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CE22E3B29D
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 08:33:37 -0500 (EST)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by sa.plexicomm.net (Postfix) with ESMTP id 3C725412F17
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 08:32:10 -0500 (EST)
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
 with ESMTP id GzdNe8a6-vkJ for <cake@lists.bufferbloat.net>;
 Fri, 22 Nov 2019 08:32:09 -0500 (EST)
Received: from mail.plexicomm.net (mail.plexicomm.net [204.80.232.17])
 by sa.plexicomm.net (Postfix) with ESMTP id 849A8412F18
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 08:32:09 -0500 (EST)
DKIM-Signature: a=rsa-sha256; t=1574429609; x=1575034409; s=key1;
 d=plexicomm.net; c=relaxed/relaxed; v=1;
 bh=EMPpmtImqwhyAI0QyaoKsimV9SL49Hu6kWcuwsONhsU=;
 h=From:Reply-To:Subject:Date:Message-ID:To:MIME-Version:Content-Type:In-Reply-To:References;
 b=S6cbfNG9Nh4nnEBlXFdXcOSTP9rvk1T91afaJ+MgHd4PxKhd7LYlcsiN+JtDCWDgG2TNEq+54Rm5tQMq+nXy8RmKO+byJ5LYaJ3+N2bWADSDZLJ2etGm2HhSjOlkuokVKBEZ5O9PmBKwwLheAeWbxuxPs5JhkW08l6RnTkA76Bs=
Received: from [192.168.11.33] ([23.226.94.156])
 by mail.plexicomm.net (12.2.0 x64) with ASMTP id 201911220833295831
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 08:33:29 -0500
From: "Adam Moffett" <adam@plexicomm.net>
To: cake@lists.bufferbloat.net
Date: Fri, 22 Nov 2019 13:33:36 +0000
Message-Id: <em281f0a9b-a12d-4f64-8eab-6e13f4c7804f@adam-pc>
In-Reply-To: <878so85e2d.fsf@toke.dk>
References: <em287ad38a-b2b3-4e82-9836-99fab879ad14@adam-pc>
 <CAA93jw4N_-5bui532Ad5QwGn=GH2CnqWYm=BRn75Fgo93R6aJw@mail.gmail.com>
 <em348223d0-543c-4b79-ba6b-93f2244326c1@adam-pc> <878so85e2d.fsf@toke.dk>
User-Agent: eM_Client/7.2.36908.0
Mime-Version: 1.0
Subject: Re: [Cake] Cake implementations
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
Content-Type: multipart/mixed; boundary="===============4533842203320844834=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4533842203320844834==
Content-Type: multipart/alternative;
 boundary="------=_MB34B77BB8-C9AC-42F3-8AE2-96E3B06B2119"

--------=_MB34B77BB8-C9AC-42F3-8AE2-96E3B06B2119
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable


>
>>  Second concern is that many of our equipment vendors already use
>>  Linux. Even Cisco now in some products. Maybe we'll waste our time
>>  trying to roll our own solution and then find that a software update
>>  from a vendor next year gives us everything we needed anyway.
>
>This would be great, of course, and do go and bug your vendors to solve
>this problem! Note, however, that just because a system is running
>Linux on the control plane, it may be using a hardware-offloaded data
>plane that does not have any of the bufferbloat mitigation features
>(unless the vendor specifically implemented them). I'm hoping that
>*eventually* these things will be ubiquitous across the industry, but
>thus far this has seemed to be an "any decade now" kind of proposition :/
>
>-Toke
That's a great point.

Is the software more or less CPU independent? Would we run into any=20
known problems with a 72-core Tilera platform?

Thanks for all your help and input by the way.

-Adam

--------=_MB34B77BB8-C9AC-42F3-8AE2-96E3B06B2119
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>

<style id=3D"css_styles" type=3D"text/css">blockquote.cite { margin-left: 5=
px; margin-right: 0px; padding-left: 10px; padding-right:0px; border-left:=
 1px solid #cccccc }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; padding=
-top: 0px; }
a img { border: 0px; }
li[style=3D'text-align: center;'], li[style=3D'text-align: right;'] {  list=
-style-position: inside;}
body { font-family: Segoe UI; font-size: 12pt;   }</style></head><body clas=
s=3D"plain"><div><br /></div><div id=3D"xb88df2432c7845e"><blockquote type=
=3D"cite" class=3D"cite2">
<div class=3D"plain_line">=C2=A0</div>
<blockquote type=3D"cite" class=3D"cite2">
<div class=3D"plain_line"> Second concern is that many of our equipment ven=
dors already use</div>
<div class=3D"plain_line"> Linux. Even Cisco now in some products. Maybe we=
'll waste our time</div>
<div class=3D"plain_line"> trying to roll our own solution and then find th=
at a software update</div>
<div class=3D"plain_line"> from a vendor next year gives us everything we n=
eeded anyway.</div>
</blockquote>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">This would be great, of course, and do go and bug =
your vendors to solve</div>
<div class=3D"plain_line">this problem! Note, however, that just because a=
 system is running</div>
<div class=3D"plain_line">Linux on the control plane, it may be using a har=
dware-offloaded data</div>
<div class=3D"plain_line">plane that does not have any of the bufferbloat m=
itigation features</div>
<div class=3D"plain_line">(unless the vendor specifically implemented them)=
. I'm hoping that</div>
<div class=3D"plain_line">*eventually* these things will be ubiquitous acro=
ss the industry, but</div>
<div class=3D"plain_line">thus far this has seemed to be an "any decade now=
" kind of proposition :/</div>
<div class=3D"plain_line">=C2=A0</div>
<div class=3D"plain_line">-Toke</div></blockquote><span style=3D"white-spac=
e: pre-wrap;"><div id=3D"xb88df2432c7845e">That's a great point.</div><div=
 id=3D"xb88df2432c7845e"><br /></div><div id=3D"xb88df2432c7845e">Is the sof=
tware more or less CPU independent?  Would we run into any known problems w=
ith a 72-core Tilera platform? </div><div id=3D"xb88df2432c7845e"><br /></d=
iv><div id=3D"xb88df2432c7845e">Thanks for all your help and input by the w=
ay.</div><div id=3D"xb88df2432c7845e"><br /></div><div id=3D"xb88df2432c784=
5e">-Adam</div><div id=3D"xb88df2432c7845e"><br /></div></span></div>
</body></html>
--------=_MB34B77BB8-C9AC-42F3-8AE2-96E3B06B2119--


--===============4533842203320844834==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4533842203320844834==--


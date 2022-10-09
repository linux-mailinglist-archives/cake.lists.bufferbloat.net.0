Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DEF5F8C88
	for <lists+cake@lfdr.de>; Sun,  9 Oct 2022 19:35:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6309B3CB39;
	Sun,  9 Oct 2022 13:35:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665336927;
	bh=YseT/iwEU4DIHkAxfHFoMtBEQB0xfWfIoDx1ShgxjQE=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=N9SevojXkeli/av4LbItvoRngFpY3YjEUdlYa2HZXbKZZzKQiFsYtocShZbrkiUbc
	 wPYk1vgEdR2ahHgm7jj+dB+lp2LcTznFLJBjKJi2fQS3ldidYJfegYh1RXAktHkzBq
	 eVmiR5u4mrhnwiKrt7HxkAUttX7FJqOWUsCFgDH1zOI0UYicrnDrPKI+x4qy+2nuJ2
	 IFx7tfizssWgtRV7tqNH0dfKc3eNVVbxXoy7pYfRFaMcxnGXav/jSlA6cK8UrCvE6i
	 SqL0iPaO1SqOF562AFu3dxkNwHqkwb8zDWqPbarrp4fuhrceIXPv/g/bWZJZYTjgFT
	 2SrmCdk4Czpnw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from resdmta-a1p-077302.sys.comcast.net
 (resdmta-a1p-077302.sys.comcast.net [IPv6:2001:558:fd01:2bb4::c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 25D583B29E
 for <cake@lists.bufferbloat.net>; Sun,  9 Oct 2022 13:35:26 -0400 (EDT)
Received: from resomta-a1p-076786.sys.comcast.net ([96.103.145.235])
 by resdmta-a1p-077302.sys.comcast.net with ESMTP
 id hZw9olzvZkLAPhaCzoAs1Y; Sun, 09 Oct 2022 17:35:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comcastmailservice.net; s=20211018a; t=1665336925;
 bh=BjN4JyoCyuoC2OfBuIYvphCFEc4VZUDYY90FLxI1a1s=;
 h=Received:Received:Received:Message-ID:Date:MIME-Version:Subject:
 To:From:Content-Type;
 b=sYbr6hpa/ZK5+V547pKFDiLzO4/1qBQcBZ+dEunLF83jsv4HlefmxOz6osG9da3+x
 UGZQQzEVoKE6PoGo4P7P3hXGT79YGWPdxUzEBfX9CZS0tpr2muundUZh/X7A4ES4Ho
 2DqYr6bdQeXAeiMUh2uqMGZf1jj4itQC4CEyzjPqybkfXQq0yWeUlfVOFhV6qKlY5g
 aT/JtBdIq3Sx+m2itRfw7PKC6/xp1E332F210i15wEl9chg6Ouy7hjZAh9JxRnN47M
 vLWuZhhXLTZwWRGlXhTP8rAGOjQPNkpru/3tboecqq1hXMOy4+9g83/J+M04gd6t6Z
 GPqRgYeWdRpLg==
Received: from home.sewingwitch.com ([98.35.153.117])
 by resomta-a1p-076786.sys.comcast.net with ESMTPA
 id haCwoeKLWSRephaCxoOJgw; Sun, 09 Oct 2022 17:35:24 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgedvfedrfeejuddgudduiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucevohhmtggrshhtqdftvghsihdpqfgfvfdppffquffrtefokffrnecuuegrihhlohhuthemuceftddunecunecujfgurhepkfffgggfuffvfhfhjggtgfesthejredttdefjeenucfhrhhomhepmfgvnhhnvghthhcurfhorhhtvghruceoshhhihhvrgesshgvfihinhhgfihithgthhdrtghomheqnecuggftrfgrthhtvghrnhepudfgffekuefgieejfffgvdejkeefheeileegudetvefhvefhueduieevffegjeetnecukfhppeelkedrfeehrdduheefrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohephhhomhgvrdhsvgifihhnghifihhttghhrdgtohhmpdhinhgvthepleekrdefhedrudehfedruddujedpmhgrihhlfhhrohhmpehshhhivhgrsehsvgifihhnghifihhttghhrdgtohhmpdhnsggprhgtphhtthhopedupdhrtghpthhtoheptggrkhgvsehlihhsthhsrdgsuhhffhgvrhgslhhorghtrdhnvght
X-Xfinity-VMeta: sc=0.00;st=legit
Received: from [10.96.7.39] ([10.96.7.39]) (authenticated bits=0)
 by home.sewingwitch.com (8.14.7/8.14.7) with ESMTP id 299HZJTv013717
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <cake@lists.bufferbloat.net>; Sun, 9 Oct 2022 10:35:19 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 home.sewingwitch.com 299HZJTv013717
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sewingwitch.com;
 s=default; t=1665336920;
 bh=BjN4JyoCyuoC2OfBuIYvphCFEc4VZUDYY90FLxI1a1s=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=soP2ZpbbYJ977G9Gvg07UMesO4O5NWCokROG1KLIseyeMxiemR8FMJneOVcmsfgL1
 fnYdwQWGTm0AiV8YT+/TnevIxS+Sa4wPmApH4uhFFN0+mqOyHJmXC+srbM6VeXRCrW
 xT05rkMUxosqxhnlTTwbJSWNm21A8SPNX7/sgC3s=
Message-ID: <e91ad864-2fce-2d57-3d40-32b0e9416921@sewingwitch.com>
Date: Sun, 9 Oct 2022 10:35:17 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
To: cake@lists.bufferbloat.net
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.96.0.132
Subject: Re: [Cake] The most wonderful video ever about bufferbloat
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
From: Kenneth Porter via Cake <cake@lists.bufferbloat.net>
Reply-To: Kenneth Porter <shiva@sewingwitch.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlIHZpZGVvIGNvbW1lbnRzIGFyZSBpbnRlcmVzdGluZy4gU29tZSBwdXNoYmFjayBhZ2FpbnN0
IGJsaW5kbHkgCnR1cm5pbmcgb24gU1FNLgoKRm9yIGV4YW1wbGUsIHVzaW5nIENha2UgbWlnaHQg
bm90IGJlIGdvb2Qgb24gYW4gb2xkZXIgcm91dGVyIHdpdGggYSAKZ3V0bGVzcyBDUFUgYW5kIEZR
LUNvRGVsIG1pZ2h0IGJlIHRoZSBiZXR0ZXIgY2hvaWNlLgoKSXQgbWlnaHQgYmUgdXNlZnVsIHRv
IGFjY3VtdWxhdGUgYWxsIHRoZSBvYmplY3Rpb25zIHRoZXJlIGFuZCBjcmVhdGUgYSAKd2lraSBw
YWdlIHJlc3BvbmRpbmcgdG8gdGhlbSBpbiBhbiBvcmdhbml6ZWQgd2F5LgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK

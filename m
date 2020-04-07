Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF0C1A158A
	for <lists+cake@lfdr.de>; Tue,  7 Apr 2020 21:06:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1A9833CB39;
	Tue,  7 Apr 2020 15:06:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586286360;
	bh=9aAiPW8kY5g/isCZXgVMpg/6B+eYWAMOlGnEO3qvImw=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c8/2aOwtzz2kgIE+HATjODyuHrW5YzIVejWJvMG+6dwRs9AFOHGPlTg8G9KN27Wgi
	 qD/rIXBZFmcPkau2zmwrQEAQwiposHYGpIrUmygfimCrZNmEraLmFsWCNTKHjh32vU
	 7tBPPWy0+jNPKa4pvcuwJICTYtCzftAfWRcXNAtNlwMZ60D58qZvwlIIMVCNJkGnK/
	 kuBmRIotI7c0Ne+/Yi79YpIWVzibi2xWK3QYRQTde/0vHNInbL4YWbuWyZodk3j1d6
	 wa5mg1zDtJ+cC0CNs0XX48wzSRxtUzX1DNNik4Fv3wyzZNHt+/z+2ISyK+f2nRSD6w
	 NyoPB/y3FTItw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C172E3CB35
 for <cake@lists.bufferbloat.net>; Tue,  7 Apr 2020 15:05:58 -0400 (EDT)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 9EC535C00FB;
 Tue,  7 Apr 2020 15:05:58 -0400 (EDT)
Received: from imap21 ([10.202.2.71])
 by compute7.internal (MEProxy); Tue, 07 Apr 2020 15:05:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm3; bh=RTZVXrDudNyLr5k/ieLNDCwgQyfaUIG
 40/lEXXwRn2A=; b=ShaIdw3NFeYh9SttbFzW76cA2tFBV0FG1fgJsT4i6R99wzG
 e4bKj5V/NqU83lacZE0ZNHMJcRSVJgjeekEcxHWyoAc+dLg390A8e5+FSOJbnpJZ
 gT6yBmtLQYsdV1cx2ukt5hbRou7D69QOZbaOafa5roGNBHukst2lyvEtwWWAjB/A
 UUqBpp7TsEsbcbRunDBG81+TJtVlhLnM0ADDFAutgh39OYEdWYGPKN3MI1yFJ7jT
 jifzJUEX2/Oa3hwgLrUXh4B0lFA5rD9iKBIU3bD9lh4ypNZkSjGkaVp8xFOhrV7x
 24swogr0vTxPFun7TmKylExqiHfBugNlOQ53WsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=RTZVXr
 DudNyLr5k/ieLNDCwgQyfaUIG40/lEXXwRn2A=; b=gby83pCYVGQbCzcNw/Hlwo
 JeMvyZwcFAqapjAtjwrF/n++vy/3NSROflA3jo5YB/YXsdGyG0SLI9+O6278p7bH
 VHXvn8KM80kv7nSGqeiNA3KNm30TYcFupTrzfFtBElZPGX9IE+nhbdUmV3e2jIOx
 CVt4I/cLhnNeMXu1Ha6cqiFeCPrm1026zV7V2wtv1qw0k7BZhL3xqR06b2rb9GDj
 VM2C4Qgz9d38T3XGIFBjweFCU4XJDkTA+zwn53LkHYMs547nkD0awetoL/V8pk/7
 gpA5a+angzHWVjWzrgdFSW0cLZfuXSXalGCNdqpR0Ab42N49rE80evFy7Yc4G0dQ
 ==
X-ME-Sender: <xms:Fs-MXq0_1TZJ387jOZkGKpkb3Kj1Zjb5KRQOmNQL5J3DfZEoSB3YsA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfpihhl
 shcutehnughrvggrshcuufhvvggvfdcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenuc
 ffohhmrghinheplhhotghhnhgrihhrrdhnvghtnecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehlohgthhhnrghirhdrnhgvth
X-ME-Proxy: <xmx:Fs-MXjqUI79s9jhQovA5c4GHMCLq7xGxVTHZ4KduLfXRahXwOTMm3Q>
 <xmx:Fs-MXkmWrV8ooqW69zAA9BuVCNRR_5igtXfNly3ovH4sMu-K0QYmaw>
 <xmx:Fs-MXlTlKT3-p7hDoO1lwqc8rgCkmZRah-O99PqyyHSNfP-SQtvoPQ>
 <xmx:Fs-MXsctwptFZFcf8yzvpapkqY1KYzWzB9AYjS0IlcwknGdIpHCZVQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 1F21F660089; Tue,  7 Apr 2020 15:05:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1084-gdc5e709-fmstable-20200406v2
Mime-Version: 1.0
Message-Id: <b4ed65fb-54a4-4fdc-8985-ec792eb30c1b@www.fastmail.com>
In-Reply-To: <CAA93jw7OaFGvuUBhbeM8DumuGKFb801zBAr0i1jk9QGqcKC-CA@mail.gmail.com>
References: <CAA93jw7j_7B5VJgH6Zfv_tt2e=qXo=Cc1uibWrrwyc8RuRGRQw@mail.gmail.com>
 <61482375-fde1-43df-a81d-de0892aa7191@www.fastmail.com>
 <CAA93jw7OaFGvuUBhbeM8DumuGKFb801zBAr0i1jk9QGqcKC-CA@mail.gmail.com>
Date: Tue, 07 Apr 2020 21:05:37 +0200
From: "Nils Andreas Svee" <me@lochnair.net>
To: "Dave Taht" <dave.taht@gmail.com>, "Jim Gettys" <jg@freedesktop.org>,
 "Livingood, Jason" <Jason_Livingood@comcast.com>, cake@lists.bufferbloat.net
Subject: Re: [Cake] https://build.lochnair.net is down
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2VlbXMgSSBmb3Jnb3QgdG8gYWN0dWFsbHkgc2VuZCB0aGUgZS1tYWlsIHNheWluZyB0aGF0IGl0
J3MgYmFjayB1cCBhbmQgaGFwcGlseSBjaHVnZ2luZyBhbG9uZywgbXkgYmFkLgoKQmVzdCBSZWdh
cmRzCk5pbHMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

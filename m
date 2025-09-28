Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDDFBA7057
	for <lists+cake@lfdr.de>; Sun, 28 Sep 2025 14:11:15 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9ABA3701C66;
	Sun, 28 Sep 2025 14:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1759061474;
	bh=cvBGXAR6iI40/IW3qtQlpxxrzyX9KeM7CVW1Rtyb6SQ=;
	h=In-Reply-To:Date:Cc:References:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=K6jNmNeBR1azSm+Aukc731mGzlkSk3x+584KGuZIECubWfxHRQIAjWzdCk5QKKp9b
	 n3UxsGSBtwTfPj+aCXlwxGP9C+whU8iSBYfllbYypMS2KF7LRfRkkhV/7TlOlIWgx2
	 92WWt7A7XWS45UrSBETNfoY1RFjkb/cnCafUZ0AiXObjMjnvPB45X0//ofXxB5JkD3
	 TciLtLQYzp9sCcStGZCE+8tQIuQYcJ0VvsF4c//cJKrXwTmpHNLskvy4igj6KKMbSz
	 i4Kr/kCT1Pl5obJyQQ9wa5e0KDt/nbYlzu53CjEAzP8QEC6iq+wG4Rk/1UaAhkKTmW
	 tQufbLNe9eksA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759061474;
 b=4TYy4sUOkWQRGzi1drvoACIowThJKPA6RldDIG+dvdIYEQ1Tuh4uIbHjb+iwWk/xToZ2X
 voGQyOEo2eynSyfkGnqhock6CJmjPyzoQVZsYXPfSblP7dGsy5vya3UlkuipLPiCqYIFjvr
 lUqNL43QxJLSKUFsVL3DHpfp/C84V4c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759061474; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=0FaVr2lFRzxKRrGFKq9h4B2oxkus5Gx98FT+Jp4zW9E=;
 b=LkNdybqmwzr6yfuL2vA3meGls/OKjVA8Y4ZhYTevebsYhf1nwhisesasHeuEzFIe8Hvum
 7P8AL6fFg/Cn8WmjUjGjt2ymLOTla5l7PrK181KzHSKESUzObstPRAcQdX68G3quDohp8tw
 zWmZe7PudZzxnjl9BkjJzozawm7ovtQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmx.de header.i=moeller0@gmx.de;
 arc=none;
 dmarc=pass header.from=gmx.de policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmx.de header.i=moeller0@gmx.de;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmx.de
 policy.dmarc=quarantine
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by mail.toke.dk (Postfix) with ESMTPS id 4D27A701C4E
	for <cake@lists.bufferbloat.net>; Sun, 28 Sep 2025 14:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1759061471; x=1759666271; i=moeller0@gmx.de;
	bh=ehkAquuNFrItykKmFOFrHnxhf2jo13QTf3miDz+4SbY=;
	h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
	 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
	 References:To:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=e2nslRuLT9mHojrbMA9Fz9hOoE69Ti8EG2ktRASYfofi7goXH/6JUZUWlgFQFGgt
	 McSEdkOuuAbACKZCFiEz50RV6BpWOQ4ZdzYpnl7WTy1cN834uRX7zFuDojpCYFhMo
	 fQN2F1D7kCcBaCZ9gwlokJVcvenK2mBOmrtHnjLjunI53CBLB7HcvbHCy9dTDojpX
	 XRuc7ImPw4VYbol+48KwGNIxRJTSn0baLhqHw8ISoqBAO8XRLaSAycbMzwGt6d2IZ
	 lUw5Jqpt8QftqLV/dBuk+b5Zxal8x6EM3Kl3kv8yPliwZqqRJ8AYd+2Q2OkKwrCrK
	 agz9AgFt7D76MWLRgg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([185.104.138.140]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MJVDW-1uj7V02pMu-00Obux; Sun, 28
 Sep 2025 14:11:11 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
In-Reply-To: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
Date: Sun, 28 Sep 2025 14:10:58 +0200
Cc: cake@lists.bufferbloat.net
Message-Id: <06DAA0CB-70EF-4FDD-BD3D-16A4FC28AD12@gmx.de>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
To: David Lang <david@lang.hm>
X-Mailer: Apple Mail (2.3826.700.81)
X-Provags-ID: V03:K1:aq4MG2U9Ha6XbTxlk1lIzM3JyZayH2vnWsdFD6Y4uT0HsternAc
 zzLUe7Zuv7bFefk8zuabv9c+42TsLpAGjoC6/S2gC3fBX/9YIPnCQW5Slng3YOWm9QKzW0p
 kXS/HyEfGXEFLqk/0BXAKSPbt33pNnUtWlnzEUdMSQ5CyS6cdDgyBA3k5ne0+4ndNBbALya
 ca4eXsuofRudmuKyALWrA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:0mdhwW28coQ=;vXwC1lq3mgwFNzxOKvn/f0CYruH
 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
 P46E4EtwE434/A==
Message-ID-Hash: DIVLLWV4H757Y4L5IT7OCM5G7ISLNAK6
X-Message-ID-Hash: DIVLLWV4H757Y4L5IT7OCM5G7ISLNAK6
X-MailFrom: moeller0@gmx.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/06DAA0CB-70EF-4FDD-BD3D-16A4FC28AD12@gmx.de/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi David,

while I have no real answer for your questions (due to never having had that kind of load in my home network ;) ) I would like to ask you to make take scripted captures of tc -s qdisc for the wan interface is reasonable short intervals (say every 10 minutes?) as that might be just what we need to actually answer your question.



> On 28. Sep 2025, at 13:06, David Lang <david@lang.hm> wrote:
> 
> I'm starting to prepare for the next Scale conference and we are switching from Juniper routers to Linux routers. This gives me the ability to implement cake.
> 
> One problem we have is classes that tell everyone 'go download this' that trigger hundreds of people to hammer the network at the same time (this is both a wifi and a network bandwidth issue, wifi is being worked on)

So one issue might be that with several 100 users the default compile-time size of queues (1024, IIRC) that cake will entertain might be too little, even in light of the 8 way assoziative hashing design. I believe this can be changed (within limits) only by modifying at source and recompilation of the kernel, if that should be needed at all.

I wonder whether multi-queue cake would not solve this to some degree, as I assume each queue's instance would bring its own independent set of 1024 bins?


> The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
> 
> Any suggestions on how to configure cake for this sort of environment where there are so many devices?

Maybe switch to a simpler pure per-flow isolation mode than the default triple-isolate?

BTW what kind of uplink capacity will you use?

> 
> David Lang
> _______________________________________________
> Cake mailing list -- cake@lists.bufferbloat.net
> To unsubscribe send an email to cake-leave@lists.bufferbloat.net

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

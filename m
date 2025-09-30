Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A31FBACF37
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 14:56:55 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 4696470F899;
	Tue, 30 Sep 2025 14:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1759237015;
	bh=Ct17LRX14BIHpikAvMIvPyzBBrKWHzVRWZN24J2IyYM=;
	h=In-Reply-To:Date:Cc:References:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=T4Deoofqv0hE+kJLqL4GNRLsCREWzqZpzOsCsAAOYAsUIuOlwdWxDSQkRWAPv+v7J
	 wENd9pSxJYnr5fIjGzyDhAeRyI3TsMeyXvSdNWay7MzikxuB2ctqKy1bqfyh6aUKdw
	 nsgbFiMzT1ZKPh8HMS5cp2eKijnAocQVXN5m6Bwjb5m4lxEJaKPltkuuiuZDDxk7ef
	 kp0oumSdjUn1kuqKzGVNNqaRrKVgniiPCkNHlvyjlvYyjoBEuCcepSSyfqv6G6L1yU
	 H/MClX5LPb7COxDAzlzyTJO5GbMaozCfkWoNSPFmAowyhnQsf6xVDivPbRBbH7yi0U
	 pOMDWDrXanTFw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759237015;
 b=xrYwYBbwFpHVLSCJiYN6Ajc9kFFWYaxsfeRa4CdF/TwJWKApVoajz33JNLAtu08cjvdA6
 8GexgTh4eXt5tzcWVEt2ychjYbhqh6FC2EJE91adbBbxk8KkaRKB+setXzLqnJ5hVKA+L1D
 ZZPlEYFNUJGU3Xb8bjDk6MD/oSuRloU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759237015; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=2vB8GUSGGl2oKKJhOUnQcsvokXIBZ7JuocO2yINwu1g=;
 b=Sl+6Vx57+zurgSnlDtt0phcQM3xY9+wj9zPix+jEESrHNsHIiCMyqe+M82zbG5u/RTar9
 Xioow9HsIFFzhOpcanFhbbDqRTLxfcUWY4tCQV/1GfSeP7ZnLP/9Cy4xX2vOY18lOtK/7go
 /E+pTfGkZ7J810+wrevEdrxj0N1o4fU=
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
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by mail.toke.dk (Postfix) with ESMTPS id E176A70F87E
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 14:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1759237011; x=1759841811; i=moeller0@gmx.de;
	bh=IoXsDhhlyRIiUjsoem6Awm3bWWiNYnqh/YwLxaHybkA=;
	h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
	 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
	 References:To:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=mvaSFx+B/vHp7wHuXvH+H2sDNn7L1TaDbadDottE6k8sANHjkdn09a6CzpVWT7Lx
	 vBVu2uRcK1KX9JP/GJY6QxlBa4xew8Xv5gUJCOKx+IbaDMvu3h9qgD9QyjMzE66HI
	 j6K6wcAJps4XaF0RRcmZwnEf7SWrX0xsSzFL/fFC5deArL2paBRwYcx0JU9iKnElU
	 wcXkZxOPr0iM1brNjyiLzq2a073zG8zqQR2Jvo08Jrrbh88cvv0gEESAfCkd0047O
	 fDvXpJnjUcMixsozG5XCcbTW3l1e8jEobIENF2VqSv4Xar7mEKy3i1BJbd9TUfKXr
	 YjbjOfUuLeKh9P8o5w==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MXXyJ-1uoPe82hBv-00JEa8; Tue, 30
 Sep 2025 14:56:51 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
In-Reply-To: <n21672r7-056q-ppo6-rpno-139os0o3154r@ynat.uz>
Date: Tue, 30 Sep 2025 14:56:40 +0200
Cc: Jonathan Morton <chromatix99@gmail.com>,
 cake@lists.bufferbloat.net
Message-Id: <FA76869A-F4A3-4C70-8F15-57E4168DAC71@gmx.de>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com>
 <n21672r7-056q-ppo6-rpno-139os0o3154r@ynat.uz>
To: David Lang <david@lang.hm>
X-Mailer: Apple Mail (2.3826.700.81)
X-Provags-ID: V03:K1:q8zwXm9BP4GgDkqQek0dWuTwNQH07y7s0oFzxi4LIiLGyjLvKO2
 Egc2FMll/6ex94kPtof8O091m51nZHESxbbKLUjHe9W8xZvT+UEjBzHDX6QCkZNtYN8vA8X
 xEc974ab2UhuhrkiWY4CGNSAA13L7bKQTxfMS9FnWjTsjgHphd1M9XnGYt2I8CUEhEW5KM0
 QacKPMNuCQVIsCboM2vYA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:g4nIR2AGzqY=;zs8GIp9Ub2DoiAG9PKfp7+Rh6/W
 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
 aUnSQ==
Message-ID-Hash: T6JYTTCV4BDVCYDZ4TOE2LIS7Q6QCW3J
X-Message-ID-Hash: T6JYTTCV4BDVCYDZ4TOE2LIS7Q6QCW3J
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
 <https://lists.bufferbloat.net/cake/FA76869A-F4A3-4C70-8F15-57E4168DAC71@gmx.de/>
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


> On 30. Sep 2025, at 14:37, David Lang <david@lang.hm> wrote:
> 
> Jonathan Morton wrote:
> 
>> On Sunday, 28 September 2025, David Lang wrote:
>>> I'm starting to prepare for the next Scale conference and we are switching from
>>> Juniper routers to Linux routers. This gives me the ability to implement cake.
>>> 
>>> One problem we have is classes that tell everyone 'go download this' that
>>> trigger hundreds of people to hammer the network at the same time (this is both
>>> a wifi and a network bandwidth issue, wifi is being worked on)
>>> 
>>> The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
>>> 
>>> Any suggestions on how to configure cake for this sort of environment where
>>> there are so many devices?
>> 
>> So far as Cake is concerned, the normal setup should work fine even under stress conditions.  If there are too many simultaneous flows to achieve full flow isolation, it degrades gracefully to statistical multiplexing, and you still have the AQM working to keep everything responsive.  Or rather, a thousand AQMs working in parallel...
> 
> what would need to be done to increase resources to allow for full isolation of more flows?

I believe editing net/sched/sch_cake.c and increase the number of CAKE_QUEUES:
#define CAKE_QUEUES (1024)

to something larger...

however I do not know what a realistic maximum is... and IIRC cake will search through this repeatedly, 1024 is one full memory page (4k pages) anything larger will require multiple pages (likely as single contiguous allocation). I remember dimmly someone ages ago playing with this and finding that the number can be increased, but not arbitrarily so at least on your typical somewhat memory-poor router. But that should be easy to figure out.
Mind you, given Toke's reminder on the small number of concurrently active flows and cake's 8-way associativity, maybe this is not necessary at all.


> 
>> Of course, this only matters when Cake is set up to be the bottleneck.  If wifi is the bottleneck, you'll want a wifi stack with integrated fq_codel, which I believe still applies to only some hardware since it needs to manage the MAC queue which some devices don't expose.  This has the extra smarts needed to adapt gracefully to wifi's foibles, and might already be enough to convert an effectively nonfunctional wifi into one that feels, if not fast, then at least reliable.
> 
> I am doing everything I can to eliminate wifi as the bottleneck and overload our uplink ;-p
> 
> mostly the wifi bottleneck is being eliminated by having lots of separate APs for people to connect to.
> 
> David Lang
> _______________________________________________
> Cake mailing list -- cake@lists.bufferbloat.net
> To unsubscribe send an email to cake-leave@lists.bufferbloat.net


_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

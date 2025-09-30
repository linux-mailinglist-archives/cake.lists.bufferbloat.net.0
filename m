Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B2EBAD073
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 15:19:44 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 06A1C70FA9B;
	Tue, 30 Sep 2025 15:19:44 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759238383;
 b=sAH6XuaC/qsTi2bxcbkvpZqaq1+0OZ1nR6Wv6txYry32ynY2GxNIHmNkPUG1g+cUnwz2/
 +ML86REM5YrCUuJMdD2Q/OYcutyAJZOaRzcySBS9NLYpJgqeOsdJPCpfNi6r93TfZNZdN4i
 hYNV41qsqSCNKN9fgfynlifJ5LpZvvQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759238383; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=vz1lkZjadeMa+U7s8ivwEyPl6B0bxLOZUkpsFwzltIE=;
 b=4LbY5uxFLWwuqFJzMJ+etFTv7T8rPvv4Ct1WvXiga/oavBzYBE9VHrxQ3XKsVAUwSdYI4
 doqNvQ0OpwB0Xvt1LzOg2YHDabZHEmgC81Dxdc588nmqvhWJRtjvgAgGyICtc5A71/Jkm7J
 7lSJPZhWir1HGRmI6hfmF0104xK4H6w=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=lang.hm;
 dkim=fail;
 arc=none;
 dmarc=none
Received: from mail.lang.hm (wsip-70-167-213-146.ph.ph.cox.net
 [70.167.213.146])
	by mail.toke.dk (Postfix) with ESMTPS id C8B4670FA82
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 15:19:40 +0200 (CEST)
Received: from [10.2.2.53] (unknown [10.2.2.53])
	by mail.lang.hm (Postfix) with ESMTP id 241E520AADD;
	Tue, 30 Sep 2025 06:19:39 -0700 (PDT)
Date: Tue, 30 Sep 2025 06:19:34 -0700 (PDT)
From: David Lang <david@lang.hm>
To: Sebastian Moeller <moeller0@gmx.de>
cc: David Lang <david@lang.hm>, Jonathan Morton <chromatix99@gmail.com>,
    cake@lists.bufferbloat.net
In-Reply-To: <FA76869A-F4A3-4C70-8F15-57E4168DAC71@gmx.de>
Message-ID: <47onq471-4q1p-029n-s77p-q420sp0396o5@ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com>
 <n21672r7-056q-ppo6-rpno-139os0o3154r@ynat.uz>
 <FA76869A-F4A3-4C70-8F15-57E4168DAC71@gmx.de>
MIME-Version: 1.0
Message-ID-Hash: E65AV4OQZ4MJGZKEMNGEIXNRIKW2T533
X-Message-ID-Hash: E65AV4OQZ4MJGZKEMNGEIXNRIKW2T533
X-MailFrom: david@lang.hm
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/47onq471-4q1p-029n-s77p-q420sp0396o5@ynat.uz/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Sebastian Moeller wrote:

> Hi David,
>
>
>> On 30. Sep 2025, at 14:37, David Lang <david@lang.hm> wrote:
>>
>> Jonathan Morton wrote:
>>
>>> On Sunday, 28 September 2025, David Lang wrote:
>>>> I'm starting to prepare for the next Scale conference and we are switching from
>>>> Juniper routers to Linux routers. This gives me the ability to implement cake.
>>>>
>>>> One problem we have is classes that tell everyone 'go download this' that
>>>> trigger hundreds of people to hammer the network at the same time (this is both
>>>> a wifi and a network bandwidth issue, wifi is being worked on)
>>>>
>>>> The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
>>>>
>>>> Any suggestions on how to configure cake for this sort of environment where
>>>> there are so many devices?
>>>
>>> So far as Cake is concerned, the normal setup should work fine even under stress conditions.  If there are too many simultaneous flows to achieve full flow isolation, it degrades gracefully to statistical multiplexing, and you still have the AQM working to keep everything responsive.  Or rather, a thousand AQMs working in parallel...
>>
>> what would need to be done to increase resources to allow for full isolation of more flows?
>
> I believe editing net/sched/sch_cake.c and increase the number of CAKE_QUEUES:
> #define CAKE_QUEUES (1024)
>
> to something larger...
>
> however I do not know what a realistic maximum is... and IIRC cake will search through this repeatedly, 1024 is one full memory page (4k pages) anything larger will require multiple pages (likely as single contiguous allocation). I remember dimmly someone ages ago playing with this and finding that the number can be increased, but not arbitrarily so at least on your typical somewhat memory-poor router. But that should be easy to figure out.

In this case, we are using Ryzon systems with at least 32G of ram (need to look 
up the detailed specs)

David Lang

> Mind you, given Toke's reminder on the small number of concurrently active flows and cake's 8-way associativity, maybe this is not necessary at all.
>
>
>>
>>> Of course, this only matters when Cake is set up to be the bottleneck.  If wifi is the bottleneck, you'll want a wifi stack with integrated fq_codel, which I believe still applies to only some hardware since it needs to manage the MAC queue which some devices don't expose.  This has the extra smarts needed to adapt gracefully to wifi's foibles, and might already be enough to convert an effectively nonfunctional wifi into one that feels, if not fast, then at least reliable.
>>
>> I am doing everything I can to eliminate wifi as the bottleneck and overload our uplink ;-p
>>
>> mostly the wifi bottleneck is being eliminated by having lots of separate APs for people to connect to.
>>
>> David Lang
>> _______________________________________________
>> Cake mailing list -- cake@lists.bufferbloat.net
>> To unsubscribe send an email to cake-leave@lists.bufferbloat.net
>
>
>
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

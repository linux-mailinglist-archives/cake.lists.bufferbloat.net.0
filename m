Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 471EBBAC2B9
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 11:04:48 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 634E170E618;
	Tue, 30 Sep 2025 11:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1759223087;
	bh=IiU9GoeSY//hv/KJxifvYqKc/7WnqMTJVBjY5bhQ17U=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=d33a6Q2i73cJQ91Zp+fIvvK/Km+59D+4pvcbR0todN7sidzP3AT7xs4SLxMBb0uE6
	 l7OGs2eSMNcfOvJkYGQaQuoR2NOs4CTuX66HpsfzpjckVF72JcJyI8l7mf9Z2oob8f
	 dJPAIvn5/NdZW+TVvFAPL/iquWEcprS5wAgTeNN9PbDx8+s0h2AfWE2eUGjms/i85e
	 fql7oMLU7n1SJZ4l5F1Kxeqe4km6w3qFJIzcQkLycZAAylEP5eUvvJCpTofDHWNKSd
	 +PGwS5bOJX2Ija/qbEEhaGtfM0MW7zW/FnGnVkxH9/f/uQU9+41znu5AbkCPjhLKTs
	 FhYiHT8vFWUNw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759223087;
 b=iCfAo0rnoS/+YRPGYMNpBuERI8YQb8czhCueV/214KqnOomO75oiTbRXDaW4H9XpFCjo4
 vKS83yYeEPiFHwknsSiu1nwkrPMUIHNPpk8eHSmRE4omRJ4JTKlDbGQTV+xiW8azq8LxvEE
 sgzml4NK10WpN+YIYqCdDeQ7Mp4tEdc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759223087; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=8KVXnXctbPEeRLqgYxQVQlfl5S2PHYJOoBfgnj9bUmc=;
 b=4UEdDKuQo8nv+9GilB2yY4SiqNkRqokn4GR33c30aA5xOQ36dvd2xQEXwH2bdrkuwIdfR
 SK4kkwmivfyU2BygqZvQB4KS1gzQi7Rzr+enNCS2Owdf0QoFvBDdOQZSQ2Cnys8ybFpM9HS
 zEipjWN1Mi87vEEorVPoSF600XjdXGc=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1759223084; bh=SUydRdSd9LWDtRyYpNhm4t0gUhgE2gn1dZVXaLs9ncg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=oqaDxhTO2C73jL0X4N2Sjts1YMn50qbkx8hKlUgwtYFmngvITwYC/MmknkwgyPjBq
	 9Mh7gdSmfequ4oS2c9ef+nCOld5qsog7NZ1AjjXmjxkjC+Zg4xUJeA1sPzWmNgfuBV
	 QIpw+CQ3hFswqHR5kJhjc/uzTvv1112npkLT4MmAWlFJ6gfmZkr7NFxJhUmvWkVwPY
	 qAteUnQUcZU2FTXTOm1RwquYfscR/8WNhEr4Q60A0yycer/0oHofP3ZkfJhePIz6KC
	 Ui0y0Di3crNcjVRIPqGFobQy3Z5TCtW21KbwqdFI17sfuncrB0KFYsfXaul/VJ9rsk
	 5d3Ag6LrIlBoQ==
To: David Lang <david@lang.hm>, Sebastian Moeller <moeller0@gmx.de>
Cc: cake@lists.bufferbloat.net
In-Reply-To: <alpine.DEB.2.02.2509280513450.14652@nftneq.ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <06DAA0CB-70EF-4FDD-BD3D-16A4FC28AD12@gmx.de>
 <alpine.DEB.2.02.2509280513450.14652@nftneq.ynat.uz>
Date: Tue, 30 Sep 2025 11:04:43 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87zfacmhuc.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: LZRRF7XXBZGGY7MBC6UCNCD5LA2IEOWU
X-Message-ID-Hash: LZRRF7XXBZGGY7MBC6UCNCD5LA2IEOWU
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87zfacmhuc.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

David Lang <david@lang.hm> writes:

> Sebastian Moeller wrote:
>
>> Hi David,
>>
>> while I have no real answer for your questions (due to never having had that kind of load in my home network ;) ) I would like to ask you to make take scripted captures of tc -s qdisc for the wan interface is reasonable short intervals (say every 10 minutes?) as that might be just what we need to actually answer your question.
>
> I will do that, however the network is only up under load for 4 days a year, so 
> it's a slow feedback loop :-)
>
> I would welcome any other suggestions for data to gather.

Having queue statistics at a scale as granular as you can manage would
be cool. It's around ~400 bytes of raw data per sample Capturing that
every 100ms for four days is only around 1.4 GB of data; should
theoretically be manageable? :)

Note that the 400 bytes is the in-kernel binary representation; the
output of `tc -s` is somewhat more; using JSON output (`tc -j -s`) and
compressing the output may get within something that server-grade
hardware should handle just fine.

>>> On 28. Sep 2025, at 13:06, David Lang <david@lang.hm> wrote:
>>>
>>> I'm starting to prepare for the next Scale conference and we are switching from Juniper routers to Linux routers. This gives me the ability to implement cake.
>>>
>>> One problem we have is classes that tell everyone 'go download this' that trigger hundreds of people to hammer the network at the same time (this is both a wifi and a network bandwidth issue, wifi is being worked on)
>>
>
>> So one issue might be that with several 100 users the default compile-time 
>> size of queues (1024, IIRC) that cake will entertain might be too little, even 
>> in light of the 8 way assoziative hashing design. I believe this can be 
>> changed (within limits) only by modifying at source and recompilation of the 
>> kernel, if that should be needed at all.
>
> custom compiling a kernel is very much an option (and this sort of tweaking is 
> the sort of thing I'm expecting to need to do)
>
> The conference is in March, so we have some time to think about this and 
> customize things, just no chance to test before the show.
>
>> I wonder whether multi-queue cake would not solve this to some degree, as I 
>> assume each queue's instance would bring its own independent set of 1024 bins?
>
> good thought

While I certainly wouldn't mind having a large-scale test of the
multi-queue variant of cake, I don't really think it's necessary at 1G.
Assuming you're using server/desktop-grade hardware for the gateways,
CAKE should scale just fine to 1Gbit.

Sebastian is right that the MQ variant will install independent CAKE
instances on each hardware queue, which will give you more flow queues.
However, the round-robin dequeueing among those queues will also be
completely independent, so you won't get fairness among them either
(only between the flows that share a HWQ).

As for collision probability, we actually have a calculation of this in
the original CAKE paper[0], in figure 1. With set-associative hashing,
collision probability only start to rise around 500 simultaneous flows.
And bear in mind that these need to be active flows *from the PoV of the
router*. I.e., they need to all be actively transmitting data at the
same time; even with lots of users with active connections as seen from
the endpoint, the number of active flows in the router should be way
smaller (there's a paper discussing this that I can't find right now).
Having some data about this would be interesting, of course (and should
be part of the tc statistics).

-Toke

[0] https://arxiv.org/pdf/1804.07617
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

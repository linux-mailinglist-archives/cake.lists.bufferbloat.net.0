Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 4788FBACE68
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 14:44:38 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 555C570F73F;
	Tue, 30 Sep 2025 14:44:37 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759236277;
 b=LjCbaqVYcVvyjR6kvj6qAke7+ApphSi7E5D+VsKEuaIhueIgIreiIKoiIP4cgtiJu+b1i
 vOzIvs+yIsyOI2+SNlmvNs6yF+B3DPWZFrd6c2/JxAeseAjcAXDPp5/DuMbIkn0sKBLvrOg
 1rW525dz9Xmn90Bh3rnOe90ljYbIV7k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759236277; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=yZCjhkHrDyKUmVBN9NJfOwVktrh9897qJwXH9laRDI0=;
 b=5u9QtTt7wSFE3KDDmTYTuVGpSbtkjgx5WQmp0ZfhHUiCGnxN43xzV4da6/OQesRXeB8zX
 NdtEBqRLSM91SzW+OmtDLGCQbc/Buf1plykzlGw/CX9f525nFUuvrBp8vzZL2y75Xxf9Fy5
 q/IRd586DC8noB8WUZmCDVnA2vJWnps=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=lang.hm;
 dkim=fail;
 arc=none;
 dmarc=none
Received: from mail.lang.hm (wsip-70-167-213-146.ph.ph.cox.net
 [70.167.213.146])
	by mail.toke.dk (Postfix) with ESMTPS id D6AC970F72B
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 14:44:34 +0200 (CEST)
Received: from [10.2.2.53] (unknown [10.2.2.53])
	by mail.lang.hm (Postfix) with ESMTP id 3895B20AAC0;
	Tue, 30 Sep 2025 05:44:33 -0700 (PDT)
Date: Tue, 30 Sep 2025 05:44:28 -0700 (PDT)
From: David Lang <david@lang.hm>
To: =?ISO-8859-15?Q?Toke_H=F8iland-J=F8rgensen?= <toke@toke.dk>
cc: David Lang <david@lang.hm>, Sebastian Moeller <moeller0@gmx.de>,
    cake@lists.bufferbloat.net
In-Reply-To: <87zfacmhuc.fsf@toke.dk>
Message-ID: <19r160r7-qr49-q7s8-5386-23057o6ro21n@ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <06DAA0CB-70EF-4FDD-BD3D-16A4FC28AD12@gmx.de>
 <alpine.DEB.2.02.2509280513450.14652@nftneq.ynat.uz> <87zfacmhuc.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: SGTCI2T62UMMNVFL56OHWKOH4E6Y6NRU
X-Message-ID-Hash: SGTCI2T62UMMNVFL56OHWKOH4E6Y6NRU
X-MailFrom: david@lang.hm
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/19r160r7-qr49-q7s8-5386-23057o6ro21n@ynat.uz/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; format="flowed"; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable

I'll read this in more detail later (it's almost 6am after I've been drivin=
g all=20
night), but large number of simultanious flows in not unlikely.

Several classes that start at the same time, each with 100-300 people in it.

one of the first slides that go up tell the students to fetch something (ov=
er=20
https, and for example with nix, with certificate pinning, so no ability to=
 have=20
a local cache for it), or more commonly, fetch a script tht then downloads =
a=20
bunch of somethings.

all of the sudden, 500 simulanious flows doesn't look that unlikely :-)

David Lang

Toke H=F8iland-J=F8rgensen wrote:

> David Lang <david@lang.hm> writes:
>
>> Sebastian Moeller wrote:
>>
>>> Hi David,
>>>
>>> while I have no real answer for your questions (due to never having had=
 that kind of load in my home network ;) ) I would like to ask you to make =
take scripted captures of tc -s qdisc for the wan interface is reasonable s=
hort intervals (say every 10 minutes?) as that might be just what we need t=
o actually answer your question.
>>
>> I will do that, however the network is only up under load for 4 days a y=
ear, so
>> it's a slow feedback loop :-)
>>
>> I would welcome any other suggestions for data to gather.
>
> Having queue statistics at a scale as granular as you can manage would
> be cool. It's around ~400 bytes of raw data per sample Capturing that
> every 100ms for four days is only around 1.4 GB of data; should
> theoretically be manageable? :)
>
> Note that the 400 bytes is the in-kernel binary representation; the
> output of `tc -s` is somewhat more; using JSON output (`tc -j -s`) and
> compressing the output may get within something that server-grade
> hardware should handle just fine.
>
>>>> On 28. Sep 2025, at 13:06, David Lang <david@lang.hm> wrote:
>>>>
>>>> I'm starting to prepare for the next Scale conference and we are switc=
hing from Juniper routers to Linux routers. This gives me the ability to im=
plement cake.
>>>>
>>>> One problem we have is classes that tell everyone 'go download this' t=
hat trigger hundreds of people to hammer the network at the same time (this=
 is both a wifi and a network bandwidth issue, wifi is being worked on)
>>>
>>
>>> So one issue might be that with several 100 users the default compile-t=
ime
>>> size of queues (1024, IIRC) that cake will entertain might be too littl=
e, even
>>> in light of the 8 way assoziative hashing design. I believe this can be
>>> changed (within limits) only by modifying at source and recompilation o=
f the
>>> kernel, if that should be needed at all.
>>
>> custom compiling a kernel is very much an option (and this sort of tweak=
ing is
>> the sort of thing I'm expecting to need to do)
>>
>> The conference is in March, so we have some time to think about this and
>> customize things, just no chance to test before the show.
>>
>>> I wonder whether multi-queue cake would not solve this to some degree, =
as I
>>> assume each queue's instance would bring its own independent set of 102=
4 bins?
>>
>> good thought
>
> While I certainly wouldn't mind having a large-scale test of the
> multi-queue variant of cake, I don't really think it's necessary at 1G.
> Assuming you're using server/desktop-grade hardware for the gateways,
> CAKE should scale just fine to 1Gbit.
>
> Sebastian is right that the MQ variant will install independent CAKE
> instances on each hardware queue, which will give you more flow queues.
> However, the round-robin dequeueing among those queues will also be
> completely independent, so you won't get fairness among them either
> (only between the flows that share a HWQ).
>
> As for collision probability, we actually have a calculation of this in
> the original CAKE paper[0], in figure 1. With set-associative hashing,
> collision probability only start to rise around 500 simultaneous flows.
> And bear in mind that these need to be active flows *from the PoV of the
> router*. I.e., they need to all be actively transmitting data at the
> same time; even with lots of users with active connections as seen from
> the endpoint, the number of active flows in the router should be way
> smaller (there's a paper discussing this that I can't find right now).
> Having some data about this would be interesting, of course (and should
> be part of the tc statistics).
>
> -Toke
>
> [0] https://arxiv.org/pdf/1804.07617
>
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

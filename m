Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 9688ABACED1
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 14:49:43 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9D05270F7B4;
	Tue, 30 Sep 2025 14:49:42 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759236582;
 b=JSTzx6NDramzQSZM3aOh/2+8v23bSL1KZtxnana2v97n327KRr6QX0wK2FAwlUsgmUopC
 nfHShwHaXwVecgXarPNlGWARe6YQfFmr1+g9I6PkMmPVFX2NKf0vdDqfFqeqob41YEswDRU
 0y8Qhd4vt9Ygs4zVuga3BdC/H69ZlWM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759236582; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dtQXVUPph1SGE5LEOBA/HUW2r68BKcsaG5wdpWyXMAA=;
 b=4+hmy89I4C0IG8rXKUaH74EH53YVb4cAf93Nxn+ZuMUSYwP8A1ammNntAE/WkDPYz2YNm
 2rGvri8L8RHSZ9nh2XKhxWoF2rNbJccvQdMmbEIFUcNGve+tyQ61PoNboAxbshJPPi+YuvM
 CwzuWWQSqBbBfKixj75ewvtNHXpkgto=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=lang.hm;
 dkim=fail;
 arc=none;
 dmarc=none
Received: from mail.lang.hm (wsip-70-167-213-146.ph.ph.cox.net
 [70.167.213.146])
	by mail.toke.dk (Postfix) with ESMTPS id 680C770F7A5
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 14:49:40 +0200 (CEST)
Received: from [10.2.2.53] (unknown [10.2.2.53])
	by mail.lang.hm (Postfix) with ESMTP id BB0AB20AAC3;
	Tue, 30 Sep 2025 05:49:38 -0700 (PDT)
Date: Tue, 30 Sep 2025 05:49:33 -0700 (PDT)
From: David Lang <david@lang.hm>
To: dave seddon <dave.seddon.ca@gmail.com>
cc: Jonathan Morton <chromatix99@gmail.com>, David Lang <david@lang.hm>,
    Cake List <cake@lists.bufferbloat.net>
In-Reply-To: 
 <CANypexQ0_bNcOOs-_WuvGqJ1==Ye-k3an5Zuvw43Psot7Bo16A@mail.gmail.com>
Message-ID: <s552o40s-9o87-69rs-0415-67o993r9rp4r@ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com>
 <CANypexQ0_bNcOOs-_WuvGqJ1==Ye-k3an5Zuvw43Psot7Bo16A@mail.gmail.com>
MIME-Version: 1.0
Message-ID-Hash: HPC5F7I2I6CEHK5YEWKYI7HUOX6LHYJG
X-Message-ID-Hash: HPC5F7I2I6CEHK5YEWKYI7HUOX6LHYJG
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
 <https://lists.bufferbloat.net/cake/s552o40s-9o87-69rs-0415-67o993r9rp4r@ynat.uz/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
Content-Transfer-Encoding: 7bit

dave seddon wrote:

> Agreed.
>
> I nearly replied to suggest getting Crown Castle to just provide dark fiber
> to One Wilshire and fire it up at 10GE. ( I assume any of the major
> sponsors could provide a 10ge internet link for a few days without any
> concern.)

that would be fantastic if it could be done, but in our experience, getting a 
hotel/convention center to allow a new network service to be setup is increadily 
hard.

> This way the bottle neck moves to the APs, which have a significant smaller
> number of flows each.

the user may move from one AP to another in the middle of a flow, so the shaping 
needs to move further from the APs

> The other option, if upgrading the Internets isn't an option, could be to
> use 100mbs links to the APs. This sounds counter intuitive, is essentially
> moving the bottleneck to the APs.
>
> I assume you have traffic graphs from the APs from last year? I guess none
> really exceeded 100mbs?

If they did, it wasn't by much, we only use single channels on each band on each 
AP, isn't that going to limit each radio to 56k? (we do this instead of wider 
channels so that we can reuse the channel spacially sooner)

so limiting the connection to 100m isn't going to add any noticable 
restriction/bottleneck

David Lang

>
> On Mon, Sep 29, 2025, 20:56 Jonathan Morton <chromatix99@gmail.com> wrote:
>
>>
>>
>> On Sunday, 28 September 2025, David Lang wrote:
>>> I'm starting to prepare for the next Scale conference and we are
>> switching from
>>> Juniper routers to Linux routers. This gives me the ability to implement
>> cake.
>>>
>>> One problem we have is classes that tell everyone 'go download this'
>> that
>>> trigger hundreds of people to hammer the network at the same time (this
>> is both
>>> a wifi and a network bandwidth issue, wifi is being worked on)
>>>
>>> The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
>>>
>>> Any suggestions on how to configure cake for this sort of environment
>> where
>>> there are so many devices?
>>
>> So far as Cake is concerned, the normal setup should work fine even under
>> stress conditions.  If there are too many simultaneous flows to achieve
>> full flow isolation, it degrades gracefully to statistical multiplexing,
>> and you still have the AQM working to keep everything responsive.  Or
>> rather, a thousand AQMs working in parallel...
>>
>> Of course, this only matters when Cake is set up to be the bottleneck.  If
>> wifi is the bottleneck, you'll want a wifi stack with integrated fq_codel,
>> which I believe still applies to only some hardware since it needs to
>> manage the MAC queue which some devices don't expose.  This has the extra
>> smarts needed to adapt gracefully to wifi's foibles, and might already be
>> enough to convert an effectively nonfunctional wifi into one that feels, if
>> not fast, then at least reliable.
>>
>>  - Jonathan Morton
>> _______________________________________________
>> Cake mailing list -- cake@lists.bufferbloat.net
>> To unsubscribe send an email to cake-leave@lists.bufferbloat.net
>>
>
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

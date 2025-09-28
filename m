Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCC0BA7061
	for <lists+cake@lfdr.de>; Sun, 28 Sep 2025 14:18:05 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 1B3AE701D0B;
	Sun, 28 Sep 2025 14:18:04 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759061884;
 b=TYVJqrq/vB18ieLJiueCjxc/UsJhua++prxNYHHhcUts/KMAW80YBrMDSS0p1nXj5wPLr
 qUhfVF40NhV670GzQcuWAZos7Hgnx5fZvuiXCfix/zL+8e3fPxymMQjTlg8orUTx9f5SThT
 lzckyZz4rBXq7qzPD+6TcbBOLVsADSw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759061884; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=qPg96ZU5dVVS+E8QELuoZftHypUj1AQHiWfIIgCOxJM=;
 b=u+1lAXhtZx09syhhzoeNos5UCsAJ81LKR8bhvBA6ysNI6e3ebwP/cFhdlXdBaHLfFFj0N
 yWuIAydqVAggHzpraKdve9MnDokoL7EGJTGvlll6TjEoGwscdnjON9of6ZDH03PNPGBu/7C
 7PlTx+f1iCJLHQ3FVEKeppTAGJ5iOlc=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=lang.hm;
 dkim=fail;
 arc=none;
 dmarc=none
Received: from mail.lang.hm (wsip-70-167-213-146.ph.ph.cox.net
 [70.167.213.146])
	by mail.toke.dk (Postfix) with ESMTPS id 09C46701CFB
	for <cake@lists.bufferbloat.net>; Sun, 28 Sep 2025 14:18:01 +0200 (CEST)
Received: from asgard.lang.hm (syslog [10.0.0.100])
	by mail.lang.hm (Postfix) with ESMTP id C7FF920A6F2;
	Sun, 28 Sep 2025 05:17:59 -0700 (PDT)
Date: Sun, 28 Sep 2025 05:17:59 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@asgard.lang.hm
To: Sebastian Moeller <moeller0@gmx.de>
cc: cake@lists.bufferbloat.net
In-Reply-To: <06DAA0CB-70EF-4FDD-BD3D-16A4FC28AD12@gmx.de>
Message-ID: <alpine.DEB.2.02.2509280513450.14652@nftneq.ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <06DAA0CB-70EF-4FDD-BD3D-16A4FC28AD12@gmx.de>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Message-ID-Hash: KCON4DWT2RRYUHT2WBF3Z4IQMT7A7DVC
X-Message-ID-Hash: KCON4DWT2RRYUHT2WBF3Z4IQMT7A7DVC
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
 <https://lists.bufferbloat.net/cake/alpine.DEB.2.02.2509280513450.14652@nftneq.ynat.uz/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Sebastian Moeller wrote:

> Hi David,
>
> while I have no real answer for your questions (due to never having had that kind of load in my home network ;) ) I would like to ask you to make take scripted captures of tc -s qdisc for the wan interface is reasonable short intervals (say every 10 minutes?) as that might be just what we need to actually answer your question.

I will do that, however the network is only up under load for 4 days a year, so 
it's a slow feedback loop :-)

I would welcome any other suggestions for data to gather.

>> On 28. Sep 2025, at 13:06, David Lang <david@lang.hm> wrote:
>>
>> I'm starting to prepare for the next Scale conference and we are switching from Juniper routers to Linux routers. This gives me the ability to implement cake.
>>
>> One problem we have is classes that tell everyone 'go download this' that trigger hundreds of people to hammer the network at the same time (this is both a wifi and a network bandwidth issue, wifi is being worked on)
>

> So one issue might be that with several 100 users the default compile-time 
> size of queues (1024, IIRC) that cake will entertain might be too little, even 
> in light of the 8 way assoziative hashing design. I believe this can be 
> changed (within limits) only by modifying at source and recompilation of the 
> kernel, if that should be needed at all.

custom compiling a kernel is very much an option (and this sort of tweaking is 
the sort of thing I'm expecting to need to do)

The conference is in March, so we have some time to think about this and 
customize things, just no chance to test before the show.

> I wonder whether multi-queue cake would not solve this to some degree, as I 
> assume each queue's instance would bring its own independent set of 1024 bins?

good thought


>> The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
>>
>> Any suggestions on how to configure cake for this sort of environment where there are so many devices?
>
> Maybe switch to a simpler pure per-flow isolation mode than the default triple-isolate?
>
> BTW what kind of uplink capacity will you use?

last year we had something around 500Mb, they are in the process of changing 
ISPs and we may get a bit more, but probably still under 1G

hotel and conference center Internet connections are far smaller than most 
people think.

David Lang
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

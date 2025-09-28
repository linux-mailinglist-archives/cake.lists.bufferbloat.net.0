Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C53BA6F8C
	for <lists+cake@lfdr.de>; Sun, 28 Sep 2025 13:06:37 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 0CF0170181E;
	Sun, 28 Sep 2025 13:06:36 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759057595;
 b=TDGFjCHGFCoI5zsl3mIV1XScO6fvjjezN8hKHkR00wYlUg4JcfkKLEDgcZ8vu3VBUsela
 y6wIvEHIluX1fImk74UuVgQH7BFzFX0m0lVkhICfwA9b9bnJ4KnHO18pkrqICgtM4O2YUYB
 GWx8tQrCqa9I5jm7sRm44vJO78xhtE0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759057595; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7cDavd9/O63xFCfF6YT1FHSCkuQqqMW7I+MMCaP4w28=;
 b=vmLvLFJhVLK/lKU98JjYuBU/q4DGtzYxVbqOhH21vd1zpjOJ8/0bxVcEww2x4QMTdIHpW
 0eqlKgE02TdJ3ydKst7KJlUaCj0hs6gtVuFFmmUaUgL/KW4Uh8ePL9DG5J3yOg+7pVtUfHj
 GQ7fQshpvb+YqPoVOe22M7OIs2ULrF0=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=lang.hm;
 dkim=fail;
 arc=none;
 dmarc=none
Received: from mail.lang.hm (wsip-70-167-213-146.ph.ph.cox.net
 [70.167.213.146])
	by mail.toke.dk (Postfix) with ESMTPS id DF13D701804
	for <cake@lists.bufferbloat.net>; Sun, 28 Sep 2025 13:06:33 +0200 (CEST)
Received: from asgard.lang.hm (syslog [10.0.0.100])
	by mail.lang.hm (Postfix) with ESMTP id 43C1A20A6C9
	for <cake@lists.bufferbloat.net>; Sun, 28 Sep 2025 04:06:32 -0700 (PDT)
Date: Sun, 28 Sep 2025 04:06:32 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@asgard.lang.hm
To: cake@lists.bufferbloat.net
Message-ID: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Message-ID-Hash: 4ODLXVYQA23P6754AMJVXXCNIOSK2DN6
X-Message-ID-Hash: 4ODLXVYQA23P6754AMJVXXCNIOSK2DN6
X-MailFrom: david@lang.hm
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: TEXT/PLAIN; format="flowed"; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm starting to prepare for the next Scale conference and we are switching from 
Juniper routers to Linux routers. This gives me the ability to implement cake.

One problem we have is classes that tell everyone 'go download this' that 
trigger hundreds of people to hammer the network at the same time (this is both 
a wifi and a network bandwidth issue, wifi is being worked on)

The network is pretty flat, a couple of subnets each on ipv4 and ipv6.

Any suggestions on how to configure cake for this sort of environment where 
there are so many devices?

David Lang
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

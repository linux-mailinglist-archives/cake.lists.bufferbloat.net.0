Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B425B56AF5
	for <lists+cake@lfdr.de>; Sun, 14 Sep 2025 20:00:20 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 13E7B67D975;
	Sun, 14 Sep 2025 20:00:19 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=g001.emailsrvr.com header.i=@g001.emailsrvr.com header.a=rsa-sha256 header.s=feedback header.b=VDYTGq5t
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757872818;
 b=lwl4WpGSR6qPWM8mrF8s7/pVTMP/4EOa/RVq32IUti/WamfA9wmKb6QHr/XYGxj7jZ/Dk
 wGEqDPWvE06bUglQ/93QA6QgxvebCTg0CxS4cp0Xa3VuMtx+6hBY/ajMpldqi/cFAukXdpa
 j/JKz01PdL6olO5oURgzD88ZNWfXwYQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757872818; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=TwTmcCKUOfEo7Jse/uP8EGL1RyJ5rcpJ7A/uWhyaM6k=;
 b=pvYyE7i5hvsKlJWl4fJOa8kauhy9XNI2gAcDVOwIwBggh6P7Jz20M1ZdcTGEnRbtfqYhY
 HDQL4WqT2K05YjcPFyWZfmDg3BYmjzxEvvbDlL8/HxCMUAVkVC3gRYRZMqfO3pY21PFP0w6
 7MEqGnnvl7eF2dFFPARDy2CwwaSVvz8=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=g001.emailsrvr.com;
 arc=none;
 dmarc=fail header.from=deepplum.com policy.dmarc=none
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=g001.emailsrvr.com; arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=deepplum.com
 policy.dmarc=none
Received: from smtp112.iad3a.emailsrvr.com (smtp112.iad3a.emailsrvr.com
 [173.203.187.112])
	by mail.toke.dk (Postfix) with ESMTPS id 4C10067D94B
	for <cake@lists.bufferbloat.net>; Sun, 14 Sep 2025 20:00:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=feedback; t=1757872814;
	bh=L2qrVKAO9pfO+sjFeL2VTDuY8D8hrBkLpVG6flUq4sA=;
	h=Date:Subject:From:To:From;
	b=VDYTGq5to5DyAKLqpzyXfA98ctWuxaqo2ZeYZIqQQ99k1yGqI/u+S/U9rD27tKyRz
	 UFJ3Cfm1s+LtUwP46P1v1AWsg4hYHpVPSz/TgsVBzl5KLPPl4fzR3Op4CDvO/QKonl
	 O84kgSW1reUq2fK2VB8WHaGQwRMBplF5Pb2BnYwc=
Received: from app26.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
	by smtp23.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 7F14E24F19;
	Sun, 14 Sep 2025 14:00:14 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
	by app26.wa-webapps.iad3a (Postfix) with ESMTP id 5D4D4E109E;
	Sun, 14 Sep 2025 14:00:14 -0400 (EDT)
Received: by apps.rackspace.com
    (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com)
    with HTTP; Sun, 14 Sep 2025 14:00:14 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sun, 14 Sep 2025 14:00:14 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Tom Herbert" <tom@herbertland.com>
Cc: "Frantisek Borsik" <frantisek.borsik@gmail.com>,
 "Cake List" <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 "bloat" <bloat@lists.bufferbloat.net>,
 "Jeremy Austin via Rpm" <rpm@lists.bufferbloat.net>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: 
 <CALx6S34SYbYhNVHgGJP6+aGegiABy3KM4Ugx3yTLiye3hbAtrQ@mail.gmail.com>
References: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
 <1757449551.421420786@apps.rackspace.com>
 <CAJUtOOhnp92Vxv4TkF_GUwVB1kaZcN9z+hZwS+0JBdHdM0cJjw@mail.gmail.com>
 <CALx6S37wDSc=d27twPBm_NHFSWYQUL74oMSyBVwY=z9uNEvJ_g@mail.gmail.com>
 <1757795591.523513612@apps.rackspace.com>
 <CALx6S34SYbYhNVHgGJP6+aGegiABy3KM4Ugx3yTLiye3hbAtrQ@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1757872814.374919035@apps.rackspace.com>
X-Mailer: webmail/19.0.28-RC
X-Classification-ID: f027f779-50da-446b-8c64-edc0e8e34e9c-1-1
Message-ID-Hash: U6REBNGBZNOKC2EMBLEESUJIQPISK65B
X-Message-ID-Hash: U6REBNGBZNOKC2EMBLEESUJIQPISK65B
X-MailFrom: dpreed@deepplum.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: XDP2 is here - from one and only Tom Herbert (almost to the date,
 10 years after XDP was released)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/1757872814.374919035@apps.rackspace.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Tom -
 
Well, we may have  to disagree on whether eBPF is a good language/system for writing networking stacks or interfacing to hardware devices.
 
In case I wasn't particularly clear about eBPF, here's a summary of that concern.


Perhaps the biggest drawback (beyond the fact that it is a terrible language) is that it's basically "sugared kretprobes" 1) its "abstractions" are whatever the Linux (or other OS) kernel code design allows to be "exported" within the kernel. You can't, for example, do co-routines or IPC that would be appropriate for a clean network stack. Just what Linus and crew decide to export symbols for. 2) Sadly eBPF is primarily maintained by folks who merely want "hooks" in the kernel for performance analysis. (the original BPF was for programming packet-processing pipelines). Its use for describing the implementation of full network stacks in a clean way, down to and including the semantics of, say, 802.11 devices or 802.2 devices is a masterful hack, but very much tied to the Linux kernel's control structure quirks.
 
As a guy who's been developing operating systems since 1970 starting with Multics and networking protocol implementations since 1976, I would never have thought that eBPF or any language designed to kludge with random APIs produced by a group like the Linux Kernel developers as a basis. There are so many alternatives that are far better that what eBPF is.
 
Go ahead and do whatever experiment you have planned. You don't need my approval to base it on eBPF.
 
Now, understand that I'm not saying DPDK is the answer either (nor is io_uring). It's got a number of design drawbacks, too. The main benefit is that it runs all the code in isolation from the monolithic kernel called Linux, and allows real-time execution in ring3 with interprocessor communication. I would throw most of the rest of DPDK away. I would think that your goals would be best suited by stepping back a bit.

David
 
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

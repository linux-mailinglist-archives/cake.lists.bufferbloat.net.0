Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F96FBAE571
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 20:46:21 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 3D03671164A;
	Tue, 30 Sep 2025 20:46:20 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=H9RPqbPR
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759257980;
 b=IF6F8k0iZbvWa810L+XCN9/mKUlKk7OXdJYa40WIZ6sNKT6Ku9iYPAlEErLJpQfWJA4q0
 06/4mDbT5gKmtVdOia7YuuvL0kecd2JG8m/UZiVtKfYbTTG7YOmsILnH0JjKOir0MNcgRKD
 x654dQuLa9JruAtGMQ0VW4+GJ1bhTzI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759257980; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=jIwa1/UB6JX8Z8/JmTFU2tqq92mYt7aGX3isdJMxMww=;
 b=nmrnuqOYID3r2v6lESlQQW02E65qpmciYBl+Ux5cPPob0hWTVL3kXkJpZUgz3Rq+1ztCh
 TfyNPGsuK9vIQXB7yu+wX5u7N370BarxutZ3S4qltQVNUcr4pQ9YJj54itgL/DxBxkZbx89
 zrF1lNUyXUgLYH8hSalp2eO6CyWM+XQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
	by mail.toke.dk (Postfix) with ESMTPS id 66025711639
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 20:46:17 +0200 (CEST)
Received: by mail-lf1-x129.google.com with SMTP id
 2adb3069b0e04-55ce508d4d6so5871022e87.0
        for <cake@lists.bufferbloat.net>;
 Tue, 30 Sep 2025 11:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759257916; x=1759862716;
 darn=lists.bufferbloat.net;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PmhRJUVjUmhPuNK15wfPzvDrvrJHWZUG0MWtF3iXF4U=;
        b=H9RPqbPRocyfO/fLvxgtlu8yQklvswPfU1ycCjJKAwXO1NbsiwfvxFsf8O8VoCRiGO
         Uugl4ansppNJtU8YksQnXmXN1W4J9sHUj3uoftQLC9qXUDmYNzuKxYHMlNaHifZDqjRg
         iq2uIpAMn0tm1nM1L3DJ7MDnvbV9F1vxAt3gzYBlCmg4R9LyvN18GuQrTkfQ8Gp8N6TS
         ISeIvqvqwYttVv/IvObq5HhyHDiAINtgqeNhonnQBWBo1VH+Z09YHf2gv+Qy9as2IGIc
         k8Y2g16E29PWYiMKE0uxbaZ06jJiQYp5n0KgiLhDjpgPZyQjRqsufIbE60PmWNifXNVe
         qtCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759257916; x=1759862716;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PmhRJUVjUmhPuNK15wfPzvDrvrJHWZUG0MWtF3iXF4U=;
        b=JKfv8Gqu4tPmSd+kj+MRtRQJlrzf0aee2FCiB3/9njBdB1tiSCJmgNVho8CTvdWDmb
         Dol42lJM2FpddujPRWRj3bpnMJVc4H09BPpfWdZ6svkR6rzuK62UumPeXMk4aeCS2wDs
         r1r5NDjF7NUjduYZfGgq5mLZ2rE0wwZ6RC+M/DgBaVQUSmizM7bS/vRyXoEbvf+03Xcn
         xrMbP0rZxQPfSHXuUzl+oBnSWL6+wvu8FxJm7iQGILYs39lHAGlRNd/WfAqOJpnBzw3a
         LrfuhK3bpSiG5MZ4BSPuoRTKki7rf6p6WvoTovhHQPiYNgBETv+z++kx1eb6J09KiRPY
         VzWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGOpGCDZJJUObvy8FIuhS2xnXiaFybHk6+NJGZsXEtXyHhcKqrEim5gESWMpNXZ1mDQ1Of@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxcL7pr9c3oTonSi9Z/ixW4r8Zhuy1O2y3g+IZ2l5xuk4WVCj/S
	xwWNUXxGv65hqx8Vg9W/I86Hdo7Dy015TmdHcBI7z+kFvJBOeCbea0l8
X-Gm-Gg: ASbGncu2Ds95b9sDbPXBqLLO7drRcEMVxPChRivJwYFQectB33fx/OAjhN0lus53DrO
	zs4yfRvvcJtgqHpOEv7MqTPq/Qth/ERfi4RMl0sSKngOHWdI6+2QB3ZUzUBCBASNdhc2kTLQdCF
	azuDCN4VGK5QKwG1GWSUe2LxXsU4AAkVzVastqkiGSRoULBHu9msnFGk0Jnng8wwIzXWsBzYNWq
	yWpQv0J1NZkRow4MtMrG3U1ttASgar3sXTy1zHTBXfK81a8zU7Swp1RSFu/dLMAMnU0KBM6t8ll
	XKAaDkO5wrqzIlWrEovIFExJ2vienH//0BjD3BIeadQbqICsn5VNWO1TnKwH6MpPCgYrlYCNXpY
	bKpN0oc/pmR6otlU0x1UEBjKI1/f7aYdreNbF3ci4GDsjiaITrx0tBUvPq0EhfNO4IdWbsIktm0
	hHo9UuWxO6OLU0r2HCWLDfz2Fza/g=
X-Google-Smtp-Source: 
 AGHT+IFzCvoH+PqwTHSaIfatQRFB6dlT2+sA70axVFYzUu7+nvrVJ+2POLI+tLZTh1C7yBdTeUAMGw==
X-Received: by 2002:a05:6512:4015:b0:57b:8675:e358 with SMTP id
 2adb3069b0e04-58af9eface6mr168182e87.21.1759257915613;
        Tue, 30 Sep 2025 11:45:15 -0700 (PDT)
Received: from smtpclient.apple (37-219-197-32.nat.bb.dnainternet.fi.
 [37.219.197.32])
        by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5831343130asm5212040e87.1.2025.09.30.11.45.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Sep 2025 11:45:14 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <FA76869A-F4A3-4C70-8F15-57E4168DAC71@gmx.de>
Date: Tue, 30 Sep 2025 21:45:13 +0300
Cc: David Lang <david@lang.hm>,
 cake@lists.bufferbloat.net
Message-Id: <D1F64A64-276E-4BB6-B67E-067EC1CF8C4C@gmail.com>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com>
 <n21672r7-056q-ppo6-rpno-139os0o3154r@ynat.uz>
 <FA76869A-F4A3-4C70-8F15-57E4168DAC71@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Message-ID-Hash: 4L2CDMGLY7UZQJEY433C4RU7HXDDDR4T
X-Message-ID-Hash: 4L2CDMGLY7UZQJEY433C4RU7HXDDDR4T
X-MailFrom: chromatix99@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/D1F64A64-276E-4BB6-B67E-067EC1CF8C4C@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On 30 Sep, 2025, at 3:56 pm, Sebastian Moeller <moeller0@gmx.de> wrote:
> 
>> what would need to be done to increase resources to allow for full isolation of more flows?
> 
> I believe editing net/sched/sch_cake.c and increase the number of CAKE_QUEUES:
> #define CAKE_QUEUES (1024)
> 
> to something larger...
> 
> however I do not know what a realistic maximum is... and IIRC cake will search through this repeatedly

There's nothing that should repeatedly scan the entire list of queues, so there should only be a minor hit to performance from increasing the number of queues.

The set-associative hash searches only the set of 8 queues that the flow hashes to, and only when there's enough pressure to cause a hash collision, so this cost would be expected to go down if the number of queues is increased in anticipation of a heavy workload.

The list of active queues is scanned O(1) elements per delivered packet.  This doesn't mean that each queue is visited only once per delivery cycle, nor that a complete scan of the list can never happen, but amortised over many packets, the scanning cost is independent of the number of active flows.  (At least in theory.  It's grown into rather complex logic that I plan to simplify in the next-gen qdisc.  Running in "besteffort" mode already simplifies the control flow significantly.)

Queues that recently went inactive are kept in a separate list to "decay" their AQM state to quiescent.  This is scanned at a rate of one element per delivered packet.

In the corner case of the configured memory limit being reached, Cake needs to find the longest queue(s) to drop from.  This is done using a heap structure, *specifically* to avoid the possibility of a load-triggered DoS fault.  A linear scan is done only to initialise the heap (when the need for overload dropping is first identified) which is a one-time operation.  So even in this case, the cost per dropped packet is nearly independent - O(log N) - of the number of queues.

So the main limit on the practical number of queues is really the number of hash bits that are allocated to selecting a queue. Without specifically checking, I would be reasonably confident that you could run as many as 64K queues without difficulty.  I would still test this in the lab before deploying to production.

 - Jonathan Morton
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

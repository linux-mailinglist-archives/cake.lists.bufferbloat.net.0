Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAB5BAB765
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 07:20:10 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 746CE70D301;
	Tue, 30 Sep 2025 07:20:09 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=lGk618EI
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759209609;
 b=4oMJZIiZ1zhGeCASpQsIXdZRtoOp7DzaKzVJUm/J91YPzpy/PPPwJSXIpksh6lkdVdCQn
 IKqhW72cYI+rLU4Ob2iDUbkLJvshvWTd8sU/pcbd7FgKoWEg1+kRteeKRUX7CqoEzt3SCEi
 tAkZ484H6ccP7s0wAEJEendqvtA0/6A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759209609; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=fZCHB+Iyno5t322BPeNRHTrDewGS/N9IJKMRZpr4ypM=;
 b=hNLoUizSIQzptYZvCOM9w4aqyaw/0hL5YJkPzZ/hF+eVhwZXbwrxutKmxeTv9qNygf+0L
 juWCAJLdNYDDQVQOtCpPUp6fHphc78Bo/PlJAuMYKAQO8c+F0sOs4/pipWUO15uexXAwsnM
 yjl+Spm/PzbT2N6jf7ptuKzVP+1Kebw=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
	by mail.toke.dk (Postfix) with ESMTPS id 6D48870D2EC
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 07:20:07 +0200 (CEST)
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-57d5ccd73dfso5675787e87.0
        for <cake@lists.bufferbloat.net>;
 Mon, 29 Sep 2025 22:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759209545; x=1759814345;
 darn=lists.bufferbloat.net;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=84Rr89F6QlAeN/2clTtKBInBKJSPfsoE4HBja0KbHRk=;
        b=lGk618EIfTz2zPmzMHx+o+/9KAMDvYjXHQCX6YJMKvQS1UFLKnJ+ZQ8s6IBNuy7i+l
         R89F4xUmRq1q9ACiRTWoDraebzXujBT06CSbHRUBfTs2FMZMvZ7YrYGR9sAL/spGf2az
         djv3VgcdQ019DVt89xJPWjrokkzV4XaZOd/gdm6A5gmh7ufnyceiMyorI2HZ4121dSVM
         FIPnd4qa3iePuXD68dAl8lx2Mtv1p1kMnYPppZBkPY+4hXgZdjSrBof8jsVobphqIhHr
         hLtkeedcgNqEricmnIoIwtQxecOWiE5h5GszRioBy5Lg0XFt55MJuuWXni3Eyk7+iuy9
         SgqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759209545; x=1759814345;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=84Rr89F6QlAeN/2clTtKBInBKJSPfsoE4HBja0KbHRk=;
        b=nM8edcBsKgwpukZi2ZOPyJl5EVJjSIop4zlgpXyL/EY3C+RNXuvbaAMxvCn2cx/78Z
         yqjX+u0R+rDVk2RTa54HlqTVg33s0OLt3AKScQ6LzwRwA6tN0KyXFHWvBkiI0vuet39t
         qSL9JvFtd7lQvFDzQAI2IhDQW1Zw+S2bnQaeXAATsKT4BZjIGoPePvjj8gZtREyNTbd1
         aT6AzH3ch/yyCcVeGIxFXf4UF4gkjRLUr/M455TUEUFbr85D6sJtJQt1fnjVk/Qf4jbD
         JftnwY5fVK+rbP219S0ASng2PHEyJqsMP6lzu+GaRaAbSFNP8AKuWfX0FQMaSkFNmsYZ
         7fJA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXbQdniRy0VUPNcnjSwAKlBJRh6ejap8o54xNjs61FSoY1k+KqOs29N2Hw1ifq7f0vHnHgX@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzhS/5sX3vwJhM58gZ2WaUBVzPRmZ5X6c67EW0z+3gdgSb5g9c+
	zk6XYjkKNInCyWrgFJ7Qc6yF43feqhE5EbJumKPmnOUjXnEdujiSkrHg4d514Q==
X-Gm-Gg: ASbGncuHGtIJpurEVUzeVZI61kFvBz83EkAuUT96/Lxy22uQ4x1Mp1H1xGN8WWYnDnP
	M425cQtwOn0qnIz4T55E7ffw42hOLvfgYpz4qNtaMgAWjGiKSGxVXubRNkIfBsKL30xMxkL4nIm
	WtNaBNwPJutHOS4C78sgvtihrgSnaBFszvMtS0d1OGaQcMdOZWd1WIEn/eGB1puf6gidWUa5k9K
	fY+0e4QaQm8aNVsGzoa3F0awBY0PaDXV/vFLIBWToa0UwqaqzLbvMZ6p4ljUkIo731PqZHWWLWk
	ZecwWlNUTTGxODwjprWEWbWrlEnK2y4Jwra5e9m9pM6zpl5CLgB9xukoJ7oMZAwbakCKjxRJSLs
	71hR+MFYW5srrBi/ZW/Nsm7D1dtyy8DtrDKN3Qgtry+CFzrqZfNpptkwZudgbvFHmyk3O7R7l54
	G6W0NjqtYhqD3CDWu6nsNSP6IvNSs=
X-Google-Smtp-Source: 
 AGHT+IHKHCmrLhoSinATjcz2BCTHSt3XQoIYzcg0WR+IlBdq2AZdUYoeH5rS3onVl42ZGwWaVN5ILg==
X-Received: by 2002:a05:6512:2249:b0:55f:4ac2:a597 with SMTP id
 2adb3069b0e04-582d092daa7mr6133803e87.7.1759209544750;
        Mon, 29 Sep 2025 22:19:04 -0700 (PDT)
Received: from smtpclient.apple (37-219-197-32.nat.bb.dnainternet.fi.
 [37.219.197.32])
        by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-58871d48262sm1001907e87.53.2025.09.29.22.19.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Sep 2025 22:19:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: 
 <CANypexTvXAdY577pxorqCKL45av3gw+fdupO6xr+gN5p=Wxq=Q@mail.gmail.com>
Date: Tue, 30 Sep 2025 08:18:59 +0300
Cc: David Lang <david@lang.hm>,
 m@jaap.pro,
 "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>,
 Frantisek Borsik <frantisek.borsik@gmail.com>
Message-Id: <962896BA-6EE5-4815-B6F9-AC50B7252642@gmail.com>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <2064666241.42029.1759061544846@app.mailbox.org>
 <alpine.DEB.2.02.2509280523210.14652@nftneq.ynat.uz>
 <CAJUtOOj-FfPic8FPjy-QneCsvbtwtn4Zsxs+1yEsUqytEOEheg@mail.gmail.com>
 <CANypexTvXAdY577pxorqCKL45av3gw+fdupO6xr+gN5p=Wxq=Q@mail.gmail.com>
To: dave seddon <dave.seddon.ca@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Message-ID-Hash: ORDHNF5ALXONA4EG3H4JZBZB46HNEB65
X-Message-ID-Hash: ORDHNF5ALXONA4EG3H4JZBZB46HNEB65
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
 <https://lists.bufferbloat.net/cake/962896BA-6EE5-4815-B6F9-AC50B7252642@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On 28 Sep, 2025, at 8:07 pm, dave seddon <dave.seddon.ca@gmail.com> wrote:
> 
>  cakeConfig = {
>    Bandwidth = "990M";  # We currently have 1Gb/s, so this is our limit
>    OverheadBytes = 38;  # Ethernet overhead (preamble + inter-frame gap + FCS)
>    MPUBytes = 84;       # Minimum packet unit for Ethernet
>    NAT = true;
>    FlowIsolationMode = "triple";
>    PriorityQueueingPreset = "besteffort";
>  };

It's perhaps worth talking about these parameters a bit.

You probably realise that the overhead compensation should be set up for the physical bottleneck link.  Not everything is, or behaves exactly like, an Ethernet cable, even if the connection between your router and the transceiver for that link physically is one.  Or it might really be Ethernet, but with extra headers patched into each Ethernet frame (in a domestic context, that's what PPPoE partially is, but VLANs add an extra couple of words to a frame too).  If in doubt, err on the side of assuming there's more overhead than you know about.  These parameters are, however, completely inadequate to describe wireless links, especially WiFi.

I'd also like to remind everyone what "triple" flow isolation is.  It's a way to get something like host-and-flow isolation when you're not certain which side of the link the hosts that want isolating from each other are; there's a heuristic which effectively decides, dynamically for each flow, whether to treat it as being src-host or dst-host isolated.  I put it in mainly to serve as a sensible default, since blindly choosing one or the other would get it wrong exactly half the time.  I don't really like seeing it in a config file that someone's actually worked on.

It's better to explicitly configure this rather than using the heuristic.  The tc-cake keywords are "dual-srchost" if the hosts to be isolated are upstream of Cake, and "dual-dsthost" if they are downstream.  In a typical installation where two instances of Cake are managing both directions of traffic, one will be configured each way.

It's also possible to disable host-isolation entirely, using the "flows" keyword to provide the same kind of flow-isolation as fq_codel (or most other forms of FQ) does.  Cake can also provide only host isolation, relying entirely on statistical multiplexing (and the beneficience of AQM) for managing flows to each host; the keywords are then "srchost" and "dsthost" with the same meaning as above.  If you are seriously worried about the number of active users at critical moments, this could be a useful option for you; the number of hosts Cake can fully handle in this mode is the same as the number of flows it can handle in the normal flow-isolation modes.

 - Jonathan Morton
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

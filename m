Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDE7BAB303
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 05:56:37 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id EEDF070CCD2;
	Tue, 30 Sep 2025 05:56:36 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=NqkQQKH0
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759204596;
 b=GxBZ2LtIZxT6zJb/qgq6Yc6z/2TMxAbA4LyHMiRncWvQpv0i3Wi5WffIofa4Xk2gADW2s
 ytUmtDRKnEDK1C0mfbn+E415jYm+cqNTYXdisDuIY5uGCDyHOq8ZwsEfyiu4cVcrvHK5nSJ
 +2kC5CskubxrsO1vjcSvIcQMhFKo+1w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759204596; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pVJ1VmdGqQ5kjkCOLy3CVeVbkRAXpTnQvcBQMb6tqs8=;
 b=cWS4Uoe3UuEmbS2SnySQ3yrnvsbEr2d5UDqYGPgYvZJWDr+ZZynoWvsPHsdKiwyubc2lg
 93vSbs1KvoPtqKASbiS8AtHdtjlu7ormCqTVwo9304xQ2ntTYBdlsP9AOGSXdbXBuHXugC6
 f7UfkanRtBeCaWgYyGJFjGfOykRA6T8=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
	by mail.toke.dk (Postfix) with ESMTPS id E85D670CCC2
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 05:56:33 +0200 (CEST)
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-57edfeaa05aso5646021e87.0
        for <cake@lists.bufferbloat.net>;
 Mon, 29 Sep 2025 20:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759204531; x=1759809331;
 darn=lists.bufferbloat.net;
        h=mime-version:message-id:date:content-transfer-encoding:references
         :in-reply-to:subject:from:to:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FE25mkTB5LBpXXKrIavrouEhA2rKHzLnTH3O3p9ETG0=;
        b=NqkQQKH0t9N7v3Es7VJg7OR2LieMn/jzZ1BbV4piqqgn8Mw8aPpAKN77pt848FUUPT
         a75WCnV8WWUkfdmHpb7Sq0A00j46VN/P5PmnAGc2KKvyXwyGROyR/YaqaWbVBA/Eez7y
         b2sh7Jz1iiszaKG/JA4WUMXo+Lt2Clf8iF1/Ody2Ia1rlETb3QAwRKVX4iFGCX5i3JK9
         XiohTupOH3k1f15X+SyjPyk/erfAzlglJCI8eQN5E+3PT5yhBT2x4S9U7UrDviUEP00C
         AHMX5wah9rAPajHPMqlT/z3sY58i3kQf1NnpkG+EvhcGVj5juQqPCMrFgWGBr7/QSAaD
         lcEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759204531; x=1759809331;
        h=mime-version:message-id:date:content-transfer-encoding:references
         :in-reply-to:subject:from:to:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FE25mkTB5LBpXXKrIavrouEhA2rKHzLnTH3O3p9ETG0=;
        b=qf4rbuwjrepGmWG9xKcRhptSI5vEriOxFiSc/b0M/bzzoCvC3/lo2aIUw835YV6jMW
         aN7DqQ1qG84y0L1jiMhWpYqDnb1p2TgVvWaBuTeZRjWwWpFqe0Vftr+9/2STikN+G87a
         xuEX5b4nPnMFIXxlDcWlhhBWIksj+ljzTapR1BsqrHixc9IrsjfB+arbXiOjrzql9VbI
         ki1hMtaqM43L516kdsL/YeTx6p8mHWsITRN9CeCO/rDXCuTBq58c8rNXN4Gla4TBb71/
         LycQp6K1N5oIlvDV+NuPiEF7HLZtdZWVmRYbE+Im+9axW6fxng2SXsPBLhALt+RZmDWB
         S09Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCW6dDkcngbCRgyDXTYyvZq23028ln6/gE+KWrQDCcKNRAPFMzYsuSV4cIXzIzY8eQTBbg5z@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwVQT2pypuFn/1j8zb5I+7uPrf00ku5OFr+00r1umZ7zlzODDC7
	L1jDjDrZJHOVdyzUhzLCzA6sLcQ/zAEuoXbcbsmRCpouK9RtdtwT6cbOaxVtaw==
X-Gm-Gg: ASbGncvSO2OnGVqojvwUntFy7wK3kNxdtaXz4Ce/ON7GMscEnAiQuWPnDBVxgqxc629
	bdXVLvaA6mtARU/7zOvEcEokhjxgnnhQJp1Le+1hwYRMlj7sJ83kSb0/dSfyeIWfnVEdXREoXbN
	PqPplvYJOdWbSK4JIup24liS0cGTTNfVPcsYePWXtxCPQoH/mi7IozKRvqcwN/eLFlKq6mYHF8r
	Jo9cPT/4vtlLSXy4Jl15gMmmFL36IKpO8ssAp6avQQOF2Qc2NbGHrJ2c7lUoTc3q2NSOV5/QqhK
	VixgISeC5nRTLOD9nNsSqQxn69w96mzaxCVED12C09e6u25D45S/UO1xRAkr0C7EgKwXhRJdqk8
	UCJs/0sPwBVVHvf0jsjBbLKIDlEp7mNRkpaAMIKaDdEgY+9zjGf1YO9ZA8+seDgy2W4N2DZUhUG
	zx+/jGM/WNCN/TDlM=
X-Google-Smtp-Source: 
 AGHT+IGFxbrO+V8JuojZ/kWlN3OwqtU1JIi/etgEpAZoJBCRqLvUpGxU/bSYxZuKzrsOkIy5i5HxwA==
X-Received: by 2002:a05:6512:3055:b0:57d:6fca:f208 with SMTP id
 2adb3069b0e04-582d2f27804mr5808148e87.45.1759204530867;
        Mon, 29 Sep 2025 20:55:30 -0700 (PDT)
Received: from [192.168.7.135] (37-219-197-32.nat.bb.dnainternet.fi.
 [37.219.197.32])
        by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-58619e6c530sm2374250e87.93.2025.09.29.20.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 20:55:29 -0700 (PDT)
X-Priority: 3
To: david@lang.hm,cake@lists.bufferbloat.net
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
Date: Tue, 30 Sep 2025 03:55:28 +0000
Message-ID: <dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com>
MIME-Version: 1.0
Message-ID-Hash: 5ZAYQLFFOW4HUY37X3KZ7GGAFIXKLXHR
X-Message-ID-Hash: 5ZAYQLFFOW4HUY37X3KZ7GGAFIXKLXHR
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
 <https://lists.bufferbloat.net/cake/dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On Sunday, 28 September 2025, David Lang wrote:
> I'm starting to prepare for the next Scale conference and we are switching from 
> Juniper routers to Linux routers. This gives me the ability to implement cake.
> 
> One problem we have is classes that tell everyone 'go download this' that 
> trigger hundreds of people to hammer the network at the same time (this is both 
> a wifi and a network bandwidth issue, wifi is being worked on)
> 
> The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
> 
> Any suggestions on how to configure cake for this sort of environment where 
> there are so many devices?

So far as Cake is concerned, the normal setup should work fine even under stress conditions.  If there are too many simultaneous flows to achieve full flow isolation, it degrades gracefully to statistical multiplexing, and you still have the AQM working to keep everything responsive.  Or rather, a thousand AQMs working in parallel...

Of course, this only matters when Cake is set up to be the bottleneck.  If wifi is the bottleneck, you'll want a wifi stack with integrated fq_codel, which I believe still applies to only some hardware since it needs to manage the MAC queue which some devices don't expose.  This has the extra smarts needed to adapt gracefully to wifi's foibles, and might already be enough to convert an effectively nonfunctional wifi into one that feels, if not fast, then at least reliable.

 - Jonathan Morton
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

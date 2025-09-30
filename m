Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id F2402BAB5E8
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 06:30:43 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 0781E70CF77;
	Tue, 30 Sep 2025 06:30:43 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=kY/b4D5W
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759206642;
 b=ejHH5A5ZdEtFYd5fFctojS49lEC4f+wG8D5PsCqh4V2JRfY5jZSZeChp+GPlOwzrJKLHj
 uGo+trcAJ9HBl/HBcchR+QNbnClg+UDrkA9qgl8AsqEv9YtIQB6B4vFoMkF7A1rXAbjav3C
 FOscHESqi+pHr6+fp8VS8NiI6BzCnxA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759206642; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=WHGZOX9K/UzpRjEs4oYTwKuGDxoQmxX5uKuGmVF1+VY=;
 b=HkYInyp1D/lihtxHOrrj7Bf3zqyF75M/U3qjwk8svg29F6hS6w/oMLXULaIRiM9LmE9+E
 hbuUyFq85sR+/yrM8jrmmiPWd5gL8djKLl9pktDP7+FYPGYF8ZlIdNbPk+xAHj6mOnX3K12
 BIdbjhE12ZYToAxzbqsNiE+OSTdCVlM=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
	by mail.toke.dk (Postfix) with ESMTPS id 0201270CF65
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 06:30:40 +0200 (CEST)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-62fb48315ddso9887750a12.2
        for <cake@lists.bufferbloat.net>;
 Mon, 29 Sep 2025 21:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759206635; x=1759811435;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Xqf3jM17PFSF8xSJLZPQskMeuDbIqn6OB3ZSRprdw1c=;
        b=kY/b4D5WjGAZb1PCeX5hNHq/j+UW6+lPUZAuBcP12a07mX2iOe/YXqINEnJrDaWZV6
         3iGaBi/W9vBX3ks1lDJXNbqk8iNJs2Q9UItvF5QJIJSdkReuomd852oM87RYzDeaEOnr
         lti4wI+1Y5W/ArZB1DCP0tmZ445o1gB1nmmOJnFAm6uVVTdPEKqClXlqw18Tj9gsg2db
         HLD2pJ0bFbIy19qhvWeltBRLTpZYGUCdcdQ8EsnhPaNhMITtg5O3T8bDdy8i/MHMbUwY
         3m7MoxtrnCd17Bk0RZ//JEnfm02IYGHt8kRnFytxBIpXCvyIJPXe9wacbywk+eqpQvNd
         n4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759206635; x=1759811435;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xqf3jM17PFSF8xSJLZPQskMeuDbIqn6OB3ZSRprdw1c=;
        b=j8Nvpq7HM2VQaSjhu/ncCExiyL0bEB+1YtOuFeI85FhNDiWSLBZpQdhdMMyJ13gRI7
         7OXF4cCGyEGGfV4W49Z8ak2U/kuLLio9/rVD4yV5RP3+vjHVRKQihGfL+MFHm4uYbbCM
         +2n4gJwpglm0iE2tIl8yMjTMblA4QbMqw3ParnjIuBY5oed5U4qhp1oyTdXjnvuWCzJ/
         ChZOOEVpRu1igtRT7WXXMhI4W21iyUPay9lnkS+6eURFOmuP04+NcU/xmCVYjbaLW/yu
         siEGkv4x+WrqpZeBCG7I10fYZY2WkA9iCEubOupVbYgM4ngGEuVbWCQw+dqorKqes56B
         G3yw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXNQOjwCvwuH+8Q4jZQyz0U1/jzFy4q1lgGZtgewEPIsG6144yjDFGkqwwytnI4g6peUHgq@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxTjJVKmKv/rgYbdWRAzu5d9HiFITgI+rqkd+rB5PAbLjJFOyjN
	stIh4z4exMBjBObjeUgEAZno/oajPgvNTr6RGpZpj0hWwEEehqtIH5PlyxrcQ08aEQKZAY8VeBj
	sTHurGGLnV/OYIOmIrbhfvTGH3/Ts99lkX1R+
X-Gm-Gg: ASbGncu8Dt37f8rRngBR7b6BI2JTPp+CEbhOsSVBZ7KnTAatB2RsqpTemEc1XwTj6iL
	J5eCM5SCw+BgK5lP/pK+exQyXEWA5fnZ+ho2HiUWKaGS35TsyxcfuH9N2Phe6JBV4zQc3bpX+3L
	cMD6HnPooTBo74fEkIk7N43AGVmrXuhCJQzl+fmga7oS0Aw/dQPo/y+Ui7+WsqCWwFYTBgmueWZ
	4Wh9Qsm4zwFGHYvPf86yuyq5HHxxcmCkXsHlRcV51Aff5qcbH6ZLdTIlumeZ8KRzXi5XbMvITcN
X-Google-Smtp-Source: 
 AGHT+IH0lIln0MdMAoQmDfGQz9nQwjUqN+V+BLfeSUPMR98fk6n+M8iuCdihtGPsD+MoX3ZahJCcmqZf70I4DmAtGsY=
X-Received: by 2002:a17:907:da9:b0:b0c:fdb7:4df5 with SMTP id
 a640c23a62f3a-b34b8b93d6emr2244033366b.18.1759206634723; Mon, 29 Sep 2025
 21:30:34 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com>
In-Reply-To: <dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com>
From: dave seddon <dave.seddon.ca@gmail.com>
Date: Mon, 29 Sep 2025 21:30:25 -0700
X-Gm-Features: AS18NWApTNF64YCFbsq2C_ncYbY-JqaGicjxfzDEdaM_0RfRjuJfj7buYPy83hA
Message-ID: 
 <CANypexQ0_bNcOOs-_WuvGqJ1==Ye-k3an5Zuvw43Psot7Bo16A@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Cc: David Lang <david@lang.hm>, Cake List <cake@lists.bufferbloat.net>
Message-ID-Hash: ONCSYSJOWJIOJZU6HOVL5SZMJT36U7D5
X-Message-ID-Hash: ONCSYSJOWJIOJZU6HOVL5SZMJT36U7D5
X-MailFrom: dave.seddon.ca@gmail.com
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
 <https://lists.bufferbloat.net/cake/CANypexQ0_bNcOOs-_WuvGqJ1==Ye-k3an5Zuvw43Psot7Bo16A@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Agreed.

I nearly replied to suggest getting Crown Castle to just provide dark fiber
to One Wilshire and fire it up at 10GE. ( I assume any of the major
sponsors could provide a 10ge internet link for a few days without any
concern.)

This way the bottle neck moves to the APs, which have a significant smaller
number of flows each.


The other option, if upgrading the Internets isn't an option, could be to
use 100mbs links to the APs. This sounds counter intuitive, is essentially
moving the bottleneck to the APs.

I assume you have traffic graphs from the APs from last year? I guess none
really exceeded 100mbs?

Regards,
Dave Seddon

On Mon, Sep 29, 2025, 20:56 Jonathan Morton <chromatix99@gmail.com> wrote:

>
>
> On Sunday, 28 September 2025, David Lang wrote:
> > I'm starting to prepare for the next Scale conference and we are
> switching from
> > Juniper routers to Linux routers. This gives me the ability to implement
> cake.
> >
> > One problem we have is classes that tell everyone 'go download this'
> that
> > trigger hundreds of people to hammer the network at the same time (this
> is both
> > a wifi and a network bandwidth issue, wifi is being worked on)
> >
> > The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
> >
> > Any suggestions on how to configure cake for this sort of environment
> where
> > there are so many devices?
>
> So far as Cake is concerned, the normal setup should work fine even under
> stress conditions.  If there are too many simultaneous flows to achieve
> full flow isolation, it degrades gracefully to statistical multiplexing,
> and you still have the AQM working to keep everything responsive.  Or
> rather, a thousand AQMs working in parallel...
>
> Of course, this only matters when Cake is set up to be the bottleneck.  If
> wifi is the bottleneck, you'll want a wifi stack with integrated fq_codel,
> which I believe still applies to only some hardware since it needs to
> manage the MAC queue which some devices don't expose.  This has the extra
> smarts needed to adapt gracefully to wifi's foibles, and might already be
> enough to convert an effectively nonfunctional wifi into one that feels, if
> not fast, then at least reliable.
>
>  - Jonathan Morton
> _______________________________________________
> Cake mailing list -- cake@lists.bufferbloat.net
> To unsubscribe send an email to cake-leave@lists.bufferbloat.net
>
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

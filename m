Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id C45B6D07A76
	for <lists+cake@lfdr.de>; Fri, 09 Jan 2026 08:51:11 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id B0CEDB88908;
	Fri, 09 Jan 2026 08:51:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767945070;
	bh=E6kQv107KzUy1PMbc7TlrvXzf0uX/Dh2juB+iQrVo98=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=NSIrH84Hkr/5yef/O72V4ZtLgRjmm7AFn9aJ7FKAhSF/oXMKW7ayrR8/ZgIP2/SC2
	 5SToUg1t79BLAgqZgk90EXCvwVVsKXK4MRhOzemejR8kUgAEqcDIR/W04W2T3Iq0sH
	 5EB4bxYzaYnhnY1wqs0Z5Vamu+5K2aWDdfy0H7NL94evy8AH1bNXCV0VVXZameZasz
	 i5rhguea6srGb5Ud1Tu1sIlXtEgrUSzkTW+bqkSngVc2UCH6+UVRGxkhb6TZ1zR17Q
	 U0JWJ89+uTHw7xW0wM8gyQbN1mWND1esv2lKHRRmqMgrFD2nuA0n1W4Mzj4RCjFMNb
	 HbaT1DOw6386Q==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767945070;
 b=UOwrBx4hPOp0uzov7hAAcQlslxBh0BWtxKpz6yisVy77l4ZORNqry7iFl/3BBgJZgytcU
 aq0O8oBRBW2pXWpiR47Rya0Sv0do976PEH1jSPzdSKGPsBcxiKttKu6snCJn8TA9IFfcqrO
 T4MHp2vy0+BlL91sjhxozHv/IVgjRKM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767945070; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=+Uw/SepL4bcEhcC4qSW8kCXXaw5qG0DfHufbxpY1Jjg=;
 b=kHGpS+47DBdHSi4eElpiNi8vzzcqUr4pK71z+ysEOuQAAYG+WgZ5DKq9TShWqNihxnjlt
 32avoR/TmKpoBNsKHojPEREJlU+Ak7KHewu368tI98L3CzVMQh7EXuboGOp3V4is9NUXwcQ
 57spG65djUbi7XRKTWAsv1KPCuNRzmk=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org;
 arc=none;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by mail.toke.dk (Postfix) with ESMTPS id 5CE60B888F9
	for <cake@lists.bufferbloat.net>; Fri, 09 Jan 2026 08:51:05 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8969460136;
	Fri,  9 Jan 2026 04:12:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D7A6C4CEF1;
	Fri,  9 Jan 2026 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767931974;
	bh=RECAF4SNoLMHSd5KswFR7D6GpQrzkfxbfSOcD9gF1zI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GHnOMJnXScYpYJ8OcWES7vNbVJgF5TVKNu836/w0iwmOzLZKgQSsoiLaLfXx9J7Va
	 QENjK5sxCkYVrX6G9fnpE6KVIU2pUYQhZZGv5qyEq3P5ct7EfNVLwND082LNyasIdk
	 Ne5euLyb+yjDEcoOsA8O9GcJEY7nIoZ21QMqAX0FmCh9+KI5egAyxH1H506dFreVS9
	 40J1vO3788Jl7yxltIrIZx1Mp9PCKWdplinD3QYADm69I9F5yAkvhTc7m/BR2nY+w/
	 SYF4rcC5pH9a6fTB6fpZ6H5/8aQ3MdJNhziPOjivebfKK03mmSokgYCOa6BMYF24Qw
	 0OXMsFfoXq5Tw==
To: toke@redhat.com
Cc: Jakub Kicinski <kuba@kernel.org>,
	jiri@resnulli.us,
	cake@lists.bufferbloat.net,
	toke@toke.dk,
	j.koeppeler@tu-berlin.de,
	willemb@google.com,
	xiyou.wangcong@gmail.com,
	horms@kernel.org,
	pabeni@redhat.com,
	jhs@mojatatu.com,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	edumazet@google.com,
	victor@mojatatu.com
Date: Thu,  8 Jan 2026 20:12:14 -0800
Message-ID: <20260109041214.2918115-1-kuba@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260108-mq-cake-sub-qdisc-v7-4-4eb645f0419c@redhat.com>
References: <20260108-mq-cake-sub-qdisc-v7-4-4eb645f0419c@redhat.com>
MIME-Version: 1.0
Message-ID-Hash: XWV7FS5GAD336LSRNCJKMKJ3K6SQPHR3
X-Message-ID-Hash: XWV7FS5GAD336LSRNCJKMKJ3K6SQPHR3
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [net-next,v7,4/6] net/sched: sch_cake: Share config across cake_mq
 sub-qdiscs
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260109041214.2918115-1-kuba@kernel.org/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is an AI-generated review of your patch.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
net/sched: sch_cake: Share config across cake_mq sub-qdiscs

This commit adds support for configuring the cake_mq instance directly,
sharing the config across the cake sub-qdiscs.

> diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
> index deb9f411db98..4dbfee3e6207 100644
> --- a/net/sched/sch_cake.c
> +++ b/net/sched/sch_cake.c

[ ... ]

> +	if (tb[TCA_CAKE_AUTORATE]) {
> +		if (!!nla_get_u32(tb[TCA_CAKE_AUTORATE])) {
> +			if (q->is_shared) {
> +				NL_SET_ERR_MSG_ATTR(extack, tb[TCA_CAKE_NAT],
                                                         ^^^^^^^^^^^^^^
Should this be tb[TCA_CAKE_AUTORATE] instead of tb[TCA_CAKE_NAT]? The
check here is for TCA_CAKE_AUTORATE, but the error message attribute
points to TCA_CAKE_NAT. This appears to be a copy-paste from the NAT
handling code just above. When a user enables autorate-ingress on
cake_mq, the error will reference the wrong netlink attribute.

> +						    "Can't use autorate-ingress with cake_mq");
> +				return -EOPNOTSUPP;
> +			}
> +			rate_flags |= CAKE_FLAG_AUTORATE_INGRESS;
> +		} else {
> +			rate_flags &= ~CAKE_FLAG_AUTORATE_INGRESS;
> +		}
> +	}

[ ... ]
-- 
pw-bot: cr
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

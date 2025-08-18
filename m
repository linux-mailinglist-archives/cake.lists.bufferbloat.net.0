Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E40B29EEA
	for <lists+cake@lfdr.de>; Mon, 18 Aug 2025 12:19:20 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 01825C336FD;
	Mon, 18 Aug 2025 12:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1755512359;
	bh=VOm7jWMzK0LQtX/5OEQt6+ZwbUYKkez7mUl/dqgf850=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=MVfSJ4d8WaTJ+yL3XpMYRT79jMeCL49z2398RmWEc+UwAKyb8BCsnfceO/ur1na78
	 IOxqEY5H4Vv2Uy/PnuHbrpregCUFK+k1KcrFt78ydikxT5eT9WD/dgdb1i9isMpy8r
	 TmrB2TZ7rVYQvuJAdjEPawULXLeF25hnB3E+uVH/V+fPeGXTHbXzbW9xjqzHRbbeCe
	 6N/C0IGZ9wW/07x7+ElXc27HPCmicApjD00ZcLQk7BxyenWnl6Kz+YaKxziYwg9vFj
	 zuH0E3PQ5G8ZysIV0O+NB6awuaVDU3zMLrF6xmUi+3jskrqTBJ/wpgk8Qo1Xay5pQY
	 eropae8QQ95lA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1755512358;
 b=7ktZ83OEM/QCYF2mWW6PyyBZ6F5IwsC7gA4zZTXCZ25xIovHUeRjxqgahQtEb1Ph4CPAS
 d99fbGY+9Yx47vuQ4/ZiMYqSGjbTi/HQcrKB7bfCu/QDWrDaUai+jVJkBFuTI2hiCINweNH
 nmrvdJ3QI+tJDRvOliU5j6s6Opp/++A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1755512358; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=O0TtJmEBhgyhUTS90NSyxJ4fslHu2dMQMOI33V3uWPE=;
 b=tedLPgVtcZVxZW/nnLDsZqw8DlefNxClvVK/7CE98iMAoMxGM4dSnKCRAtZsiR8Hq5ZoC
 5QwtDd/gVPGAlLpVQvghjP7/5h10plNf21jmcs/8eRoyTl0iZiit6P5BgSMN35Ues22xvni
 280B0aLcj9pVjBBYeZ2ZK+gX1xi5/h0=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1755512356; bh=f30jZL5cYWfUn1vWNWyTFBHLrGVCX1FnWqrPVRvaIe8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=oHmj8Jkx7+QX4TFX9u+mNGH9lll/6ZJxEolXYC/ijdyXwxR2C+5597fmAdVFwYCOr
	 ZfA26R7i466ABzXTkI3LTnGLsXgC8alK9BqPbZFRabZgbNT+mKOerox65QxXMvhLl6
	 /918zRCr9t734sZaaOjGSMl8CNum1iAwoNAVmesHtQ11E8l6OgPKV/zKdAXh5Oy+f9
	 JX3t/4YLPo8rwNl6JDiXuSctqZG0/DhdqntT5As4Wylw37nNOY9MbL3z8g01IQ9VeF
	 UzEmZhCPJXXFGbbmeVga7OphjBIKJ+/CgBmTBXgZcxaK1ror7Y6QcMtY7Q0Vp+2fY/
	 DIDodlQTvZMtQ==
To: William Liu <will@willsroot.io>, netdev@vger.kernel.org
Cc: jhs@mojatatu.com, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 kuba@kernel.org, savy@syst3mfailure.io, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, horms@kernel.org,
 cake@lists.bufferbloat.net, William Liu <will@willsroot.io>
In-Reply-To: <20250817172344.449992-1-will@willsroot.io>
References: <20250817172344.449992-1-will@willsroot.io>
Date: Mon, 18 Aug 2025 12:19:16 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87a53xj5jv.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: SCYH7JC3YXVABOIWIMS7TWCVTSHWXQGA
X-Message-ID-Hash: SCYH7JC3YXVABOIWIMS7TWCVTSHWXQGA
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net 1/2] net/sched: Make cake_enqueue return NET_XMIT_CN
 when past buffer_limit
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87a53xj5jv.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

William Liu <will@willsroot.io> writes:

> The following setup can trigger a WARNING in htb_activate due to
> the condition: !cl->leaf.q->q.qlen
>
> tc qdisc del dev lo root
> tc qdisc add dev lo root handle 1: htb default 1
> tc class add dev lo parent 1: classid 1:1 \
>        htb rate 64bit
> tc qdisc add dev lo parent 1:1 handle f: \
>        cake memlimit 1b
> ping -I lo -f -c1 -s64 -W0.001 127.0.0.1
>
> This is because the low memlimit leads to a low buffer_limit, which
> causes packet dropping. However, cake_enqueue still returns
> NET_XMIT_SUCCESS, causing htb_enqueue to call htb_activate with an
> empty child qdisc.
>
> I do not believe return value of NET_XMIT_CN is necessary for packet
> drops in the case of ack filtering, as that is meant to optimize
> performance, not to signal congestion.
>
> Fixes: 046f6fd5daef ("sched: Add Common Applications Kept Enhanced (cake) qdisc")
> Signed-off-by: William Liu <will@willsroot.io>
> Reviewed-by: Savino Dicanosa <savy@syst3mfailure.io>
> ---
>  net/sched/sch_cake.c | 3 +++
>  1 file changed, 3 i
> nsertions(+)
>
> diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
> index dbcfb948c867..40814449f17a 100644
> --- a/net/sched/sch_cake.c
> +++ b/net/sched/sch_cake.c
> @@ -1934,6 +1934,9 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  			cake_drop(sch, to_free);
>  		}
>  		b->drop_overlimit += dropped;
> +
> +		if (dropped)
> +			return NET_XMIT_CN;

cake_drop() may drop from a different flow, so we can't unconditionally
return NET_XMIT_CN. We'll have to check the return code of cake_drop()
and only return NET_XMIT_CN if it's the same flow we just enqueued a
packet to (which is also what fq_codel does, BTW).

-Toke
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

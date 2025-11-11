Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FE0C4D3D7
	for <lists+cake@lfdr.de>; Tue, 11 Nov 2025 11:58:33 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 358BC94849D;
	Tue, 11 Nov 2025 11:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1762858713;
	bh=7BAS5aEn+HH6qR0YAnxe+G+wzVVwLJsT6TeAUC1tv48=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=HhEERVe9nhsyKGQ11Wt2UiJHY42iRy/ShAleZTyIQYLMkI+nZfd8ROw97Bg+seiBx
	 xmyRRmKCNjyPEN8DN1qHBVpRzjOMUxFrb1IvdYsk2w/SxMWe7e+z5+6HsXEHWzJ/7F
	 W43Nx53PRw5Cl/zouyH6SrXJF4MB8mNwm6gaqD/6YNQSUC1P3fPaHOSqkHBQF+BRgR
	 v9Ku2Q0wAAXJpB6nnYhhGn7eAkdaysoVApdFCiVsSOB6oz3W1tQWqv0g+2ytPBSoO6
	 t2xzp7wIM2hjWAX+ULZICUeQZC5rZzKI2Z7s7guomAMtOyiFGbI65Qa7Vv9tICwOHG
	 w3gIYrq9akjNQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762858713;
 b=UAAYZMmojT51mpTg8rtjWb1TNbPWQ3YSd9rQLGl6IbiKdrX32HI2DawBqDfQjQK2h+ve7
 OXZxJhuO2XRG2M9OSgWxVxK/FNtHt4WXVK2E5rG8IQSgfjiYEYpPoIZnMfq7Qmbmk+OkP18
 NDO/ea4DZ86qSFHzLUaYutu1Dy/vbr0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762858713; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=l4/GDOfwx5djJOmPKxMUYXusagokJCOubrXtN76TayI=;
 b=NWO3d1cRZu7MnntkYV+SrXjpgsJVFgsxG1mAYUiFtjZoKG4BT2adMiMqSIr7wrEsuwISN
 sbk2OZEmkmM50jAh9/sIkyddBuAtrrQjbkddCqIxe3DnoKsVQWSvnK5a2aQ6Yutjfc+Yvu8
 QRdtCLtBmCRjNfjMUZr0SrxdF8TCNfE=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1762858711; bh=SGEtQRTXbaAjEO3Xhru3pRr1LyZx7uhVks4PV8yKfv4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=qHQb63ujOCT8xknOAUaVDchjeviKs6RZiVO0LvgZhVHlfrKTF55n6+/aieLq+ow+w
	 APXzL+H4qFUJGUTGEKMU0TuHbNwNQQawf5dvdAuVAI2rEzJTR0qqC9bzqSP7HyDL0H
	 EC1vfQPpGdfyApOejNlF3JqIOT2zFGbo5hHFLbBLrHue6psYPbr81r4lGq8XJhkPtK
	 8KARxHzk3djGwpr3Dhz80kVs238yeBIo73bKwvmq8ul9roLvimL4EttiZccqEjZ9fE
	 k4RQ61bJUVoNWXsrzob5Jw8u+hmxnf9s5e50lA75ViOTR8ZFNwe06l06IuD50bt7xB
	 HXh9uSkdprIpA==
To: Xiang Mei <xmei5@asu.edu>, security@kernel.org
Cc: cake@lists.bufferbloat.net, bestswngs@gmail.com, Xiang Mei <xmei5@asu.edu>
In-Reply-To: <20251111072709.336809-1-xmei5@asu.edu>
References: <20251111072709.336809-1-xmei5@asu.edu>
Date: Tue, 11 Nov 2025 11:58:28 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <878qgcn8dn.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: SCRJCBEPBPHPDCHC5D4I5LQDT773WCX6
X-Message-ID-Hash: SCRJCBEPBPHPDCHC5D4I5LQDT773WCX6
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH V2 RESEND] net/sched: sch_cake: Fix incorrect qlen reduction
 in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/878qgcn8dn.fsf@toke.dk/>
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

Xiang Mei <xmei5@asu.edu> writes:

> In cake_drop(), the function qdisc_tree_reduce_backlog() is called to
> decrement the qlen of the qdisc hierarchy. However, it may incorrectly
> reduce the qlen when the dropped packet was not enqueued, leading to
> a potential null-pointer dereference (e.g., when using qfq sched as
> the parent qdisc).
>
> This issue occurs when the caller (cake_enqueue()) returns NET_XMIT_CN,
> causing the parent qdisc not to enqueue the current packet, while
> qdisc_tree_reduce_backlog() still decrements the backlog.
>
> This patch prevents invalid qlen reduction by verifying that the
> dropped packet was actually enqueued before adjusting the backlog.
>
> Fixes: 15de71d06a40 ("net/sched: Make cake_enqueue return NET_XMIT_CN when past buffer_limit")
> Signed-off-by: Xiang Mei <xmei5@asu.edu>

Thank you for the patch! I think the issue is valid, but I don't think
the fix is quite right - see below.

Also, this should probably go through netdev? Please include
netdev@vger.kernel.org and add a 'net' tag to the patch subject when you
respin (so it'll look like [PATCH net v3]).

> ---
> v2: add missing cc
>
>  net/sched/sch_cake.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
> index 32bacfc314c2..3a2ba9dfc22d 100644
> --- a/net/sched/sch_cake.c
> +++ b/net/sched/sch_cake.c
> @@ -1548,7 +1548,7 @@ static int cake_advance_shaper(struct cake_sched_data *q,
>  	return len;
>  }
>  
> -static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free)
> +static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free, u32 current_flow)
>  {
>  	struct cake_sched_data *q = qdisc_priv(sch);
>  	ktime_t now = ktime_get();
> @@ -1597,7 +1597,8 @@ static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free)
>  
>  	qdisc_drop_reason(skb, sch, to_free, SKB_DROP_REASON_QDISC_OVERLIMIT);
>  	sch->q.qlen--;
> -	qdisc_tree_reduce_backlog(sch, 1, len);
> +	if (likely(current_flow != idx + (tin << 16)))
> +		qdisc_tree_reduce_backlog(sch, 1, len);

Since cake_drop() is called in a loop, the number of bytes/packets
dropped may not match the packet coming in. So we can't just skip this.

I think the simplest would probably be to move the
qdisc_tree_reduce_backlog() out of cake_drop entirely, and then
replicate the logic from fq_codel in the caller. I.e., the bit where it
saves the qlen and backlog before dropping and calls
qdisc_tree_reduce_backlog() once after. So we'll end up with something
like:

prev_backlog = sch->qstats.backlog;
prev_qlen = sch->q.qlen;
while (q->buffer_used > q->buffer_limit) {
/*...*/
}
prev_qlen -= sch->q.qlen;
prev_backlog -= sch->qstats.backlog;
if (same_flow)
   qdisc_tree_reduce_backlog(sch, prev_qlen - 1,
				  prev_backlog - pkt_len);
   return NET_XMIT_CN;
}
qdisc_tree_reduce_backlog(sch, prev_qlen,b
				  prev_backlog);

/* etc */

-Toke
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

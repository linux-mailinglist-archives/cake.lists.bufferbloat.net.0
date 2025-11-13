Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ADEC579F6
	for <lists+cake@lfdr.de>; Thu, 13 Nov 2025 14:21:57 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id C3DD3956491;
	Thu, 13 Nov 2025 14:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1763040116;
	bh=Y2dJqWNskanH4I6zN5AMgyq+UQbTx5FIfw2SbyWPUmY=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=mFRgexc3LhXrJlcKEJB4x1Vr5DSt89KLrXVhF5EyA3ToB1mKDmBAK3xpeG/SZ+x6z
	 QspkWWx0y1g/eS9sdox/VuaNmy9Bc3XgPcm2MYoednaw5xlyeAEdjji7pUh6YHOlYM
	 YRNCxizdbZbnYCQHHkw2FKtbZJI34OKMU5jO2phvrmF+EnkjGiMg+xI7cN80raQwgg
	 YteE1uKogqo6672yqioezL7gzjvlKVWOYotKKJFRd+9ED6H/fpd87ZW1+5ems19XzW
	 5HaEBIK+rPLke0u4RxCeO3CIdyrdUMrizTNeuzB6dPNPkd8FmeHVLF+Gsa5ayEn94V
	 tlFKztn9UI+lA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763040116;
 b=IivzpFsBBwpJKYWhNPq7VGdvyXqKFoUSd+zFPGdL/1TiQnAh0oMANmmKXpPVN9Xwyuq49
 8/8x9sOBo/EsRoH1ayMLcJtR3+dq64MpV2ieUJfmamUfxs0SjyWbGFWT1k5ySUj7H/K/UkC
 ouo7PA8iF7oxco4C53D/Bc84abwe6gQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763040116; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=H1jB3FmGAE9C2WJHIs9utQFPTn6Vg9mTjn3NkoXxp4A=;
 b=PXkT0T92JvIKoKZmUkYlXclWzb1rDUBhd9aLVgd6bXv5o4oQTvdZzeXAFr+KjFHjKjcJr
 CGI5zJ5vwkyQATDcidlhwxo8N037VaFoHiRxgk1SmoThoZKX7MqfQFBhfieCI+hDSmgIkTe
 5U87I9I4NQE9WR4TPTQOwBpW1VRsnMQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1763040115; bh=O6l4vdIsHCK99eA/SnWM2kyLR+VrLR2rPpzCLtw7sBw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=eyNJzlxVGWiBPpcfE0be6NkmLGTpv94GnMj8d2uVta+gFGHm9ZmygRc/w4cyRov1d
	 fSKKy4eyK3fgkh+OMY8bBpKMRZjKS875y5KskBN/n0lvl2wBcKLaBqzpezw0SoSCZ/
	 IElWEufaIqQMRkgnuUPX/BezxEhKn+PhIsHxHXO78X6AFMZu5EzNf6K2J0gwtQPdJU
	 Ui1ElV7Z0d3GxKfn5MyyN5EAqWrg+bYyKwv+NKhBjZYxuZNph7AkKfesuZIIdrytsN
	 48MmapyG/TUvMIQHKj/4VSO4T258YVleRFZTtOsDWAS0UDQWeU4e4RHNKU2jgomgCg
	 2M1pCU/n59GCQ==
To: Xiang Mei <xmei5@asu.edu>, security@kernel.org
Cc: netdev@vger.kernel.org, cake@lists.bufferbloat.net, bestswngs@gmail.com,
 Xiang Mei <xmei5@asu.edu>
In-Reply-To: <20251113035303.51165-1-xmei5@asu.edu>
References: <20251113035303.51165-1-xmei5@asu.edu>
Date: Thu, 13 Nov 2025 14:21:54 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <875xbejcel.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: EQWK62EKVG7XS655JLP2L4VHSC7233DO
X-Message-ID-Hash: EQWK62EKVG7XS655JLP2L4VHSC7233DO
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v3] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/875xbejcel.fsf@toke.dk/>
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

> In cake_drop(), qdisc_tree_reduce_backlog() is called to decrement
> the qlen of the qdisc hierarchy. However, this can incorrectly reduce
> qlen when the dropped packet was never enqueued, leading to a possible
> NULL dereference (e.g., when QFQ is the parent qdisc).
>
> This happens when cake_enqueue() returns NET_XMIT_CN: the parent
> qdisc does not enqueue the skb, but cake_drop() still reduces backlog.
>
> This patch avoids the extra reduction by checking whether the packet
> was actually enqueued. It also moves qdisc_tree_reduce_backlog()
> out of cake_drop() to keep backlog accounting consistent.
>
> Fixes: 15de71d06a40 ("net/sched: Make cake_enqueue return NET_XMIT_CN when past buffer_limit")
> Signed-off-by: Xiang Mei <xmei5@asu.edu>
> ---
> v2: add missing cc
> v3: move qdisc_tree_reduce_backlog out of cake_drop
>
>  net/sched/sch_cake.c | 40 ++++++++++++++++++++++++----------------
>  1 file changed, 24 insertions(+), 16 deletions(-)
>
> diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
> index 32bacfc314c2..179cafe05085 100644
> --- a/net/sched/sch_cake.c
> +++ b/net/sched/sch_cake.c
> @@ -1597,7 +1597,6 @@ static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free)
>  
>  	qdisc_drop_reason(skb, sch, to_free, SKB_DROP_REASON_QDISC_OVERLIMIT);
>  	sch->q.qlen--;
> -	qdisc_tree_reduce_backlog(sch, 1, len);
>  
>  	cake_heapify(q, 0);
>  
> @@ -1750,7 +1749,9 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  	ktime_t now = ktime_get();
>  	struct cake_tin_data *b;
>  	struct cake_flow *flow;
> -	u32 idx, tin;
> +	u32 dropped = 0;
> +	u32 idx, tin, prev_qlen, prev_backlog, drop_id;
> +	bool same_flow = false;
>  
>  	/* choose flow to insert into */
>  	idx = cake_classify(sch, &b, skb, q->flow_mode, &ret);
> @@ -1927,24 +1928,31 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  	if (q->buffer_used > q->buffer_max_used)
>  		q->buffer_max_used = q->buffer_used;
>  
> -	if (q->buffer_used > q->buffer_limit) {
> -		bool same_flow = false;
> -		u32 dropped = 0;
> -		u32 drop_id;
> +	if (q->buffer_used <= q->buffer_limit)
> +		return NET_XMIT_SUCCESS;

While this does reduce indentation, I don't think it's an overall
improvement; the overflow condition is the exceptional case, so it's
clearer to keep it inside the if statement (which also keeps the
variable scope smaller).

> -		while (q->buffer_used > q->buffer_limit) {
> -			dropped++;
> -			drop_id = cake_drop(sch, to_free);
> +	prev_qlen = sch->q.qlen;
> +	prev_backlog = sch->qstats.backlog;
>  
> -			if ((drop_id >> 16) == tin &&
> -			    (drop_id & 0xFFFF) == idx)
> -				same_flow = true;
> -		}
> -		b->drop_overlimit += dropped;
> +	while (q->buffer_used > q->buffer_limit) {
> +		dropped++;
> +		drop_id = cake_drop(sch, to_free);
> +		if ((drop_id >> 16) == tin &&
> +		    (drop_id & 0xFFFF) == idx)
> +			same_flow = true;
> +	}
> +	b->drop_overlimit += dropped;

The 'dropped' variable is wholly redundant after this change, so let's
just get rid of it and use the prev_qlen for this statistic instead.

-Toke
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

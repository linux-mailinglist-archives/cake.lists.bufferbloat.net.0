Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 005FDC7FFB5
	for <lists+cake@lfdr.de>; Mon, 24 Nov 2025 11:48:22 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 5CB3C9B81DF;
	Mon, 24 Nov 2025 11:48:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1763981302;
	bh=KvtVCjHLfPc4yTwVMFvqW5cr7sViCAJfZGENU7jsZ8E=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=kV8c0cAmC62yqTHYwgzOmGyaF+ixWWwBqB0ainsrNSVUqfoUSpAxOFN61wM6xwhyr
	 GLSQ9YWP0vifx2qFC20tAG2VP0Wn9OoFYYmg+i8XCqJ7resU6QcuzhV8trTcCLxUji
	 Pxe2onkaUurYTXJMdgdj+YgJbdRlPcDZYwtuMR8xiO+bOhIfoVm9S1MJ0ANZcxPny8
	 6QT+wLtRkmErRLbNw2BQ8Bmancz0oB48BJ8/a0SvyTEsrapnC+Kg5vH8opjMbnHHrn
	 cggFjTyJaZq42+5lZygw7rFXBDO7ysilTB76+x4HIlz/4WFqg5q8CK0QGT0L5bBrvM
	 XQKFzyDDPbbow==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763981302;
 b=2L5ATd92z1RG4F2YbDZhVxBp1WAdVv7mcBV0WOTi3qkmlCDxNpN5DPftlM4AMebw70T6c
 94cn0yFkp1bjqNlTRqWBor7cArW/Gvf8vmcN/0anHmqXWliasrwupyz1kvJs6KYfqlSGMny
 xzOd7ROGRokuDCZM+1QBgLO3DpQ3Xvs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763981302; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=5ZY/Hrp+9FiSyzffU1wcpRUfUOhUAxYO7O9x2fetktQ=;
 b=VuV48vHt4Ldk5OnAtM0dUzI4N0qTC6rBqet4KYJRpZItOKwd7bDAhg/jbcRqOsM9wc6va
 oBu8EVVnhG3TJY22/d2q3DF8rPtZx2Ks6yGGj6SIdwMC7RwVtM1lAv+6cOX5X/yrP4vCm9z
 9Sd7Qq8Xyt1PmlK99JATs4Cve8zc+b0=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1763981301; bh=1yb3M4hfB/tKbjzz3y5h6f2pqjVegDPjjgujDu0OjoE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=qZqJq229HjzYDpjHhk1uIZgEV+Yk3kD3EwdI+5Fz2BXXf0/ndnxkvIOsFxFSXCLXn
	 FerNXDAs9BD7+bZo+kiL8/r9NKjy+FKV1OiNLcCBz4Ou7eyXxiFNga5uDJpZhWxVAu
	 VIyRh10bGvGoKibYlBpJxOc+FTsrZp2UX8mHqR+zCqVyneWSiN+gdDi4/FLOpj2N+B
	 vUorOeKIsQEarRVdCiKZLCFORoHG/rae3zOTJWQitk9b29lfuuFtQTqLnlaXucAPEl
	 Mc8DH5BqACua4r1J53Znepd1Q53xykfbwgto5D3Llt1X3XS22J3MYFXxYK3MLUQxcN
	 XHHMlOjAEZ3/Q==
To: Xiang Mei <xmei5@asu.edu>, security@kernel.org
Cc: netdev@vger.kernel.org, xiyou.wangcong@gmail.com,
 cake@lists.bufferbloat.net, bestswngs@gmail.com, Xiang Mei <xmei5@asu.edu>
In-Reply-To: <20251121232735.1020046-1-xmei5@asu.edu>
References: <20251121232735.1020046-1-xmei5@asu.edu>
Date: Mon, 24 Nov 2025 11:48:14 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87ms4bn1u9.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: 2K7FHRWCKJ6ZTSCRB4VEVTHI5GOPXEGD
X-Message-ID-Hash: 2K7FHRWCKJ6ZTSCRB4VEVTHI5GOPXEGD
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v5] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87ms4bn1u9.fsf@toke.dk/>
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

> In cake_drop(), qdisc_tree_reduce_backlog() is used to update the qlen
> and backlog of the qdisc hierarchy. Its caller, cake_enqueue(), assumes
> that the parent qdisc will enqueue the current packet. However, this
> assumption breaks when cake_enqueue() returns NET_XMIT_CN: the parent
> qdisc stops enqueuing current packet, leaving the tree qlen/backlog
> accounting inconsistent. This mismatch can lead to a NULL dereference
> (e.g., when the parent Qdisc is qfq_qdisc).
>
> This patch computes the qlen/backlog delta in a more robust way by
> observing the difference before and after the series of cake_drop()
> calls, and then compensates the qdisc tree accounting if cake_enqueue()
> returns NET_XMIT_CN.
>
> To ensure correct compensation when ACK thinning is enabled, a new
> variable is introduced to keep qlen unchanged.
>
> Fixes: 15de71d06a40 ("net/sched: Make cake_enqueue return NET_XMIT_CN when past buffer_limit")
> Signed-off-by: Xiang Mei <xmei5@asu.edu>
> ---
> v2: add missing cc
> v3: move qdisc_tree_reduce_backlog out of cake_drop
> v4: remove redundant variable and handle ack branch correctly
> v5: add the PoC as a test case

Please split the test case into its own patch and send both as a series.

Otherwise, the changes LGTM apart from the few nits below:

> ---
>  net/sched/sch_cake.c                          | 52 +++++++++++--------
>  .../tc-testing/tc-tests/qdiscs/cake.json      | 28 ++++++++++
>  2 files changed, 58 insertions(+), 22 deletions(-)
>
> diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
> index 32bacfc314c2..cf4d6454ca9c 100644
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
> @@ -1750,7 +1749,8 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  	ktime_t now = ktime_get();
>  	struct cake_tin_data *b;
>  	struct cake_flow *flow;
> -	u32 idx, tin;
> +	u32 idx, tin, prev_qlen, prev_backlog, drop_id;
> +	bool same_flow = false;

Please make sure to maintain the reverse x-mas tree ordering of the
variable declarations.

>  
>  	/* choose flow to insert into */
>  	idx = cake_classify(sch, &b, skb, q->flow_mode, &ret);
> @@ -1823,6 +1823,8 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  		consume_skb(skb);
>  	} else {
>  		/* not splitting */
> +		int ack_pkt_len = 0;
> +
>  		cobalt_set_enqueue_time(skb, now);
>  		get_cobalt_cb(skb)->adjusted_len = cake_overhead(q, skb);
>  		flow_queue_add(flow, skb);
> @@ -1834,7 +1836,7 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  			b->ack_drops++;
>  			sch->qstats.drops++;
>  			b->bytes += qdisc_pkt_len(ack);
> -			len -= qdisc_pkt_len(ack);
> +			ack_pkt_len = qdisc_pkt_len(ack);

There's a qdisc_tree_reduce_backlog() that uses qdisc_pkt_len(ack) just
below this; let's also change that to use ack_pkt_len while we're at it.

>  			q->buffer_used += skb->truesize - ack->truesize;
>  			if (q->rate_flags & CAKE_FLAG_INGRESS)
>  				cake_advance_shaper(q, b, ack, now, true);
> @@ -1848,11 +1850,11 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  
>  		/* stats */
>  		b->packets++;
> -		b->bytes	    += len;
> -		b->backlogs[idx]    += len;
> -		b->tin_backlog      += len;
> -		sch->qstats.backlog += len;
> -		q->avg_window_bytes += len;
> +		b->bytes	    += len - ack_pkt_len;
> +		b->backlogs[idx]    += len - ack_pkt_len;
> +		b->tin_backlog      += len - ack_pkt_len;
> +		sch->qstats.backlog += len - ack_pkt_len;
> +		q->avg_window_bytes += len - ack_pkt_len;
>  	}
>  
>  	if (q->overflow_timeout)
> @@ -1927,24 +1929,30 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  	if (q->buffer_used > q->buffer_max_used)
>  		q->buffer_max_used = q->buffer_used;
>  
> -	if (q->buffer_used > q->buffer_limit) {
> -		bool same_flow = false;
> -		u32 dropped = 0;
> -		u32 drop_id;
> +	if (q->buffer_used <= q->buffer_limit)
> +		return NET_XMIT_SUCCESS;
>  
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
> +		drop_id = cake_drop(sch, to_free);
> +		if ((drop_id >> 16) == tin &&
> +		    (drop_id & 0xFFFF) == idx)
> +			same_flow = true;
> +	}
> +
> +	/* Compute the droppped qlen and pkt length */
> +	prev_qlen -= sch->q.qlen;
> +	prev_backlog -= sch->qstats.backlog;
> +	b->drop_overlimit += prev_backlog;

drop_overlimit was accounted in packets before, so this should be += prev_qlen.

-Toke
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

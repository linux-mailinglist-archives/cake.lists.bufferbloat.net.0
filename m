Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C340C7FD66
	for <lists+cake@lfdr.de>; Mon, 24 Nov 2025 11:20:22 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 63DDA9B7F6D;
	Mon, 24 Nov 2025 11:20:20 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=mFEf9IE5
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763979620;
 b=0DnoY1PXbuXElmyWNDGuJx2SCgelNnYI71z74ruOrQgsYyRbkYnXRH2bVGTpdqWJYIZJV
 7zoVfRJD2gix+9mgVZHaI5XQrAq/47WTXYEdOka1RUWk3NDCmfUI5kaQZQ7+ogd47AlUH1g
 UJr2ryFxshOacrr9quJZ6ar67fdKiTM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763979620; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=XVqlLX0vdjpDiuPfE6nupEc88fSNjdr+pXR8OOcqPaQ=;
 b=cd8iXSg8IBoSKx9H90n0JETYoj1YfZSKZYgbRzn2epV9/J6YD5FnSWLOsR4tRDpmGW263
 IFSXBh9Aubf1GiVTjMf8pEwm9JmIpN275/ZDNJ4w9aLEC8tCdNyvd2i7vE7EEjZKZo6kCyN
 87B889vT2zz+S4AwxdAOMOYVl771ERA=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
	by mail.toke.dk (Postfix) with ESMTPS id 2D1379A8458
	for <cake@lists.bufferbloat.net>; Fri, 21 Nov 2025 23:26:20 +0100 (CET)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-b8c0c0cdd61so2739056a12.2
        for <cake@lists.bufferbloat.net>;
 Fri, 21 Nov 2025 14:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1763763979; x=1764368779;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q+aXvindxkc7KUUXaP2TeHzXNGrm9JvSAlbMjmocB9Q=;
        b=mFEf9IE5NSdnd2LEyn4Yx4JWb7SAVOnlWbSAEI6MqOyt0tcXmn+8DJ8kGr0zRckLB1
         QrNW0tvVzcYUW/Bnu+oE2CNpaKrW+NCYF/Lq6KfCLbBfpybShts1VelLUV5k4tTkS4fX
         fEGPFc0TdZov425WpDC8O+zJQAhWyA3hzo0BQ2e23UDIsZBdDCLVgxApLXLvZOWEGkVk
         12+znKF+ckbvK+fjIpT3QeoAbETaBCGrNSPczHCKZVr1YBv4z97hmXIEqPJr1kXoyrS1
         cHYrQdH/ECm2JovGL8o5r26LezuHM6D+yECz1mHBqVzLCGkKiLX/UM1ptIa6jNJwXIWk
         5F7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763763979; x=1764368779;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q+aXvindxkc7KUUXaP2TeHzXNGrm9JvSAlbMjmocB9Q=;
        b=W8uBZ2xhaJEl3NPf1s+vQFHeuj0jKvGO9gdiJ5rLSlKw3FSIA+VsiTGWp1cSD7QpDO
         auk+fvIOc6pUFEreYXtNTc2lhiZy0kVnpguNWH6vWC0MjG2zqn1ympJQDab1NVIde7k9
         HoLP30PgM72xElNjTtaZHbeqb0Ekzb6Bt8vJtDf+ZiTkOzgRcj4XlzpndqzjHffRILRq
         OeQm/QqUwddQN7gkyKBiKiJ3J8ya79Xi/xzphzUiNzNCxLVS3BQYAbz5MjvZM5UFyhj8
         gUBF2wjD2aNLleMZ2oHTOP5wyKsvQa+a7dYZ9iMM6l3vvITOPsLeGW5/fvOknLgirC5p
         HM0A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZgQ0+Ur/0kvzchlIdSQnaOulNBPex9XAL8Hc+IaUGSrvVtNBFor7cXlEiiBCjPQyt5Kcq@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzdm7QMTgFh/tUm6JRmVva1zpVnHY41DZw683qVoJzGfeFVV/rq
	PnT60Xhc/hTJ12nwyXwrM54Zxxg9tYvrTnKMddOddO4PYqsHGLfoCjfXaxkkD82Ufw==
X-Gm-Gg: ASbGncuDLUm0uYPIC6RTzXE1tPC9QTOez2ZVUHMpD8lnthgcJDqadhVbgnMB9Dt+q7h
	24BAIgGpjzRW9HbQOkuuTxOVUSfRPxI35W29icErLp7u5SjJuVVlbCDdmRLXoDwDf85WL74QX7I
	lNS2f3k54iD9KkJunH0+OTlHK1SA7ewusx2ILJFu2k1QNsnI07czEdDFJbvkMCmxHdyMlBymjNb
	NHUu2gktgxnq8fZBWoTGgmCYCCYQb7uhnyAvIMVnsjmiG7M6OReS+pLFZuOqZUvQbWa95n2YMCN
	TQN2YZAxo+KlaUuJLq20p0KzIwY1Na9GQbfnUVQTK3FBG+eVsHE/MMWQxEnFABzw8nmY3E8RyxL
	O+e9QOed/nOBwzbOqevWJYDNdxN+KBXNDYbiKJjpJ7VLCkPDg6vYGSKOMRAq7nV8vEUUPcxYxPQ
	KKozE8q7TRg7pHq/2PBXyU14vfJ6Y=
X-Google-Smtp-Source: 
 AGHT+IFRLERDz2rFOTDMUeMsS8Yz4Oy8FSoCEMV6s7E9XetdpFYay4lU2ivFQzZtS8f4qiivAYK04Q==
X-Received: by 2002:a05:693c:8151:b0:2a4:7ea4:3ece with SMTP id
 5a478bee46e88-2a7190a307cmr1212595eec.7.1763763978890;
        Fri, 21 Nov 2025 14:26:18 -0800 (PST)
Received: from p1 (209-147-139-51.nat.asu.edu. [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2a6fc3d0bb6sm34957846eec.2.2025.11.21.14.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 14:26:18 -0800 (PST)
Date: Fri, 21 Nov 2025 15:26:16 -0700
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org, toke@toke.dk, xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID: <mzxmprnusjqma7ykyowwlzxqaezui3enrjav32cukwpzv4i6si@hwhqiabzyotb>
References: <20251121221954.907033-1-xmei5@asu.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251121221954.907033-1-xmei5@asu.edu>
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: VSJRGWL6GOYAD47IYFPBQE4JG5DZNROA
X-Message-ID-Hash: VSJRGWL6GOYAD47IYFPBQE4JG5DZNROA
X-Mailman-Approved-At: Mon, 24 Nov 2025 11:20:19 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v4] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/mzxmprnusjqma7ykyowwlzxqaezui3enrjav32cukwpzv4i6si@hwhqiabzyotb/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Nov 21, 2025 at 03:19:54PM -0700, Xiang Mei wrote:
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
> ---
>  net/sched/sch_cake.c | 52 +++++++++++++++++++++++++-------------------
>  1 file changed, 30 insertions(+), 22 deletions(-)
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
>  
> -		if (same_flow)
> -			return NET_XMIT_CN;
> +	if (same_flow) {
> +		qdisc_tree_reduce_backlog(sch, prev_qlen - 1,
> +					  prev_backlog - len);
> +		return NET_XMIT_CN;
>  	}
> +	qdisc_tree_reduce_backlog(sch, prev_qlen, prev_backlog);
>  	return NET_XMIT_SUCCESS;
>  }
>  
> -- 
> 2.43.0
>

Thanks Toke for the suggestions and explanations. The new version removes
redundant variable (dropped) and hanles the ack branch correctly.

Original PoC can't crash the patched version and the new patch passed the
self-test cases:
```log
ok 1 1212 - Create CAKE with default setting
ok 2 3281 - Create CAKE with bandwidth limit
ok 3 c940 - Create CAKE with autorate-ingress flag
ok 4 2310 - Create CAKE with rtt time
ok 5 2385 - Create CAKE with besteffort flag
ok 6 a032 - Create CAKE with diffserv8 flag
ok 7 2349 - Create CAKE with diffserv4 flag
ok 8 8472 - Create CAKE with flowblind flag
ok 9 2341 - Create CAKE with dsthost and nat flag
ok 10 5134 - Create CAKE with wash flag
ok 11 2302 - Create CAKE with flowblind and no-split-gso flag
ok 12 0768 - Create CAKE with dual-srchost and ack-filter flag
ok 13 0238 - Create CAKE with dual-dsthost and ack-filter-aggressive flag
ok 14 6572 - Create CAKE with memlimit and ptm flag
ok 15 2436 - Create CAKE with fwmark and atm flag
ok 16 3984 - Create CAKE with overhead and mpu
ok 17 5421 - Create CAKE with conservative and ingress flag
ok 18 6854 - Delete CAKE with conservative and ingress flag
ok 19 2342 - Replace CAKE with mpu
ok 20 2313 - Change CAKE with mpu
ok 21 4365 - Show CAKE class
```

Best,
Xiang
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

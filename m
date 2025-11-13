Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 387B0C5764F
	for <lists+cake@lfdr.de>; Thu, 13 Nov 2025 13:28:06 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 769BF956063;
	Thu, 13 Nov 2025 13:28:05 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=q2thU4ja
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763036885;
 b=EhFEZ2bXgl9ZytsE+KfyafKmjQJdCMZ2lp3vRDehBuSlNTentToTvhIGtlRPUd9V/lCs6
 nkmCZEC7nFf4AmlblxrrafXtwTswN4pxt03iOj35L9UjwzZ5Lfcq+q0u7LvQRc/zsEQJ7Ab
 B+SFUyNIckPvMzFXikO3VoxUsVhueUs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763036885; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=KXsMO+c4JQKLeTdaZEDT7B42nF3tGlgyrcVnmfHNEMc=;
 b=TEH3Nb0HG6AIQQtVIIDxFnzGpQcRj50ENH1M9jUetMdp+JzLaUwSiLUZMqd+FQmaIvtG2
 zWKMKax+iOa1SxPlkyeAsiCK9uoS68P91h6B6wbdP/eV+Pd7PHUcuV81Ate2pF8luiZEGNf
 YcucfHWVviGjE+aChgG/8vhnP2C6SEI=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com
 [IPv6:2607:f8b0:4864:20::c2c])
	by mail.toke.dk (Postfix) with ESMTPS id C2032953A62
	for <cake@lists.bufferbloat.net>; Thu, 13 Nov 2025 05:06:03 +0100 (CET)
Received: by mail-oo1-xc2c.google.com with SMTP id
 006d021491bc7-656b4881f55so230784eaf.2
        for <cake@lists.bufferbloat.net>;
 Wed, 12 Nov 2025 20:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1763006761; x=1763611561;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I9zz0xslH/LPN0+Jg1QGCGjc2cuXrA8U9GcfZOgWYHM=;
        b=q2thU4jaHgtkQqxTotchXQZ5asYHvB+Sqs2P1/aKWfuKLz4FyXeKtI8K5D+ZFLzvZV
         GF/cpgJ6ishI1J8fDXB15VJOJqJbIbJFEr3X6iE652zoXT4eSXe1EniJ5/lUgYjmq8VC
         QhugE1tB5JW2z45t/pSVq38Lu0Yj0mlip5VuJl4/Nw5fszPUucxUpc/NO9Hg8dV9Ku31
         UwgtZgHkYr/WoT+GJ4KrDGm/47uUR8gNR0r9odPPPvhbPfZ/xJN//BRow4d91xhYxiMV
         9JMkCnNEtgwW0k3vbh3cuYCoFcQptoq1aPkp2+eWIOQA5pctjeQXVmD6Ux0SkWwlTHDI
         0HiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763006761; x=1763611561;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I9zz0xslH/LPN0+Jg1QGCGjc2cuXrA8U9GcfZOgWYHM=;
        b=wpiA1quOXizbA3RWMx1wjJZ0jjrmEJFdMi9WcBNbCreEEBIuwL424adWbvwxiRK6/I
         YEsrqc1AnW02B88X2Rjfz19gA2monbRvgmk1s/kJYu3Uw9FtFbbDlS1+V/8CzMNiLTxu
         V7Y3QOu57f+eLSC4UdrULk94UO0Dc8mJnd1+Uqddu1q9XJpGx4czlCFbe4EYgqy2abmy
         9YlqFsBPL9MRk7ayeCEj1Mef53U2qZYCUeVbYWw6OCo+YeWeX92eE5eRcwz0mxpdx2b9
         Zx7WoTnX0SJ8B8QvjQX3Ur+ff5U5trd8wIR07m0SWJgMiMp+8uxjE4dzkkrPlCAwR4PB
         R33Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVS/LTAzWbKhZaavv1NUtmXGr176RVF8Yb8uRC8Ts/4HOh8jA6IVRO4ABn0gmgmrj+UCdH6@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yxc9GiUteQgse13AeXEeIfut8hR/KU6cD5WMjDU0O1uEDt4Hyu3
	e49h2CmW6ckTZSH43CzVtJwH2KVNmMbdCesxw5xjIY1pAL6SJQ0ZDu8Qt4a4TJwv4Q==
X-Gm-Gg: ASbGncthAlMBdivHxO/s+L8jRTTrBOmwGIKMBxdMdDerhcsuppF1GdZeYzLhDSrJ1Hk
	5OESnxlGvTKnczwce44Svo/U+5f/qgwaplA2nRYwc0a1tq2WcYizw6qwlAlxTy2fyn0ygOoY5m4
	m1Iu6tY0kbsL27uei4OAs1iQGXIfbEUnQhJPdpToSs22kEOVTXGEQQrP1K6D+tbFfmcELy2Uj1H
	znSDa8BzxCEHlwT1SeS9Aqg4oLosQUSOppauuGfSpNm3Ga0tu0IDRsbdn3dzMsXbNe+rjt8Z9mO
	Fb+aSXwa4o3md/rmHB6lFxtA5OJm1W+GB8zTM/dZqMjH2tR+6gGJDp3WZ39/m2CGD9AdmyvEcV9
	lWtMeY/moanVTIlzWTbAWWuw87sH4nV+6X7lHLRtaA4YCHZq7AJQkDcou+76Fdp1G/HU/SH0NL2
	wom3EHWm6kzZUX/YAl
X-Google-Smtp-Source: 
 AGHT+IFjhw6PEACSVDzbXsL+3dJh/sE0YMUVqW/BTn2ChI57pQzedU1QRn8C1Lugbn+7VEqlX+HHog==
X-Received: by 2002:a05:6808:4f69:b0:44d:a3ed:ccfc with SMTP id
 5614622812f47-45074549bbbmr2332025b6e.36.1763006761164;
        Wed, 12 Nov 2025 20:06:01 -0800 (PST)
Received: from p1 (209-147-139-51.nat.asu.edu. [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 006d021491bc7-65724dd7c86sm462957eaf.13.2025.11.12.20.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 20:06:00 -0800 (PST)
Date: Wed, 12 Nov 2025 21:05:58 -0700
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org, toke@toke.dk, cake@lists.bufferbloat.net,
	bestswngs@gmail.com
Message-ID: <aRVZJmTAWyrnXpCJ@p1>
References: <20251113035303.51165-1-xmei5@asu.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113035303.51165-1-xmei5@asu.edu>
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: 6YRGGI5WTUM7CPED4GNGFB6JAVYSAXE2
X-Message-ID-Hash: 6YRGGI5WTUM7CPED4GNGFB6JAVYSAXE2
X-Mailman-Approved-At: Thu, 13 Nov 2025 13:28:03 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v3] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/aRVZJmTAWyrnXpCJ@p1/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 12, 2025 at 08:53:03PM -0700, Xiang Mei wrote:
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
> +		dropped++;
> +		drop_id = cake_drop(sch, to_free);
> +		if ((drop_id >> 16) == tin &&
> +		    (drop_id & 0xFFFF) == idx)
> +			same_flow = true;
> +	}
> +	b->drop_overlimit += dropped;
> +
> +	/* Compute the droppped qlen and pkt length */
> +	prev_qlen -= sch->q.qlen;
> +	prev_backlog -= sch->qstats.backlog;
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

Thank Toke for the suggestion to move qdisc_tree_reduce_backlog out of
cake_drop. It makes the logic cleaner.

The patch passed CAKE's self-test:
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

There is still one problem I am not very sure since I am not very 
experienced with cake and gso. It's about the gso branch [1]. The slen 
is the lenth added to the cake sch and that branch uses 
`qdisc_tree_reduce_backlog(sch, 1-numsegs, len-slen);` to inform the 
parent sched. However, when we drop the packet, it could be probmatic 
since we should reduce slen instead of len. Is this a potential problem?

[1] https://elixir.bootlin.com/linux/v6.6.116/source/net/sched/sch_cake.c#L1803

Thanks,
Xiang
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF8BC4D0F2
	for <lists+cake@lfdr.de>; Tue, 11 Nov 2025 11:33:22 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id C192A948178;
	Tue, 11 Nov 2025 11:33:22 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=BaBmW78/
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762857202;
 b=zLfctuQn6riYDPtrHzy/r5sR8UPAltB51HtBEIaadUW6CEhmo9kyHtWDQfGttQdkEdC0o
 YxoKdZyZywgSPmA4iK0vJesMvOhez1btNUqRtpGUAfQ4mW22OzCR3SmotZAk+eO8uGCtceI
 bHikNVR8HWf+UnbC3V8rXvx9S0WN/5I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762857202; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rZsLvTZfE0A0Zql4R6SOfN3tIPP9e28DMikC8uzjpQ0=;
 b=p/JXZQRN+FLx8G8+eakmmLyYUn5v8/ue0Ybcr4X2aDRCPVWlBhTR2DKbhjM/fLYmdSHNC
 +aJvbozvpA25G+uar4Zri3JsB7dbSZn0NK/tFMPY4CNkYvrEgFh5GUHewhRrzKGIb87B/dN
 1afxkt/+QA/un9FFSDQxYzfgRlYU4nY=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
	by mail.toke.dk (Postfix) with ESMTPS id 8DE7B946B99
	for <cake@lists.bufferbloat.net>; Tue, 11 Nov 2025 08:31:48 +0100 (CET)
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-3d5bb03d5c2so2162076fac.1
        for <cake@lists.bufferbloat.net>;
 Mon, 10 Nov 2025 23:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1762846307; x=1763451107;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TSCYdOHs7yyx6OplHBRdU2g9qI8cYL/sZP0stxNetGg=;
        b=BaBmW78/APdX3SiCScK3/GQ1/yWugxGdUqQRY6L+UDos5O/9ZIhblgVx6u+mB4A9wx
         Zs+7yqYjjLQZaYI7+zz+ddb+DbIne4O8bOWmHhMtCcLTIea7nVUVJlaNIhc7CDTWWk0t
         qytT1yncxJDs1XDv1+aL3s0eyUHaChw4ziJG5yqHy4jhrMP3dMzbSiGpiNJfmlAbPG9b
         +nHKcObW+396k5dZLB8vdab6K4vk2tDVnGp05zAFmmSNoEanUMbo2SO1WAqBcPZzfLou
         qwOVcmrgN/8S2FdfVmpcdTar5Fn0NeWqOKdSTuEGvWUr+9+/CIGpQBnBg905aRSJHLtV
         81pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762846307; x=1763451107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TSCYdOHs7yyx6OplHBRdU2g9qI8cYL/sZP0stxNetGg=;
        b=aS/QyDBmZlUW7XlTNTTHFOeLKMzlXb4ODDociN+6jQ7p48VpD2Utb7dOQ0mH2szLee
         xn6MxTRZWZYB6qoHCXsrocRtDDrvgn9u6MxrHgKCtYCY4zN13w2w2FUwg3KkOpHjATdm
         JEe9+y3U/M3cfuGrhWtsJI4GCrcqNq/NGX2d0OcvqpwojN9h1PwKTD4EMaRV2cjDZhws
         y7/6/X5pcy4QxJ+Hhqq5O6FadITxR2SQPKyWFJkCoKLgWuTMSzkBWzTfBZ86zejZLSv7
         UHAVuG8fygeoit457K43mMBLlcNbJFSNEJVPmgyvS/MxknbkUnltRLqnhEvLF6N5XGUr
         VAKA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXKForMSZ+GDQDbRuv2mgV5UYQZ+dT0D0ZWzFsilt6CbHH4rSNqXN3YOBPJK9bcVZz091YH@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxciAXIAwy3JKXNr6k+mewha4m4MSJxTEBtZ7WyfpkKmp6QcksC
	TC/25Xq+MVvV0dxXde8RrAp4/p4l2wkc+QqfC7jA6ljZ3dI/dze+Wh5gC4FVJ66ELDU0lzLDYNv
	Oht8=
X-Gm-Gg: ASbGnct8zQmywQYheKnhidXtudEeZ5BH/THhIAdJ0/nKxrj6lIN2gFzf/8JX5qrlC+R
	TnIUhtfw1W3EUtAF+DKBvfFjiO3bNjzzJISiEm7curCkjhVxJwuMn0CgkNAZNnO3slEtGA4zDo7
	Gj6XM0rTcmaD8tVg/NmdrLq+8XnGVYykbzJu8fiP58PF6cLw1VM4e0PGYeYitk8/QQv6jisw2Oj
	mmZfeYCP+679cQCr9oc+gy3AvOftUtA4OSM4ow7qCt7KMpXK93y/zbJ6/uzPsrO2s6OEH21pahU
	OTWKXeNz2U7HiQiSMVgYJekOAsFToMwhjpGh1xGgFR5oy0ef4CRiQjbejJ0mpc0fGxEVXiGfoag
	eEa07GMHVid3asvovhTAKtoo2AI6dxRjo5Xljqz99BcFPdpv/OXmyn48Okv9+2wESFv5BTQ==
X-Google-Smtp-Source: 
 AGHT+IG5/oztljMYfi4Rxh18MGMlQm/jDJIc5ns7q/rcq/deCEb0UvSnLJUPWAnLkaBZaLORm/MvKg==
X-Received: by 2002:a05:6870:7618:b0:3d3:cac:30d1 with SMTP id
 586e51a60fabf-3e7c1ed05d0mr6177999fac.0.1762846306710;
        Mon, 10 Nov 2025 23:31:46 -0800 (PST)
Received: from p1 ([2600:8800:1e80:41a0:e90c:97d2:9818:69df])
        by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3e41f13d2d3sm7651599fac.15.2025.11.10.23.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 23:31:46 -0800 (PST)
Date: Tue, 11 Nov 2025 00:31:44 -0700
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: toke@toke.dk, cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID: <aRLmYNiL--3ReZJd@p1>
References: <20251111072709.336809-1-xmei5@asu.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111072709.336809-1-xmei5@asu.edu>
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: IBTK2UUYCXZURC33H73ZNRO5YZ7LNASF
X-Message-ID-Hash: IBTK2UUYCXZURC33H73ZNRO5YZ7LNASF
X-Mailman-Approved-At: Tue, 11 Nov 2025 11:33:21 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH V2 RESEND] net/sched: sch_cake: Fix incorrect qlen reduction
 in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/aRLmYNiL--3ReZJd@p1/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 11, 2025 at 12:27:09AM -0700, Xiang Mei wrote:
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
>  
>  	cake_heapify(q, 0);
>  
> @@ -1934,7 +1935,7 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  
>  		while (q->buffer_used > q->buffer_limit) {
>  			dropped++;
> -			drop_id = cake_drop(sch, to_free);
> +			drop_id = cake_drop(sch, to_free, idx + (tin << 16));
>  
>  			if ((drop_id >> 16) == tin &&
>  			    (drop_id & 0xFFFF) == idx)
> -- 
> 2.43.0
>

This is a resend patch since I didn't cc the correct maintainer.

The POC of the fixed bug is as follows (NET_ADMIN is required):

```sh
tc qdisc add dev lo handle 1: root qfq
tc class add dev lo parent 1: classid 1:1 qfq maxpkt 1024
tc qdisc add dev lo parent 1:1 handle 2: cake memlimit 9
tc filter add dev lo protocol ip parent 1: prio 1 u32 \
  match ip protocol 1 0xff \
  flowid 1:1
ping -I lo -f -c1 -s64 -W0.001 127.0.0.1
tc qdisc replace dev lo parent 1:1 handle 3: netem delay 0ms
ping -I lo -f -c1 -s64 -W0.001 127.0.0.1
```

Please enable the following configs to support necessary qdiscs and filters:
```config
./scripts/config -e CONFIG_NET_SCH_QFQ \
-e CONFIG_NET_SCH_CAKE -e CONFIG_NET_SCH_NETEM \
-e CONFIG_NET_CLS_U32
```

The intended crash is also attached for your refference
```log
[   13.816429] BUG: kernel NULL pointer dereference, address: 0000000000000048
[   13.818414] #PF: supervisor read access in kernel mode
[   13.819946] #PF: error_code(0x0000) - not-present page
[   13.821466] PGD 0 P4D 0
[   13.822262] Oops: Oops: 0000 [#1] PREEMPT SMP NOPTI
[   13.823785] CPU: 1 UID: 0 PID: 226 Comm: ping Not tainted 6.12.57 #4
[   13.825583] Hardware name: QEMU Ubuntu 24.04 PC (i440FX + PIIX, 1996), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
[   13.827700] RIP: 0010:qfq_dequeue+0x166/0x3b0
[   13.828627] Code: 59 48 0f af ce 48 89 43 10 48 89 de 4c 89 ef 48 01 c1 48 89 4b 18 e8 99 f0 ff ff 4c 89 ef e8 c1 f6 ff ff 48 89 85 b8 01 8
[   13.831956] RSP: 0018:ffffc900004c3a68 EFLAGS: 00010246
[   13.832889] RAX: 0000000000000000 RBX: ffff888102b9d280 RCX: 0000000000000000
[   13.834230] RDX: 0000000000000000 RSI: 0000001a80000000 RDI: ffff888100a1e180
[   13.835530] RBP: ffff888100a1e000 R08: 0000000000000001 R09: 0000000000000000
[   13.836800] R10: 0000000000000000 R11: 0000000000000000 R12: ffff888102b9d2c8
[   13.838069] R13: ffff888100a1e180 R14: ffff8881029a3e00 R15: ffff888100a1e000
[   13.839340] FS:  00007f91c48f4c40(0000) GS:ffff88811c500000(0000) knlGS:0000000000000000
[   13.840742] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   13.841781] CR2: 0000000000000048 CR3: 0000000102ad8000 CR4: 0000000000350ef0
[   13.843049] Call Trace:
[   13.843568]  <TASK>
[   13.843972]  __qdisc_run+0x87/0x570
[   13.844662]  __dev_queue_xmit+0x55b/0xe10
[   13.845427]  ? sock_alloc_send_pskb+0x1fb/0x230
```

The patched code passed related self-test (qdiscs/cake.json):
```log
1..21
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

Feel free to ask any questions about this bug/patch.

Thanks,
Xiang
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

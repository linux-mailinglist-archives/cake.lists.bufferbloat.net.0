Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 717A1C5764C
	for <lists+cake@lfdr.de>; Thu, 13 Nov 2025 13:28:05 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 492D195603D;
	Thu, 13 Nov 2025 13:28:04 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=tCHdfpcx
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763036884;
 b=Boh219D8h2+H5LACV4KnsJfUocrQLfIF2U6X2dTuZrvXo83nTLmFEcnQV21m5iDOjvHBG
 lNKqcPyeEAMzsw8Q0NN9MJAuaqIXwEyhA4wI8c3nPC7E+L/Cbu4CvH5UJIguYQRuJlXDygF
 j9Cdj68TsyR/WINi9L/vMH64LkvZpv8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763036884; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=DQdENyUl/TPQcx3jp/Co6pFQMYa7ht3sFh13zcGBScQ=;
 b=31Jjni96t+tWeARw3PXMNW6YG0dBx90nWvxZEIctg4HktzoeF34zYE4pDj5A7r53zsnQy
 qU2JNa7yAjeZEkp54pTmrlPJDKFfBGxWPqBexE2phZFUtBM4lvtkbPrH89hgRU/U+glbMZt
 xYPAFr1flQihHL7CmH6b+QzZ2ywaZY8=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com
 [IPv6:2607:f8b0:4864:20::32b])
	by mail.toke.dk (Postfix) with ESMTPS id 93A89953950
	for <cake@lists.bufferbloat.net>; Thu, 13 Nov 2025 04:53:11 +0100 (CET)
Received: by mail-ot1-x32b.google.com with SMTP id
 46e09a7af769-7c6da42fbd4so177854a34.1
        for <cake@lists.bufferbloat.net>;
 Wed, 12 Nov 2025 19:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1763005989; x=1763610789;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=caCuzpiBlKkYiDUgrdd42Zl/DdzHOq3t35PmX7TkYt0=;
        b=tCHdfpcxtqc0aEQ+P0/9xLoVgCqzeQkfhhlu4uVn6rJ36vzx/FtGsh42gCKpcQUygE
         6K1P0reGJrH9Z3+DzGY0cspjetImz1BoHy+UqB932PhTLnJm5yKQMC1Su1T1lGuXN2Ss
         dr5ghpPQ3YBNASXUxygi9y/hJb4mk+9eXq5KzjSDimzsErfVpoC6NiIXGyujKnJ4Tfj8
         oqKfNuFR20NKvkSLXvyP3NhvuJy7H/c09wGcmHhpOgK5AYcFszFG/lYGwuhaeqf0k8ur
         LYr26fiBCWcIW2fcDF0y4wqoE00DVWvEfECeU+B2Fl/D1ruOn+VGsb4fDWi1H4IJLaji
         bOsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763005989; x=1763610789;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=caCuzpiBlKkYiDUgrdd42Zl/DdzHOq3t35PmX7TkYt0=;
        b=MSh6xvUQ8FKzUhWDP7GCwW6R9P2wGQuYuzOBO4H8LcNrd1f0IZ1qmwrg6lOJFePWxT
         2/A9D/FgLiFWb6SqiNQywSzPlGcN2FDmU/vwcrcKd19CZUllCXvHJmm5pMhkoDoNsIVJ
         rNWuVo6iJPiXW98uX+zn2ydauZKFdWlzCyLVOutvxXy9kW7Z0B+nJFLFHnSfqajJ+YQ7
         ANPdPYx10wcvnkw8PYtmkFmUVLcqgQRg9KKxHYnDpFdKx7LR3mbbkIitfp7Vg1KkCqYv
         RwAjfVA8UIt4f8pnUJAkWXCT4gEwheYUWjODnPoPvI5Rh1VzOkBn6N8d8k6F3/vdlVH2
         fQbw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUACrxvBf92vAXflv2EYLSlbmM04JkSBYWINPrzcxFf5oqWua+jZxMTpIGui6aMI4AzKkUO@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwYOH7hTL2rSYNF6DewkCRW10eZZ9V7Cmqa2IbswJ1os/AWoR/c
	X0H/d2gTzLVl6W2VSiKcAHUoaZPxw8znCaihR49PIJ3LtyMtX3vMwqDzevoZoz90iw==
X-Gm-Gg: ASbGnctJVbq2bLEomcZSkkVM9QD8WCk/NeNUfW9wdJ09TwKcaEzfsi8N3/3idb0A2Uc
	OZMqnYSzDlzcq8YE4hnd/bEhpTlf3G9LWNqndAQt6WktezUBIld645YoR8TFBFfWekV6Cyh2dLn
	XL1h0YMZflqolHmjftaY8dJNw2HN5KRZ/lYoxHsl8Fq8zRgam5Q94yEW251CWsuvszU0foGeHTL
	/EiL2yTsxghBpViLVUzSmusT2BpID9kPh1T3eDEGZmjccfuY9su4lKDFFwBCw7mUzSrNj0BVCrG
	O0wAPt0LM1DzgQPEpn2UEB6qV7f0sF5DwWhTEXEsdXtl4s2RH6lvtRW0C+//pdvwTc7kYbq2BMs
	LFNbRtIEchEO9YLkgr89WIy1nbTz7yjhYLh97jts9iEHEgS2fBYHXgVpv0f81LqCHc/Bvd5+LXN
	xg2fRuyFdWEbvaJVhBGMXS9dhaHwQnOzaaZPMEKq7d
X-Google-Smtp-Source: 
 AGHT+IE2luF+rjX/JkLUxs9uL/f2+K18J1dp2UU3f3l59WkOKXnh/MsO3gJCC0+/Ax1GTVQ77a0ZIQ==
X-Received: by 2002:a05:6830:34a5:b0:7c5:4005:fff3 with SMTP id
 46e09a7af769-7c72e3e5ca8mr2222124a34.29.1763005988809;
        Wed, 12 Nov 2025 19:53:08 -0800 (PST)
Received: from p1.scai.dhcp.asu.edu (209-147-139-51.nat.asu.edu.
 [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c73a283c41sm471470a34.6.2025.11.12.19.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 19:53:08 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org,
	toke@toke.dk,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Wed, 12 Nov 2025 20:53:03 -0700
Message-ID: <20251113035303.51165-1-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: T3YKTXQQ4BHXGYPFSBF2GD3QGWWWMCZL
X-Message-ID-Hash: T3YKTXQQ4BHXGYPFSBF2GD3QGWWWMCZL
X-Mailman-Approved-At: Thu, 13 Nov 2025 13:28:02 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net v3] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251113035303.51165-1-xmei5@asu.edu/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In cake_drop(), qdisc_tree_reduce_backlog() is called to decrement
the qlen of the qdisc hierarchy. However, this can incorrectly reduce
qlen when the dropped packet was never enqueued, leading to a possible
NULL dereference (e.g., when QFQ is the parent qdisc).

This happens when cake_enqueue() returns NET_XMIT_CN: the parent
qdisc does not enqueue the skb, but cake_drop() still reduces backlog.

This patch avoids the extra reduction by checking whether the packet
was actually enqueued. It also moves qdisc_tree_reduce_backlog()
out of cake_drop() to keep backlog accounting consistent.

Fixes: 15de71d06a40 ("net/sched: Make cake_enqueue return NET_XMIT_CN when past buffer_limit")
Signed-off-by: Xiang Mei <xmei5@asu.edu>
---
v2: add missing cc
v3: move qdisc_tree_reduce_backlog out of cake_drop

 net/sched/sch_cake.c | 40 ++++++++++++++++++++++++----------------
 1 file changed, 24 insertions(+), 16 deletions(-)

diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
index 32bacfc314c2..179cafe05085 100644
--- a/net/sched/sch_cake.c
+++ b/net/sched/sch_cake.c
@@ -1597,7 +1597,6 @@ static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free)
 
 	qdisc_drop_reason(skb, sch, to_free, SKB_DROP_REASON_QDISC_OVERLIMIT);
 	sch->q.qlen--;
-	qdisc_tree_reduce_backlog(sch, 1, len);
 
 	cake_heapify(q, 0);
 
@@ -1750,7 +1749,9 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 	ktime_t now = ktime_get();
 	struct cake_tin_data *b;
 	struct cake_flow *flow;
-	u32 idx, tin;
+	u32 dropped = 0;
+	u32 idx, tin, prev_qlen, prev_backlog, drop_id;
+	bool same_flow = false;
 
 	/* choose flow to insert into */
 	idx = cake_classify(sch, &b, skb, q->flow_mode, &ret);
@@ -1927,24 +1928,31 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 	if (q->buffer_used > q->buffer_max_used)
 		q->buffer_max_used = q->buffer_used;
 
-	if (q->buffer_used > q->buffer_limit) {
-		bool same_flow = false;
-		u32 dropped = 0;
-		u32 drop_id;
+	if (q->buffer_used <= q->buffer_limit)
+		return NET_XMIT_SUCCESS;
 
-		while (q->buffer_used > q->buffer_limit) {
-			dropped++;
-			drop_id = cake_drop(sch, to_free);
+	prev_qlen = sch->q.qlen;
+	prev_backlog = sch->qstats.backlog;
 
-			if ((drop_id >> 16) == tin &&
-			    (drop_id & 0xFFFF) == idx)
-				same_flow = true;
-		}
-		b->drop_overlimit += dropped;
+	while (q->buffer_used > q->buffer_limit) {
+		dropped++;
+		drop_id = cake_drop(sch, to_free);
+		if ((drop_id >> 16) == tin &&
+		    (drop_id & 0xFFFF) == idx)
+			same_flow = true;
+	}
+	b->drop_overlimit += dropped;
+
+	/* Compute the droppped qlen and pkt length */
+	prev_qlen -= sch->q.qlen;
+	prev_backlog -= sch->qstats.backlog;
 
-		if (same_flow)
-			return NET_XMIT_CN;
+	if (same_flow) {
+		qdisc_tree_reduce_backlog(sch, prev_qlen - 1,
+					  prev_backlog - len);
+		return NET_XMIT_CN;
 	}
+	qdisc_tree_reduce_backlog(sch, prev_qlen, prev_backlog);
 	return NET_XMIT_SUCCESS;
 }
 
-- 
2.43.0

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

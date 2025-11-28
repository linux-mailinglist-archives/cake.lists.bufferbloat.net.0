Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EB9C91755
	for <lists+cake@lfdr.de>; Fri, 28 Nov 2025 10:33:13 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 6A2919D8E24;
	Fri, 28 Nov 2025 10:33:12 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=bCdZToX5
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764322392;
 b=Dwa1/rMnR21IWJpp8aoQnQMDswA9qBkJOtdVgLRT9wurVrjH5ow83yTgDav7JnCjE8vAN
 xAp8UXyQe3O/PcbOkcPN6MuihqXxmFCwi+fq3WaCMN1lrMl/n61sWTeFjH7VjrIh/ipmIRE
 LY0OMmbaEYsQnQQeDcqHsLiQxi1PgtQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764322392; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=UEZDulr2ZKdTNnEWUXtPHPOaLR75+RMJYxnf5EYd6gQ=;
 b=KkXExv/ASue5dSFuDos43E8UQHzWOS6XSaQuQlsecdXjfRkNb/otx1QMUyTxlrccJCyJD
 CyVaDspNP1MMAxGCAYXAAap4e/JDLsTFv+U9OY5I5QiEB4mHsGGHpqZUuuQilO1FXU+rT4S
 x5Dq+UMQvun9vwpwjdGs7ELYf2Qz9qM=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
	by mail.toke.dk (Postfix) with ESMTPS id 31D8B9D64B1
	for <cake@lists.bufferbloat.net>; Fri, 28 Nov 2025 01:14:29 +0100 (CET)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-bc29d64b39dso795994a12.3
        for <cake@lists.bufferbloat.net>;
 Thu, 27 Nov 2025 16:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764288868; x=1764893668;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HTp1SGwTKk2hZyC3Yj3TH2Fee95cP69A2MpxOAn+dMw=;
        b=bCdZToX5vVpkpe0KgDAXjpLu7RWfNI2vz+82Vb+oI83oaXaiAKEejkM3ziXM7ZbrCv
         mbO/6WuNvcZ3Tfr6oep2OUYvDdJ7WyPDMmM2Yy+BbTN7xl/44wBLFLpQZeFiEih4F/4T
         O15A4hRy9OJlMoJs0UJQ+xMvKeFUeZ8vlyyWLXcQXiwnAvWAjiQN9IHm0VCC4xAI+DZd
         AV7TK2Cnt7WxrYnukPApJLzxqM7x6d+ivX89EVSvuoQPRx20UNGYaYO1Q4xrDmPAKUKH
         A9hcrt6PA0RoBkfbAkBNDwQFMitO6NRMgvtDtmdwdZ2ouuxo+JN2TaxgvUGO02QzsvW+
         1pSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764288868; x=1764893668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HTp1SGwTKk2hZyC3Yj3TH2Fee95cP69A2MpxOAn+dMw=;
        b=EjRSe4jGiB27/0jhuRiXEkwVMkXfDaUTmxUTv06Y1qfqrxwwYd8ob9HJzYq8vc2U75
         p3PQu3cB8B3UtRsmdCo0va0JLL5W2Admip+RcVqHc70j96oo/eMqD4PnMcYA6KI53yS8
         Ulxga/LmSwoyySGmQRnxDL1NnXzm9eagzHbo6pfFk6OE/TDIZ/vx8ifrS1bBWrkfyVbU
         Y+9eqZlWxzuTy3F0HZ3GM0XsrZAinNmakuvxhkDpx8Kmomqmd/gn9J4QWfaqdoi52RBr
         yuj8hHqZjgu3KHADMBNihaESd3cxWFBtr98MOFHnHkA/0ZlsIIj/YX1L12848qzvNcuv
         NQng==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGJD7CpgDYVKrAQ6f+mZ4bUQtLyxXmrX8Qz6gIS12x5WXwpKN3opaAdlXve1b9Fzwn9i48@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxF6NwBh5DBXDTBCPlXxm1gbLzYThVE/rx+MElUvGscg1VgdeFr
	genbd9vxRy3LChCargd7j4pNVo8EQwwkFG//bKTOYODNN33dHgSJcQ++9wYxpqknvw==
X-Gm-Gg: ASbGncv27v0YXHkg0bz7IE3dEI0HzZ0SFYqfZ9xjf6+ChLOMf5O3jJ+mruWb7A1s5Hd
	PkRhHMFLsdTjMxpKtZPaLE4LVUOlZDjGfPsCAyASMBbS18XS8YnQNlOO2Bd3gZTl/t/v9usTgnJ
	jxHrR266FiqTRsLxD9THMC0jfh1SKzcZNqFEVd/6xqRJNEf1REE2jqCugm0ZRry3fvOQs7Eq2in
	LrKrTnUn8Yn71zs0aqfVfdcf8N23wPFKjA7p9E5ZxXyg6CMGkFWo4LAqVgcPqvLX+9+RuBjoDw7
	4qZfXYrHtOmObjK1mzE/37QfG+mszkgx8me0IfvhbxBxixiMhZxqjjhE2TN01p8YSxTobsYoiAC
	WaV3+iflHgA0XvG2bnRuqI5RrDRfDBpMYG5vHWBoi3w//2ywwCSuuRCDBbtnbOapCsaIrOWSB4W
	2drwNVMc/rJOUl56aINdagu2HG1hlG3vpI7p1Xt5MN
X-Google-Smtp-Source: 
 AGHT+IGMHEUfgIYw2AAmbDPAgqMQw4zD5YxfPYyEm1HQvDzWLdelfQlnl64DN5ws3BlZ+HRBPf6ZEQ==
X-Received: by 2002:a05:7300:570d:b0:2a4:5c3b:e2bc with SMTP id
 5a478bee46e88-2a719d80133mr14284109eec.19.1764288867608;
        Thu, 27 Nov 2025 16:14:27 -0800 (PST)
Received: from p1.tailc0aff1.ts.net (209-147-139-51.nat.asu.edu.
 [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2a965ae9d06sm11209080eec.4.2025.11.27.16.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 16:14:26 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org,
	toke@toke.dk,
	xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Thu, 27 Nov 2025 17:14:14 -0700
Message-ID: <20251128001415.377823-1-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: RWTTY5KNL3UDHPT3DWYB5Y5MBILB2LWJ
X-Message-ID-Hash: RWTTY5KNL3UDHPT3DWYB5Y5MBILB2LWJ
X-Mailman-Approved-At: Fri, 28 Nov 2025 10:33:11 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net v8 1/2] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251128001415.377823-1-xmei5@asu.edu/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In cake_drop(), qdisc_tree_reduce_backlog() is used to update the qlen
and backlog of the qdisc hierarchy. Its caller, cake_enqueue(), assumes
that the parent qdisc will enqueue the current packet. However, this
assumption breaks when cake_enqueue() returns NET_XMIT_CN: the parent
qdisc stops enqueuing current packet, leaving the tree qlen/backlog
accounting inconsistent. This mismatch can lead to a NULL dereference
(e.g., when the parent Qdisc is qfq_qdisc).

This patch computes the qlen/backlog delta in a more robust way by
observing the difference before and after the series of cake_drop()
calls, and then compensates the qdisc tree accounting if cake_enqueue()
returns NET_XMIT_CN.

To ensure correct compensation when ACK thinning is enabled, a new
variable is introduced to keep qlen unchanged.

Fixes: 15de71d06a40 ("net/sched: Make cake_enqueue return NET_XMIT_CN when past buffer_limit")
Signed-off-by: Xiang Mei <xmei5@asu.edu>
---
v2: add missing cc
v3: move qdisc_tree_reduce_backlog out of cake_drop
v4: remove redundant variable and handle ack branch correctly
v5: add the PoC as a test case
v6: split test and patch; fix the wrong drop count
v7: remove redundant comments
v8: no change
---

 net/sched/sch_cake.c | 58 ++++++++++++++++++++++++--------------------
 1 file changed, 32 insertions(+), 26 deletions(-)

diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
index 32bacfc314c2..d325a90cde9e 100644
--- a/net/sched/sch_cake.c
+++ b/net/sched/sch_cake.c
@@ -1597,7 +1597,6 @@ static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free)
 
 	qdisc_drop_reason(skb, sch, to_free, SKB_DROP_REASON_QDISC_OVERLIMIT);
 	sch->q.qlen--;
-	qdisc_tree_reduce_backlog(sch, 1, len);
 
 	cake_heapify(q, 0);
 
@@ -1743,14 +1742,14 @@ static void cake_reconfigure(struct Qdisc *sch);
 static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 			struct sk_buff **to_free)
 {
+	u32 idx, tin, prev_qlen, prev_backlog, drop_id;
 	struct cake_sched_data *q = qdisc_priv(sch);
-	int len = qdisc_pkt_len(skb);
-	int ret;
+	int len = qdisc_pkt_len(skb), ret;
 	struct sk_buff *ack = NULL;
 	ktime_t now = ktime_get();
 	struct cake_tin_data *b;
 	struct cake_flow *flow;
-	u32 idx, tin;
+	bool same_flow = false;
 
 	/* choose flow to insert into */
 	idx = cake_classify(sch, &b, skb, q->flow_mode, &ret);
@@ -1823,6 +1822,8 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 		consume_skb(skb);
 	} else {
 		/* not splitting */
+		int ack_pkt_len = 0;
+
 		cobalt_set_enqueue_time(skb, now);
 		get_cobalt_cb(skb)->adjusted_len = cake_overhead(q, skb);
 		flow_queue_add(flow, skb);
@@ -1833,13 +1834,13 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 		if (ack) {
 			b->ack_drops++;
 			sch->qstats.drops++;
-			b->bytes += qdisc_pkt_len(ack);
-			len -= qdisc_pkt_len(ack);
+			ack_pkt_len = qdisc_pkt_len(ack);
+			b->bytes += ack_pkt_len;
 			q->buffer_used += skb->truesize - ack->truesize;
 			if (q->rate_flags & CAKE_FLAG_INGRESS)
 				cake_advance_shaper(q, b, ack, now, true);
 
-			qdisc_tree_reduce_backlog(sch, 1, qdisc_pkt_len(ack));
+			qdisc_tree_reduce_backlog(sch, 1, ack_pkt_len);
 			consume_skb(ack);
 		} else {
 			sch->q.qlen++;
@@ -1848,11 +1849,11 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 
 		/* stats */
 		b->packets++;
-		b->bytes	    += len;
-		b->backlogs[idx]    += len;
-		b->tin_backlog      += len;
-		sch->qstats.backlog += len;
-		q->avg_window_bytes += len;
+		b->bytes	    += len - ack_pkt_len;
+		b->backlogs[idx]    += len - ack_pkt_len;
+		b->tin_backlog      += len - ack_pkt_len;
+		sch->qstats.backlog += len - ack_pkt_len;
+		q->avg_window_bytes += len - ack_pkt_len;
 	}
 
 	if (q->overflow_timeout)
@@ -1927,24 +1928,29 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
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
+		drop_id = cake_drop(sch, to_free);
+		if ((drop_id >> 16) == tin &&
+		    (drop_id & 0xFFFF) == idx)
+			same_flow = true;
+	}
+
+	prev_qlen -= sch->q.qlen;
+	prev_backlog -= sch->qstats.backlog;
+	b->drop_overlimit += prev_qlen;
 
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

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 32760C89CFA
	for <lists+cake@lfdr.de>; Wed, 26 Nov 2025 13:43:23 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id B22409D0047;
	Wed, 26 Nov 2025 13:43:21 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=LsD291e/
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764161001;
 b=GKwlXwx4J76XT2Hhw4MyPVhacgbm/jeu5JNXlS89znr05AMldygSNR4M6SUBTLAtfdYlV
 LbMMVDH01QDYokMoJgWikisEUAtmfmXPxnTJ1YPTm8L3HPfTtkPNj0zRo3o9exZBalO6Rbt
 Pb3uTg9hzeTcvhnCa5zaYkhTuGwAwDo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764161001; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=bLGTBnvCyX9SQmqImOeD5O3QFa5Ni7oO2zcD+0vtqRs=;
 b=pI4cGmw0Zc26Pg2Z2CTWB6gHyrhnfxsaiyu3kdqFKZUQuEA+oU/HbfLChOwgWrA2Kla3k
 BwTg02/cUbyRNSKLFRHpM6HR5FDck1DXbjfEvrwa/uzWcxjOu88pFZEh0ig5Mt+Ye92tcdt
 gv1T3Q3TAg/Yl92cKWScC3dT+GtAxNA=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
	by mail.toke.dk (Postfix) with ESMTPS id 4A9119CBFCA
	for <cake@lists.bufferbloat.net>; Tue, 25 Nov 2025 23:02:25 +0100 (CET)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-29ba9249e9dso18010045ad.3
        for <cake@lists.bufferbloat.net>;
 Tue, 25 Nov 2025 14:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764108143; x=1764712943;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bbjOw0QyNolsfOkG4RyjWMHnOdINMrcNSgfM++GjW2A=;
        b=LsD291e/5r0zpceRI2hkso20JfwUUMx8/dGrH9zc7vScziiP1+B43KfNwRu+QsMNAl
         BVljHHhv+bOJCoU8OcQYPVvh0oXF+KvV1JKcCxp3J8uZA+kZmEZxgpM2xsGIaGxw5XcG
         ia4v1vO7tFwLMwqv2BfovDb4QPzGLR0xjCi0zjWTol1EH+S2wsL80QUuO/1oIqZvfvRK
         GDxPdxhW4tHEiO1qY99Prb1cIL+UfOavG98Q8pc7LM47E5h66OR1gaM4jKBFsLE+N3lb
         McJKCq2S05AUyQq6t1agToq+XFgumtjAJVglMby8N1EXop/F00G9MrEfoZnIMnTDNBhb
         e7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764108143; x=1764712943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bbjOw0QyNolsfOkG4RyjWMHnOdINMrcNSgfM++GjW2A=;
        b=iQdfz/BMTmb5sssTeEDi6PC/LarUTlA0Ux5Ex/SuUOGPNAOwfjXiJNrFurF+V5S4lF
         HhZ7b1p9Gsb/Hz36S8piSrWI9hzt4icvGQD6yLlOhHURSA+taoPjI/rjbx5vttaQRtjc
         yoY7Gbv0Y9y2fKcEAD6flkC37CH/ECxRz7g+idV9LkjH6TyPh/SS3PwycflAHOWvED/Q
         fPaEyR5QnEsfUOTZLxdcocVN0PFYP4cv5eQkGgWjoiBkGfvNU8OQrkHpKf40sevlyuSG
         1qE9gLNfX12j/X/QvegI7axfL+POp8kanj2AdHRVgMyzkT+3C9NsmXQOf1bm9vw70BB5
         sZvA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVqPEi7qNteawHuIqveLYdrVb9IjlN6BPTpUU91um7VldFrekHZQrRgWJeRizUgrLD7QWZ@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YymXtH1+lJT2Bhxcd7hrFRpCt8MjCI9bkz4J4VFd9Ejd1Wf8I9p
	cBQ4+vHuvUbxoyUeXPNG2HwmGAMW+CrtTXJxWMmo+prxIaOQC8PM/L8hbc7keJBWtg==
X-Gm-Gg: ASbGncv726iYHP6ZzguveJwL9nKVM6wX8uBNai/Dv6+sFz/OxSShszQVlX9Ppz+w2go
	l50SxxSG8Hi01s643Q1FTVCp8AdfR0oZ4D/SM6okkXn075wIeEC6qIAs1H5EeL2/TaYpsAu9AB1
	4SzXLE/KHc4DcheGmxz+FGcjX8ILKh7EN21btK3tMhhj/UKXysouQ9AGVVC3CBDESdwWq+xh694
	lD0RkJGYA73/+snFuEEhNEBypHpE9L20DQZcADAOMRWfBcBIIIZxfMdoIckflWfPFaCO4tlp8DA
	FYdr0JS120KV3ptmaKTxMbpGUDfglMQfvRkEHxhQC/MhgzKtWbMC026haY8GBnUlLD6P4CW/1rB
	Vqf8ziYBSfyNp03t3H8ZbQQrBr8hAITaMOua+jCZvsmOYoNbkW0Y25dXXIZQnjyFIBtV+8ra+Yw
	5AktL4c9MuU5DfgjvUWbtcVjRQKHH8ILjC3b+hX+My
X-Google-Smtp-Source: 
 AGHT+IHQ8QfOyds6RMKG6tQbZbE7RZlLZK2EFXr+6J25EywxGVspPaJyvoOkCYbUy6tWWXlEhDfJCQ==
X-Received: by 2002:a05:7301:e22:b0:2a4:3594:d534 with SMTP id
 5a478bee46e88-2a7195369f7mr11762131eec.1.1764108142950;
        Tue, 25 Nov 2025 14:02:22 -0800 (PST)
Received: from p1.tailc0aff1.ts.net (209-147-139-51.nat.asu.edu.
 [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2a6fc3d0bb6sm93697505eec.2.2025.11.25.14.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 14:02:22 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org,
	toke@toke.dk,
	xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Tue, 25 Nov 2025 15:02:12 -0700
Message-ID: <20251125220213.3155360-1-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: KAAGLDGLDSKPUVXJQGDZL6PECUMJSVVE
X-Message-ID-Hash: KAAGLDGLDSKPUVXJQGDZL6PECUMJSVVE
X-Mailman-Approved-At: Wed, 26 Nov 2025 13:43:20 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net v6 1/2] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251125220213.3155360-1-xmei5@asu.edu/>
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
---
 net/sched/sch_cake.c | 59 +++++++++++++++++++++++++-------------------
 1 file changed, 33 insertions(+), 26 deletions(-)

diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
index 32bacfc314c2..a64fb6889946 100644
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
@@ -1927,24 +1928,30 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
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
+	/* Compute the droppped qlen and pkt length */
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

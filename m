Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A6DC7FD69
	for <lists+cake@lfdr.de>; Mon, 24 Nov 2025 11:20:23 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 92BFF9B7F86;
	Mon, 24 Nov 2025 11:20:21 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=Cfef9VdP
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763979621;
 b=hNXHrN/5GGHP/PwKRV/WUVUH9fogpK5EJgL08XDu9VY6A8tnDfPDPPZYm323WwG0BGO1A
 xf8VquiaIttpSWHjiGVjpR79FNnKD8o1TPjQtasI62RFfmnv8RPpJE8r1lX5heNgKc9M9QK
 n7EsVxr9JngH94K8o/QoQyJL9oUb77E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763979621; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=mJkAp7lr8fkYut481NaPCMrWmohITkk+1AKfN3uUiTQ=;
 b=GGmgRbWlV29LmtkRDUFHg8kZR+8ForuJZa+B94+UYUOJU0PItiqJAYA8oOgK74pQjM4eV
 nBR6OLD/hQLxwoCTNvTV8k//wTena9/deVH6owdHzEsEi104WZAu0d3EROnrY4eixAV7LoX
 riNK+NubsVO77E1tJxrw3LpmmRQDtEA=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
	by mail.toke.dk (Postfix) with ESMTPS id C6B1B9A890B
	for <cake@lists.bufferbloat.net>; Sat, 22 Nov 2025 00:27:57 +0100 (CET)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-297f35be2ffso38576305ad.2
        for <cake@lists.bufferbloat.net>;
 Fri, 21 Nov 2025 15:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1763767675; x=1764372475;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ACQddHZcDaCDM4L+eMLnqjgNPpNjJRnV3lGXdOduM+A=;
        b=Cfef9VdPRBZ9/ZBFkh8vv/ZLDJB0hOc/l8gCj7GKbvjNMa0bgle+hobYHEcZBRVu9j
         rltFXYrbxPn66ezeZ+Vi5YgkEGoSaODe5EpXQMmNjRViXlzNErNWuSmiO7V4yvzYp4h4
         nQNM7NgxbtpD6X39FKx/gkthcX4ZIiZm5kmHeSQga6LmQGn7vypVwJgKSrLmPWW3OnRc
         1t8FQqlDScJwCqFkAubCRad5oxB9aI29/1KcB2vf7g6cxAvVhEdL5xqJKa2MzolAHXmn
         +N6K9I0BPjAq77xc5S7dvwCYViU4gIB1dWhkwQsTFbT548MJ5HRuMr9ZhVOqr/dI5Gh5
         zSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763767675; x=1764372475;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ACQddHZcDaCDM4L+eMLnqjgNPpNjJRnV3lGXdOduM+A=;
        b=vZRMjxG+HNTWGF8VW0lapwby4GhyWk952EBVks37QUv2UYy6S/lOQ88F9tNjSWD3Hx
         cqz75b9uAWdgAM3CDz8Iplesbcxol28wqfbBcasueg49/cTRwblANjkmzUMqgaEgbDpr
         eelExHe5rSwd7dW17uv/hB5Uu67aRuUm4LWHFsNl2p4t9bTAuNUPhCwY/7LUTiQ1HLVd
         Ez/NumTFZIrLnVKqr2OsrfN9Qe6Eq6uarsNpCrJfr71VNZBj13u1FGbbfORxFrK2//O6
         d6pIvJgDBhh0/OzN08MCp9LvEnlNIYstVPUrwvg8Ir0mzU3GTA/5gyN6UUjGdMwtGbhT
         ssUw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUGfhCYDCA4CsI17+ZLCEu9Qzecp3p8F5aQ/WED9VIA6DzDxq9ZyQkpCqdEhHzkCu2ol6eP@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzLrldscy0SYz2jORNS7qKarWWFJmV3bzM0VEc6ReSwq4YaXbel
	bMAaVh56qcX+RDsD7XK6WNF+AFK5q6XM044zAyvnPPD++OispoRBUpZ43HPpz0KrvA==
X-Gm-Gg: ASbGncuY/y8GBdC7j2o6OQLsRScPFePf81cO5A5tmTK96RXCREzNGlK2cQQFZEHaet/
	5c+ZiBUJbNE50VQdxpPHVgqUHrUMYEmf7g/aQSavLy3IxR75UO3W2fQROgKh3ZZlAVVd4sd6Z8p
	6TB4wAkfBdyrGwf9cyLfHIYomZ9pn7QErvaMQ9TiummJL6LPNKxFKBlk7tqrjDURdh6tgW7rvSg
	rxnvpHURU+kaGkxc2gI4tatrHBNEpU/t+rd2uZ+HP8JfCEeQ73jcCq01njDDGTET8b/ALJAXLD6
	22uPVMTmNwLp6sPgd3ThX4qspRplPO9FQK27NM5VMki12LXSJouFGlGXV/o3TmJCdz+4dJWIHlE
	/JB8+XzVJFqjWEXRIBNSzu56NorYSmvXznJ6K1WoqKCWGtnnQMW9LRvqLfWzH/X2EcLhg5vZJyF
	LcVwnCbU8HTjOjCYP5Hxg4+NCY/4yjE/x273I03/h7
X-Google-Smtp-Source: 
 AGHT+IFmqosMYWpJDWj3TYGKEUWHYx3dE5wLEGG4lzl9FC1I9zK9qz+rYoFclwit74bSZLRBFroScQ==
X-Received: by 2002:a05:7022:412:b0:11a:4ffb:9849 with SMTP id
 a92af1059eb24-11c9d811985mr1925590c88.21.1763767675380;
        Fri, 21 Nov 2025 15:27:55 -0800 (PST)
Received: from p1.tailc0aff1.ts.net (209-147-139-51.nat.asu.edu.
 [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11c93e6dbc8sm30222906c88.10.2025.11.21.15.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 15:27:54 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org,
	toke@toke.dk,
	xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Fri, 21 Nov 2025 16:27:35 -0700
Message-ID: <20251121232735.1020046-1-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: TB2CF2VXFZCCK4QNNQWYWCTKASJ2HKNO
X-Message-ID-Hash: TB2CF2VXFZCCK4QNNQWYWCTKASJ2HKNO
X-Mailman-Approved-At: Mon, 24 Nov 2025 11:20:20 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net v5] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251121232735.1020046-1-xmei5@asu.edu/>
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
---
 net/sched/sch_cake.c                          | 52 +++++++++++--------
 .../tc-testing/tc-tests/qdiscs/cake.json      | 28 ++++++++++
 2 files changed, 58 insertions(+), 22 deletions(-)

diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
index 32bacfc314c2..cf4d6454ca9c 100644
--- a/net/sched/sch_cake.c
+++ b/net/sched/sch_cake.c
@@ -1597,7 +1597,6 @@ static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free)
 
 	qdisc_drop_reason(skb, sch, to_free, SKB_DROP_REASON_QDISC_OVERLIMIT);
 	sch->q.qlen--;
-	qdisc_tree_reduce_backlog(sch, 1, len);
 
 	cake_heapify(q, 0);
 
@@ -1750,7 +1749,8 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 	ktime_t now = ktime_get();
 	struct cake_tin_data *b;
 	struct cake_flow *flow;
-	u32 idx, tin;
+	u32 idx, tin, prev_qlen, prev_backlog, drop_id;
+	bool same_flow = false;
 
 	/* choose flow to insert into */
 	idx = cake_classify(sch, &b, skb, q->flow_mode, &ret);
@@ -1823,6 +1823,8 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 		consume_skb(skb);
 	} else {
 		/* not splitting */
+		int ack_pkt_len = 0;
+
 		cobalt_set_enqueue_time(skb, now);
 		get_cobalt_cb(skb)->adjusted_len = cake_overhead(q, skb);
 		flow_queue_add(flow, skb);
@@ -1834,7 +1836,7 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 			b->ack_drops++;
 			sch->qstats.drops++;
 			b->bytes += qdisc_pkt_len(ack);
-			len -= qdisc_pkt_len(ack);
+			ack_pkt_len = qdisc_pkt_len(ack);
 			q->buffer_used += skb->truesize - ack->truesize;
 			if (q->rate_flags & CAKE_FLAG_INGRESS)
 				cake_advance_shaper(q, b, ack, now, true);
@@ -1848,11 +1850,11 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 
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
@@ -1927,24 +1929,30 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
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
+	b->drop_overlimit += prev_backlog;
 
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
 
diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/cake.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/cake.json
index c4c5f7ba0e0f..47ecd3fb1ea4 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/cake.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/cake.json
@@ -441,5 +441,33 @@
         "teardown": [
             "$TC qdisc del dev $DUMMY handle 1: root"
         ]
+    },
+    {
+	"id": "4366",
+	"name": "Enqueue CAKE with packets dropping",
+	"category": [
+	    "qdisc",
+	    "cake",
+	    "netem"
+	],
+	"plugins": {
+	    "requires": "nsPlugin"
+	},
+	"setup":[
+	    "$TC qdisc add dev $DUMMY handle 1: root qfq",
+	    "$TC class add dev $DUMMY parent 1: classid 1:1 qfq maxpkt 1024",
+	    "$TC qdisc add dev $DUMMY parent 1:1 handle 2: cake memlimit 9",
+	    "$TC filter add dev $DUMMY protocol ip parent 1: prio 1 u32 match ip protocol 1 0xff flowid 1:1",
+	    "ping -I$DUMMY -f -c1 -s64 -W1 10.10.10.1 || true",
+	    "$TC qdisc replace dev $DUMMY parent 1:1 handle 3: netem delay 0ms"
+	],
+	"cmdUnderTest": "ping -I$DUMMY -f -c1 -s64 -W1 10.10.10.1 || true",
+	"expExitCode": "0",
+	"verifyCmd": "$TC -s qdisc show dev $DUMMY",
+	"matchPattern": "qdisc qfq 1:",
+	"matchCount": "1",
+	"teardown": [
+	    "$TC qdisc del dev $DUMMY handle 1: root"
+	]
     }
 ]
-- 
2.43.0

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

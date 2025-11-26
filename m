Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F55EC8D8DF
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 10:31:19 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id D81B59D3F72;
	Thu, 27 Nov 2025 10:31:18 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=POvNI4gq
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764235878;
 b=UZj/LdvoRE6giP9oXyi4ZkoZNGFjFmlz+2hcaiEFaLPAK/3MTRoPOWbkIxDzNKe7mRYVz
 YCV4z0PT6DA/ZZG1++yKi5T0d10xz4aIHOnNgnbhtqkqTg47rCL9JnXvsymC92l+Rkpvogz
 thD1eLOZqx2WVDToQeCDWU0h9xWbPEs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764235878; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=32clsK8bl/+DPCyuNlpGuHNtW83DCZjJ/r2psii4Xpo=;
 b=a2rRve6Ms/3qhWr5dAwbJCSsd3G1zxDiHezrpCPmUj36pQKR51jXN2yFhyw6cJ+ON2tIh
 6HLgmLv5ncXC7lIeI1y6Do2arBDBZt1YEg3nrbV+nQUmDsMU6iMsckvfU/zvJHLMtavlxdS
 nfi6yzsSCljGtXMojJhLqUs4jQguh6k=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
	by mail.toke.dk (Postfix) with ESMTPS id 1C2AB9D2064
	for <cake@lists.bufferbloat.net>; Wed, 26 Nov 2025 20:45:20 +0100 (CET)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-ba2450aba80so95378a12.1
        for <cake@lists.bufferbloat.net>;
 Wed, 26 Nov 2025 11:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764186319; x=1764791119;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WtEsv1qnprkRz63f114HO+3gpWzGkQYPLZ6RpFK2vlo=;
        b=POvNI4gqsccicfwQPVcO6OXtFXGjllY12DWUELbO9Oye5Ght1iDyZYfGpXlsE9+EnU
         NOeb4jx2htOICxT8maH3iBvIZZniGkEU9ZwixHV0b5+orvpY+FOcLyMm3QHZ7hFlMNqw
         ZFVNFVkDAYFMSwy4eCSpr09DmyPGXFZtC3afL0XvRUFMzWe1cKWrb6LSADCm6cONUqOT
         9R3UfSqOP+igM9ekr0PO08L+8LF0wv/ymN9X19dFLvUY19tjAcrC1HxHhiHZ+ufR6nL2
         AMl6E5Leu3sgM5OedxVXgr7PayaWiUHugWRCoWX+xo7Wjt1j12wGS8yKRajR2mnHwAJY
         m0tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764186319; x=1764791119;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WtEsv1qnprkRz63f114HO+3gpWzGkQYPLZ6RpFK2vlo=;
        b=H6bChhOjdg57ZCb9nz0PunJYqgnb91bnqfxV7G1K+bcxsYJ1wDrkkSJ2mlu99/vyvy
         45/PLn/BPKolcHc81XNjTwWg+Ha/jPmGLWq6BfZ/fBKC5d1xClGgkoifhJZigGS2+p7g
         MoVmu6QHqcQn5vpfsgLCCKKX6czND0+kUUvvaODZsEJs0V/HJQFkKRf5kfhoG3WZvCC+
         DalHv8o0UYPzrvmsqHO3fLNRdq6Ebtcc59ZCuLELNYy5B6I10umr2XKG2qqQ3az2uWlE
         FBmWcnNdZMVhaTLRZUu6RjPeKHMUYBkFkfZBN8rIk8aS+XEnHJW1E2lgpRW0luU2iWZI
         oF0Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXv3FvShP53e1ZOc4KpZNti2f7bgioUlK1aEXkQZUqfsWVZbT6hLRM4lhQ+TE1u/zUo+hhK@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyGxgPNtSDBb5bmB4PREh7Mrv8P4kUiEd63YNkvfuxcU8ayvWE8
	YDqnCluc2LsDkpdBG3mrLtLMcFS2d5wAS3CvTD1n7gIirQACqeIELdIgs+/eFurVIw==
X-Gm-Gg: ASbGncvA45KuOUKTUOLkzbCGRfU04pSEvXFY7WgEE0Kic87ZLnM8qcknt9m+OS7ri5x
	0UZeutsE5w+a+10AV/DECgzTuX4E7Y3VjqvSFbF0lLuRtMUhqp92/H2mKBIKyrXkAwQt9oVJAv3
	1SYf4zz15ZGzDA5SuHJvb8UKMMzO++cWeGBNiH34XkR3+VTOHnm9FPAPVvGj034JN7JKj/F7TKl
	gwwqYkjCL/lQ+c3ao4AQcUhrptsyhbsyPqziOzTf98/U2gejeENvh4zgbzpCagaj7405aNlgHP7
	yaPy2hoRXktZZ1cvq3p6sbcDhbUFtRkl8e2/wchBS2t0DRwXQqRkxMJqZSaPgft7Ckm3y1W3vmm
	V0pPpFHXN0mWEO6H9uYvadXNN1CWcjrCcTldAFWc5Ds2sQ7iFT/KL/JqwQ0/lULAxomcU9tpUwq
	2gAdJCr4ySdEbe1rO6puQVLPFvC6t9k01k8dCq9xuv
X-Google-Smtp-Source: 
 AGHT+IFLLj/qsp3TdZVuBhvSHTdhyYnHycOPM+V5xxsYu8sfMBuLLU7iSV/CB0c2g/DZ7EeufYy0Pg==
X-Received: by 2002:a05:7300:3c9d:b0:2a4:3592:c604 with SMTP id
 5a478bee46e88-2a94174e0a3mr4277965eec.21.1764186318491;
        Wed, 26 Nov 2025 11:45:18 -0800 (PST)
Received: from p1.tailc0aff1.ts.net (209-147-139-51.nat.asu.edu.
 [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2a93c5562b2sm24252446eec.3.2025.11.26.11.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 11:45:18 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org,
	toke@toke.dk,
	xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Wed, 26 Nov 2025 12:45:12 -0700
Message-ID: <20251126194513.3984722-1-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: XH2O2JLAGV5TOUCUDR47QXUWRYL7GVEL
X-Message-ID-Hash: XH2O2JLAGV5TOUCUDR47QXUWRYL7GVEL
X-Mailman-Approved-At: Thu, 27 Nov 2025 10:31:16 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net v7 1/2] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251126194513.3984722-1-xmei5@asu.edu/>
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

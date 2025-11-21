Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F430C7FD63
	for <lists+cake@lfdr.de>; Mon, 24 Nov 2025 11:20:21 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 323939B7F5C;
	Mon, 24 Nov 2025 11:20:20 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=ZaKtH/k7
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763979620;
 b=hurggVDyy5MbtYuv9mb/AbPnLiADPi0nySRCd9ZVm0oL/JHGmeS69lo6yAUZ0MFyv221P
 vHZ4fC6AtdEmnJSpfMrfBzJaxK7z2qh9YDfyBxQZq6igdcQOHg+Pg1lwaQPDAZioDw3vPde
 rHtJkNvj5pV/lY1yLBeTUtIdY5Qg+WI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763979620; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=NPv6L3GjXcAhpMi8B5g7YYxWnZ3y6ewjX5aiKKopaBY=;
 b=6ixEsyL/PJgI52PrKLh9MaSmIXYi9++IWYVitbterIsUqVmawhQ2gF1muSpD8l3Zs6FGH
 4VCAyYalIOZkb3C1cuamL0nEU38qUGo5YfAMEwTNE0e4CBkx0wBMQfRawFMmJZp+tHtaS2r
 bCXQONSa0tvZHZiI8uV+DAZsRa4lqfQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
	by mail.toke.dk (Postfix) with ESMTPS id 9D34A9A83D2
	for <cake@lists.bufferbloat.net>; Fri, 21 Nov 2025 23:20:04 +0100 (CET)
Received: by mail-pf1-x42b.google.com with SMTP id
 d2e1a72fcca58-7baf61be569so2876808b3a.3
        for <cake@lists.bufferbloat.net>;
 Fri, 21 Nov 2025 14:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1763763602; x=1764368402;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4sUVNth8FAZgtbCcjfYNARaKtvymY9NltD2v12K6L98=;
        b=ZaKtH/k7tM4HpY6epKPsuJ1fcWg2ukzW7/ebI9MnM1u/3arjvhVXXyhY+hRuZXzvmt
         LX44A/3wh5XGBnSKGSsK9oX6eWHt532OWVDH/Tapm2EZ4WFEzUy4vD52dgJ9P7VLsgKp
         ZSwC9QE4KhjK6oXuvpPFByDOUMBvcyiwGjsCYL6H8XkE/j506REMWHizK6D2+vdkL62q
         zEDteRMjyNlUijaMDxLfl/IJSxt6cN5uLK48ojROTbxBdOEDqVWWYRZ0RBlNKD0rT6np
         16Clk9c1KIX2q5feskz483nhcZfdXLNQCqcg1SEPLLt/Tma+7zWwkSl6i/c/MQvylYo3
         6SZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763763602; x=1764368402;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4sUVNth8FAZgtbCcjfYNARaKtvymY9NltD2v12K6L98=;
        b=YoeYEgd6VP/l/GgdnLeEf00T8aDArHQOvd96eEzx6rMSwBRkdKJX5R4yxHVj4g7Ohz
         6W8dRTZDwShRn0BsjTJfntCyr4ZkKX/PpqjoQFpia6FMcMNreYbq7JfoNOVseoXvokRT
         t1MD6gw1KaFJyQd6azQR80YV83yZwLKgN6sNA9kT5FYXNc+5GPfQtg8r76UNZJijDj0S
         32fkqr+A+ULkOPQKrZ7pdVo/5QJUtVN9Vf2n/Tlk0jWKYQVU5aTFD8JoKG/HgZUCXQ+E
         +0IxTeCcDLC8dV2oYqR7wdgRNDhQ983gXo8nLEnsNHkJl/T7o5F9tzOjAhmaQevto3eA
         0k/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUrYt9mQufM01eI/jHcoK5Z0RztVu7gBdzEW2GU3jhi58CysAJ5GZ8CD1OwRm/xyj70C4li@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxneCax/2Ig8rHFDcnXhgbMEwDhAFhqnQH44yggZo4Ep9P7gwk4
	u9a0ahNxsUvqiMnLGXOYks7scn87dKvs6vFNOraJYo9HD1COdX5zPKP0LOV3hNv1LQ==
X-Gm-Gg: ASbGncshZS1fIupgx8JzNfX5588wIl+LbxLjWnBDhyWDzBGsb2gSYMaRYtKDlSr+1Ig
	bKzl8iLbyvTekY2uLkIpbFGHJd+VmLUKtXGme7W5QIYV8bgabEIPAKOhhRrCia2wKGnSLhyxrfT
	oRQiZrWtJ+QDK4XHB3WO9skR/KaGpY6yay9ihcuOYf79I3fL28hESjPFLBUCcdwJozs/f0FpEWC
	abAHqKpnnWSF7J2FLvbWEQnak3KAerEZz3iayE6J1DDePt4MWLhafxTeLDYPDF69z8XEOgHqZbs
	G4Vmw5JS1tp+BMyDIQ3Er0hq7MWDb8Jj9VUCjKTw+SZt47i5mtwN2N+8DpALr1m0/6w1REH65Ns
	dNK3Wi2swEmVMEgatn4Vt07splb8uD3+LqVL+iRwLfNcJIKC8b1/MJPWaQ9Qav4O5AREKVjOUsU
	IEDGzB4RlCmqdTqiaKHZfVF+EUp26IX7VP3Um0Ygst
X-Google-Smtp-Source: 
 AGHT+IH5VXK3OCSrTYKrEiAE26/rAsGhJzAoRU9EZdpEiwzHCfBWn/O9JUrzanqcZBYu+7tAfYC0ZQ==
X-Received: by 2002:a05:7022:b882:b0:11b:bf3f:5251 with SMTP id
 a92af1059eb24-11c9d718e3bmr1213422c88.16.1763763601744;
        Fri, 21 Nov 2025 14:20:01 -0800 (PST)
Received: from p1.tailc0aff1.ts.net (209-147-139-51.nat.asu.edu.
 [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11c93de82c1sm20464204c88.3.2025.11.21.14.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 14:20:01 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org,
	toke@toke.dk,
	xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Fri, 21 Nov 2025 15:19:54 -0700
Message-ID: <20251121221954.907033-1-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: JNYIT6WPOHN3CL44PQW4WB43SCIONVHO
X-Message-ID-Hash: JNYIT6WPOHN3CL44PQW4WB43SCIONVHO
X-Mailman-Approved-At: Mon, 24 Nov 2025 11:20:18 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net v4] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251121221954.907033-1-xmei5@asu.edu/>
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
---
 net/sched/sch_cake.c | 52 +++++++++++++++++++++++++-------------------
 1 file changed, 30 insertions(+), 22 deletions(-)

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
 
-- 
2.43.0

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

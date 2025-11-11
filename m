Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2ACC4D0EF
	for <lists+cake@lfdr.de>; Tue, 11 Nov 2025 11:33:20 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9089B948151;
	Tue, 11 Nov 2025 11:33:20 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=tcpUDrXC
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762857200;
 b=GcXyx+nghJ3NVhTy+UjONIehxUPctz/SonBIqI/anxQXVJk8TvzO0RQ8lNphNHrXoAb0w
 e6UwCw4WG+vhgH5rWVI02q5jdtTEPHBzfswWeEUHA+Qvq44fLW+nrFryj/nwyPp1mOJ6qZ0
 kIXRsD+YxUQ8KAcYnPdpQXEDHb5URqM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762857200; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Jd4d53MmsK+GB9Q9ERvlnNRpN810deM+yXQKX2HIBfA=;
 b=wiAx5L9We3qCEMTQJQH/P4JPCc4WcG/4d4C/vQT11tolvLvORAZAJVFr2IF6B7h9pP9UK
 SDiIrNmD3sFx2FAlJWYNIBMApmEdk8rsaMpjIYu7jlK9wOiIhzHIKS+7GqW3GdUxxVHJbLq
 SgIS70JBD2c1wtcmVLNTb/W+MADtq10=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com
 [IPv6:2001:4860:4864:20::33])
	by mail.toke.dk (Postfix) with ESMTPS id 7B767946B2C
	for <cake@lists.bufferbloat.net>; Tue, 11 Nov 2025 08:27:17 +0100 (CET)
Received: by mail-oa1-x33.google.com with SMTP id
 586e51a60fabf-3e284c5fe0aso1458353fac.1
        for <cake@lists.bufferbloat.net>;
 Mon, 10 Nov 2025 23:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1762846034; x=1763450834;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EdDLM7TZwveH0/JqbUxezsrejaTiYahIQbuU2NE0wdM=;
        b=tcpUDrXCUnF2zbDoakCcSIIXtWrA5XmZ8udAmRo7feiOl5IolbCd+dqXv23n2dz02e
         VkYQlwP2IgAGT9ITiQ9ZVnXOR06AaIhvBy1vo5DWTarm8TIv6MJNQhySAWEqSNQgggu6
         Pi67Fk8BtwUbdFsuyK97zCG2EsobKBteGkyqCrk9tzu2kNEXrGzMU7f4/fKdDCXhtOJC
         KQrPiwsoMrYsMvKA90PSs5UpVbxjh3XMlhi5PSnXohUWeUQqfEUt+5sgDh3DgucTlALa
         SrPmrBd52Be4tL/L2J0ODM+IPQKSfVIcLN5IzbMFzl09FSV9fNaa0FPzV36qgi2eeeMy
         7NYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762846034; x=1763450834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EdDLM7TZwveH0/JqbUxezsrejaTiYahIQbuU2NE0wdM=;
        b=M4drNDf6MLIqRUSxJAQH+e0DgUj/EhMzyjFRmUmIDa++Di1wa+VkE9iKWGWGjrII62
         BKV1DjNMbjoRqL+FJONASH3J/nFsQTYlLFnZysdhPry4a9FOcYlwmS3Kztw7a4EtJo1L
         i8IdWkVmM/PqbHCN9oRapSehMoxCpEEcWlOWJH8OIESAS10vB9/6rAVTB0GnL9gdJGd+
         JbLP7gct6tSqCpNByfi3MMF21DFAg2DnBFpBPY4If3uaWAoRgvATxEaYTXDEhB0a4wok
         zyZQMhHZTQjA07BC5HoZOtf5D3jasLI0ZewYwVdxyiY+7YLAzOij2p1ySJlhfs27jLC9
         wSjg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVOdW27Q3J/L61TF5qZ7rFknCV6Wz0tdcUttVa5ZcVZusC2MYImkEL2DEKcqLI2YbJyipVY@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yx3zZOtmzhumhs9x1FV5nt4hzqWh/kiR56l2HuoLH6pESg8en3v
	tx2U2Q7mWAq9kk0HC5xaIRcBR0otI/MRzPunpzrhdaYnd+EENvyTdEusTo+3eQRWEA==
X-Gm-Gg: ASbGnct8EY3zgoZ2TKOWl70jJ5WqMPbZkXSyg9qqvT79SOS4BwHzQQaGepwMDIFld+E
	LfG5lqnNPByJzMrCTSYdHnRm6azEcJ2j7SfRBE3M84iejJmhhT8hfyyah1UZrMxwfsapqpWGQDo
	ISv/uKM5GHLvamSK/F0v9QdMy49pcCCrtcoWOVUIVhMrj/FroXtmXzNFNbHxNv5K4I4WfInGib5
	rLxXPxEgOZ2xXvdqRgubaUltt4YV2bwrR6/0pY1mGRqT/U/+MHEoM4HXmVBjJwV8tCNBghfbmMO
	pqKiyfqZEhMLXOb2dkmCGWJ8iiPw3MMuQVLNdx1ZXBeJmPk3C+/czX1PE51nrz/5gytAxXEVDqj
	3L7wXezgrv9JNJyJ2zjT0V/RUuQLvcldOmyQTSOXLA4shjYjTQ96P2Ho/K+XWh/+N64Con3PQZX
	78+aGZ9aw=
X-Google-Smtp-Source: 
 AGHT+IFd6Jer4lE+V7PGNCVsObGmZhx77d/cTJ6aNDrwghe904/gKVPwVHXhJdW5Yvvuw4QaQNsOdg==
X-Received: by 2002:a05:6870:390a:b0:3e0:ac35:4309 with SMTP id
 586e51a60fabf-3e7c2744ec6mr5697311fac.3.1762846033991;
        Mon, 10 Nov 2025 23:27:13 -0800 (PST)
Received: from p1.tailc0aff1.ts.net
 ([2600:8800:1e80:41a0:e90c:97d2:9818:69df])
        by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3e41f1d007fsm7603192fac.16.2025.11.10.23.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 23:27:13 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: toke@toke.dk,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Tue, 11 Nov 2025 00:27:09 -0700
Message-ID: <20251111072709.336809-1-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: HIMSINFVW5DCUL5X4ZHD4ODVNOA25HHF
X-Message-ID-Hash: HIMSINFVW5DCUL5X4ZHD4ODVNOA25HHF
X-Mailman-Approved-At: Tue, 11 Nov 2025 11:33:18 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH V2 RESEND] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251111072709.336809-1-xmei5@asu.edu/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In cake_drop(), the function qdisc_tree_reduce_backlog() is called to
decrement the qlen of the qdisc hierarchy. However, it may incorrectly
reduce the qlen when the dropped packet was not enqueued, leading to
a potential null-pointer dereference (e.g., when using qfq sched as
the parent qdisc).

This issue occurs when the caller (cake_enqueue()) returns NET_XMIT_CN,
causing the parent qdisc not to enqueue the current packet, while
qdisc_tree_reduce_backlog() still decrements the backlog.

This patch prevents invalid qlen reduction by verifying that the
dropped packet was actually enqueued before adjusting the backlog.

Fixes: 15de71d06a40 ("net/sched: Make cake_enqueue return NET_XMIT_CN when past buffer_limit")
Signed-off-by: Xiang Mei <xmei5@asu.edu>
---
v2: add missing cc

 net/sched/sch_cake.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
index 32bacfc314c2..3a2ba9dfc22d 100644
--- a/net/sched/sch_cake.c
+++ b/net/sched/sch_cake.c
@@ -1548,7 +1548,7 @@ static int cake_advance_shaper(struct cake_sched_data *q,
 	return len;
 }
 
-static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free)
+static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free, u32 current_flow)
 {
 	struct cake_sched_data *q = qdisc_priv(sch);
 	ktime_t now = ktime_get();
@@ -1597,7 +1597,8 @@ static unsigned int cake_drop(struct Qdisc *sch, struct sk_buff **to_free)
 
 	qdisc_drop_reason(skb, sch, to_free, SKB_DROP_REASON_QDISC_OVERLIMIT);
 	sch->q.qlen--;
-	qdisc_tree_reduce_backlog(sch, 1, len);
+	if (likely(current_flow != idx + (tin << 16)))
+		qdisc_tree_reduce_backlog(sch, 1, len);
 
 	cake_heapify(q, 0);
 
@@ -1934,7 +1935,7 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 
 		while (q->buffer_used > q->buffer_limit) {
 			dropped++;
-			drop_id = cake_drop(sch, to_free);
+			drop_id = cake_drop(sch, to_free, idx + (tin << 16));
 
 			if ((drop_id >> 16) == tin &&
 			    (drop_id & 0xFFFF) == idx)
-- 
2.43.0

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

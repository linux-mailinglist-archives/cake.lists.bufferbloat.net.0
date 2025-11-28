Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9FFC91758
	for <lists+cake@lfdr.de>; Fri, 28 Nov 2025 10:33:14 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9D2079D8E47;
	Fri, 28 Nov 2025 10:33:13 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=WB427rsX
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764322393;
 b=QhrUQch6KiyQV6js1IplB6jw08q4Xtpq+JPEWj5/q9KMocFbdw7Nf0wdHacSD6UAGZhXs
 F31T664QRDYZNMNA8bSQ72tz/SByUUv7c4FFxPl7yc82xsXWsCRN29O3YUtPkL7tM7YdjbS
 wqOTWK5USCaIRFoWDqyQZocnMTOrRfw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764322393; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=jxeD14FVefpLReXtLXB3hNnO9G59eCIL0PNto0XQbB4=;
 b=GFTUDS7JZd0iHUb9WCfQV1BdIn9MqD5dgYWTKsqR/CqLfc54jIHEB0OhFAi6hPRatfokS
 J8mdJg8nSuUbjE8v5Xc7k70UQrG0hZmx082TpZFa7HOXwspUylN8VGBYKQu5vYrYxQMgtwu
 /cm0LzVHSFjyb59akASiAoxjNkATvPo=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
	by mail.toke.dk (Postfix) with ESMTPS id 455DE9D64D8
	for <cake@lists.bufferbloat.net>; Fri, 28 Nov 2025 01:14:56 +0100 (CET)
Received: by mail-pg1-x52d.google.com with SMTP id
 41be03b00d2f7-bb2447d11ceso775151a12.0
        for <cake@lists.bufferbloat.net>;
 Thu, 27 Nov 2025 16:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764288894; x=1764893694;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jCaI+f5NqScl/yY8l3X4XEtMVHAuZqqjYqotFuE4Rng=;
        b=WB427rsXjgd9f0STYzTPBLyVtNBntYkzbnz1+xezaduTyvzHcBLvqnC9HOsTg7N92c
         NlHG/EbaIYj0qa7g/uo2vClIJ1m9GbxiQhXVFm/xoRI7mPJsdbSlQI3uQ4d5dIuQl8EZ
         NRWFNN2oHHLYeoQcCBiErDbFtGQT75haMFn087dQPnsDU5GfhMcNIplOYxcQv1Shv2H+
         UuUCy+6bEr64TDU48XECnnC5b3U5wdju5yIjgScnGqZw7BnbUnmJbNjg9EYqAXiUHsZE
         NQSJt7MQfNR2F59q8u5B/aGwJQp80tcQPiBEKpXnottIpt9Ei+7oU7kmIssY8MjXIiie
         ttYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764288894; x=1764893694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jCaI+f5NqScl/yY8l3X4XEtMVHAuZqqjYqotFuE4Rng=;
        b=NYW8IfGbYH/Tlkf3XGhlKWbxzF1RRuCdGr+gqYMknLuhqoMiTMwyTQMRuU+jfrmSYa
         lDF/yWiDZoebdVpoOOP2cp1uafpVBvxEz201HKSeTUCmTpJA9YPrUwN6bmFifLEf4Rkw
         oDoheeA4zdqfiH2YS++t8NmxrVoYRsDlbHuqlHDjl2IxViqT72nyFq4Zv617kBU+QNts
         cT7oOUZ/1EEOqo8rO3qsKHsLcyyLawVFK3huFtEZ2kMnKr50ZMit/uVE2g3XQ+J6JSUm
         Rza4qiKjBkO2h8NI1MWY9RI3TwLnvwaGGvJNCyYwoj/vdr82MWTQ2XJ23pEHrKAHN/FP
         6T+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVcDfpnEebprzcRx4uWh0tmprXT0/XVOHP7b/cuFKlzkJPJ7clFT7HHTJu+71SXQBSaVwXV@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwvVM4Zo1LHP2mbJlZLxJqXOZRnS7ZxZOqwIGAEyekaNAQs5bh9
	Zbmx4xAw4IRRAHthe0ZKbn+X0ek4xMbRngoqOxHe0CsvvOjU+NjNyvloHG2fboJRTA==
X-Gm-Gg: ASbGncu6GqG3a+BHWSirAkRo3uZ8CvzWAOW7zik3mdxMg51iy2+F70GN/jN9ZLCx7Br
	sJKNOq5usx7dVJh9w8crqohI7RLTWGDX3beShb1hBH4TN1bnbmDzlTiSvJYLxsgsgDwXmoTM8i3
	ftvvn3lXrg4QKKxc+OoXNhU1uMsgvHukMDhmtrtCKa/mC2VljA4TnzwWgsThHAdvF5j7jT70tOc
	krH9TM0+SrUR3uHvGsU99knSvquxnQnGaSBwh4yvD2iX7hMN4FP5GDdbT/GTvTRXTaVcybSPXmk
	JUqSAxOwW9Oyh9aatsNWS24l1uUQQ6dhWqhC59ufd0afl9ZTHr8dhR2x+/TYAE386baC80LkeE2
	+44WvqQZvHizcgf3jKlCtAZExTsMWOm0zAalv9Z5f/c/Vv6UNWxJCMupswq6qMEr0RYrt6ldgmT
	yoTQiEseBhwPKJFCvRG4fEg/tUzIlYUTBez07VX225
X-Google-Smtp-Source: 
 AGHT+IHk6fBcQj6sDpY9Cdk+BLtfzupbTKpmhr80wcNRLkkx6Y2dHXuAfEU5NcSPs+LoF69kmyeSlw==
X-Received: by 2002:a05:7301:3a81:b0:2a6:cb0a:19b8 with SMTP id
 5a478bee46e88-2a9415942bbmr6244361eec.15.1764288894425;
        Thu, 27 Nov 2025 16:14:54 -0800 (PST)
Received: from p1.tailc0aff1.ts.net (209-147-139-51.nat.asu.edu.
 [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2a965ae9d06sm11209080eec.4.2025.11.27.16.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 16:14:54 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org,
	toke@toke.dk,
	xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Thu, 27 Nov 2025 17:14:16 -0700
Message-ID: <20251128001415.377823-3-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251128001415.377823-1-xmei5@asu.edu>
References: <20251128001415.377823-1-xmei5@asu.edu>
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: BXWFKRURVM4EQWC6GPNO6GZSC3NWSQWV
X-Message-ID-Hash: BXWFKRURVM4EQWC6GPNO6GZSC3NWSQWV
X-Mailman-Approved-At: Fri, 28 Nov 2025 10:33:12 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net v8 2/2] selftests/tc-testing: Test CAKE scheduler when
 enqueue drops packets
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251128001415.377823-3-xmei5@asu.edu/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add tests that trigger packet drops in cake_enqueue(): "CAKE with QFQ
Parent - CAKE enqueue with packets dropping". It forces CAKE_enqueue to
return NET_XMIT_CN after dropping the packets when it has a QFQ parent.

Signed-off-by: Xiang Mei <xmei5@asu.edu>
---
v8: rebase to resolve the conflict
---

 .../tc-testing/tc-tests/infra/qdiscs.json     | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/tools/testing/selftests/tc-testing/tc-tests/infra/qdiscs.json b/tools/testing/selftests/tc-testing/tc-tests/infra/qdiscs.json
index 0091bcd91c2c..47de27fd4f90 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/infra/qdiscs.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/infra/qdiscs.json
@@ -1005,5 +1005,33 @@
         "teardown": [
             "$TC qdisc del dev $DUMMY clsact"
         ]
+    },
+    {
+        "id": "4366",
+        "name": "CAKE with QFQ Parent - CAKE enqueue with packets dropping",
+        "category": [
+            "qdisc",
+            "cake",
+            "netem"
+        ],
+        "plugins": {
+            "requires": "nsPlugin"
+        },
+        "setup":[
+            "$TC qdisc add dev $DUMMY handle 1: root qfq",
+            "$TC class add dev $DUMMY parent 1: classid 1:1 qfq maxpkt 1024",
+            "$TC qdisc add dev $DUMMY parent 1:1 handle 2: cake memlimit 9",
+            "$TC filter add dev $DUMMY protocol ip parent 1: prio 1 u32 match ip protocol 1 0xff flowid 1:1",
+            "ping -I$DUMMY -f -c1 -s64 -W1 10.10.10.1 || true",
+            "$TC qdisc replace dev $DUMMY parent 1:1 handle 3: netem delay 0ms"
+        ],
+        "cmdUnderTest": "ping -I$DUMMY -f -c1 -s64 -W1 10.10.10.1 || true",
+        "expExitCode": "0",
+        "verifyCmd": "$TC -s qdisc show dev $DUMMY",
+        "matchPattern": "qdisc qfq 1:",
+        "matchCount": "1",
+        "teardown": [
+            "$TC qdisc del dev $DUMMY handle 1: root"
+        ]
     }
 ]
-- 
2.43.0

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

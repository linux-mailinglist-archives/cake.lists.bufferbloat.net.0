Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D1DC89CFE
	for <lists+cake@lfdr.de>; Wed, 26 Nov 2025 13:43:23 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id E1D8E9D0063;
	Wed, 26 Nov 2025 13:43:22 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=F1RvIQH1
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764161002;
 b=7TLra/I41epnPLkJOsKlLiFPqpOumPhl9AaJPvdzofkTvcy2Q72TTT7udqtowVzHqL9jX
 26i4QguyC2QVeV0wdirbe/DenJWU4o/4MrS1S6Tfm5b2mSlac9k6/XGSprmFgX/Lf5Mn++F
 bnZmAIMjgYeuRfp5IKQFV+ERwn72rhQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764161002; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=0II8Oqf+u6Amo9m5pwY7QsnhCbqkriyXw8LtZGDWjpA=;
 b=pRazBWxeyv3lrqTZCRWBB5hrjBvP3dTxYxf+/GA5dtnX5Fol1PKC1czlrBG2lFfzHWAc5
 8xLCqhPoC3PoGddmzvT9VCHD3Ps0qMToRytvWv+UvNbls+qO66AAKIbLmr5/zfppKf6mNaV
 VD919UBcxG4ziOJaVG6jpESkL0kCc2w=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
	by mail.toke.dk (Postfix) with ESMTPS id B60C39CBFEF
	for <cake@lists.bufferbloat.net>; Tue, 25 Nov 2025 23:02:34 +0100 (CET)
Received: by mail-pg1-x531.google.com with SMTP id
 41be03b00d2f7-bc09b3d3afeso3279038a12.0
        for <cake@lists.bufferbloat.net>;
 Tue, 25 Nov 2025 14:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764108153; x=1764712953;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QLLp+9xoYFeMM6ThcXlZ5mTZXoCrUuoipov9zgXj5Hk=;
        b=F1RvIQH1WdbW5oaO4+8i6Kg8hR0IQCEamODNrhEbaMcdpFUh0k5Nq4JqrHGOsFddM/
         U+jH0ioH36AQwNoH5lu9XMGwL6BinbK9tZvslCkEMXz/Le/jsiBLgVhw4VNd0aPuZe6c
         ytzYBzJV6FZnnmPZvsA7k2PYCD2pwaUuQvg8kCUeAuqCFEURKBYo7wcA7q8wEpSHiAqX
         2Fvwz6UkFhfaUNhPjxwSlT4hIStHHTQVcSVZO8a0A3PXlQ5ZW8WXa8X0VsAIct7VDZYO
         veBWq/pv8jJoqbWr4jSqvi+WQHv2vN+2GBwCbtIizKAZDuuiwnhERpXoXoT2uW72sXUz
         r27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764108153; x=1764712953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QLLp+9xoYFeMM6ThcXlZ5mTZXoCrUuoipov9zgXj5Hk=;
        b=ZCNAJ6NKQRCjcUvav9HWBnhnzksG2rjAwwE+b5lg7nCr9Xcx4mc2Io53GzMR2a759z
         h+FOt6r255nnnGgaGPHnQPao5OCc3uNDt2Yc+vLs0s6baH2uyPayCf3izvxmkzHs/7fD
         tw9Z233T+B5xpqyJnX/kMDG6XhtALSW1/G5eB2hNGiObLkDG9/NCmBRk0GvbnYBeBzhT
         AyUyzSqqwFQN6Jw1r+MP0JIB8OOpabSpZr11P/T3qnXZesAzQ3QbBqdkEhZU/DeEH/yX
         wziFy5RS2Ck04keK2dQ3ihO30nALj6vii1rXwBygLOR4xzCJut/Rns7fYOPeLmWsj+3u
         fQ5Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWNQDBgGZoFIotHJafeebMwX96STQR0QyN6xZRnE5dVHEPRdw/22k2xFLOgGDBMHg3MauKs@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxqN18r+BhbzxY86GQoLH2ZeTpUfXpWUmxvGmkQrGjzeTQ8MIBZ
	F5Pe3ucLChx+nbnedkfdIJ4vPRYfooIEXGs8S++ZFudEUy6gh1unS+SJQ6ydhLH7QQ==
X-Gm-Gg: ASbGnctyXfUHkspLDZqX+mgqBIuAOhmT966NR8PPzsSOTbdKKJsY+tPWhTynPewgUri
	Sg1OZoHWZjrs2u3Syw3Gj13v8lAoUyf3AbQj3z7R2uALun6oLWuAV78FBDw0eIQmTNzZtTyGIS2
	LCMEQBRgGKQK0qEcg6S/VmqiMlhEoc/Yqy0QDT6bPORDtbfdcv4myidHk2vfvHXYMigeSA8uMAW
	UFArm3XWPUuvk9V+5gFDIM18S7RtQCEUNhxV4Tpdt1g6EDeTdUOqZbR0MsAPpRvxbpMM1L4JsNN
	/VvRqxU7uCtsgmxFjrqnviOMmfB+ou9dwacdXpcn++l2jcTKZa8qYwi0RpPgJSisZzvHoI0jfOO
	YLTqUpG3PnxTTrD1SIW/GJ/goJ1MtCfR8oRFHE73C6HZCEFJsGhrC+LefkFDdm/hyGWLqERsEaK
	olWDSFaDmyf7/McNTkK4DRI1DNFU9a92WDs9YEvCsELac/XAJWxqY=
X-Google-Smtp-Source: 
 AGHT+IHYWLHwfJQFY5vPSpfY4MhaPUMp6tbUtQbHpPh6Vb3yoGU/MUbAJFQn9lUN23VjbXJqfRBt5A==
X-Received: by 2002:a05:7301:1298:b0:2a4:3593:dddd with SMTP id
 5a478bee46e88-2a7195804a8mr10507256eec.10.1764108152650;
        Tue, 25 Nov 2025 14:02:32 -0800 (PST)
Received: from p1.tailc0aff1.ts.net (209-147-139-51.nat.asu.edu.
 [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2a6fc3d0bb6sm93697505eec.2.2025.11.25.14.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 14:02:31 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org,
	toke@toke.dk,
	xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Tue, 25 Nov 2025 15:02:13 -0700
Message-ID: <20251125220213.3155360-2-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125220213.3155360-1-xmei5@asu.edu>
References: <20251125220213.3155360-1-xmei5@asu.edu>
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: R3JPMTQ564DWO73YUXUPYR557VKTQICB
X-Message-ID-Hash: R3JPMTQ564DWO73YUXUPYR557VKTQICB
X-Mailman-Approved-At: Wed, 26 Nov 2025 13:43:21 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net v6 2/2] selftests/tc-testing: Check Cake Scheduler when
 enqueue drops packets
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251125220213.3155360-2-xmei5@asu.edu/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add tests that trigger packet drops in cake_enqueue(). The tests use
CAKE under a QFQ parent/class, then replace CAKE with NETEM to exercise
the previously fixed bug where cake_enqueue() drops a packet in the
same flow and returns NET_XMIT_CN.

Signed-off-by: Xiang Mei <xmei5@asu.edu>
---
 .../tc-testing/tc-tests/qdiscs/cake.json      | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

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

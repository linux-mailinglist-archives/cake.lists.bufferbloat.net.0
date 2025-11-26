Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F6EC8D8E3
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 10:31:20 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 126119D3F8A;
	Thu, 27 Nov 2025 10:31:19 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=IHOgASX2
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764235878;
 b=O0fGr1lExlMHM2Q0cdR20kPz84LMA21Kpoe4Gm+6vWm4CMbbYIQdTDQ8jweq+c+JM7v+7
 o8Nhy8ljnow4y5jgjcRvG7HFUpzXCEt5TskdJmSZShoeFCJWXf0sh+0gQEJSjoyJNg7MNHZ
 R53/Z5+2sUSsgJSKJEO608mhjXfZeG8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764235878; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/cNYZszf4pV8FK7YBS1Yc1VK+d0QM/LHE/79s5R1XRk=;
 b=iDi0gM4qfv9o2GP/gSqtaFsKJUXRKbeeOpHWcvX/vZyk3W0M1KDwZ/n+HZUZYmXWEEnQM
 Rl2ETlY59XGmOfoFB5tJgj5rIow6BZObltCJkNCaxsgVMNfBWKZurI0572qBZfSrQ+BDCNl
 T67CvUmKZNXwreytE/KWD0/jT49qORE=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
	by mail.toke.dk (Postfix) with ESMTPS id 875939D2087
	for <cake@lists.bufferbloat.net>; Wed, 26 Nov 2025 20:45:26 +0100 (CET)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-b98a619f020so115208a12.2
        for <cake@lists.bufferbloat.net>;
 Wed, 26 Nov 2025 11:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764186325; x=1764791125;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xb4ctooSlhuHklNq5K5hr3KOMwOrD4ELSQ0NDzCLvDw=;
        b=IHOgASX28Q5YmkAEnfIve9xZOFI4ZDdHhANQS3qvF0tA/Ub/S+nM44NuoX/UAVnNig
         mZ2LcNza77MkUEy+1uff85j7raTTHXAmVr43MuWALl5zY4K+fDD1KHa/f8ZRTVNJszAs
         XcvAweSEw7Z45Qw0Y4Mv96HXxorO66fS6CCQmghMVxXI0KfaJiz05YRN8Px56AlltY55
         9oHuldN+He6UHXaMG2Z/EqWGcF62si0pvx02zZExvMmiY4bPPi1hs98FIaMnuGxadDsl
         y2n02Kt8Pg4PGC6WOyZUHO2ZvMAPELuxsfXGgNsr5jeYhrMa9hbfkQ6G/r+73Fw/Wwz7
         6U7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764186325; x=1764791125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xb4ctooSlhuHklNq5K5hr3KOMwOrD4ELSQ0NDzCLvDw=;
        b=hQTWb5kN72xi90pO+tl/AOh/coLy9F02PFhcUCV3JMaPWgAGAXi889E6wyaxRqnBOP
         y3GSPoX+Wl75ZbmkPcRY8m3ZkTZ8tqD7X7elZHSjw7FTqQ4U/7SLCNFTRf+TKl6xyWDb
         gpHrrkf5Bcq+/7oGWDd36O62wE1mydM3KWAh7DlyNn4AXS0eD0eO6k7fmsxgTAZWUIg4
         acB9YRlB+DjQ0+eudDjxQR7pJWH/KVouyv9p6s39dqrwHpPIMoUduEaiLnOGtwlsuX8h
         UgCBDGXfv/EsCQrMujC8/xP2anF0rKkoxnwC8rkKUQfngjhC+mHQ2+r+VDSQrDTzxvC1
         lQOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVp2JugSw4tiwj32w4J6ogjqqnZ/sOl5EPmlcPvmMnFT93+lxF3tmmHV5HXdcUQ13GpcFV6@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzSdQq9po5NWB++K9KjF1Tw6LiGlbQlJG2IfcfC89Znk1EKVztD
	LRCFqNOcw5xDtgXPx4NutdlUCthPpgk0yXsenDoq0D4H7N1PyZtZ6138xPCM4QbWAw==
X-Gm-Gg: ASbGncvbMHXS9TJXf9VZyCDlEOxowvp9MHszHjRmZXi5805Fo+PVv+PaPXC2lEmC6Ae
	418SXFudc/ytDTBp6X2ZmJ1Vu43dDuIlQqoIBjjAWsnivjJ++/EyklSsvu1PEODDg9sK/BXoZf9
	+G/h9eaMLwDiv8J0QM45x59Kle6Q3l1T1PWKnl+Sk7i/RhMmvgaAKItENr1TYdtRiB53kIPgXQs
	otojVjyjFUdYIbnLZlyQMFlmvZw5gpX/bRzrqGR/d/9EMBEokF501ohRNOTQ21Lia26YyMWAPQ5
	E4RVGIZmSX1VdaSh6YbLsebmym+fFwbvxURXFMU9TcJAD5H6FsBBmi6O94Zj31YVpWpJVh7DAQZ
	9tBOY3VO3s0q4tZqJ/1/8rw2t94LGNHaJ0/NZNUOE7LGelSOxFLACNwtshe7AJprVuBcVJjECXk
	hyLu1+Kr/7zPrK/yn2rB+rVcuZG6rGcC19Fo5hUC6U
X-Google-Smtp-Source: 
 AGHT+IFXQqaYxSU+Pn2T0MM1TKAv/3tD+zkD+FuktY4c68vJlb/ANANvXuc0oDx2oHqa4ajL3Eq3gQ==
X-Received: by 2002:a05:7300:106:b0:2a4:630b:c789 with SMTP id
 5a478bee46e88-2a7192da0e8mr9168597eec.37.1764186324879;
        Wed, 26 Nov 2025 11:45:24 -0800 (PST)
Received: from p1.tailc0aff1.ts.net (209-147-139-51.nat.asu.edu.
 [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2a93c5562b2sm24252446eec.3.2025.11.26.11.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 11:45:24 -0800 (PST)
From: Xiang Mei <xmei5@asu.edu>
To: security@kernel.org
Cc: netdev@vger.kernel.org,
	toke@toke.dk,
	xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net,
	bestswngs@gmail.com,
	Xiang Mei <xmei5@asu.edu>
Date: Wed, 26 Nov 2025 12:45:13 -0700
Message-ID: <20251126194513.3984722-2-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251126194513.3984722-1-xmei5@asu.edu>
References: <20251126194513.3984722-1-xmei5@asu.edu>
MIME-Version: 1.0
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: C5SN6F4XINQ4Q6WCRNOXVATS556NMEWN
X-Message-ID-Hash: C5SN6F4XINQ4Q6WCRNOXVATS556NMEWN
X-Mailman-Approved-At: Thu, 27 Nov 2025 10:31:18 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net v7 2/2] selftests/tc-testing: Test CAKE scheduler when
 enqueue drops packets
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251126194513.3984722-2-xmei5@asu.edu/>
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
v2: place the test in qdiscs.json
---
 .../tc-testing/tc-tests/infra/qdiscs.json     | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/tools/testing/selftests/tc-testing/tc-tests/infra/qdiscs.json b/tools/testing/selftests/tc-testing/tc-tests/infra/qdiscs.json
index 998e5a2f4579..e99ae8f81cf6 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/infra/qdiscs.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/infra/qdiscs.json
@@ -961,5 +961,33 @@
         "teardown": [
             "$TC qdisc del dev $DUMMY root"
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

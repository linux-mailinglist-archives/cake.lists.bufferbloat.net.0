Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD4F8B6493
	for <lists+cake@lfdr.de>; Mon, 29 Apr 2024 23:27:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6CE373CB4E;
	Mon, 29 Apr 2024 17:26:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714426019;
	bh=p6r/M9Y+oVXiup3p1jIbzptbcTijZbF2QXr9tx7KTsA=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=NiLcIYxyM2IhiAdNdXkgFfsn6GVXVUsCT5ZoAgYCl5JiKjDYlAmiZx/ADQi3J8njt
	 EgniACREZiqo2xvDUMJPMLfyDmc6VwpcfAANNzFs/hKv91Roy+YgwrapSvhPpRbW/x
	 1tQbdv8WdjP+o1XIujBabMdvNJ44RoU565S6gE86GUUB1Xbc/v2ATtt2ETk5MfF2fh
	 HCoELyaKpkqclL/+V8K4wd5kWZYiBzVDiDJr8/c6kpexediHuASN/ijNxFj3c7AtDm
	 KBf38oo0CH+62MGB5HAUDopHmoIIj9F322fag9ZlWjYLbr4n6Di40doCXrFNuOCS57
	 iNv0rFS+Sqh7w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 018123B2A4;
 Mon, 29 Apr 2024 17:26:57 -0400 (EDT)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-41bca450fa3so20222545e9.2; 
 Mon, 29 Apr 2024 14:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714426015; x=1715030815; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=NywfmFtWCRQrxLh3+QMehSdo7s5TnGjrdpA6Y6GNw+E=;
 b=TQYXCgXPTvMhaHtXAcDk6q8nblR7aVz5wmypG39OEIL6fGgN1u5GqN0QUqe1dwRkBq
 FzyoeHFrhWnUweyJgTlmka6nEQPkHueX2zbZbEQznY9gTHag4VGnSgVgcxqqkIFcDKxL
 u0BLDoOTB/RcoTs++gPq56honPYRo/z0heo2Mggwx+LDaLoQlDiGHyCTm/H7cGTM3rZm
 UJaD+LjQEqrdk+Vinxiwir7v+f6V5TyIKfjRcr0E+tOY512mLSG4Alqo5tQbwpVMt9d5
 Vx20FRJUf/EIN2rr98PtYPd9WQucj9s+21KKFIn8x2zRNCQ2QYQm5DVC1m7ZUi3F3QKs
 spqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714426015; x=1715030815;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NywfmFtWCRQrxLh3+QMehSdo7s5TnGjrdpA6Y6GNw+E=;
 b=lG0SOqz15LoJebpcuMLS98Obs6IR43e5i1B/TbUe4gFl/BmaLQhPme9T0rK1ZNw9vN
 g6tOmVahcegimdwMEyr3a0aot4qWw2vi2bZEjye/QgyJFtpBu7lcnSweT4gPsQ45paEq
 RVVwF8Q9Y5rE9lfl491rEDOXFt3guOXfMUN+04rSwk/HM7xrcHTVMRHpWcjg8AVG9ka4
 Ak8KA4FJg6qdJr4ghx3SU0a989E+/0cjvOmmZtRTvFW5y6WULj4uAzPngv0T79cehYQo
 1Ao+OYz0UCuFiWHzL5V0vSIDxxGq8DSgG8ypKu7BX1hTBX7njhrgoUlCi1H8WV9iukNO
 /Mow==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8+S3dWbbUAkgdr7gOCP9cFZoXsNCQqcEBiqCdGOnYjfR6hVVIwl0PkmlX4QHvWHyLXDZ67iCfTfTeg7U/YY6eWIwf8SmLE1CWPAWd5nVyn+67hHkDpL1kB4aM59wt6xYQeQBOS/DDKLSw6PmWsrFvjoLiRaStBqjfGvX3cjCl5qEHsmOQI6esjzbVhhuufRQHcHhxHUaKF6QKZcLPx41IW67vN6sDvPOFSZpm97Fxnw==
X-Gm-Message-State: AOJu0YzUScUhsuXYQLpJYpjuk+vTnlXCxWvdZBcNey/flzF7KO+p6G0R
 zUQHRMjoGtEoXHBkOLHGwbj5icYKVzLtdDAx9YRv069r2L+RfAnDliYVbaszsosGYvD+sYc8QGG
 lNVusKpkpp3mhLYnimdYm0SAve3KvvwXH
X-Google-Smtp-Source: AGHT+IFcgRjsLhOfUwPrqbNCiRm46EmjgvWLeGVU8CjqxAJ50GjeW68s+y3ivLnE/UaD+4ewXIIQqm7M35b1HKWpeXg=
X-Received: by 2002:a05:600c:3503:b0:419:d91e:ba41 with SMTP id
 h3-20020a05600c350300b00419d91eba41mr592046wmq.32.1714426015409; Mon, 29 Apr
 2024 14:26:55 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 29 Apr 2024 14:26:43 -0700
Message-ID: <CAA93jw60GY82v2fWUe-dMb2gCguSY+eYs2ing7Xk80trdF8qBg@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] waves podcast is out
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBkaWQgbXkgdXN1YWwgYnVmZmVyYmxvYXQgcmFwIG9uIHRoaXMgcHJldHR5IGV4Y2VsbGVudCBw
b2RjYXN0LiBXaGF0CkkgYW0gbW9zdCBwcm91ZCBvZiBob3dldmVyLAp3YXMgc2hvd2luZyBvZmYg
bXkgbW9twrRzIGFydCBpbiB0aGlzIHNlZ21lbnQgaGVyZSwgaW5jbHVkaW5nIGhlciBtb3N0CnBv
d2VyZnVsIHBpZWNlICJTYWQgU2FtIi4KCmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9
QlZGV1N5TXAzeGcmdD0xMDk4cwoKLS0gCmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9
TjBUbXZ2NWpKS3MgRXBpayBNZWxsb24gUG9kY2FzdApEYXZlIFTDpGh0IENTTywgTGlicmVRb3MK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

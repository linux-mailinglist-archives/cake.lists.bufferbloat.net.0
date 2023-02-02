Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B04226873D6
	for <lists+cake@lfdr.de>; Thu,  2 Feb 2023 04:30:35 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 406FF3CB40;
	Wed,  1 Feb 2023 22:30:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1675308633;
	bh=YieZe/6hbyRgXPF4HrvPypDFz2BNsmGTECFsAlKmOSE=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=YPIXd24KWWhBJMYHpwzJj3E1bhnK/mfvpKb0bSWttMoPyQJ4yESswYVZvy7VnXmay
	 GJdmDuIi/WmBVF6n9ToQSGOiiHl20LrQakmWpBJjuaDZGsKAn6cusy8cdJT2iotilB
	 pk9e0JXaHG/FQaIKGlj0WDvTarIl85esTc5E6KsGZveIVyfIy1tYaXmTV0qp4+AkiU
	 w8wY1Z6pO7dbEBzuHBV7WIHJFdCRGLl+olhy3/LLDj2JyhXY9ajcT2xzyR7tcZGG0C
	 /l2QuHA9qJu972sw3CqaHL0plE+j827T06CtOtUBCi+B4r7VMe7g/wXrSs+Odo+3+8
	 7N4yMgxpcRPgg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 768FB3B29D
 for <cake@lists.bufferbloat.net>; Wed,  1 Feb 2023 22:30:32 -0500 (EST)
Received: by mail-wr1-x430.google.com with SMTP id h12so514052wrv.10
 for <cake@lists.bufferbloat.net>; Wed, 01 Feb 2023 19:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=AbwbnaMFljMtEcX6NWLxvjOGNo2mvrBEb0QTMU8PB0g=;
 b=j2AYMGNp0OKhohUpWYNP08QTlinTa89sCSy3TQzd8uZCvyBbXPd8Dnk3To/afK7LuF
 cDawORxhPSL8IW4hHTyeQMUPplLVLRhkCx/6a736mUo7yL9qWbReUeKQyQi6zWkrUl6U
 acBrTCGAkeKoG1bGsaHWglEs6HQ9gk0XPP1nmoReNqMfApuEvvPBUL5aBeCBWY5sFlNw
 UR6noy2jo1140k1u+Lh1pobil4o2vhfUpCz3CvrpGAH8jr/9jMr6BgZN8CEL2hIsDdx9
 FP2H69Xw6+TAW2Ah7KCwGZObe3luHYm2MRz8ULAzzBrH8VSEe6UusVbXRxYLSKuAHoNk
 NCEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AbwbnaMFljMtEcX6NWLxvjOGNo2mvrBEb0QTMU8PB0g=;
 b=Z/hoLHxmdsDdFdHVHXPueOF/ZXF8a98qkjv9mN+KgRHFksl+NUkvkJtbqMDXaJQuOJ
 0I326viNsEH+TvbkJj6p2CJOM3tvMQVZW/EEDvY2r5uLpm1d2KgzR0MTCwvvsQvkaoDz
 o+eQ0DWxePuHgAXlu8DYx9TjC99cb09ng4brggihXnAgCvrP5yB5HcmSnFlwnTBozEnK
 DQPf8OGQcPiVzqlkOkj82uuILYcB/BxUN1KXcuk/P4eIMuUxWgrir9b8uhfzpexBj+jj
 l7YhleKJhYLnlpd6l8fJs3euCU+swkz03Q689XjKoVz9DNHSOUoT40tXuSJj0CrA4hZf
 LXQQ==
X-Gm-Message-State: AO0yUKXRlAGF667B9JqappdHmBdz9RT+K4UkZrdM7VbQaFVYExvh4Zhq
 Inf6UDGes3rax5R4wPuk/wfJMtHy+mOnBOzISLbl1VNyaq0=
X-Google-Smtp-Source: AK7set/GrWAWSaoL3qXYpudt5uHt4QPEVe7afyfHlkVy78pukkcmQdNJm7mT8rl5mz/odI+sF6RJ1228uuQZrpLoG1E=
X-Received: by 2002:a5d:614d:0:b0:2bf:e260:591 with SMTP id
 y13-20020a5d614d000000b002bfe2600591mr219536wrt.688.1675308630647; Wed, 01
 Feb 2023 19:30:30 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 1 Feb 2023 19:30:19 -0800
Message-ID: <CAA93jw5YTf=t_-BE9xojPGwaH8V-ZEfeH3ZjZ0gWiLQp9Yyz6A@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] I think it is increasingly feasible to make cobalt better
 now against modern transports.
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

aHR0cHM6Ly9hcnhpdi5vcmcvcGRmLzIxMDkuMTE2OTMucGRmCgoKLS0gClRoaXMgc29uZyBnb2Vz
IG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3b3VsZCB3b3JrOgpodHRw
czovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hyb29tLXNvbmctYWN0aXZp
dHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExD
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

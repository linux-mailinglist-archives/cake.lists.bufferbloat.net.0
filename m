Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D1F6B9718
	for <lists+cake@lfdr.de>; Tue, 14 Mar 2023 15:02:07 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 69BAD3CB69;
	Tue, 14 Mar 2023 10:02:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1678802525;
	bh=3sHDXlU6ZgHjqoZnv9Nu0+sjmErxWWholFo44ZL9k5o=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=T5ttdflRdBpvxcwhugcNfN8KMJFgOhBy5lr4D9OBKJO/JmSDjKIV7NUgdag9YXATz
	 dSJKvkQdgW3dmi8N2lcezVKm/iEOMX2hfqZaQcB/Wc5ibpDcLJYClYU89Sw6Ghos33
	 xz71/7FW+cTDSW4Zp4i0yU2j0vnYnxQGs0YxpAfx3Ci7q3ll2CIiJOtbKKMxBhg0Qa
	 AQIwGDil/0GtZegVUnrlPu1ufuopq0yIWJRjp2ajJrgUioRCXnyus3xcL+LVIWr334
	 WVXsaY0yG9HUHdzxTJM3P90T/YlBUYdJwfimeizmmt2iK3HmeVAhEQ2O0LkYT6LjW7
	 QYEAoGgC0wvtQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 287293CB37
 for <cake@lists.bufferbloat.net>; Tue, 14 Mar 2023 10:02:04 -0400 (EDT)
Received: by mail-wr1-x431.google.com with SMTP id p4so8257314wre.11
 for <cake@lists.bufferbloat.net>; Tue, 14 Mar 2023 07:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678802523;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FKw4t8AorS/XRbHTcXRIvXbiQ1OoG2SmB8vwZs2kkmI=;
 b=mRIVNXz0Eagv4pKzmXu7dWX1cfiGqSKhqBbYSjRwBnsSSC3o2tmfo7fovzm+47Wo2M
 d/orTm58H/AS4H3p99B1qTbnLFHfRygfg9gQbvngEFKFcgBTiKWhuLZsFpCojUbaPWtY
 XQc5r626BzgLUS+fjVt/trG1vTThxjmwAz23nYBTmGYg2dcCQwJG4l4ZtfEhWrudJa0r
 sQ83ZkXkcN+YP63otHjjBwQKVe8C4Icusfv76dXYHe37gGlzKsUwRRGNrRCdN/FgVviC
 Z8q3G4WkGzfWTcVZeJof95lZjQmkFHgjpSyot7FVQ0iryKneWd/CXuN5qcGqx5KFvpKI
 vWRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678802523;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FKw4t8AorS/XRbHTcXRIvXbiQ1OoG2SmB8vwZs2kkmI=;
 b=vqMmrUeP/ohCYQ6tnh/GmaDLiRvKWv2eaSpXozQhbGSsFv+gh16JZ5bbu9tNZ0BiXZ
 woxYrFEvbSl2hBr2IF+iojNgUCxB8fsmE3ruu+BeDB0oKy5l0AMob/0y5s0dMmox4x3s
 HRWembw4xaPf9OSqepw1vbbQOM44tpubx4JG1bzps7kqyZlmuC9A5muNernbFcyo8DLs
 2aGXoSPYCWxuRmGswfG3J01Qdz4rQbxvrUE7qpelcNfq/KZYSjX5Vk6JvtWsNkWRrGGL
 kHTFSxlFusQbdfQ1kkXkHRjVYcseGlj5VhNmQLRBnT0ckYTcsairDnINRZQWnlsJLpCw
 7Kpw==
X-Gm-Message-State: AO0yUKXv4mBfxkQ2AvHmYoBM9amfE97kels5eLLgDwjaMuBB1DYsOXgW
 01kzZ4swzwMcHE9J9m3gqriSMGaW2el/bg8eWQY=
X-Google-Smtp-Source: AK7set8xixzHlBwKw82dSl/tgm3DEfCVv6IqUgjFb5BZqZHnEWEi7bnpdh+Ew1L/pgbEZLfSaEH4IRRISKEbaCvz17s=
X-Received: by 2002:a5d:4347:0:b0:2c9:8a3c:9fc0 with SMTP id
 u7-20020a5d4347000000b002c98a3c9fc0mr7903247wrr.13.1678802522872; Tue, 14 Mar
 2023 07:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <167348364734.15098.9183646444272144529@ietfa.amsl.com>
 <FR2P281MB1527B1114EA0718F8BB19DBF9CD79@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <659CE6DE-2B9D-4210-BAF8-BCC99E2ED875@cablelabs.com>
 <FR2P281MB1527003371292BDB9F08764A9CDE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <DEB97936-375A-41C8-8ECB-E33F94D30056@cablelabs.com>
 <FR2P281MB15273966161929E8BAB937869CA29@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <7434C6A7-4CED-4D39-A852-2714AB9DA1DC@cablelabs.com>
 <FR2P281MB1527C89A1654A77FAD6A24AF9CBE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
In-Reply-To: <FR2P281MB1527C89A1654A77FAD6A24AF9CBE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
Date: Tue, 14 Mar 2023 07:01:51 -0700
Message-ID: <CAA93jw4_MAX1DULpvU_Uo7BuyvvRpqZ-_gZP+HbhC251osCT3g@mail.gmail.com>
To: Ruediger.Geib@telekom.de
Subject: [Cake] draft-ietf-tsvwg-nqb-15.txt vs the cake AQM
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
Cc: Cake List <cake@lists.bufferbloat.net>, Greg White <g.white@cablelabs.com>,
 tsvwg IETF list <tsvwg@ietf.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBoYXZlIGJlZW4gc2l0dGluZyBvbiB0aGUgY2FrZSByZWxhdGVkIHBhdGNoZXMgZm9yIHRoaXMg
Zm9yIHllYXJzCm5vdywgYW5kIGl0IGlzIG15IGhvcGUgdG8gZ2V0IHN1cHBvcnQgZm9yIE5RQiBp
bnRvIHRoZSBuZXh0IGxpbnV4CnJlbGVhc2UsIHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBpdCBnZXRz
IHRocm91Z2ggbGFzdCBjYWxsIGF0IHRoaXMgdGltZSwKdW5sZXNzIHRoZSBzZWxlY3RlZCBjb2Rl
cG9pbnQgbnVtYmVyIGNoYW5nZXMuICg/KQoKQ2FrZSAocGxlYXNlIHNlZSB0aGUgbWFuIHBhZ2Ug
aGVyZToKaHR0cHM6Ly9tYW43Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuOC90Yy1jYWtlLjguaHRt
bCApIHN1cHBvcnRzCm11bHRpcGxlIGRpZmZzZXJ2IG1vZGVscy4KCmJlc3RlZmZvcnQgaXMgZXhh
Y3RseSB0aGF0LCBiZXN0ZWZmb3J0LCBhbmQgd2lsbCBub3QgZ2FpbiBOUUIgc3VwcG9ydC4KClRo
ZSBkaWZmc2VydjMgaW50ZXJwcmV0YXRpb24gaXMgdGhlIGRlZmF1bHQsIGFuZCBnaXZlbiB0aGF0
IGZsb3cKcXVldWluZyBoYW5kbGVzIG1vc3Qgb2YgdGhlIE5RQi1saWtlIHByb2JsZW1zIG5hdHVy
YWxseSwgYW5kICBWb2ljZQooQ1M3LCBDUzYsIEVGLCBWQSwgVE9TNCkgaXMgYWxsIHRoYXQgaXMg
aGFuZGxlZCB0aGVyZSB0b2RheSwgSSBhbQp0aGlua2luZyBvZiAqbm90KiBlbGV2YXRpbmcgTlFC
IGludG8gdGhhdCBjbGFzcyBpcyB0aGUgcmlnaHQgdGhpbmcuCgpOUUIgZml0cyBuaWNlbHkgaW50
byB0aGUgZGlmZnNlcnY0IG1vZGVsIGluIHRoZSB2aWRlbyBjbGFzcywgc28gSSB3aWxsCnB1dCBp
dCB0aGVyZS4gc2luY2UgY292aWQgd2UgdGVuZCB0byB1c2UgdGhlIGRpZmZzZXJ2NCBtb2RlbCBh
IGxvdCB0bwptYW5hZ2UgdmlkZW9jb25mZXJlbmNpbmcgYmV0dGVyLgoKQXMgZm9yIHRoZSBDUzAt
Q1M3IHByZWNlZGVuY2UgbW9kZWwgaW5jIGNha2UsIHdlIGhhdmUgZGVjbGFyZWQgdGhhdApvYnNv
bGV0ZSBpbiB0aGUgY29kZSwgYW5kIHdoZXJldmVyIE5RQiBmYWxscyBpbnRvIGl0LCBncmVhdC4g
QW5kIHRoZQpkaWZmc2VydjgsIEkgZG9uwrR0IGtub3cuCgpBbnl3YXksIGRvZXMgdGhhdCB3b3Jr
IGZvciBldmVyeW9uZT8KClBhcnQgSUkgb2YgdGhpcyB3b3VsZCBiZSBhIGRpc2N1c3Npb24gb2Yg
dGhlIHZhcmlvdXMgd2FzaCBtb2RlcywgYnV0Cm1lcmVseSBnZXR0aW5nIHRoZSByaWdodCBieXRl
IGludG8gdGhlIHJpZ2h0IGxvb2t1cCB0YWJsZXMgYWZ0ZXIgYWxsCnRoaXMgZGlzY3Vzc2lvbiwg
d291bGQgYmUgbmljZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0499B3331E2
	for <lists+cake@lfdr.de>; Wed, 10 Mar 2021 00:14:32 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8339F3CB39;
	Tue,  9 Mar 2021 18:14:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1615331670;
	bh=FJEsQ55kjL9Na/iyGXk9voQKEyofus5CMeGQVCC5bYA=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mG3RYCV0JMx97W0Rc+8R5h+hJuOn9kvT44PJsNSsB9q+DmD+SXe1kpxXf4mJ/hHMS
	 vKqrx8rUlo3ZMQ5z52+5oLAnehEKU2Yw1PZgAf/RtUwShTE65JVK0bOB4LamMnbQwL
	 qMCjlXK/bBMgEdjKVFA0+IZZuaO1625sSyNBAqFIELtd6IvvQFShY6KGW1Mhsb+n7U
	 xp3S1tIIcLJKBaxFozOPFbLUDnRDZLychK8oG+dcyw3QhYXXyO81iAeOAelaZlVl9w
	 he4qdciLwpF6JMg8QziZzvWAvpcznp1YX7+jD51FPoGmqUASEQAQwvp0tGrDWlLv9+
	 Q7PAWnpo09imA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 67DBE3B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Mar 2021 18:14:29 -0500 (EST)
Received: by mail-lf1-x135.google.com with SMTP id x4so23467259lfu.7
 for <cake@lists.bufferbloat.net>; Tue, 09 Mar 2021 15:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=vv+yosbxwU0OWTCxh25uabW5x47b/s6/VVHvcofhgSU=;
 b=brPdv8StMIDOl/B5zG1l0OUhlI/vbx0+y81mG34oZL63yCAJMpfwl2xExwVa9oIusr
 8ik0/xHjEdNuZ4UPzUwXLRYoK8H2M2Kx95mIbeA/b4PfJ5DeVtnssieTcaxceMYE+tTg
 UC5ns3jCoWAJB3d4mi0QpfUTmC4Shvc2iKt2PA1dEVKGxi8i7S3UVW1aidWwPgSmevlW
 rj3TPedSiuVOVOmI7ROkxG5Q9QsVVaf3NKmpuzioJyAnqzKZ5GFb/DBpbVLU+Qb/4eI6
 nBf51sGBk2WrnunDUlxJEZqbhRqH6J1Z9iHfOg9AMuAbnCh6zxGVJN7uesxXvZ4WXV2w
 3tMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=vv+yosbxwU0OWTCxh25uabW5x47b/s6/VVHvcofhgSU=;
 b=lCfGpbvong2bYB1ooaBwl63bDSjstQOXioxkX/U8EqxvQfHfaCP6xc3ct5x2GKN04U
 ZLFFc7jfN1ZWHhnbvhNMuLG4tQrNJ9ftATYpEpQ/Gk2CTqj/i5HVUhYX2rIFbabJ7jYa
 Hj0E/fiKylpbdYLd7rY4n47+u4Q5ZTrQW/hMXYl47K507JJt8VLmAsKUIYUlDmqYMTtZ
 QmaWk/xWng5zR1HVjFhhVxwcX8j73jU9nFh20fqTLJyXCXQx+Ex+4h8MiGU+p3H/w0PK
 UrX+1JzS1NgHDpr2EyLB+FM4POmyJGL9aX2LhTs8XoGpDWg1pXFjl0KKndkYF5YrQdXd
 iDCw==
X-Gm-Message-State: AOAM532zL3deLsq8/VxTvphAsiBzCbC2iBi5l9bFpIPLdI3sxZ549Ci4
 jRRPj+Kz257mBr/GeqW5yos=
X-Google-Smtp-Source: ABdhPJyE9teM6+jdmz00pGuKIhXcP7TTmNNH3JGy7lzaB0lM19rYpNrk16pwhdMfqYmgBb+rhZky4Q==
X-Received: by 2002:a19:8197:: with SMTP id c145mr211756lfd.655.1615331668265; 
 Tue, 09 Mar 2021 15:14:28 -0800 (PST)
Received: from jonathartonsmbp.lan (176-93-29-60.bb.dnainternet.fi.
 [176.93.29.60])
 by smtp.gmail.com with ESMTPSA id s5sm2242578lfd.284.2021.03.09.15.14.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Mar 2021 15:14:27 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw6Z1af9T=qf5kjwnhu+_4V6JnKXrUciXAuL1sEpkBCWWg@mail.gmail.com>
Date: Wed, 10 Mar 2021 01:14:26 +0200
Message-Id: <9AADDAFC-ECCE-4023-BB68-C5CC729EC521@gmail.com>
References: <5407860ac65c4059838e7952ae162f9d@telenor.no>
 <CAA93jw6Z1af9T=qf5kjwnhu+_4V6JnKXrUciXAuL1sEpkBCWWg@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] STEAM tcp algo from CDN?
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
Cc: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>, Taraldsen Erik <erik.taraldsen@telenor.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA5IE1hciwgMjAyMSwgYXQgMTA6MjAgcG0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWls
LmNvbT4gd3JvdGU6Cj4gCj4gMTAtMjAgZmxvd3MsIGN1YmljLCBsYXN0IEkgbG9va2VkLiBJdCdz
IHVnbHkuCgpJIGNhbid0IGNvbmZpcm0gQ1VCSUMgZnJvbSBoZXJlLCBidXQgaXQgc2VlbXMgdG8g
YmUgNC04IGZsb3dzIGluIHBhcmFsbGVsIG5vdy4gIExhdGVuY3kgdG8gdGhlIG5hdGlvbmFsIENE
TiBpcyBhYm91dCAyMm1zIG92ZXIgTFRFLCBzbyBpdCdzIGhhcmQgdG8gZGlzdGluZ3Vpc2ggQ1VC
SUMgZnJvbSBhbnl0aGluZyBlbHNlIGluIHBhcnRpY3VsYXI7IGluIHRoaXMgcmFuZ2UgaXQgd291
bGQgbG9vayBhIGxvdCBsaWtlIE5ld1Jlbm8uICBJdCBzZWVtcyB0byBzaHV0IGRvd24gZWFjaCBm
bG93IGFuZCBzdGFydCBhIGZyZXNoIG9uZSBhZnRlciBhYm91dCBhIG1pbnV0ZS4KCkl0IGRvZXMg
aGF2ZSBFQ04gZW5hYmxlZCBhbmQgc2VlbXMgdG8gYmUgcHJvZHVjaW5nIENXUiBmbGFncyBpbiBy
ZXNwb25zZSBhdCB0aGUgY29ycmVjdCB0aW1lcy4gIFdpdGggdGhpcyBzbWFsbCBhIEJEUCAoSSd2
ZSB0aHJvdHRsZWQgZG93biBxdWl0ZSBoYXJkIGR1ZSB0byB0aGUgYW1vdW50IG9mIHZpZGVvY29u
ZmVyZW5jaW5nIEknbSBkb2luZyBhdCBwZWFrIGhvdXJzIHRoaXMgd2VlayksIGl0IHF1aWNrbHkg
ZW5kcyB1cCBnZXR0aW5nIENFIG1hcmtzIG9uIGFsbW9zdCBldmVyeSBkYXRhIHNlZ21lbnQuICBU
aGlzIGlzIGFjdHVhbGx5IGZpbmUsIHNpbmNlIGl0J3MgdGhlbiBjb250cm9sbGVkIG5pY2VseSBi
eSBhY2stY2xvY2tpbmcgYW5kIEZRLgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A9E69E79D
	for <lists+cake@lfdr.de>; Tue, 21 Feb 2023 19:35:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 806FD3CB41;
	Tue, 21 Feb 2023 13:35:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1677004524;
	bh=uoeGxwFBu3EyI316GtQHW46Ehj6OeuqIEsJF8aJSxR0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=e7OEdUBZOKcdv+sejjP/ZxnFoldCRNOvqrDKdyVKVcY3CvPIXJZAA21gNRVaLYYmH
	 w52zzLQlSBHKa74/I2LcMaULdt9vZK7hxsfq44gBjLRiktBO2XoEV1pTO8M0Wbj40D
	 T6WmSMPncqXEF1Ju09Nio8WM7eEpZ0xecN8fZTBXjAi1lBk3DDygjHEZz9rKw/bdUN
	 X5GkYdQcHxhGf/Zut6o8HObt05iaBiX2YertByKa85pbd/2A4tqXd3Drx1RXKIcs4w
	 Qrkmrb/DM5vEbAUS5z89VbzwLWPLV2lKv1qY5DKQo2xvDfQLMG0trkUyVmeHkgajF3
	 yjQU5FHmD4jrQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5E3283CB37;
 Tue, 21 Feb 2023 13:35:23 -0500 (EST)
Received: by mail-wm1-x32c.google.com with SMTP id
 l2-20020a05600c1d0200b003e1f6dff952so4329558wms.1; 
 Tue, 21 Feb 2023 10:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7PKJmjiKJtHK2h7YVCSLwRpbAQNwF+MyzeWSpZRkCFo=;
 b=DUtrEhn9Q+l3JSBk6fjuPJhEgtbiRjNsT6gyF6RqQ0Lx0op3nXhE+e92wRJ/yETFxr
 AWhmk6Fq/r/15ctKfR0k4Z6vMLs5r2e+GFZgOnT6OLgFShNDlpIAl9O/pVV1/ocweXZX
 sHGU518Ypct919vB2MnppI7A8ZiXPqHblCY+LrQSt/jI9t1nZafaJcJDCufnwx30sGhz
 vX62cCik0Nbr5m5whMKzqZ+5Rfi58C4nc8lUwgtSzi5vSYugXou08kv5hdQ9FezVEg+r
 +2LVvExEnypSaev16nwIaNTa/Qv3NupkF6K7ERjgd41oNharKI4ledXJy0rkSj35JEcj
 AOtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7PKJmjiKJtHK2h7YVCSLwRpbAQNwF+MyzeWSpZRkCFo=;
 b=ZHMbCGWt+tvWrxUjhQpbKfW6bfqkTRVQgcyaDXhWHpPagapsnZLaoA2ihriPCJGCV7
 Sl6xX8RY6ErgAdiU3HxCr1RhZJF67L2q8O5mjfa+TOwc/7ooFDXEnDG3p3ZROjjkN3Bx
 6Gvic3Wz3t1yRJBnnP87RDeDNOq3vQBaBEyxXk55IkYIasRbhmwHXJJiqwcRKbFb4o6Z
 VRbZem3p/iHCB60p2AZpHFgO4Q6uudvV/73s4dM/3xb6sMn+1/lBXI+NGe/PKA/E1AsM
 gaMM88irxBjyIQ7CZABNV25jDp2rM/1LSi1d23AcpWvw4blsCcQlou5vLutRoRH3UP/r
 1dwQ==
X-Gm-Message-State: AO0yUKXru9JTDJ0JplByv8/v+8/Z8SGbZf3VveRU7HfSsra6f8gYFXSj
 1zPcEmc9re/O9aPnUGM7XeV5p4525oXRSiZ3LWp2Wyll
X-Google-Smtp-Source: AK7set8zwwi6MgRtrUkrDRPz6+5X3zQgkuNFSqDYp9ScdCQVh3+CBmzY+dDLR+L2f9hfMz1KQeQNgOtlRErAUsWlWNM=
X-Received: by 2002:a05:600c:8506:b0:3e2:1c73:a1aa with SMTP id
 gw6-20020a05600c850600b003e21c73a1aamr475452wmb.206.1677004521709; Tue, 21
 Feb 2023 10:35:21 -0800 (PST)
MIME-Version: 1.0
References: <CAM4esxQwvo-QNiq_1PDx_z8RvxcJwrMdkb+GJLYJDYw6+_gO2g@mail.gmail.com>
In-Reply-To: <CAM4esxQwvo-QNiq_1PDx_z8RvxcJwrMdkb+GJLYJDYw6+_gO2g@mail.gmail.com>
Date: Tue, 21 Feb 2023 10:35:10 -0800
Message-ID: <CAA93jw6bCuPHMZF2_xAWnogh726M56Dn4kmN9w7hyfq6URJ0Qw@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [tsvwg] CONGRESS is about ready to go
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

LS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRnJvbTogTWFydGluIER1a2Ug
PG1hcnRpbi5oLmR1a2VAZ21haWwuY29tPgpEYXRlOiBUdWUsIEZlYiAyMSwgMjAyMyBhdCA5OjI1
IEFNClN1YmplY3Q6IFt0c3Z3Z10gQ09OR1JFU1MgaXMgYWJvdXQgcmVhZHkgdG8gZ28KVG86IDxj
b25ncmVzc0BpZXRmLm9yZz4KCgpIZWxsbyB0cmFuc3BvcnQgZW50aHVzaWFzdHMsCgpJJ20gcGxl
YXNlZCB0byBhbm5vdW5jZSB0aGF0IGFsbCB0aGUgcGllY2VzIGFyZSBpbiBwbGFjZSB0byBtb3Zl
CmZvcndhcmQgd2l0aCBjb25ncmVzcywgdGhlIHdvcmtpbmcgZ3JvdXAgZm9jdXNlZCBvbiBjb25n
ZXN0aW9uIGNvbnRyb2wKYW5kIHJlbGF0ZWQgdG9waWNzLgoKKDEpIElmIHlvdSBoYXZlbid0IGFs
cmVhZHkgZG9uZSBzbywgYW5kIGFyZSBpbnRlcmVzdGVkLCBwbGVhc2UKc3Vic2NyaWJlIHRvIHRo
ZSBjb25ncmVzcyBtYWlsaW5nIGxpc3Q6Cmh0dHBzOi8vd3d3LmlldGYub3JnL21haWxtYW4vbGlz
dGluZm8vY29uZ3Jlc3MuIFRoaXMgaXMgdGhlIGxhc3QgdGltZQpJJ2xsIGNyb3NzcG9zdCAoQmNj
OikgdG8gbXVsdGlwbGUgV0cgbGlzdHMsIGFuZCBJIGVuY291cmFnZSBvdGhlcnMgdG8Kc3RvcCBh
cyB3ZWxsLgoKKDIpICBBbHRob3VnaCB0aGUgcHJvcG9zZWQgY2hhcnRlciBoYXMgbm8gZm9ybWFs
IHN0YW5kaW5nIGF0IHRoaXMKdGltZSwgSSdtIGluaXRpYXRpbmcgYSAibGFzdCBjYWxsIi4gUGxl
YXNlIGhhdmUgYSBsb29rIGFuZCBmaWxlIGlzc3VlcwpieSB0aGUgZW5kIG9mIHRoaXMgd2VlazoK
aHR0cHM6Ly9naXRodWIuY29tL21hcnRpbmR1a2UvY29uZ2VzdGlvbi1jb250cm9sLWNoYXJ0ZXIK
VGhlIG9ubHkgcmVjZW50IGFkZGl0aW9ucyB0byB0aGUgc2NvcGUgYXJlIEZhaXIgUXVldWVpbmcg
YW5kIHJhdGUKcGFjaW5nLiBJJ2QgbGlrZSB0byBoYW5kIHRoaXMgdG8gWmFoZWQsIG91ciBzcG9u
c29yaW5nIEFELCB0byBydW4KdGhyb3VnaCB0aGUgSUVTRyBwcm9jZXNzIG5leHQgd2Vlay4KCgot
LSAKQSBwaXRoeSBub3RlIG9uIFZPUXMgdnMgU1FNOiBodHRwczovL2Jsb2cuY2Vyb3dydC5vcmcv
cG9zdC9qdW5pcGVyLwpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==

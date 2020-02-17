Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0471614C5
	for <lists+cake@lfdr.de>; Mon, 17 Feb 2020 15:34:44 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2A7163CB39;
	Mon, 17 Feb 2020 09:34:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1581950083;
	bh=0FdXIcMRx1hn4navo20bDptj37j5O+5EivshywEbGxk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GjDaxTOnQGTCU4Nfh+TVAyFA/DxjP3NCh/gw4a6mP1ms7+45eZ4eSQH+b0kmLrf+K
	 Kle9R9ENUoYaldmQqCio31G4DgzpKNCKABk3AQcMTVFJLsLxmPivq+Nk21bF+54+A4
	 17hEbZngtzzJbWTvWnJX+yELDq312Km2GJ59Ng3HJA0zNucD6/9MlDSNaddBtaxw4a
	 AaOACFSmxQIoT49ST0QTq+sQ3H9N50x01EwraTBx/ToF2Ix7m4L0Aloo8ZRKjGgxWx
	 AcajzLPG9iInE/I63A4bp7MD1bu1MI7sgs3kOae33yDMCzYEERZNKf+/0pQv2/HT0A
	 VbgZesdSCIc7A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D9D033CB35
 for <cake@lists.bufferbloat.net>; Mon, 17 Feb 2020 09:34:41 -0500 (EST)
Received: by mail-il1-x135.google.com with SMTP id g12so14430363ild.2
 for <cake@lists.bufferbloat.net>; Mon, 17 Feb 2020 06:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TEa1LPKQfuRvwnbSM82OVrxWP+UtsRotmXKV8xJluE4=;
 b=Tr5OJnjNC0S44TqNxckAk4i+cihfM8sSj9pTmYgNNwjn/Cqdct9vWxNEZcRCGjk/DU
 H8iJe+gtl9MG6wweMTPNsCLGl2VaPGiFxk3GENOY8Y5A25FWLXxY6JW/h2Pg2lpnwsAl
 t49D/3tUk8PCTLtryq5pX4ItDKkiJNyiZ+YlYzv9Mr2jH31PtdEMQvgr1V1xlMC4L2bM
 WTUmJLY8EFg0MPSInFm1WHWjmjYlBi+9HXmDZ6OOIIVMIxBcw1hXwHEVakFzL8/rERcM
 Xz8Yi65pVCgGwLzcaLpd/IoWoKp1KtdaW+5eyJ+FbTaLOwijIdfo1RZcGmkfRK/3h9dF
 1UKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TEa1LPKQfuRvwnbSM82OVrxWP+UtsRotmXKV8xJluE4=;
 b=C3NV0NT2KS/MkRpFSnGF/LcOzfAlaL0twtrjMJ3tONcA/dqW7H/U1XW6Zi4l1ZErR8
 H4JarQk1lMxW3WKkEyFopigYVaRyKqvLMwIR+OsmbYRAIS8BOtYMz2VqOT4u2oRrtDOL
 Tb3xtT1VwR/AxTWAFjlQpwjJlCrsugabTJv+r4lMtfsf+w6ocxHk/FMXn2bFRGIyT2p6
 YslfZ27R3AbuJOxYs0+cdViOkwvPJsGufoiUd1WWCXphgfmVQiIQFrtalWP7efc/5RkA
 wWy7xwP07xDd5DhiLTcf8FBkvNCHGjLbKqVWtYgBLJgWOOF1uCK06ib0NVjngRiu4kDB
 veAw==
X-Gm-Message-State: APjAAAWSfOC7M8Ucvp+b0ZSYh739020QUjby7XXo4JcY0I2W+AoKRQNU
 Fbr/vs6Eskd9Uxtt8HEQF6xKJTrGEqUuJZ60M1WjoA==
X-Google-Smtp-Source: APXvYqz1Js1wAfD/wo7bjhtZibhlQUqqXlnN+zofcZOibJMBXbcmscworiX5JF7pgk2G+G+ygqSYjHUVOkiEs1UapB4=
X-Received: by 2002:a92:85d2:: with SMTP id f201mr15554786ilh.45.1581950081255; 
 Mon, 17 Feb 2020 06:34:41 -0800 (PST)
MIME-Version: 1.0
References: <etPan.5e4a9b91.58a6c5a1.1b7f@surfglobal.net>
In-Reply-To: <etPan.5e4a9b91.58a6c5a1.1b7f@surfglobal.net>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 17 Feb 2020 06:34:29 -0800
Message-ID: <CAA93jw4wvP8OJAL6_XAZOO+wp36-Vbd4Rj9BvBd+_Tv8cjNexQ@mail.gmail.com>
To: Mike <mike@surfglobal.net>
Subject: Re: [Cake] Large number of Flows
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

ZnFfY29kZWwsIENha2UgZXRjLCBzdXBwb3J0cyBhbiBpbmZpbml0ZSBudW1iZXIgb2YgZmxvd3Mu
CgpJdCBoYXMgYSBsaW1pdGVkIG51bWJlciBvZiAicXVldWVzIiB0aGF0IGNhbiBnZXQgbWFwcGVk
IHRvIGZsb3dzLCBidXQKaXQncyB1c3VhbGx5IG9rIGlmIGEgY29sbGlzaW9uIGhhcHBlbnMuCgpU
aGUgMTAyNCBxdWV1ZSB0cmFkZW9mZiBpcyBiYXNlZCBvbiB0aGUgb2JzZXJ2YXRpb24gdGhhdCB1
c3VhbGx5IGEgbWF4Cm9mIGEgZmV3IGh1bmRyZWQgYWN0aXZlIGZsb3dzIGV4aXN0LCBhbmQgZnVy
dGhlcm1vcmUsCmV4Y2Vzc2l2ZSBmYWlyIHF1ZXVlaW5nIHRlbmRzIHRvIGRlZmVhdCB0aGUgcHVy
cG9zZSBvZiB0aGUgYXFtIG9mCmtlZXBpbmcgb3ZlcmFsbCBmbG93IGxlbmd0aHMgc2hvcnQuIENv
bGxpc2lvbnMgb2YgdHdvIGZhdCBmbG93cyBhcmUKcmFyZS4KCllvdSBjYW4gcmVjb21waWxlIGNh
a2Ugd2l0aCBtb3JlIHF1ZXVlcyBpZiB5b3UgbGlrZSAoZnFfY29kZWwgaGFzIGEKc29mdCBsaW1p
dCBvZiA2NGsgcXVldWVzKS4gV2UgZG9uJ3QgaGF2ZSBtdWNoIGRhdGEgb24gMTBHaWdFKwpiZWhh
dmlvcnMuIEl0IHdhcyBraW5kCm9mIG15IGFzc3VtcHRpb24gbW9yZSBxdWV1ZXMgd291bGQgaGVs
cCBpbiB0aGUgNDBHaWdFIHdvcmxkLCBidXQKdGhhdCdzIHVzdWFsbHkgZ290IGhhcmR3YXJlIG1x
ICg2NCBvciBtb3JlKSwgYW5kIHdoYXQgSSdtIHNlZWluZyB0aGVyZQppcyA2NCBkZWZhdWx0IGZx
X2NvZGVsIGluc3RhbmNlcywgNjRrCnF1ZXVlcyBlc3NlbnRpYWxseSwgYW5kIEkgdGhpbmsgdGhh
dCdzIFdBWSB0b28gbXVjaC4uLi4KCgpPbiBNb24sIEZlYiAxNywgMjAyMCBhdCA2OjA3IEFNIE1p
a2UgPG1pa2VAc3VyZmdsb2JhbC5uZXQ+IHdyb3RlOgo+Cj4gV2lsbCBjYWtlIHN1cHBvcnQgYSBs
YXJnZSBudW1iZXIgb2YgZmxvd3MgbGlrZSBvdmVyIGEgdGhvdXNhbmQgcGVyIGxpbnV4IGJveCB3
aXRob3V0IGFueSBtb2RpZmljYXRpb25zLiAgSSBkaWQgc2VlIHRoYXQgdGhlcmUgd2FzIGEgcWRp
c2MgaXNzdWUgZm9yIGZxX2NvZGVsIG9uIGEgbGFyZ2Ugc2NhbGUuICBXZSB3b3VsZCBiZSB1c2lu
ZyBsaW51eCBrZXJuZWwgNC4xOSB3aGljaCBoYXMgY2FrZSBhbHJlYWR5IGluIGl0LiAgQW55IGhl
bHAgb3IgaXNzdWVzIHRoYXQgbWlnaHQgYmUgZW5jb3VudGVyZWQgaW4gc2NhbGluZyB3b3VsZCBi
ZSBhcHByZWNpYXRlZC4KPgo+Cj4KPiBUaGFua3MKPiBNaWtlIFRob21wc29uCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBs
aXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCgoKCi0tIApNYWtlIE11c2ljLCBOb3QgV2FyCgpEYXZlIFTD
pGh0CkNUTywgVGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEtODMx
LTQzNS0wNzI5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

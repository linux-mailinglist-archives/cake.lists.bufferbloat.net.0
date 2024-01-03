Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 36478822ED2
	for <lists+cake@lfdr.de>; Wed,  3 Jan 2024 14:44:29 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 165E33CB4C;
	Wed,  3 Jan 2024 08:44:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704289467;
	bh=AT6BJZypJOEnrnw2ko0Eplb01BiE92JBS5lhw/3do5I=;
	h=To:Date:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Yj/KqGR/4eA4ByKUMHf83h5y1+9ShQU3S5VxVrTxvvH+p5cZeno0mNDogaAa3Un3V
	 m1NWeeeRkJ8XN6qD/SlTbEhyCdinanEslxOMBXVQOhBst30qw4/nM450n3PbaFJ7Bl
	 cW+RvefSHPCNqEItP4vosCDDXgfb6CtfthXijsI2w6JLtXPD7Rn7uOZ02zFeq2xKtU
	 Fc0jsKTLjR1EC9bFxOATJ4xlpQWIHSHycWwCzQMmpMUPbZWFDDng8uvIRU0Ppeb3CU
	 CXbKnvvRQE2chOX1mmST5qmr5uCs8VK2HCX9pV+Xy64JHd8fmqbKTLwpd9x40CXEWu
	 KDySgrN0pbg9g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B7A333B2A4
 for <cake@lists.bufferbloat.net>; Wed,  3 Jan 2024 08:44:25 -0500 (EST)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-a28b2e1a13fso20468166b.3
 for <cake@lists.bufferbloat.net>; Wed, 03 Jan 2024 05:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=heistp.net; s=google; t=1704289464; x=1704894264; darn=lists.bufferbloat.net;
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:to:from:subject:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IsraSxAsZHyIB3q5JHk4bT3z5nR8U19M6P+9i16Hyko=;
 b=Qg4PAmzpA6144CAxSJbetvQyOezyMFFgltSCP2y9B4KmWq2mwhY6WCXU1AlIMwqwqI
 jEtVnQqj++D7KxyikfBrNXy2jAoB3cO4p6sYVMaLamXZn1cVqF6spO+jpMJt1aRZlkc0
 hTS1ZjHGFdOEtmtUAuFxJjh/sEkwURN8NEGuNqD0LZS5uUythyeqdBNIcwGQFDlapnUi
 TXXKHzA/wwZ2ShZTPftIH6kRmkhh+vjxShhupqUVmWhLc6c44hJGGkXj08PQv5dsKaIS
 wq6QT3tmgpn53swswQgtgKg4KC5Xaio9HG4NUpTsZJJwexV/e5U4w+ibjd3SXrFTPu32
 /3ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704289464; x=1704894264;
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IsraSxAsZHyIB3q5JHk4bT3z5nR8U19M6P+9i16Hyko=;
 b=elW5sM4bO0HMqYXKx+RO9bS3j0QOIOAvL9GvqOqGGCY/JPHsa50rsMgbrnBEi1xL7j
 biVhTRIAMYbjsiMotkrFnwhMvI4Jj0IV+sAE5CyqP2MXjIcAtZK5lRcxY6BkexNXQIcx
 9W4Hmkb9ZilqsGTqPnEEpQXR2pkTrPe2jWKLraGxqMpCiCwCHWORBCmGD+TtT30d7Ulv
 2vo7mWfXhDsm1GwtfJil7p35uMZHGTlf+Tk09sAHIJr1Bp/scph5EOS1lwpp6KG9zQwy
 KeVJV8gLK6kZAiT+TWpDpEb2XCvKjavkUXwzIhwObXYCnp85PjWgMkpsQQKiM/Gwe+Ja
 4leQ==
X-Gm-Message-State: AOJu0YxI09zTG5oiMQXE2EStj4IzHeTS2fn/kBq1JUx6c6V9gGT+iGml
 0Jht5f27jcOaAvBsBLaFt2Px+y44FohRxA==
X-Google-Smtp-Source: AGHT+IEiXNM6Tx538YkdMrIYnL4z1vqTFEql1aL/iljEiLi/SA+ImjM9JQj/iQwUH+tF0pNps9B1/A==
X-Received: by 2002:a17:906:7e48:b0:a27:ef32:855d with SMTP id
 z8-20020a1709067e4800b00a27ef32855dmr2203092ejr.58.1704289464529; 
 Wed, 03 Jan 2024 05:44:24 -0800 (PST)
Received: from [10.72.0.88] (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id
 gc22-20020a170906c8d600b00a268b2ed7a9sm7624885ejb.184.2024.01.03.05.44.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jan 2024 05:44:24 -0800 (PST)
Message-ID: <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
To: dave seddon <dave.seddon.ca@gmail.com>, Cake List
 <cake@lists.bufferbloat.net>
Date: Wed, 03 Jan 2024 14:44:23 +0100
In-Reply-To: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
Autocrypt: addr=pete@heistp.net; prefer-encrypt=mutual;
 keydata=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
User-Agent: Evolution 3.50.2 
MIME-Version: 1.0
Subject: Re: [Cake] Ubiquity (Unifi ) Smart Queues
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
From: Pete Heist via Cake <cake@lists.bufferbloat.net>
Reply-To: Pete Heist <pete@heistp.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCAyMDI0LTAxLTAyIGF0IDEwOjU5IC0wODAwLCBkYXZlIHNlZGRvbiB2aWEgQ2FrZSB3
cm90ZToKPiBJIHRob3VnaHQgcGVvcGxlIG1pZ2h0IGJlIGludGVyZXN0ZWQgdG8gc2VlIHdoYXQg
VWJpcXVpdHkvVW5pZmkgaXMKPiBkb2luZyB3aXRoICJTbWFydCBRdWV1ZXMiIG9uIHRoZWlyIGRl
dmljZXMuwqAgVGhlIGRvY3VtZW50YXRpb24gb24KPiB0aGVpciB3ZWJzaXRlIGlzIG5vdCB2ZXJ5
IGluZm9ybWF0aXZlLgo+IDxzbmlwPgo+ICJTbWFydCBRdWV1ZSIgSW1wbGVtZW50YXRpb24KPiAK
PiBMb29rcyBsaWtlIHRoZXkgb25seSBhcHBseSB0YyBxZGlzY3MgdG8gdGhlIEV0aDIsIGFuZCBz
YWRseSB0aGlzIGlzCj4gTk9UIGNha2UsIGJ1dCBmcV9jb2RlbC4KPiAKPiBBbmQgY2FrZSBpc24n
dCBhdmFpbGFibGUgOigKPiAKPiByb290QFVTRy1Qcm8tNDp+IyB0YyBxZGlzYyByZXBsYWNlIGRl
diBldGgwIGNha2UgYmFuZHdpZHRoIDEwMG0gcnR0Cj4gMjBtcwo+IFVua25vd24gcWRpc2MgImNh
a2UiLCBoZW5jZSBvcHRpb24gImJhbmR3aWR0aCIgaXMgdW5wYXJzYWJsZQoKSGkgRGF2ZSwgdGhl
cmUncyBhIGNvbW11bml0eSBjb250cmlidXRlZCB2ZXJzaW9uIG9mIENha2UgZm9yIEVkZ2VSb3V0
ZXIKZGV2aWNlcyB0aGF0IEkndmUgYmVlbiB1c2luZyBmb3IgeWVhcnMgb24gcHJvZHVjdGlvbiBF
Ui1YJ3M6CgpodHRwczovL2NvbW11bml0eS51aS5jb20vcXVlc3Rpb25zL0Nha2UtY29tcGlsZWQt
Zm9yLXRoZS1FZGdlUm91dGVyLWRldmljZXMvZmMxZmYyN2MtZjMyMS00MzQ0LTg3MzctZmNjNzU1
Y2FlOGEyCgpJIGRvbid0IHRoaW5rIHRoYXQgd29ya3MgZm9yIFVuaUZpL1VTRyBkZXZpY2VzLCBo
b3dldmVyLCBhbmQgb25lIHNob3VsZApub3RlIHRoZSBkaXNjbGFpbWVyIGFuZCBiZSBjYXJlZnVs
IHdoZW4gaW5zdGFsbGluZyBpdC4gQWxzbywgaXQgbXVzdCBiZQpyZS1pbnN0YWxsZWQgYWZ0ZXIg
ZXZlcnkgdXBncmFkZS4KCkNoZWVycywKUGV0ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

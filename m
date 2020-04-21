Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C06011B32E6
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 01:07:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DB9FA3CB43;
	Tue, 21 Apr 2020 19:07:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587510459;
	bh=ToTamLBrrM5NTAbWvjHcDP8NrQXklAG9IVZ2DVReiDM=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y6ORwNkXI5+sa0eIZJhx6+8+GWANCnpCbYaFC65xy+4cl5IHtJpbhlfCc9W+uguFe
	 SkXj0IolgjH25BhoOpILjYDZU+Nuv/uVFK/VubUWnq00fiJq32uAMj1gQ23V9CBIm2
	 1qlvYgI0uhtAZIXey3o/AGMNpTDtFBzT8BjkGXFJdnVKBxB9TpGAENCyXdUlLwaBJo
	 4FTJuYp8fsTeR//d8f2YNV3kuPxZQYhhv4KN9eZ9+AbU1FGh5G6C/1Lo0U3/U/lWm2
	 /RjWONb3Qrl61pVGoL+x3xZEExCUz0jCZa0Co77nW649BLkMg5GYDzTomVMnCKcubV
	 AGywxxPm27mwg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0F9A33B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 19:07:38 -0400 (EDT)
Received: by mail-lf1-x12e.google.com with SMTP id t11so89155lfe.4
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 16:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=JTLic6Z7iWq4poBpObDa5wMjXId6wLrswuIZT8HgZVM=;
 b=t6VftmkbrDCHw3Wxb9RpxNq0wKwhjsWbzaqsc2NR/QdRD7y2K75yjsb3MDDkyiQmL0
 zc7UDrD1mL5yWPyHS4H99XnczowGVso2rktKjZLuhM6IEPNmDycEKtW8eESX38ZGT60q
 8acNz3SQgK2044bJflwGLx0oGDc2Tx7rDnHTjEMcfmP/ZrM3Yyqz0eqHVQz3nZMvVxbw
 Qw0AM6TssPDYzM8DBNLg3D91wUJF7ml4fOHwxq1PESnaklHkWvA4qq39M7CZrCSBdeCF
 pJnDKiJoF1e2dXw8pLPxoa7U1yvJKyx88igyRfaolJPJIkDaAfb1mRhF1jdzUykBElyF
 Xk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=JTLic6Z7iWq4poBpObDa5wMjXId6wLrswuIZT8HgZVM=;
 b=aoZkfi5jccIWMCv6KQ7eCEOyCqmM1OJuFo11neF0JeU7pKnxDpS/HuwYwwRDqQ2nL0
 oen5lWYoEy/VPAunLt2e5OtQ24dl/41nZFgJBP/TcD/DLutxpPiC1r4Ab2z2toMTH/yS
 EUbgrvFsGZPDvFQTkbSadSP77SjIyg0+i0e+Kvx5B+HA8gPInIsdYOKayabnfQnqWSCL
 4At3vaXlvIV9TCgQ0puq06PJjEi1otKtlrmowcVCAtbUPpgo+TpYca82uTdqFFfrVaPe
 QovWbTW+5NTn4VW2GLLrDqoBVVxuNmtThDdi+eBODbW4Q0lGnP8hx3oBgOH+bZ+AWFvp
 Rn4Q==
X-Gm-Message-State: AGi0Pub2DCiA8r6OIVFF0qutkqwL0moWMDJq+mJce77SdGVP9LeqLaw0
 3eovZ2/GXKetcqXOCzxk6A8=
X-Google-Smtp-Source: APiQypJAWA6hKBVx0QzZPePTfpa2hDF/lOLnYC7Qq5nTDfhG6D5xWNVIoDLNQc6ETnJaaWeH2M00Pg==
X-Received: by 2002:a19:4b90:: with SMTP id y138mr14794413lfa.39.1587510456997; 
 Tue, 21 Apr 2020 16:07:36 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-192-nat-p.elisa-mobile.fi.
 [83.245.235.192])
 by smtp.gmail.com with ESMTPSA id h14sm3207291lfm.60.2020.04.21.16.07.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Apr 2020 16:07:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw4hr+YS+W371pEiVB0KLy88miHtXpTrnLpa85B5AjTA4A@mail.gmail.com>
Date: Wed, 22 Apr 2020 02:07:35 +0300
Message-Id: <2044323F-4CD0-4A75-91DF-FF2DA3E41B86@gmail.com>
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAA93jw4hr+YS+W371pEiVB0KLy88miHtXpTrnLpa85B5AjTA4A@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Advantages to tightly tuning latency
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

PiBPbiAyMiBBcHIsIDIwMjAsIGF0IDE6NTAgYW0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWls
LmNvbT4gd3JvdGU6Cj4gCj4gSm9uLCBob3cncyBTQ0UgbG9va2luZz8gcmVhZHkgZm9yIGEgYmFj
a3BvcnQgeWV0PwoKV2UgY2FuJ3QgZG8gYW55IHNvcnQgb2Ygd2lkZSBkZXBsb3ltZW50IG9mIFND
RSB1bnRpbCBpdCdzIGJlZW4gYXBwcm92ZWQgYXMgYW4gSW50ZXJuZXQgZXhwZXJpbWVudCBieSB0
aGUgSUVURi4gIEludGVyZXN0ZWQgaW5kaXZpZHVhbHMgY2FuIGFscmVhZHkgY29tcGlsZSB0aGUg
U0NFLWVuYWJsZWQga2VybmVsIGFuZCBqdW1wIHRocm91Z2ggdGhlIGhvb3BzIHRvIHRyeSB0aGlu
Z3Mgb3V0IC0gY2FyZWZ1bGx5LiAgVGhlcmUncyBhIGJpdCBvZiBpbmZyYXN0cnVjdHVyZSBjb2Rl
IHRvIGdvIHdpdGggdGhlIG5ldyBUQ1AgYWxnb3JpdGhtcyBhbmQgcWRpc2NzLCBzbyBJJ20gbm90
IGNlcnRhaW4gaG93IGVhc3kgYSBiYWNrcG9ydCB3b3VsZCBiZTsgYmV0dGVyIHRvIGp1c3QgYnVp
bGQgdGhlIChyZWxhdGl2ZWx5KSBjdXJyZW50IGNvZGUgZm9yIG5vdy4KCklFVEYgVFNWV0cgaW50
ZXJpbSBtZWV0aW5nIG5leHQgd2VlayAodGhlIHNlY29uZCBvZiB0d28gcmVwbGFjaW5nIHBsYW5u
ZWQgaW4tcGVyc29uIHNlc3Npb25zIGF0IFZhbmNvdXZlcikgd2lsbCBkaXNjdXNzIHRoZSBiaWcg
RUNUKDEpIGlzc3VlLCB3aGljaCBpcyBob3RseSBkaXNwdXRlZCBiZXR3ZWVuIFNDRSBhbmQgTDRT
LiAgVGhlIGtleSBxdWVzdGlvbiBpcyB3aGV0aGVyIEVDVCgxKSBzaG91bGQgYmVjb21lIGEgY2xh
c3NpZmllciBpbnB1dCB0byB0aGUgbmV0d29yayAob3J0aG9nb25hbCB0byBEaWZmc2VydiBidXQg
d2l0aCBzb21lIG9mIHRoZSBzYW1lIGJhc2ljIHByb2JsZW1zKSwgb3IgYW4gYWRkaXRpb25hbCBj
b25nZXN0aW9uIHNpZ25hbCBvdXRwdXQgZnJvbSB0aGUgbmV0d29yayAoaW5kaWNhdGluZyBhIGxl
c3NlciBkZWdyZWUgb2YgY29uZ2VzdGlvbiwgdG8gd2hpY2ggYSBzbWFsbGVyIGFuZCBtb3JlIG51
YW5jZWQgcmVzcG9uc2UgaXMgZGVzaXJlZCkuICBJdCdzIGFueW9uZSdzIGd1ZXNzIGhvdyB0aGF0
IHdpbGwgdHVybiBvdXQsIGJ1dCB0aGUgdGVjaG5pY2FsIG1lcml0IGlzIG9uIG91ciBzaWRlIGFu
ZCB0aGF0IHJlYWxseSBzaG91bGQgY291bnQgZm9yIHNvbWV0aGluZy4KCklmIHlvdSdyZSBrZWVw
aW5nIGFuIGV5ZSBvbiB0aGUgVFNWV0cgbGlzdCwgZXhwZWN0IGEgbWFqb3IgYm9tYnNoZWxsIHRv
IGRyb3AgdGhlcmUgaW4gdGhlIG5leHQgZmV3IGRheXMuCgogLSBKb25hdGhhbiBNb3J0b24KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK

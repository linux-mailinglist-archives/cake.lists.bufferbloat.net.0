Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0597D32B965
	for <lists+cake@lfdr.de>; Wed,  3 Mar 2021 18:12:50 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DB6EE3CB38;
	Wed,  3 Mar 2021 12:12:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614791568;
	bh=HcfUTbmHsUv1fN9DzQpkR4LZTK+U5K6rEYDQ/wp+CVk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P7Na2yq5YUkRrLtOPEAshCAN9irxGkkSBbHgjJ/jYVA0HQgVeRvMjUzGlaEnGYXPO
	 cBW3WWf3ZFvwiXjP+LxF2rNS1EecQrRYld7cSs3WWVYrmz5DCKzXtvTnil6RbPvZfO
	 UJoGaNRYs3dCpLCvJ0haAVHOX0vzkRuK+pxoH/j5uE2d36OrUI0QBo7x8P6dXnRz4t
	 2UZ4ykxtILjSbEPhvM2Hng5Yile/DKxN+77FoJsl2+Vtp+hI6jYq4u2zOjw7mjoIGp
	 zXwmL/iKFJS27++LDo14nHZhqkzpd/1SaOyWHBCG06DZhKE3euvI365Z/gnoKE2P09
	 oEDBtESzbvrWg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com
 [IPv6:2607:f8b0:4864:20::132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 13E2F3B2A4;
 Wed,  3 Mar 2021 12:12:48 -0500 (EST)
Received: by mail-il1-x132.google.com with SMTP id b5so11939991ilq.10;
 Wed, 03 Mar 2021 09:12:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kv05tB6BR2prvh76+vtSCAO2NMhDGevidcwxNDVbcw8=;
 b=Bb1WmR+9fqN3fLM/EuP+uOlAozyraqIsAxycWKHINNrv/T/hb0h/M97NKMC/MwQzCw
 DH3YzxATee8deMznC4UqTkDSf4aJ5tnWzBQTyq4j4oZidpavSMucnPVzD1Cnns7hc23/
 sxlojKFiD6Ow3f02Sb/dZkzl2zHIRj9GolcmGASdMK26GTimStH2PYK7cTWuylMvHJ7J
 FjHrq96RH5ZdSsK3mgZWi+aTHsK2nTlB3hGuDd9yyAh021QsZNZyB/VDw3H4idyhf69y
 xzxPBV/xtGvOHpECPel+B9Rrglcuyvj/X2KYLOx+3SNiawNBNNo+V2d1Mzd63NUxi2JG
 uDRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kv05tB6BR2prvh76+vtSCAO2NMhDGevidcwxNDVbcw8=;
 b=flij9oIryi4MWZW4iQAq+jp3jcpoO7rGRkma6wxokpzQgcgOjpvlXwlalSrF4uw3mY
 rgFFYsLH1Sdj/2YbVhfd/Lyu7zn7myGtoJWAUEwr2NWVQ4uGxM84BPBB2lSIYCRh98GN
 3DCI2RcyGa7WZlkHlmIvelhPoWL8iXc/St5hplPbhR8rf52c6PFJGiyndeVlc3DQwcV3
 s9MbBXDWRHOwaLO2L64P/1y/1ydCkX+oQr+lg72FMRR9F0BfagRg+X5PqFMXTKcQbmbb
 H041RyMChRWdUSO6uUi2vsj+KQl93ZbwXHoj6wty8PFXaXL3+EFrsoXGJke7AQQ9M49Q
 lDvQ==
X-Gm-Message-State: AOAM531Tqns06bRbnM3H1xrNd8YnW0Uh/rcdx3RokDF/BFA7XDjzOtrT
 NHU84EmjH9r8QFei6Ewxo7g4NbwbB9OX/lqz8nA=
X-Google-Smtp-Source: ABdhPJxOWZbEmkCuUpeJTftJIKnRtrAG6TpVPLa3XeaJSfjYWHZ4xWaK0QJCEfgj62ltkoqvnik+tXFttTEDIL3jdbo=
X-Received: by 2002:a05:6e02:1d85:: with SMTP id
 h5mr252029ila.246.1614791567555; 
 Wed, 03 Mar 2021 09:12:47 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw67X7u5pS0a-ERpWvpenwmgvWvQ3KV9e2Pzj75iuOLPgQ@mail.gmail.com>
 <87a6rkf9jv.fsf@toke.dk>
In-Reply-To: <87a6rkf9jv.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 3 Mar 2021 09:12:36 -0800
Message-ID: <CAA93jw5==m8ARhZX2KxFjTwAmaFOa9ugrFtyONBfgnN38J_JRw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] [Cerowrt-devel] merlin gains cake support
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

aXQgd2FzIHRoZSBmYWN0IHRoZXJlIGlzIGEgY2FrZSBwb3J0IGF0IGFsbCB0aGF0IHdhcyBzbyBl
eGNpdGluZywgYW5kCnRoYXQgc29tZSBicm9hZGNvbSBBUElzIGV4aXN0ZWQsIGV2ZW4gbW9yZSBz
by4KCk9uIFdlZCwgTWFyIDMsIDIwMjEgYXQgOTowOSBBTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gPHRva2VAdG9rZS5kaz4gd3JvdGU6Cj4KPiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5j
b20+IHdyaXRlczoKPgo+ID4gaHR0cHM6Ly9naXRodWIuY29tL2R0YWh0L3RjLWFkdi9pc3N1ZXMv
MjcKPiA+Cj4gPiBJIGRvbid0IGhhdmUgYW55IG9mIHRoZSBoYXJkd2FyZSBzdXBwb3J0ZWQgYnkg
dGhpcyBmaXJtd2FyZSBseWluZwo+ID4gYXJvdW5kIGhhbmR5Li4uIGNhbiBhbnlvbmUgdGVzdD8K
Pgo+IEkgYmVsaWV2ZSB0aGUgb3JpZ2luYWwgcmVwb3J0ZWQgYWxyZWFkeSB0ZXN0ZWQgYW5kIGNv
bmZpcm1lZCB0aGUgZml4LAo+IGFjdHVhbGx5LiBJIGhhdmUgYSBwYXRjaCBwZW5kaW5nIGZvciB1
cHN0cmVhbSBpcHJvdXRlMiB3aGljaCBzaG91bGQgc2hvdwo+IHVwIG9uIG5ldGRldiBhcyBzb29u
IGFzIHZnZXIgdW5jbG9ncy4uLgo+Cj4gLVRva2UKCgoKLS0gCiJGb3IgYSBzdWNjZXNzZnVsIHRl
Y2hub2xvZ3ksIHJlYWxpdHkgbXVzdCB0YWtlIHByZWNlZGVuY2Ugb3ZlciBwdWJsaWMKcmVsYXRp
b25zLCBmb3IgTW90aGVyIE5hdHVyZSBjYW5ub3QgYmUgZm9vbGVkIiAtIFJpY2hhcmQgRmV5bm1h
bgoKZGF2ZUB0YWh0Lm5ldCA8RGF2ZSBUw6RodD4gQ1RPLCBUZWtMaWJyZSwgTExDIFRlbDogMS04
MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

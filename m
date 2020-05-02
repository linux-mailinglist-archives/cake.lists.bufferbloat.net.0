Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3B21C2713
	for <lists+cake@lfdr.de>; Sat,  2 May 2020 18:52:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E68043CB43;
	Sat,  2 May 2020 12:52:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588438337;
	bh=BXk5v4QiHDTXGP3vb6qkVT27+awQsXuAMtvzr1vBbRM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EO+HUlQW4vBtuIigdFcWNmTCROp5cUa02L35Q3MM0NXjSPSlsKrLf/4FAINNeupUR
	 CkSDEt1nOkB/bnEKuDSHtT57sN2HqgFiCrgM2BF+TM7ZJ4NZ/tg6QgNWwaQPwGswNk
	 ZJC45YFmyaX5294VxMTU1LFQC4DcrmYaggHauLqGUMyIpOfdATx8Co+ESMMaXXzMje
	 QILc9MM/raZBI/jlDSHGKpheoncha7f5NNTAxlUOg6nS9g2HTzccFGpJrgNtv+SlQP
	 RXIzuQnurEfIrPKYm1Fl9jC1LSPJasF6zqovVeO0FKBUOGvmOetsonWwO8hUk+KKhX
	 u7vKzI4w/M3fg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com
 [IPv6:2607:f8b0:4864:20::d34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1EDD33B2A4;
 Sat,  2 May 2020 12:52:17 -0400 (EDT)
Received: by mail-io1-xd34.google.com with SMTP id b12so7866518ion.8;
 Sat, 02 May 2020 09:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VuMPqfkwXrrddPvZmT5eD258G94kZT25FzUCRcRGcUs=;
 b=EGLQSkpGFVHyNkwzBZGBQBGQwpfLVV56l+OOdR/KqVdTc4EQWsuIvcr7P3+EsS87QA
 OHhOj/sOA124zxmI3RoOrfdMVhNKOMBAfZXp0pN+spL0L9KNTwE305814cxlaJBG6e/r
 EQ70lboErOnAb8UfgMw1+d+IHr+5VOWj9Ybh2eDGWVL6RgTe9xA52/zpvu++lzwgUMie
 jKZuOp2LhhK/p/G42PgRPaTtNvg7al4/IDKNC9tUoM5Fl6o7ZAeWTZG2N1yw8CgLfCwT
 153p02PTH4i9Yd1BkQ4eKreMRN7Y5Hi59ayfH6LtGACAqMPH3GbK9gqdAF6VepDaWHry
 u9/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VuMPqfkwXrrddPvZmT5eD258G94kZT25FzUCRcRGcUs=;
 b=cYMjmZToi4P5Cnw1ZBg6rwMZSwaa4jzWf2mTHDApXL6KGHc9x1q24GDFKgIWDcqW2m
 q9yOulLAOfWadGGsKIERF1lbozGdJTH8HP3xrhO1V6YO9TkkNmV9dqTQ5NFHdRavC5op
 qhlTdbsFYgG/ynxqCKeNYRFhXiAYUpopFidsPMEowaNYoqMISmjrkNJA0zmHwPWidd+v
 LyJfctZ3EVM/V1sr9x5pQW1NCVVt+vbWkngmXUp7yat6iddxOm23/FUjX5WzKPNWbCj5
 dTLV4sqhIPT5KHId8rfsC/nmmCghdqgdTTx2Mqs+ZeW+XRGEDXsMT/uyJcQ0ViVhUdew
 CO5w==
X-Gm-Message-State: AGi0PuYjSrIpm5fqkvvpJN7Pxna2a5JfS6LBz1UUnVQYnHYOjKjLiNDl
 kP8oztJyknY4IHeIKnjj4S3OwZe4B3/TsOWjruk=
X-Google-Smtp-Source: APiQypLwJeY0QDQro81PJP498h5gh8n8Ft101zdRuGTIGRRKn1zuRu9v4YLWZjrSFFa/zsfne5Pf9nFUMhCRVPo5ezA=
X-Received: by 2002:a02:6d44:: with SMTP id e4mr7843480jaf.82.1588438336604;
 Sat, 02 May 2020 09:52:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
 <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net>
 <24457.1588370840@localhost> <013601d6201f$04c7db50$0e5791f0$@hanekom.net>
 <CAJ_ENFFCEdsFzJvkOjxHvuDxh87YtuaHO62XFrf4U_gE2S0Pyw@mail.gmail.com>
In-Reply-To: <CAJ_ENFFCEdsFzJvkOjxHvuDxh87YtuaHO62XFrf4U_gE2S0Pyw@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 2 May 2020 09:52:04 -0700
Message-ID: <CAA93jw72bkssn2CJkrn5XiKhFapSfGDMPN0hF5wOP0z0jX0yzg@mail.gmail.com>
To: Benjamin Cronce <bcronce@gmail.com>
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] dslreports is no longer free
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
Cc: Michael Richardson <mcr@sandelman.ca>, Jannie Hanekom <jannie@hanekom.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Sergey Fedorov <sfedorov@netflix.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gU2F0LCBNYXkgMiwgMjAyMCBhdCA5OjM3IEFNIEJlbmphbWluIENyb25jZSA8YmNyb25jZUBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gPiBGYXN0LmNvbSByZXBvcnRzIG15IHVubG9hZGVkIGxhdGVu
Y3kgYXMgNG1zLCBteSBsb2FkZWQgbGF0ZW5jeSBhcyB+N21zCgpJIGd1ZXNzIG9uZSBvZiBteSBx
dWVzdGlvbnMgaXMgdGhhdCB3aXRoIGEgc3dpdGNoIHRvIEJCUiBuZXRmbGl4IGlzCmdvaW5nIHRv
IGRvIHByZXR0eSB3ZWxsLiBJZiBmYXN0LmNvbSBpcyB1c2luZyBiYnIsIHdlbGwuLi4gdGhhdApl
eGNsdWRlcyBtdWNoIG9mIHRoZSBjdXJyZW50IHNpZGUgb2YgdGhlIGludGVybmV0LgoKPiBGb3Ig
ZG93bmxvYWQsIEkgc2hvdyA2bXMgdW5sb2FkZWQgYW5kIDYtNyBsb2FkZWQuIEJ1dCBmb3IgdXBs
b2FkIHRoZSBsb2FkZWQgc2hvd3MgYXMgNy04IGFuZCBJIHNlZSBpdCBibGlwIHVwd2FyZHMgb2Yg
MTJtcy4gQnV0IEkgYW0gbm8gbG9uZ2VyIHVzaW5nIGFueSB0cmFmZmljIHNoYXBpbmcuIEFueSBh
bnRpLWJ1ZmZlcmJsb2F0IGlzIGZyb20gbXkgSVNQLiBBIGdyYXBoIG9mIHRoZSBibG9hdCB3b3Vs
ZCBiZSBuaWNlLgoKVGhlIHRlc3RzIGRvIG5lZWQgdG8gbGFzdCBhIGZhaXJseSBsb25nIHRpbWUu
Cgo+IE9uIFNhdCwgTWF5IDIsIDIwMjAgYXQgOTo1MSBBTSBKYW5uaWUgSGFuZWtvbSA8amFubmll
QGhhbmVrb20ubmV0PiB3cm90ZToKPj4KPj4gTWljaGFlbCBSaWNoYXJkc29uIDxtY3JAc2FuZGVs
bWFuLmNhPjoKPj4gPiBEb2VzIGl0IGZpbmQvdXNlIG15IG5lYXJlc3QgTmV0ZmxpeCBjYWNoZT8K
Pj4KPj4gVGhhbmtmdWxseSwgaXQgYXBwZWFycyBzby4gIFRoZSBEU0xSZXBvcnRzIGJsb2F0IHRl
c3Qgd2FzIGludGVyZXN0aW5nLCBidXQKPj4gdGhlIGppdHRlciBvbiB0aGUgfjI0MG1zIGJhc2Ug
bGF0ZW5jeSBmcm9tIFNvdXRoIEFmcmljYSAoYW5kIG90aGVyIHBhcnRzIG9mCj4+IHRoZSB3b3Js
ZCkgd2FzIHNpZ25pZmljYW50IGVub3VnaCB0aGF0IHRoZSBmaWd1cmVzIHJldHVybmVkIHdlcmUg
b2Z0ZW4KPj4gdW5yZWxpYWJsZSBhbmQgbGFyZ2VseSB1bnVzYWJsZSAtIGF0IGxlYXN0IGluIG15
IGV4cGVyaWVuY2UuCj4+Cj4+IEZhc3QuY29tIHJlcG9ydHMgbXkgdW5sb2FkZWQgbGF0ZW5jeSBh
cyA0bXMsIG15IGxvYWRlZCBsYXRlbmN5IGFzIH43bXMgYW5kCj4+IG1lbnRpb25zIHNlcnZlcnMg
bG9jYXRlZCBpbiBsb2NhbCBjaXRpZXMuICBJIGZpbmFsbHkgaGF2ZSBhIHRlc3QgSSBjYW4gc2hh
cmUKPj4gd2l0aCBsb2NhbCBub24tdGVjaG5pY2FsIHBlb3BsZSEKPj4KPj4gKEFncmVlZCwgdXBs
b2FkIHRlc3Qgd291bGQgYmUgbmljZSwgYnV0IHRoaXMgaXMgYSBodWdlIHN0ZXAgZm9yd2FyZCBm
cm9tCj4+IHdoYXQgSSBoYWQgYWNjZXNzIHRvIGJlZm9yZS4pCj4+Cj4+IEphbm5pZSBIYW5la29t
Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IENha2UgbWFpbGluZyBsaXN0Cj4+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4+IGh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UKCgoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIKCkRhdmUgVMOkaHQKQ1RP
LCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtNDM1LTA3
MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

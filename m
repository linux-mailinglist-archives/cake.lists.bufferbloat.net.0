Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F3F49E6EF
	for <lists+cake@lfdr.de>; Thu, 27 Jan 2022 17:03:16 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 816D13CB41;
	Thu, 27 Jan 2022 11:03:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643299395;
	bh=aEfSKDMtNtInwTJCVuT0Bfzc7ZH4/g9LuzMxJ4YCjIg=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OLgNgquks0bFzpzXSiqDH/j9yIV/xMdNfvBM1rMgR4JodrP6BXqJ5IGQaLPXVKdiV
	 Zx+eyxGbcw7guiupwGEMt3vZc3QsHZ+I0NKaI6XetEm+CEpaLAr9fQe5MA+AtuZLZP
	 wLdt8B67LwvYdVSry+8dRCVkXA/6WkrKRPgb4X0traBTYnGN1AJ0wCicEwXpVIks/w
	 i6TjLb+zAvkBlAeK7JmWD5kFaW/W0qhVLdoIbvu1cUiLcp5+qmvSn4whwYl9usLAko
	 EwSuw+Aru2iQHqvpOjhorl0T11wSP1XYWlwpEdhrsOTzu83Jvihv4N/tRYh8xIJkDF
	 dhCNUBJKuWpmA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2C3303CB35
 for <cake@lists.bufferbloat.net>; Thu, 27 Jan 2022 11:03:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643299359;
 bh=fIkuyrPJ2qcQvVE0/XG6V5LSdSQxnvZjix0Rm8V+sY8=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=lCj+k2Fpa/dpNMXseP15pH/6rI+Nub9dOzRCmL2REsuaVaaHB/HIb+6+9+fc38PdU
 EJ0VV6ybOZ5AB+AWO1fWNBHsftYt/+5AAJH1prZaaOEI16uhPcAHubI7x4dVFQzcM3
 T83DvZPUs8k4pal/IYznFduU9/prShxqMF5Xscz4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from smtpclient.apple ([77.8.117.92]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mk0JW-1mXDyZ1YLI-00kKzD; Thu, 27
 Jan 2022 17:02:39 +0100
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <177DD195-A9B2-4502-8DA8-7CC659EBBF3B@darbyshire-bryant.me.uk>
Date: Thu, 27 Jan 2022 17:02:36 +0100
Message-Id: <C50A8C7B-4EAE-455B-B27D-B6FAB13B1EA7@gmx.de>
References: <20220125060410.2691029-1-matt@codeconstruct.com.au>
 <87r18w3wvq.fsf@toke.dk>
 <177DD195-A9B2-4502-8DA8-7CC659EBBF3B@darbyshire-bryant.me.uk>
To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Provags-ID: V03:K1:EJon41ZiItBVwz7r+GavifV7VehEDPQvoagTtnkoui4gwem1R+d
 1B3XqRzFgP4zW0taCSnapcRksM6EadcuInzheOMrMdsjtFP8gkzT2DjSOAhMuzl6TgQSJS+
 Fi/3QDFGvsqX4xfuY0jfLswsUfTIkcCfjhc8pXTIIoqorBB1OghSKNEpiTCBeqLxPykgJ/s
 v7DuggWT0qBSFxVZX5z7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:00AESNJ0G9g=:oICfH6h/nABqDy6vLgkMDi
 oz8+n08Gswb/nh38ZvPinLpDFoMhG2EuZzXxkNA2j4lfsFF7ojDdLq5g4HMc9PnCHgl3GUNB2
 Z54Cf+Troz06jZU9fBOVy8U/lLbATVAx6EMrrRYfEnQYFcDJ2VEu0WY9sQIlWKMP0Yn4Dkf0o
 CvwdVMrBIu9F36fJLe0MeTlzrNSD936trIs5W6qL4jwCwFhckP5sbn8Kyns7Fzr/kS/h7y34e
 nB8H79ZG9WazT5GuJFl/Bgvoq+J6ALEM04xVkX//Xj7j9Uj/y8TBMap6gBjpJL3q6ehWOzF1b
 MzVTL9D0wY2vYCf42G5pBiD+PP2k1qSkIpETmxwNxFXAJ03b8d9qwzV8zl1njW/eTQItcYbgo
 M5Cppg2eRx282wn3TpFUPLnrg0L5rkAsL1ls2yC9vlt7lG0/lpSv3c7FGfCFMN7JK/hS5Ohqj
 iZEY7/Yye+b4A7GA/6X7Jb18RgO+YEjOi/J+gDysgepRSByL2EoyZoJO1xuOYXx6PaYlZbg+G
 u5bDBYaNQxB4+5IckpsFwUftWG9iODtxO/3+EbnWOub+5/8R3rfwuJcfXt6riks4jJranknyp
 MKqF4olRUrfRYtVhg+ACTNO4jzkEEvWY9f59X6amO1oVl1+i/cJAlsMBiW8TPWHA2E0jRF0Ul
 TLzvL+vI/L5wxhb/54Qb5eCMdKkKXARVX2mFdClfQL8ORfE8hPydDs7uvTC3mlNXbXJKeJ638
 wyy2B4IxpmUyn8vAs08BUdx6K/FNjEbuOVNtu2IRso08zlzdOpFbFikUbgf+xM+0v0Cm0e4b6
 4Gc1rB397A4Pn8ITv0R76rERvM98WPkhYwamO2rhapyfXC4I8upq47iZwd0SUpk+yGtN8NMhb
 y2eNJs0M0qycoi7ou9FxutcB8mzS/3eYIRKTqPC6qIF7ttrOczRpCkKeRcSneP8LFYJZ+smSh
 kCskVzcsnJn6IFF/ebe2XG0l4UViw7RLScKwFAqlrUQepZeqJ9VG17gRKpnvrcE6Gtdn6aICi
 fTbWmDFrKSaY1Vvo9kJOBXZMfyewMiymOocBn/C47s91WRWR0YZovQY9HWdSLQOzZHN3eht1d
 RUdZUbdp1MHXzU=
Subject: Re: [Cake] [PATCH net] sch_cake: diffserv8 CS1 should be bulk
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
Cc: netdev@vger.kernel.org,
 =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 Cake List <cake@lists.bufferbloat.net>, Jakub Kicinski <kuba@kernel.org>,
 Matt Johnston <matt@codeconstruct.com.au>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cgo+IE9uIEphbiAyNywgMjAyMiwgYXQgMTA6MDAsIEtldmluICdsZGlyJyBEYXJieXNoaXJlLUJy
eWFudCB2aWEgQ2FrZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IAo+
IAo+PiBPbiAyNSBKYW4gMjAyMiwgYXQgMTA6NTgsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPj4gCj4+IE1hdHQgSm9obnN0b24gPG1hdHRAY29kZWNv
bnN0cnVjdC5jb20uYXU+IHdyaXRlczoKPj4gCj4+PiBUaGUgQ1MxIHByaW9yaXR5IChpbmRleCAw
eDA4KSB3YXMgY2hhbmdlZCBmcm9tIDAgdG8gMSB3aGVuIExFIChpbmRleAo+Pj4gMHgwMSkgd2Fz
IGFkZGVkLiBUaGlzIGxvb2tzIHVuaW50ZW50aW9uYWwsIGl0IGRvZXNuJ3QgbWF0Y2ggdGhlCj4+
PiBkb2NzIGFuZCBDUzEgc2hvdWxkbid0IGJlIHRoZSBzYW1lIHRpbiBhcyBBRjF4Cj4+IAo+PiBI
bW0sIEtldmluLCBhbnkgY29tbWVudHM/Cj4+IAo+PiAtVG9rZQo+PiAKPiAKPiBJ4oCZbGwgaGF2
ZSB0byBmaW5kIG15IHRoaW5raW5nIGhlYWQgJiB0aW1lIG1hY2hpbmUgOi0pCj4gVGhpcyB3b3Vs
ZCBiZSBhIGxvdCBlYXNpZXIgaWYgd2UgaGFkIOKAmGRpZmZzZXJ2OeKAmSwgTEUgY291bGQgaGF2
ZSBzaW1wbHkKPiBiZWVuIGFkZGVkIGFzIHRoZSDigJhpZiB5b3XigJl2ZSByZWFsbHkgbm90aGlu
ZyBiZXR0ZXIgdG8gZG/igJkgY2xhc3MgdGhhdCBpdAo+IGlzLiAgQW5kIGl04oCZcyB3aHkgSeKA
mXZlIHBlcnNvbmFsbHkgYXJndWVkIGZvciBhIGRpZmZzZXJ2NTogbG93ZXN0O2xvdztub3JtYWw7
aGlnaDtoaWdoZXN0Cj4gbW92aW5nIG9uLgo+IAo+IEkgdGhpbmsgSSBzY3Jld2VkIHVwIHdoZW4g
TEUgd2FzIGFkZGVkIHRvIGRpZmZzZXJ2OCAtIE1hdHQgdGhlIENTMSBjaGFuZ2UgZnJvbSAwIHRv
IDEgSVMgaW50ZW50aW9uYWwKPiBhbmQgSUlSQyBJIHRyaWVkIHRvIGJ1bXAgZXZlcnl0aGluZyBl
bHNlIHVwIDEgdG8gY29tcGVuc2F0ZS4uIEkgbWF5IGhhdmUgbWlzc2VkIHNvbWUgdGhpbmdzIHRo
b3VnaC4KCglCdXQgdGhhdCB3YXksIGludHJvZHVjdGlvbiBvZiBMRSBkb2VzIG5vdCBmaXggbXVj
aC4uLiBJIHJlYWxseSB0aGluayB3aXRoIExFJ3MgZXhpc3RlbmNlICxDUzEgc2hvdWxkIGJlIHB1
dCBpbnRvIHRoZSBzYW1lIHRpbiBhcyBDUzAvQkUsIGZvciB0aGUgc2ltcGxlIHJlYXNvbiB0aGF0
IGN1cnJlbnRseSBDUzEgaXMgYWxyZWFkeSBpbiB1c2UgYm90aCBmb3IgcHJpb3JpdHkgYmVsb3cg
YW5kIHByaW9yaXR5IGFib3ZlIENTMC9CRSwgdGhlIG9ubHkgY291cnNlIGZvcndhcmQgYXZvaWRp
bmcgcHJpb3JpdHkgaW52ZXJzaW9ucyBpcyB0byB0cmVhdCBDUzEgbGlrZSBDUzAuCglBcyBhIGNh
c2UgaW4gcG9pbnQgSSByZW1lbWJlciB0aGF0IERhdmUgVMOkaHQgcmVwb3J0ZWQgc2VlaW5nIG9v
ZGxlcyBvZiBwYWNrZXRzIG1hcmtlZCBDUzEgaW4gaGlzIGluZ3Jlc3Mgc29tZSB0aW1lIGluIHRo
ZSBwYXN0LCBwYWNrZXRzIHRoYXQgc2hvdWxkIG5vdCBiZSB0cmVhdGVkIGFzIGJ1bGsuIFN1cmUg
d2UgY2FuIGFyZ3VlIHRoYXQgYW55Ym9keSB1c2luZyBEU0NQcyBmb3IgcHJpb3JpdHkgc3RlZXJp
bmcgbmVlZHMgdG8gcmUtbWFwIGFueXdheXMsIGJ1dCB0aGF0IGlzIG5vdCB0aGUgbG9naWMgYmVo
aW5kIGNha2UncyBkZWZhdWx0IG1hcHBpbmcuCglBbmQgdGhhdCBDUzEgdG8gQkUgbWFwcGluZyBz
aG91bGQgYXBwbHkgdG8gYWxsIGRpZmZzZXJ2IG1vZGVzLCB0aGF0IG9mZmVyIGEgbG93ZXIgcHJp
b3JpdHkgdGllciwgbm8/CgoKUmVnYXJkcwoJU2ViYXN0aWFuCgoKCj4gCj4gCj4gQ2hlZXJzLAo+
IAo+IEtldmluIEQtQgo+IAo+IGdwZzogMDEyQyBBQ0IyIDI4QzYgQzUzRSA5Nzc1ICA5MTIzIEIz
QTIgMzg5QiA5REUyIDMzNEEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==

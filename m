Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 7537B973C4
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 09:44:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5FA573CB38;
	Wed, 21 Aug 2019 03:44:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566373492;
	bh=/px5VhyFMSY4UpO4rD6LPU7V+0rA2C7VddIuXiWfKTI=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gC1Tg7eL19N+0WoCKL9NNHkam5f9vN1wFfVNw7TFuwplqGrag5h6l3vZYagQdoZVJ
	 umd7miPr+oeWjFMILIwoc4eqQDZeE0HglsglJi6iKzOSGZJWXEsS9SRQkMjTeedK1v
	 hvVIhx2h23qqidkiKmWKlZvWbhvUYcw+iOv60m1ROxNXEt8DHtiP5qI4X7xMSF+/Bs
	 bkxWMEGu+Hgq9dLmeZwlcsz1d+5LljmaT2NCTp3SVOgFzQMUor90yCuecQRKgj1kCW
	 3B3zgzAVzEnyHFMY/vCjt522Z+ITHvR0W0Nz0hwKTtSH++u1D9oVVcfoVzuOmagNR4
	 i9jk4EkVRnv/g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 09C003B2A4
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 03:44:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566373487;
 bh=ng3dqu1APStRc89dNAlzPvMyeran5dzE+cuQtZMIG3U=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=Sv05r2ut8evPwy71Ax+l1eiLED8cVfx3BfTh3I4iyNsc8fKwlzMhGFdb+as+U3F5T
 GTzFHqR/T6ck351YwSiBmq4S17DJ8NxmcyJIoDs+RBweMRfOEQVg9w1sfeKAqMC4TX
 UHCstqe7Gq7hf8LQRz9KtDKsTDlpWJT9WhsbxLAo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.11.12.32] ([134.76.241.253]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0M7pku-1iDJoV1v3w-00vPSZ; Wed, 21
 Aug 2019 09:44:47 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
Date: Wed, 21 Aug 2019 09:44:46 +0200
Message-Id: <EDCD1D95-BEA1-45A8-B6A2-4FD4BE418450@gmx.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-Provags-ID: V03:K1:a4O8uFvntPMVCBIEIENBLcmYogm42dLNPLhaSbQqiy8N7i0xceE
 s1RyqSkxDMndZoMbxifK8YH8LJsuxEAVpw0IXtXWh42LHEJ7+BdLr9FsuyHXBbtxdJQXwD+
 UZ/950p+jNx7N7ZyuzTCoba5V9cLlDCnfTJEX6+kle5nBum5V+Xq8qF+tqy5ikGCvB1iB3h
 FwDh1KwxdADkk8u7rq79Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W0c2dK9+i98=:37my/4dkgbiFUUj1FYuEaw
 lGVhljhsqsII2Zq3XZBKqqFCmVGmceZ+lK9V+jgjZNF1mGUWUPz/pOH4X815NwMyHkjdJcEpH
 ulq5GBRebV8XwNUCPIe3GPF1rJwGHr7Jd0IpptGf8+P63A3mudLwSQhTgDzau0rhsm5Bg0HoE
 LqYJSekOBOzC2PX/mKNJ1+MD4J2ukOpGLIZdEj6XAdvf8LT7brQaJZb/8QVISgVWhiDBoKe5u
 PH9nePkmBTyozpI0o8rv7HXVDo4Bkf+iogpac2ZSWPc04NFTfTZoYNIaVZgB4YNlxZJYByRu9
 gDU26pfOygqjIl6Lc2UB+qMaN9PXuYEDNf2VYS8APq6GlFXaYh4MVgKyZ0xkuYh2/We/sjX68
 zk2BoJ0/G7a0FzjgfG4SIZE//XiyU9CUe8KcpyqdELy9nkwVXPt2vhkJGP9f9TMy9AVh9L+PE
 qrF5HooS7AdgP43VtmhVp2GTOZHWP0MQZeun3uIlr8qyEp9MXgxrI1d1pSjl+T/Lq2lxGgdw/
 AECZ3j3tsdL72I31Fp3Fw1otgD0DLf4/2/bYf2vJuKRHwuBDCc0fDLRJCQ+dT2Ql2dASTrb93
 6PcIvJoFvWNVHrVqs3MkAQHpe0ho8z3ptjL5T4YhHrsYDXvOvZjv6wSnefsrXeaTgZlhpfEft
 5Pxmua8buRW2RCjpjRZ0QXOnFHe2tVWvwGEDC3nlYp3Gw1uKVdimXnLl9KPxIDquTi5ZJWMGW
 x+8AiNXSNuH65gGueMR/1BvBY1oXL8Fm2mLFkHVFdHamZ32ZCYhmEdTBrIvWUfSP0I9qLSB36
 zHZ08BXgXPIit059/MMpGF1p9ct3h/TMDSQiQBV3cOIX0ByaNO0+AogoGc+/mZcmH9r/qshyI
 C1GFDavDpjNqj3ymkZ2L015707IA9LZ0L8lcGEfs6lNqQsR9zj8Cgt8/iMlhxUFw95ZwyDN5P
 G9vqcNm5DLHen3vyofz/RuQWl49ZYJZQBY9wAvL9LTYDk/eO3YVNDhSKqvOvZWZ/2ZfHYuyFp
 +RdI8vgz8XSYKlAHCACRQETdLOBGvZShXVEhyPQVVFheVzSoyWD8Y7I6DtOU//hBdpM3MGreu
 tBeovbmw+TzZWtPFw9yqB4W2lCZ6v7OMQEdHhRUSir19QhXYBEW+t8eA+vUX0UXPTA6osDX8U
 yKuc8=
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cgo+IE9uIEF1ZyAyMCwgMjAxOSwgYXQgMTg6NDcsIFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxzLmdv
dHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPiAKPiAKPiBBbSAyMC4wOC4yMDE5IHVt
IDE4OjI0IHNjaHJpZWIgRGF2ZSBUYWh0Ogo+PiBPbiBUdWUsIEF1ZyAyMCwgMjAxOSBhdCA1OjA5
IEFNIFNlYmFzdGlhbiBHb3R0c2NoYWxsCj4+IDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRl
PiB3cm90ZToKPj4+IFsuLi5dCj4+IAo+PiBJZiBJIGhhZCBhbnkgb25lIHByaW5jaXBhbCByZXF1
ZXN0IGl0IHdvdWxkIGJlIHRvIG1ha2Ugc3VyZSB0aGUgZGQtd3J0Cj4+IGd1aSAoaWYgb25lIGlz
IG1hZGUpIGV4cG9zZXMgdGhlIGxpbmsgbGF5ZXIgcGFyYW1ldGVycy4gR2V0dGluZyB0aGUKPj4g
ZnJhbWluZyB3cm9uZyBpcyBhYm91dCB0aGUgYmlnZ2VzdCBlcnJvciBJIHNlZSBpbiB0aGUgZGVw
bG95bWVudDoKPj4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1MakpXX3M1Z1E5WQo+
IGkgaGF2ZSBzZWVuIHRoaXMgYWxyZWFkeS4gb3V0IHBsYW4gaGVyZSBpcyB0aGF0IHRoZSB1c2Vy
IHNwZWNpZmllcyB0aGUgaW50ZXJuZXQgY29ubmVjdGlvbiB0eXBlIGxpa2UgdmRzbDIsIGNhYmxl
LCB3aGF0ZXZlciBpbiBjYXNlIG9mIGNha2Ugd2hpY2ggdGhlbiB3aWxsIGJlIHVzZWQKPiBhcyBh
cmd1bWVudAoKCUdvb2QgZ29hbCwgdGhhdCBhbHNvIGlzIHRoZW9yZXRpY2FsbHkgd2VsbCBzdXBw
b3J0ZWQgYnkgY2FrZSB3aXRoIGl0cyBtdWx0aXR1ZGUgb2YgZW5jYXBzdWxhdGlvbi9vdmVyaGVh
ZCByZWFsYXRlZCBrZXl3b3Jkcy4gVW5mb3J0dW5hdGVseSByZWFsaXR5IGlzIG5vdCBhcyBuaWNl
IGFuZCB0aWR5IGFzIHRoaXMgY29sbGVjdGlvbiBvZiBrZXl3b3JkcyBpbXBsaWVzLCBUaGVyZSBh
cmUgOCBrZXl3b3JkcyBmb3IgQVRNL0FBTDUgYmFzZWQgZW5jYXBzdWxhdGlvbnMgKEFEU0wsIEFE
U0wyLCBBRFNMMissIC4uLiksIDIgZm9yIFZEU0wyLCAxIGZvciBET0NTSVMsIDEgZm9yIGV0aGVy
bmV0LCBmb3IgYSB0b3RhbCBvZiAxMiB0aGF0IGFsbCBjYW4gYmUgY29tYmluZWQgd2l0aCBvbmUg
b3IgbW9yZSBWTEFOLXRhZyBrZXl3b3JkcywgZm9yIGEgdG90YWwgb2YgMjQgdG8gMzYgY29tYmlu
YXRpb25zLiAoQW5kIHRoZXNlIGFyZSBub3QgZXZlbiBleGhhdXN0aXZlLCBhcyBlLmcuIHRoZSB1
c2Ugb2YgZHMtbGl0ZSBjYW4gaW5jcmVhc2UgdGhlIHBlci1wYWNrZXQgb3ZlcmhlYWQgZm9yIElQ
djQgcGFja2V0cyBieSBhbm90aGVyIDIwIGJ5dGVzKS4KCUlkZWFsbHkgb25lIHdvdWxkIGp1c3Qg
ZW1waXJpY2FsbHkgbWVhc3VyZSB0aGUgZWZmZWN0aXZlIG92ZXJoZWFkIGFuZCB1c2UgdGhlICJv
dmVyaGVhZCBOTiBtcHUgTk4iIGtleXdvcmRzIGluc3RlYWQsIGJ1dCB0aGF0IGhhcyBpc3N1ZXMg
YXMgbWVhc3VyaW5nIG92ZXJoZWFkIGVtcGlyaWNhbGx5IGlzIHNpbXBseSBoYXJkLi4uIFRoZSBi
ZXN0IGJldCB3b3VsZCBiZSB0byBsZXZlcmFnZSBCRVJFQyB0byByZXF1aXJlIElTUHMgdG8gZXhw
bGljaXRseSBpbmZvcm0gdGhlaXIgY3VzdG9tZXJzIG9mIHRoZSBlZmZlY3RpdmUgZ3Jvc3MtcmF0
ZXMgYW5kIGFwcGxpY2FibGUgb3ZlcmhlYWRzIGZvciBlYWNoIGxpbmssIGJ1dCBJIGFtIG5vdCBo
b2xkaW5nIG15IGJyZWF0aC4gT3ZlciBhdCBodHRwczovL29wZW53cnQub3JnL2RvY3MvZ3VpZGUt
dXNlci9uZXR3b3JrL3RyYWZmaWMtc2hhcGluZy9zcW0gd2UgdHJpZWQgdG8gZ2l2ZSBzaW1wbGlm
aWVkIGluc3RydWN0aW9ucyBmb3Igc2V0dGluZyB0aGUgb3ZlcmhlYWRzIGZvciBkaWZmZXJlbnQg
YWNjZXNzIHRlY2hub2xvZ2llcywgYnV0IHRoZXNlIGFyZSBub3QgZ3VhcmFudGVlZCB0byBmaXQg
ZXZlcnlib2R5IChub3QgZXZlbiBtb3N0IHVzZXJzLCBhcyB3ZSBoYXZlIG5vIG51bWJlcnMgYWJv
dXQgdGhlIHJlbGF0aXZlIGRpc3RyaWJ1dGlvbnMgb2YgdGhlIGRpZmZlcmVudCBlbmNhcHN1bGF0
aW9uIG9wdGlvbnMpLgoKQmVzdCBSZWdhcmRzCgkiYW5vdGhlciIgU2ViYXN0aWFuCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=

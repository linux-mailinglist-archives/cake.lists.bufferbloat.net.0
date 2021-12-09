Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C95F46E7D3
	for <lists+cake@lfdr.de>; Thu,  9 Dec 2021 12:55:36 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 97EA23CB43;
	Thu,  9 Dec 2021 06:55:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639050934;
	bh=UbWjBb3gI0i26xY3Qhltu8gmWgoGdUP0jA56+y0xxC4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nuM3+iKwcJrXBBCJkdKgRLmgMOq2tHHOmdwhHJ4b2YQVF6Vz0rqTIw/tZqNxf/oae
	 Rfk0PzpK6hTxEU5f71/5rkjX0/sCdZXI0H9fmADURJA6RrxUnxSXWBEOJffS9PWF/+
	 IMpEGahhSHBpx+5vWe4Qlz7gnd0dOcuhsGQDZq4CyNTwGGV309+zCKriDN7WNdE3R2
	 SH1yPEA9V4CHnDESJAkvUmy5WqQLtO8C+6oUjfJFK9JkDr2PyuGJXu1Xyf4HYPfoMx
	 GW9V3Spz8fZptXRmGn+4varT7kwc7irvrFNSM2/dO1FtEL4Tkz95Pl7iMoVB0Q7VcZ
	 npV+cwosFtE+A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from faui40.informatik.uni-erlangen.de
 (faui40.informatik.uni-erlangen.de [IPv6:2001:638:a000:4134::ffff:40])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 94DBE3B29D;
 Wed,  8 Dec 2021 19:17:36 -0500 (EST)
Received: from faui48e.informatik.uni-erlangen.de
 (faui48e.informatik.uni-erlangen.de [IPv6:2001:638:a000:4134::ffff:51])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by faui40.informatik.uni-erlangen.de (Postfix) with ESMTPS id 566BB548AE0;
 Thu,  9 Dec 2021 01:17:31 +0100 (CET)
Received: by faui48e.informatik.uni-erlangen.de (Postfix, from userid 10463)
 id 43B814E9FF9; Thu,  9 Dec 2021 01:17:31 +0100 (CET)
Date: Thu, 9 Dec 2021 01:17:31 +0100
From: Toerless Eckert <tte@cs.fau.de>
To: Greg Mirsky <gregimirsky@gmail.com>
Message-ID: <YbFLGzjp9Z2bczLk@faui48e.informatik.uni-erlangen.de>
References: <CAA93jw4qE+aLdNQ9O8AQoxC2u-Kk8jhF_uX3QeJumKJjQAC05g@mail.gmail.com>
 <CA+RyBmVHO7z4SDm14+mK4r23AN4pz_emTE-Hxf-+U=Tk=gq0aA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+RyBmVHO7z4SDm14+mK4r23AN4pz_emTE-Hxf-+U=Tk=gq0aA@mail.gmail.com>
X-Spam-Status: No, score=0.9 required=5.0
 tests=HEADER_FROM_DIFFERENT_DOMAINS=0.25,RCVD_IN_DNSWL_NONE=-0.0001,
 SPF_HELO_NONE=0.001,SPF_NEUTRAL=0.652 autolearn=disabled version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
 faui40.informatik.uni-erlangen.de
X-Mailman-Approved-At: Thu, 09 Dec 2021 06:55:33 -0500
Subject: Re: [Cake] [Network-quality-workshop] dec 22: mikrotik talk about
 fq-codel and cake in russian
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
Cc: Cake List <cake@lists.bufferbloat.net>, network-quality-workshop@iab.org,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSB1c2VkIHRvIHJ1biBNaWNyb3RpayB3aXRoIE9wZW5WUE4gZm9yIG1hbnkgeWVhcnMuIE5pY2Ug
Y29zdC1lZmZlY3RpdmUgaG9tZSByb3V0ZXIgaGFyZHdhcmUuCgpBcmVuJ3QgdGhlIG1pY3JvdGlr
IGFsc28gc3RhbmRhcmQgZmFyZSBmb3Igb3VyIElFVEYgaGFja2F0aG9uIFZQTiBub3cgPwpub3Qg
c3VyZSB3aGV0aGVyIGl0cyBNaWNyb1RpayBTVyBvciBPcGVuV1JUIHRob3VnaCAuLi4KClNvbWUg
aW1wbGVtZW50YXRpb24gc3VydmV5IGRyYWZ0IHdvdWxkIGJlIG5pY2UuIENvdWxkIGhhbmcgYXJv
dW5kIGZvcgphIGZldyB5ZWFycyBiZWZvcmUgcHVibGlzaGVkIGFzIFJGQywgZ2V0dGluZyB1cGRh
dGVkIHdpdGggbmV3IGltcGxlbWVudGF0aW9ucyB3ZSBkaXNjb3ZlcgphbG9uZyB0aGUgd2F5LiBz
aG91bGQgYmUgdGhlIG1vc3QgSUVURidpcyB3YXkgdG8gdHJhY2sgcHJvY2VzcyBpbiB0aGUgaW5k
dXN0cnkuIERvZXNuJ3QgaGF2ZSB0bwpiZSBsb25nIQoKQ0hlZXJzCiAgICBUb2VybGVzcwoKT24g
V2VkLCBEZWMgMDgsIDIwMjEgYXQgMDM6NDQ6MjdQTSAtMDgwMCwgR3JlZyBNaXJza3kgd3JvdGU6
Cj4gSGkgRGF2ZSwKPiBJIG1pZ2h0IGJlIGFibGUgdG8gaGVscCB3aXRoIHRoZSBpbnRlcnByZXRh
dGlvbi4gSXMgdGhlcmUgYW55dGhpbmcgaW4KPiBwYXJ0aWN1bGFyIHlvdSdyZSBpbnRlcmVzdGVk
IGluPwo+IEJUVywgdGhlIGNvbXBhbnkgaXMgZnJvbSBMYXR2aWEg8J+HsfCfh7ssICBteSBvbGQg
Y291bnRyeS4KPiAKPiBSZWdhcmRzLAo+IEdyZWcKPiAKPiBPbiBXZWQsIERlYyA4LCAyMDIxLCAx
Mjo0MSBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+IAo+ID4gc2VlIGh0
dHBzOi8vbWlrcm90aWsudGVhbS8gZm9yIHNpZ251cCBkZXRhaWxzLgo+ID4KPiA+IFRoZSB0YWxr
IHRpdGxlIGlzLi4uIHZlcnkgcnVzc2lhbi4gSSdtIG5vdCBzdXJlIGlmIGlmIGdvb2dsZQo+ID4g
dHJhbnNsYXRlJ3MgdHJhbnNsYXRpb24gaXMgc3VpdGFibGUgZm9yIGEgZmFtaWx5IG9yaWVudGVk
IG1haWxpbmcKPiA+IGxpc3QsIG9yIGlzIGNvcnJlY3QuCj4gPgo+ID4gQW55d2F5LCBpZiB0aGVy
ZSdzIGEgcnVzc2lhbiBzcGVha2VyIG91dCB0aGVyZSB0aGF0IGNhbiBraWJpdHo/LCBJIGRvCj4g
PiB3b3JyeSBhYm91dCBob3cgb3VyIGFsZ29yaXRobXMgZmFyZSBpbiB0cmFuc2xhdGlvbiwgYW5k
IGknbSB2ZXJ5Cj4gPiBwbGVhc2VkIHRvIHNlZSBmcS1jb2RlbCBhbmQgY2FrZSBtYWtlIHRoZSBt
aWtyb3RpayA3LjAgcmVsZWFzZS4KPiA+Cj4gPiAtLQo+ID4gSSB0cmllZCB0byBidWlsZCBhIGJl
dHRlciBmdXR1cmUsIGEgZmV3IHRpbWVzOgo+ID4gaHR0cHM6Ly93YXlmb3J3YXJkLmFyY2hpdmUu
b3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3JnCj4gPgo+ID4gRGF2ZSBUw6RodCBD
RU8sIFRla0xpYnJlLCBMTEMKPiA+Cj4gPiAtLQo+ID4gTmV0d29yay1xdWFsaXR5LXdvcmtzaG9w
IG1haWxpbmcgbGlzdAo+ID4gTmV0d29yay1xdWFsaXR5LXdvcmtzaG9wQGlhYi5vcmcKPiA+IGh0
dHBzOi8vd3d3LmlhYi5vcmcvbWFpbG1hbi9saXN0aW5mby9uZXR3b3JrLXF1YWxpdHktd29ya3No
b3AKPiA+Cgo+IC0tIAo+IE5ldHdvcmstcXVhbGl0eS13b3Jrc2hvcCBtYWlsaW5nIGxpc3QKPiBO
ZXR3b3JrLXF1YWxpdHktd29ya3Nob3BAaWFiLm9yZwo+IGh0dHBzOi8vd3d3LmlhYi5vcmcvbWFp
bG1hbi9saXN0aW5mby9uZXR3b3JrLXF1YWxpdHktd29ya3Nob3AKCgotLSAKLS0tCnR0ZUBjcy5m
YXUuZGUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

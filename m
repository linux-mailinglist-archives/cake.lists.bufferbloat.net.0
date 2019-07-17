Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 742DD6C249
	for <lists+cake@lfdr.de>; Wed, 17 Jul 2019 22:47:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5499E3CB3F;
	Wed, 17 Jul 2019 16:47:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1563396432;
	bh=+B9T6V61joQgXA9d3VQQJId7gq7K5P4ql1fMv5VTcZ0=;
	h=From:In-Reply-To:To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=Xvq2KY5HrwHccHhYxrvGEkarbSwenhX4EjhlpB+nSCHrw7TxnZKt3mIWh34gc70+4
	 1vnWlQwi1FlPn4YThxpDl07NHclE3MnQ15vfJ135G3VEgFhxG+SaCrvoN5QkLhAVPp
	 0M1Htd/4Vudwx12mecjFC5/wWXKf1yy1Ui4MfTrx7ChtKjSKhQBDATY39jAq2n6Zus
	 1SH8dg2UHQaV6Vny5TmOFelAxudhX1E8IPYzKGZVdQMuoQ+Cv+P3S1Ci7M5oJ8bPGN
	 FJq22gWRie/g+nyhkpg1AweU0qdg+KT7eGEzo/3DDurYS7XqfZ6QlvLQNgt6pxc7cl
	 V/7LMd7z1jJOQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from gndrsh.dnsmgr.net (br1.CN84in.dnsmgr.net [69.59.192.140])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9A4473CB39;
 Wed, 17 Jul 2019 11:07:59 -0400 (EDT)
Received: from gndrsh.dnsmgr.net (localhost [127.0.0.1])
 by gndrsh.dnsmgr.net (8.13.3/8.13.3) with ESMTP id x6HF7v6q082246;
 Wed, 17 Jul 2019 08:07:57 -0700 (PDT)
 (envelope-from 4bone@gndrsh.dnsmgr.net)
Received: (from 4bone@localhost)
 by gndrsh.dnsmgr.net (8.13.3/8.13.3/Submit) id x6HF7u7o082245;
 Wed, 17 Jul 2019 08:07:56 -0700 (PDT) (envelope-from 4bone)
From: "Rodney W. Grimes" <4bone@gndrsh.dnsmgr.net>
Message-Id: <201907171507.x6HF7u7o082245@gndrsh.dnsmgr.net>
In-Reply-To: <CAA93jw7yn2B6LfUP_Q_5cqqJfxMH0T3hSZiH4VMUYg=qSE33_A@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Date: Wed, 17 Jul 2019 08:07:56 -0700 (PDT)
X-Mailer: ELM [version 2.4ME+ PL121h (25)]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 17 Jul 2019 16:47:11 -0400
Subject: Re: [Cake] [Ecn-sane] three new internet drafts regarding SCE
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBJRVRGIDEwNSBydW5zIGZyb20gSnVseSAyMC0yN3RoIGluIE1vbnRyZWFsLgo+IAo+IGh0dHBz
Oi8vZGF0YXRyYWNrZXIuaWV0Zi5vcmcvbWVldGluZy8xMDUvYWdlbmRhLwo+IAo+IHRzdndnIG1l
ZXRzIHRodXJzZGF5IG1vcm5pbmcgMTAtMTIsIGFuZCBmcmlkYXkgMTI6MjAtCj4gCj4gUmVtb3Rl
IGF0dGVuZGFuY2UgdmlhIHZpZGVjb25mZXJlbmNpbmcgdG9vbHMgaXMgc3RyYWlnaHRmb3J3YXJk
LiBUaGVyZQo+IGFyZSBvZiBjb3Vyc2UgZG96ZW5zIG9mIG90aGVyIHdnIG1lZXRpbmdzIG9mIHBv
c3NpYmxlIGludGVyZXN0LCBpbiBteQo+IGNhc2UsIEknbSBzdGlsbCB0cmFja2luZyBiYWJlbCdz
IHByb2dyZXNzIHRocm91Z2ggdGhlIGlldGYsIGluCj4gcGFydGljdWxhciwgYW5kIEkgYWx3YXlz
IHRyeSB0bwo+IGNoZWNrIGluIG9uIGljY3JnLCBhbHNvIGluIGNhc2UgYW55dGhpbmcgaW50ZXJl
c3RpbmcgY29tZXMgdXAuCj4gCj4gU2luY2Ugbm90IGFsbCBtZW1iZXJzIG9mIG91ciBtYWlsaW5n
IGxpc3RzIGFyZSBvbiB0aGUgcmVsZXZhbnQgdHN2d2cKPiBvciB0Y3Btd2cgIG1haWxpbmcgbGlz
dHMsIGhlcmUgYXJlIHNvbWUgZHJhZnRzCj4gZnJvbSB0aG9zZSB3b3JraW5nIG9uIHRoZSBTQ0Ug
ZnJvbnQgKEknbSBub3QsIGJ1dCBJIGRvIHJlYWQgdGhpbmdzKQo+IGZvciBhcW0gYW5kIHRyYW5z
cG9ydCBlbmhhbmNlbWVudHMuCj4gCj4gaHR0cHM6Ly90b29scy5pZXRmLm9yZy9odG1sL2RyYWZ0
LWdyaW1lcy10Y3Btd2ctdGNwc2NlLTAwCj4gCj4gaHR0cHM6Ly90b29scy5pZXRmLm9yZy9odG1s
L2RyYWZ0LW1vcnRvbi10c3Z3Zy1zY2UtMDAKPiAKPiBodHRwczovL3Rvb2xzLmlldGYub3JnL2h0
bWwvZHJhZnQtaGVpc3QtdHN2d2ctc2NlLW9uZS1hbmQtdHdvLWZsb3ctdGVzdHMtMDAKClRoZXJl
IGlzIGFjdHVhbGx5IGEgNHRoIHJlbGF0ZWQgZHJhZnQgd2hpY2ggaXMgYSBuZXcgUSBhbGdvcml0
aG06CgpodHRwczovL3Rvb2xzLmlldGYub3JnL2h0bWwvZHJhZnQtbW9ydG9uLXRzdndnLWxpZ2h0
d2VpZ2h0LWZhaXItcXVldWVpbmcKCj4gSSB3b3VsZCBoYXZlIGxpa2VkIGl0IGlmIHRoZSB0aGUg
YWN0dWFsIHNjcmlwdHMsICYgZmxlbnQgZGF0YSBmaWxlcwo+IHdlcmUgcHVibGlzaGVkIGFuZCBy
ZWZlcmVuY2VkIGluIHRoaXMgbGFzdCBkcmFmdC4gKEkgdGhpbmsgdGhlCj4gcGljdHVyZXMgd2Vy
ZSBwdWJsaXNoZWQgb24gc29tZSBvdGhlciBlbWFpbCB0aHJlYWQgKD8pLCBhbmQgSSBsb29rCj4g
Zm9yd2FyZCB0byB0aGUgc2xpZGVzKQoKV2UgYXJlIHdvcmtpbmcgdG93YXJkcyB0aGlzLCBwYXJ0
IG9mIHRoZSBwcm9ibGVtIGlzIHRoZSB0b29scwphbmQgdGhlIGRhdGEgd2FzIGV2b2x2aW5nIGF0
IGEgcGFjZSBmYXN0ZXIgdGhhbiB3ZSBjb3VsZCBwdWJsaXNoIHRoZW0uCgpXZSBoYXZlIG5vdyB2
YWxpZGF0ZWQgdGhhdCBhbiBpbmRlcGVuZGVudCBwZXJzb24gY2FuIGJ1aWxkLAppbnN0YWxsIGFu
ZCBydW4gYSBTQ0UgY2FwYWJsZSBsaW51eCBrZXJuZWwgYXZhbGlhYmxlIGF0OgoKCWh0dHBzOi8v
Z2l0aHViLmNvbS9jaHJvbWkvc2NlCgpOb3RlIHRoYXQgdGhpcyBpcyBldm9sdmluZyBjb2RlLCBz
byBleHBlY3QgdG8gc2VlIHVwZGF0ZXMsCmFzIHdlbGwgYXMgY29tcGxldGUgbm90ZXMgb24gbmV3
IHN5c2N0bCdzIGF2YWxpYWJsZSB0bwplbmFibGUvZGlzYWJsZSBmZWF0dXJlcyBmb3IgdGVzdGlu
ZyBwdXJwb3Nlcy4KCj4gTXkgb3duCj4gKGV2ZW50dWFsKSBjb250cmlidXRpb24gdG8gdGhpcyB3
b3JrIG1pZ2h0IGJlIG9uIHRoZSB3aWZpIGZyb250LCBidXQKPiBuZWl0aGVyIGw0cyBvciBzY2Ug
YXJlIGJha2VkIGVub3VnaCB5ZXQgdG8gYm90aGVyIHRyeWluZywKPiBJTUhPLiBNeSBhbmFseXNp
cyBvZiB0aGUgYmF0dGxlbWVzaCBmcV9jb2RlbCArIGVjbiBvdmVyIHdpZmkgZGF0YSBJCj4gaG9w
ZSB0byBmaW5pc2ggdGhpcyB3ZWVrLCBidXQgSSdsbCBmaW5kIGFuIG90aGVyIG91dGxldCBmb3IK
PiBwdWJsaWNhdGlvbi4gKHNtYWxsZXN0IHN1YnNldCBvZiBvYnNlcnZhdGlvbnMgaXMgdGhhdCB3
ZSBjYW4gcmVkdWNlCj4gdGhlIGNvZGVsIHRhcmdldCB0byA2bXMgb24gd2lmaSBuZXR3b3JrcyB0
aGF0IGhhdmUgcG93ZXJzYXZlIGRpc2FibGVkLAo+IGFuZCB0aGF0IHNlcmlvdXMgODAyLjExZSBx
dWV1ZSB1c2Ugc3RpbGwgbWFzc2l2ZWx5IHN1Y2tzLiBkZXRhaWxzIHRvCj4gY29tZSBsYXRlcikK
PiAKPiBUaGVyZSBhcmUgbWFueSwgbWFueSwgbWFueSBvdGhlciBkcmFmdHMgaW4gcHJvZ3Jlc3Mg
aW4gdHN2d2csIG9mIG5vdGUgbWlnaHQgYmU6Cj4gCj4gaHR0cHM6Ly90b29scy5pZXRmLm9yZy9p
ZC9kcmFmdC13aGl0ZS10c3Z3Zy1sbGQtMDAudHh0Cj4gCj4gaHR0cHM6Ly90b29scy5pZXRmLm9y
Zy9pZC9kcmFmdC13aGl0ZS10c3Z3Zy1ucWItMDIudHh0Cj4gCj4gSW4gYWRkaXRpb24gdG8gdGhl
IHBlcnBldHVhbGx5IHJldmlzZWQgbDRzIHJlbGF0ZWQgb25lcy4KPiAKPiAtLSAKPiAKPiBEYXZl
IFQ/aHQKPiBDVE8sIFRla0xpYnJlLCBMTEMKPiBodHRwOi8vd3d3LnRla2xpYnJlLmNvbQo+IFRl
bDogMS04MzEtMjA1LTk3NDAKCi0tIApSb2QgR3JpbWVzICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJncmltZXNAZnJlZWJzZC5vcmcKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E55FB137C4E
	for <lists+cake@lfdr.de>; Sat, 11 Jan 2020 09:19:33 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6D5F43CB38;
	Sat, 11 Jan 2020 03:19:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578730772;
	bh=dMVd37Z2MutzQwHs7mcx9IHz8M7SCg/Ugg3NoxRZtME=;
	h=To:From:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=W9zyr+xIcErzr/6bHWmOxt1xmr9LRnqyOgcm23oIxdsk6Z7/BEy5gbsxWxwfh/8cZ
	 GK56F49Mx6yxAUlmTvA5atEAULhW3H7jBFCaI/IgsedwXGuSNLG0nf6XpL7LTn3Qpv
	 q6BeTVBL0tFvY4E6+qsv0/QiQ7p5Kba4kY4EaUzjTjp0xtSOfVVjesqm6xLqe9YND8
	 JWxTkJ7zqsOcC60KA4DSGJGcwMHpmmk30RcY2FwSh9UWmT9ZbUIxK0e2IBgUi75iHK
	 Y8a/7FOCb+BFVSiA3MasYNOjkmR6L1dxEhakzPZfuBFao8UrsN3o6K+7kPxusV5zY5
	 7opdJbNy5o4TQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CD9693B2A4
 for <cake@lists.bufferbloat.net>; Sat, 11 Jan 2020 03:19:30 -0500 (EST)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31AB62077C;
 Sat, 11 Jan 2020 08:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578730770;
 bh=mbmkjylNM9hB5P7y22uipl+elZS2Y7y5nQUaJa3Za+k=;
 h=Subject:To:Cc:From:Date:From;
 b=TIEPG5vH0gVlxBmzWwo9PquTw0e4LAbWQkiM7QeCOTPDg3e5lA/C2jaNzZy6SB8jH
 27uNYD8eOV5hxqdiGzBPtvddJV+dcSEahenwZ+eo+7vQww32lYtWibmu2y+5i6wX10
 0QSwa9UP1+nMbxi4osE827p3aTcvJpHPii9ZOVPc=
To: cake@lists.bufferbloat.net, davem@davemloft.net, gregkh@linuxfoundation.org,
 ldir@darbyshire-bryant.me.uk, toke@redhat.com, toke@toke.dk,
 wenyang@linux.alibaba.com, xiyou.wangcong@gmail.com
From: <gregkh@linuxfoundation.org>
Date: Sat, 11 Jan 2020 09:18:04 +0100
Message-ID: <1578730684729@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Cake] Patch "sch_cake: avoid possible divide by zero in
	cake_enqueue()" has been added to the 4.19-stable tree
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

ClRoaXMgaXMgYSBub3RlIHRvIGxldCB5b3Uga25vdyB0aGF0IEkndmUganVzdCBhZGRlZCB0aGUg
cGF0Y2ggdGl0bGVkCgogICAgc2NoX2Nha2U6IGF2b2lkIHBvc3NpYmxlIGRpdmlkZSBieSB6ZXJv
IGluIGNha2VfZW5xdWV1ZSgpCgp0byB0aGUgNC4xOS1zdGFibGUgdHJlZSB3aGljaCBjYW4gYmUg
Zm91bmQgYXQ6CiAgICBodHRwOi8vd3d3Lmtlcm5lbC5vcmcvZ2l0Lz9wPWxpbnV4L2tlcm5lbC9n
aXQvc3RhYmxlL3N0YWJsZS1xdWV1ZS5naXQ7YT1zdW1tYXJ5CgpUaGUgZmlsZW5hbWUgb2YgdGhl
IHBhdGNoIGlzOgogICAgIHNjaF9jYWtlLWF2b2lkLXBvc3NpYmxlLWRpdmlkZS1ieS16ZXJvLWlu
LWNha2VfZW5xdWV1ZS5wYXRjaAphbmQgaXQgY2FuIGJlIGZvdW5kIGluIHRoZSBxdWV1ZS00LjE5
IHN1YmRpcmVjdG9yeS4KCklmIHlvdSwgb3IgYW55b25lIGVsc2UsIGZlZWxzIGl0IHNob3VsZCBu
b3QgYmUgYWRkZWQgdG8gdGhlIHN0YWJsZSB0cmVlLApwbGVhc2UgbGV0IDxzdGFibGVAdmdlci5r
ZXJuZWwub3JnPiBrbm93IGFib3V0IGl0LgoKCkZyb20gZm9vQGJheiBTYXQgMTEgSmFuIDIwMjAg
MDk6MTQ6MzQgQU0gQ0VUCkZyb206IFdlbiBZYW5nIDx3ZW55YW5nQGxpbnV4LmFsaWJhYmEuY29t
PgpEYXRlOiBUaHUsIDIgSmFuIDIwMjAgMTc6MjE6NDMgKzA4MDAKU3ViamVjdDogc2NoX2Nha2U6
IGF2b2lkIHBvc3NpYmxlIGRpdmlkZSBieSB6ZXJvIGluIGNha2VfZW5xdWV1ZSgpCgpGcm9tOiBX
ZW4gWWFuZyA8d2VueWFuZ0BsaW51eC5hbGliYWJhLmNvbT4KClsgVXBzdHJlYW0gY29tbWl0IDY4
YWFiODIzYzIyMzY0NmZhYjMxMWY4YTY1ODE5OTRmYWNlZTY2YTAgXQoKVGhlIHZhcmlhYmxlcyAn
d2luZG93X2ludGVydmFsJyBpcyB1NjQgYW5kIGRvX2RpdigpCnRydW5jYXRlcyBpdCB0byAzMiBi
aXRzLCB3aGljaCBtZWFucyBpdCBjYW4gdGVzdApub24temVybyBhbmQgYmUgdHJ1bmNhdGVkIHRv
IHplcm8gZm9yIGRpdmlzaW9uLgpUaGUgdW5pdCBvZiB3aW5kb3dfaW50ZXJ2YWwgaXMgbmFub3Nl
Y29uZHMsCnNvIGl0cyBsb3dlciAzMi1iaXQgaXMgcmVsYXRpdmVseSBlYXN5IHRvIGV4Y2VlZC4K
Rml4IHRoaXMgaXNzdWUgYnkgdXNpbmcgZGl2NjRfdTY0KCkgaW5zdGVhZC4KCkZpeGVzOiA3Mjk4
ZGU5Y2Q3MjUgKCJzY2hfY2FrZTogQWRkIGluZ3Jlc3MgbW9kZSIpClNpZ25lZC1vZmYtYnk6IFdl
biBZYW5nIDx3ZW55YW5nQGxpbnV4LmFsaWJhYmEuY29tPgpDYzogS2V2aW4gRGFyYnlzaGlyZS1C
cnlhbnQgPGxkaXJAZGFyYnlzaGlyZS1icnlhbnQubWUudWs+CkNjOiBUb2tlIEjDuGlsYW5kLUrD
uHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KQ2M6IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2
ZW1sb2Z0Lm5ldD4KQ2M6IENvbmcgV2FuZyA8eGl5b3Uud2FuZ2NvbmdAZ21haWwuY29tPgpDYzog
Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKQ2M6
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKQWNrZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4
cmdlbnNlbiA8dG9rZUB0b2tlLmRrPgpTaWduZWQtb2ZmLWJ5OiBEYXZpZCBTLiBNaWxsZXIgPGRh
dmVtQGRhdmVtbG9mdC5uZXQ+ClNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Ci0tLQogbmV0L3NjaGVkL3NjaF9jYWtlLmMgfCAgICAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCi0tLSBh
L25ldC9zY2hlZC9zY2hfY2FrZS5jCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCkBAIC0xNzU4
LDcgKzE3NTgsNyBAQCBzdGF0aWMgczMyIGNha2VfZW5xdWV1ZShzdHJ1Y3Qgc2tfYnVmZiAqCiAJ
CQkJCQkgICAgICBxLT5hdmdfd2luZG93X2JlZ2luKSk7CiAJCQl1NjQgYiA9IHEtPmF2Z193aW5k
b3dfYnl0ZXMgKiAodTY0KU5TRUNfUEVSX1NFQzsKIAotCQkJZG9fZGl2KGIsIHdpbmRvd19pbnRl
cnZhbCk7CisJCQliID0gZGl2NjRfdTY0KGIsIHdpbmRvd19pbnRlcnZhbCk7CiAJCQlxLT5hdmdf
cGVha19iYW5kd2lkdGggPQogCQkJCWNha2VfZXdtYShxLT5hdmdfcGVha19iYW5kd2lkdGgsIGIs
CiAJCQkJCSAgYiA+IHEtPmF2Z19wZWFrX2JhbmR3aWR0aCA/IDIgOiA4KTsKCgpQYXRjaGVzIGN1
cnJlbnRseSBpbiBzdGFibGUtcXVldWUgd2hpY2ggbWlnaHQgYmUgZnJvbSB3ZW55YW5nQGxpbnV4
LmFsaWJhYmEuY29tIGFyZQoKcXVldWUtNC4xOS9zY2hfY2FrZS1hdm9pZC1wb3NzaWJsZS1kaXZp
ZGUtYnktemVyby1pbi1jYWtlX2VucXVldWUucGF0Y2gKcXVldWUtNC4xOS9yZWd1bGF0b3ItZml4
LXVzZS1hZnRlci1mcmVlLWlzc3VlLnBhdGNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

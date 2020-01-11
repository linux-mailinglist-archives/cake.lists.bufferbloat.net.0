Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD13137C52
	for <lists+cake@lfdr.de>; Sat, 11 Jan 2020 09:22:22 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B8CF33CB38;
	Sat, 11 Jan 2020 03:22:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578730941;
	bh=OH/kM8qzgUtCr8RkqvAVZh7sHUoku0WsonKzTEn8DRk=;
	h=To:From:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=emrs4+0nsJYF2xZdW/NiTiixFM2s34oc7jsKzzZEawuk6yerVSmS3ki8wnSCvWuAn
	 JmfVbYdipgVmkRq8WTDhLKspSk78RsAbnGJjXkt1LoJ+QARusKMT5Y2/xsPUjjq4M6
	 I5zxHJ08Wxdo9FKGEHA/YLYLfoTGHHvbjR9CbHzxkMcGYpf9h8IckS1gmYtGrLjAsX
	 j/MCo28f59SJt6zEwvkB5R9IVyPZPl+OJ445rwePXTNaz3jWtBDPOxbmAt5dCf5LTy
	 9ixSw8Ukspcu0S9q7/1yIsLVQvGvHujfMHch9V4rdTHICVDup5ic6GSnEWJrgV7iI4
	 HuKn5CGmck16Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 73D663B2A4
 for <cake@lists.bufferbloat.net>; Sat, 11 Jan 2020 03:22:20 -0500 (EST)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E28C22072E;
 Sat, 11 Jan 2020 08:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578730939;
 bh=Cq8pGCa3L32GWRrx40D4whFSkQlHj7QiBWr5pCmxgLw=;
 h=Subject:To:Cc:From:Date:From;
 b=1riTm8dhqkpqkk9uLE3fous+MW5nk2nTFgYCGmx57Zy1voNkBCycX0HZBeetEIXMf
 TAduvQnxgUi2uUBSGvcDFmPrb5yn7GPEzD6dvEr64b0o4SGK3JEqeaVo8aAVBecFvL
 0eqMOTz46G/OpcMf9uakfGztqTCklx20VHboOu7U=
To: cake@lists.bufferbloat.net, davem@davemloft.net, gregkh@linuxfoundation.org,
 ldir@darbyshire-bryant.me.uk, toke@redhat.com, toke@toke.dk,
 wenyang@linux.alibaba.com, xiyou.wangcong@gmail.com
From: <gregkh@linuxfoundation.org>
Date: Sat, 11 Jan 2020 09:18:11 +0100
Message-ID: <1578730691227219@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Cake] Patch "sch_cake: avoid possible divide by zero in
	cake_enqueue()" has been added to the 5.4-stable tree
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
IGluIGNha2VfZW5xdWV1ZSgpCgp0byB0aGUgNS40LXN0YWJsZSB0cmVlIHdoaWNoIGNhbiBiZSBm
b3VuZCBhdDoKICAgIGh0dHA6Ly93d3cua2VybmVsLm9yZy9naXQvP3A9bGludXgva2VybmVsL2dp
dC9zdGFibGUvc3RhYmxlLXF1ZXVlLmdpdDthPXN1bW1hcnkKClRoZSBmaWxlbmFtZSBvZiB0aGUg
cGF0Y2ggaXM6CiAgICAgc2NoX2Nha2UtYXZvaWQtcG9zc2libGUtZGl2aWRlLWJ5LXplcm8taW4t
Y2FrZV9lbnF1ZXVlLnBhdGNoCmFuZCBpdCBjYW4gYmUgZm91bmQgaW4gdGhlIHF1ZXVlLTUuNCBz
dWJkaXJlY3RvcnkuCgpJZiB5b3UsIG9yIGFueW9uZSBlbHNlLCBmZWVscyBpdCBzaG91bGQgbm90
IGJlIGFkZGVkIHRvIHRoZSBzdGFibGUgdHJlZSwKcGxlYXNlIGxldCA8c3RhYmxlQHZnZXIua2Vy
bmVsLm9yZz4ga25vdyBhYm91dCBpdC4KCgpGcm9tIGZvb0BiYXogU2F0IDExIEphbiAyMDIwIDA5
OjEzOjIwIEFNIENFVApGcm9tOiBXZW4gWWFuZyA8d2VueWFuZ0BsaW51eC5hbGliYWJhLmNvbT4K
RGF0ZTogVGh1LCAyIEphbiAyMDIwIDE3OjIxOjQzICswODAwClN1YmplY3Q6IHNjaF9jYWtlOiBh
dm9pZCBwb3NzaWJsZSBkaXZpZGUgYnkgemVybyBpbiBjYWtlX2VucXVldWUoKQoKRnJvbTogV2Vu
IFlhbmcgPHdlbnlhbmdAbGludXguYWxpYmFiYS5jb20+CgpbIFVwc3RyZWFtIGNvbW1pdCA2OGFh
YjgyM2MyMjM2NDZmYWIzMTFmOGE2NTgxOTk0ZmFjZWU2NmEwIF0KClRoZSB2YXJpYWJsZXMgJ3dp
bmRvd19pbnRlcnZhbCcgaXMgdTY0IGFuZCBkb19kaXYoKQp0cnVuY2F0ZXMgaXQgdG8gMzIgYml0
cywgd2hpY2ggbWVhbnMgaXQgY2FuIHRlc3QKbm9uLXplcm8gYW5kIGJlIHRydW5jYXRlZCB0byB6
ZXJvIGZvciBkaXZpc2lvbi4KVGhlIHVuaXQgb2Ygd2luZG93X2ludGVydmFsIGlzIG5hbm9zZWNv
bmRzLApzbyBpdHMgbG93ZXIgMzItYml0IGlzIHJlbGF0aXZlbHkgZWFzeSB0byBleGNlZWQuCkZp
eCB0aGlzIGlzc3VlIGJ5IHVzaW5nIGRpdjY0X3U2NCgpIGluc3RlYWQuCgpGaXhlczogNzI5OGRl
OWNkNzI1ICgic2NoX2Nha2U6IEFkZCBpbmdyZXNzIG1vZGUiKQpTaWduZWQtb2ZmLWJ5OiBXZW4g
WWFuZyA8d2VueWFuZ0BsaW51eC5hbGliYWJhLmNvbT4KQ2M6IEtldmluIERhcmJ5c2hpcmUtQnJ5
YW50IDxsZGlyQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPgpDYzogVG9rZSBIw7hpbGFuZC1Kw7hy
Z2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkNjOiBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+CkNjOiBDb25nIFdhbmcgPHhpeW91Lndhbmdjb25nQGdtYWlsLmNvbT4KQ2M6IGNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0CkNjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnCkNjOiBs
aW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCkFja2VkLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJn
ZW5zZW4gPHRva2VAdG9rZS5kaz4KU2lnbmVkLW9mZi1ieTogRGF2aWQgUy4gTWlsbGVyIDxkYXZl
bUBkYXZlbWxvZnQubmV0PgpTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPgotLS0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgICAgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgotLS0gYS9u
ZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwpAQCAtMTc2OSw3
ICsxNzY5LDcgQEAgc3RhdGljIHMzMiBjYWtlX2VucXVldWUoc3RydWN0IHNrX2J1ZmYgKgogCQkJ
CQkJICAgICAgcS0+YXZnX3dpbmRvd19iZWdpbikpOwogCQkJdTY0IGIgPSBxLT5hdmdfd2luZG93
X2J5dGVzICogKHU2NClOU0VDX1BFUl9TRUM7CiAKLQkJCWRvX2RpdihiLCB3aW5kb3dfaW50ZXJ2
YWwpOworCQkJYiA9IGRpdjY0X3U2NChiLCB3aW5kb3dfaW50ZXJ2YWwpOwogCQkJcS0+YXZnX3Bl
YWtfYmFuZHdpZHRoID0KIAkJCQljYWtlX2V3bWEocS0+YXZnX3BlYWtfYmFuZHdpZHRoLCBiLAog
CQkJCQkgIGIgPiBxLT5hdmdfcGVha19iYW5kd2lkdGggPyAyIDogOCk7CgoKUGF0Y2hlcyBjdXJy
ZW50bHkgaW4gc3RhYmxlLXF1ZXVlIHdoaWNoIG1pZ2h0IGJlIGZyb20gd2VueWFuZ0BsaW51eC5h
bGliYWJhLmNvbSBhcmUKCnF1ZXVlLTUuNC9yZWd1bGF0b3ItY29yZS1maXgtcmVndWxhdG9yX3Jl
Z2lzdGVyLWVycm9yLXBhdGhzLXRvLnBhdGNoCnF1ZXVlLTUuNC9zY2hfY2FrZS1hdm9pZC1wb3Nz
aWJsZS1kaXZpZGUtYnktemVyby1pbi1jYWtlX2VucXVldWUucGF0Y2gKcXVldWUtNS40L3JlZ3Vs
YXRvci1maXgtdXNlLWFmdGVyLWZyZWUtaXNzdWUucGF0Y2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

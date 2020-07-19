Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3946D2265BE
	for <lists+cake@lfdr.de>; Mon, 20 Jul 2020 17:57:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CB7A23CB38;
	Mon, 20 Jul 2020 11:57:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595260654;
	bh=WKJ4DfhkX/+M9zn2AmJ0GLkmKs/3koLs+pwp5/70uM0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=a0gdUznilLcFLjI+fifZU7KdfKo7GAtkci7DSDrxOgMVOEVIhmmRNscZ0B3QtfwXV
	 7/LA4p9Hn8qWcjpkeCdZtxWorC776CY9vQ3GWMKVAh3TLCcYnwJ0kQhkko5mA1WFWP
	 H4zmgesQk9XCMCT8Kr8GmcQTijf3ECT2+rnIlHHcVagYQSy19cA9Q+Ytr1lu2U59n9
	 YaooI4UM7AuqMUa/3t6GPic+KK4nvimD+eNzukFQIQLif9nanMa62Knw64iccBiO1C
	 zpcIL/2YpWmA+8tSKP9pheDwIvilzrGTYtw/JdLs2RjXruzCYVigxQKowyLcoV9d5x
	 XgRnlq04YAxSw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp.al2klimov.de (smtp.al2klimov.de
 [IPv6:2a01:4f8:c0c:1465::1])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B2B013B29E
 for <cake@lists.bufferbloat.net>; Sun, 19 Jul 2020 08:22:42 -0400 (EDT)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id F351DBC063;
 Sun, 19 Jul 2020 12:22:38 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: toke@toke.dk, jhs@mojatatu.com, xiyou.wangcong@gmail.com, jiri@resnulli.us,
 davem@davemloft.net, kuba@kernel.org, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Sun, 19 Jul 2020 14:22:32 +0200
Message-Id: <20200719122232.58647-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
Authentication-Results: smtp.al2klimov.de;
 auth=pass smtp.auth=aklimov@al2klimov.de
 smtp.mailfrom=grandmaster@al2klimov.de
X-Mailman-Approved-At: Mon, 20 Jul 2020 11:57:33 -0400
Subject: [Cake] [PATCH for v5.9] sch_cake: Replace HTTP links with HTTPS ones
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
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

UmF0aW9uYWxlOgpSZWR1Y2VzIGF0dGFjayBzdXJmYWNlIG9uIGtlcm5lbCBkZXZzIG9wZW5pbmcg
dGhlIGxpbmtzIGZvciBNSVRNCmFzIEhUVFBTIHRyYWZmaWMgaXMgbXVjaCBoYXJkZXIgdG8gbWFu
aXB1bGF0ZS4KCkRldGVybWluaXN0aWMgYWxnb3JpdGhtOgpGb3IgZWFjaCBmaWxlOgogIElmIG5v
dCAuc3ZnOgogICAgRm9yIGVhY2ggbGluZToKICAgICAgSWYgZG9lc24ndCBjb250YWluIGBcYnht
bG5zXGJgOgogICAgICAgIEZvciBlYWNoIGxpbmssIGBcYmh0dHA6Ly9bXiMgXHRcclxuXSooPzpc
d3wvKWA6CgkgIElmIG5laXRoZXIgYFxiZ251XC5vcmcvbGljZW5zZWAsIG5vciBgXGJtb3ppbGxh
XC5vcmcvTVBMXGJgOgogICAgICAgICAgICBJZiBib3RoIHRoZSBIVFRQIGFuZCBIVFRQUyB2ZXJz
aW9ucwogICAgICAgICAgICByZXR1cm4gMjAwIE9LIGFuZCBzZXJ2ZSB0aGUgc2FtZSBjb250ZW50
OgogICAgICAgICAgICAgIFJlcGxhY2UgSFRUUCB3aXRoIEhUVFBTLgoKU2lnbmVkLW9mZi1ieTog
QWxleGFuZGVyIEEuIEtsaW1vdiA8Z3JhbmRtYXN0ZXJAYWwya2xpbW92LmRlPgotLS0KIENvbnRp
bnVpbmcgbXkgd29yayBzdGFydGVkIGF0IDkzNDMxZTA2MDdlNS4KIFNlZSBhbHNvOiBnaXQgbG9n
IC0tb25lbGluZSAnLS1hdXRob3I9QWxleGFuZGVyIEEuIEtsaW1vdiA8Z3JhbmRtYXN0ZXJAYWwy
a2xpbW92LmRlPicgdjUuNy4ubWFzdGVyCiAoQWN0dWFsbHkgbGV0dGluZyBhIHNoZWxsIGZvciBs
b29wIHN1Ym1pdCBhbGwgdGhpcyBzdHVmZiBmb3IgbWUuKQoKIElmIHRoZXJlIGFyZSBhbnkgVVJM
cyB0byBiZSByZW1vdmVkIGNvbXBsZXRlbHkKIG9yIGF0IGxlYXN0IG5vdCAoanVzdCkgSFRUUFNp
ZmllZDoKIEp1c3QgY2xlYXJseSBzYXkgc28gYW5kIEknbGwgKnVuZG8gbXkgY2hhbmdlKi4KIFNl
ZSBhbHNvOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC82LzI3LzY0CgogSWYgdGhlcmUgYXJl
IGFueSB2YWxpZCwgYnV0IHlldCBub3QgY2hhbmdlZCBVUkxzOgogU2VlOiBodHRwczovL2xrbWwu
b3JnL2xrbWwvMjAyMC82LzI2LzgzNwoKIElmIHlvdSBhcHBseSB0aGUgcGF0Y2gsIHBsZWFzZSBs
ZXQgbWUga25vdy4KCiBTb3JyeSBhZ2FpbiB0byBhbGwgbWFpbnRhaW5lcnMgd2hvIGNvbXBsYWlu
ZWQgYWJvdXQgc3ViamVjdCBsaW5lcy4KIE5vdyBJIHJlYWxpemVkIHRoYXQgeW91IHdhbnQgYW4g
YWN0dWFsbHkgcGVyZmVjdCBwcmVmaXhlcywKIG5vdCBqdXN0IHN1YnN5c3RlbSBvbmVzLgogSSB0
cmllZCBteSBiZXN0Li4uCiBBbmQgeWVzLCAqSSBjb3VsZCogKGF0IGxlYXN0IGhhbGYtKWF1dG9t
YXRlIGl0LgogSW1wb3NzaWJsZSBpcyBub3RoaW5nISA6KQoKCiBuZXQvc2NoZWQvc2NoX2Nha2Uu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMK
aW5kZXggZWJhZWVjMWU1YzgyLi4yZjZjMGRhYTIzMzcgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9z
Y2hfY2FrZS5jCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCkBAIC0zNjMsNyArMzYzLDcgQEAg
c3RhdGljIGNvbnN0IHU4IGJ1bGtfb3JkZXJbXSA9IHsxLCAwLCAyLCAzfTsKICNkZWZpbmUgUkVD
X0lOVl9TUVJUX0NBQ0hFICgxNikKIHN0YXRpYyB1MzIgY29iYWx0X3JlY19pbnZfc3FydF9jYWNo
ZVtSRUNfSU5WX1NRUlRfQ0FDSEVdID0gezB9OwogCi0vKiBodHRwOi8vZW4ud2lraXBlZGlhLm9y
Zy93aWtpL01ldGhvZHNfb2ZfY29tcHV0aW5nX3NxdWFyZV9yb290cworLyogaHR0cHM6Ly9lbi53
aWtpcGVkaWEub3JnL3dpa2kvTWV0aG9kc19vZl9jb21wdXRpbmdfc3F1YXJlX3Jvb3RzCiAgKiBu
ZXdfaW52c3FydCA9IChpbnZzcXJ0IC8gMikgKiAoMyAtIGNvdW50ICogaW52c3FydF4yKQogICoK
ICAqIEhlcmUsIGludnNxcnQgaXMgYSBmaXhlZCBwb2ludCBudW1iZXIgKDwgMS4wKSwgMzJiaXQg
bWFudGlzc2EsIGFrYSBRMC4zMgotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF7C43664
	for <lists+cake@lfdr.de>; Thu, 13 Jun 2019 15:23:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E973B3CB3B;
	Thu, 13 Jun 2019 09:23:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1560432183;
	bh=ID0KodKWQVk+WBG9MHCeDOmq0+sFJoi2rt1S1/37IK4=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RpAemg4TwaVnPCW0Q1NgWp8o/8PagIDKBR2XK3m+jZtmtrZ98UfZcGnyJYTwDqxKv
	 EbA8sxRjmLv99CN7bhY3RicQOZ7EmhDnJtdIQh3nE/B0BX0qjwwyiFc+nPC2Os/pf+
	 +p+Z6us0Oh01aqXYwNzO1o+F7Fy69ebUnvCopx3SDmqkKJwt69l6LjCJ0WxluNMW3r
	 8ONeomTVd3LPREaAmgUFmBvxyPGaDAq/C0MaVYL3KBRKCOebdLGR+wFKQrBDYV2U6n
	 rw7Lc9qPxPYMSF5yfGY+v/ZBO8xtqb6r0h7m3i5hmbjcvKKvP+7OCK8NruU/6sQvXu
	 WQChYkkQjBOBg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com
 [IPv6:2607:f8b0:4864:20::d29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C436A3B2A4;
 Thu, 13 Jun 2019 09:23:02 -0400 (EDT)
Received: by mail-io1-xd29.google.com with SMTP id u13so16820258iop.0;
 Thu, 13 Jun 2019 06:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=xYdtnPIuO4EeLln3yg54MmNpQEWoe7xPGCaqJuxRLt0=;
 b=PRGZgd93IC1dEvZV31gQM+hgCV15yOpL1qr4k/iOuqCArG1Rkvm3lmO0Fk35GxM3Bv
 QSXBpXKWPHRyBRXoF8T7MLCUM89ziTgquyKRnTKHnEw7fbda2rSOmpE5w5UvFTEkEAk8
 HshYzjHG47se6ynVXPhAtwd30DXWfyW3r6cp4C6FAUd0Io0vdB9DAYFsM4iuIZzG1KrQ
 YPw+Fz25rIKa2/HJ41mFGnWgYzrc54r9b+Yxwcg10pafg286M5yGADaCvoLNCjLifxyF
 Qd+ajEQ+7VeQeEId6TNvmOEeydkQZSaVfbM5IXKp65675CefPSkPTGkrE/AtAyiAgw0Q
 mWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=xYdtnPIuO4EeLln3yg54MmNpQEWoe7xPGCaqJuxRLt0=;
 b=ntK+Sg6wLTHqyq3jyzOYU1lnrEXUh/NmHVpqQ5J0DJLwjt7Y4m+JwKpU0t/1lAxRVh
 u+40OshJHWielsWSINrNpMFlnV1QRqTtqXMZcfqbArtlUZqw4G2/ISXOkVkmA+RZVJv6
 EpHgZNoF+r3gc6SHgI07s13Z0OS8vBGOG0iyvUdLZAKD7IwqNmng/Yq7hGpOBV/Bif1I
 Re1fX/GubuneXFXdVuRc8TE3rH7nDUyAMXXQdn6lKxL1Zwq7QCC+6rt20xh+QW1s/gx0
 0JhMvcr9SNlp/N8zkAPBUL5TVXnYDdrf/sDGGQ2GJq/qKaDhHEr08Tf2TFQ7gQNwvxlf
 Ob1w==
X-Gm-Message-State: APjAAAX13zrbSJq5sXXsJ6hel4waiAsl+vhCOXDxe7hQrRb1Ut/lULaO
 OWD3xfIMlgL9UEkqeZprNqmadUmnOT0nVaHpvaMcyv2k
X-Google-Smtp-Source: APXvYqy8ZcYId9W5tHScwV0FDldlI3b52iwWk6qdu/DUXlMYXaPbLBdc8CdDA+wiBiQMamkL/ovNVX/VDCdbzkpyLX8=
X-Received: by 2002:a02:c7c9:: with SMTP id s9mr57213168jao.82.1560432181948; 
 Thu, 13 Jun 2019 06:23:01 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 13 Jun 2019 06:22:49 -0700
Message-ID: <CAA93jw6nqviF-Yk-djXNUZnH_JSavPjkF3YpYS3tSzMiUuzy8A@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 flent-users <flent-users@flent.org>
Subject: [Cake] tunable delays for tcp
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

dGhpcyBjb21taXQgZnJvbSB0aGUgaW1tb3J0YWwgZWR1bWF6ZXQgYXJyaXZlZCB0aGlzIG1vcm5p
bmcgaW4gbmV0LW5leHQ6CgpodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9uZXRkZXYvbXNn
NTc3NDUyLmh0bWwKCi4uLgoKPiBBZGRpbmcgZGVsYXlzIHRvIFRDUCBmbG93cyBpcyBjcnVjaWFs
IGZvciBzdHVkeWluZyBiZWhhdmlvcgo+IG9mIFRDUCBzdGFja3MsIGluY2x1ZGluZyBjb25nZXN0
aW9uIGNvbnRyb2wgbW9kdWxlcy4KPgo+IExpbnV4IG9mZmVycyBuZXRlbSBtb2R1bGUsIGJ1dCBp
dCBoYXMgdW5wcmFjdGljYWwgY29uc3RyYWludHMgOgo+IC0gTmVlZCByb290IGFjY2VzcyB0byBj
aGFuZ2UgcWRpc2MKPiAtIEhhcmQgdG8gc2V0dXAgb24gZWdyZXNzIGlmIGNvbWJpbmVkIHdpdGgg
bm9uIHRyaXZpYWwgcWRpc2MgbGlrZSBGUQo+IC0gU2luZ2xlIGRlbGF5IGZvciBhbGwgZmxvd3Mu
Cj4KPiBFRFQgKEVhcmxpZXN0IERlcGFydHVyZSBUaW1lKSBhZG9wdGlvbiBpbiBUQ1Agc3RhY2sg
YWxsb3dzIHVzCj4gdG8gZW5hYmxlIGEgcGVyIHNvY2tldCBkZWxheSBhdCBhIHZlcnkgc21hbGwg
Y29zdC4KPgo+IE5ldHdvcmtpbmcgdG9vbHMgY2FuIG5vdyBlc3RhYmxpc2ggdGhvdXNhbmRzIG9m
IGZsb3dzLCBlYWNoIG9mIHRoZW0KPiB3aXRoIGEgZGlmZmVyZW50IGRlbGF5LCBzaW11bGF0aW5n
IHJlYWwgd29ybGQgY29uZGl0aW9ucy4KPgo+IFRoaXMgcmVxdWlyZXMgRlEgcGFja2V0IHNjaGVk
dWxlciBvciBhIEVEVC1lbmFibGVkIE5JQy4KCgotLSAKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJy
ZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtMjA1LTk3NDAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=

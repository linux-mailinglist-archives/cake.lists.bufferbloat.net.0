Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DE643322FE6
	for <lists+cake@lfdr.de>; Tue, 23 Feb 2021 18:47:00 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1F0C83CB38;
	Tue, 23 Feb 2021 12:46:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614102419;
	bh=Tr+jE5yC6SGhPR7jOlpBIirDd0hRra/yIRod3m5Wuu4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mfd+VunTPL/J6I5WxGrkPyf8AKB7YonWI9InpdEXqs/Wi4KjsWMC7OLCg/rujgnx1
	 DLE49lVOIA3HOPzSC3DWtqapQP8G8I/6NOQuTEODLR48hWmMZHdNxXJHXxn19rBQII
	 J9jkXfxRgoJrTTWYIdkVEm2sT4GhPSEMPY23w/JML+o+rLYAkoJSZwc5wRNrFY5PQA
	 Q5r8knOmoUBPObF/YzIz44Wn8oQTa+L/G4m5mQq/rRR87PJtHAUaXHs/xcjBTdEqSZ
	 oD6S4pmxenld7IWYm27XffH8GC5Kynm0fAQKnDVyC+b0yRjHGVndUHszMo96rc+MzW
	 GQqw03m8XZXxg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 724D63B29E;
 Tue, 23 Feb 2021 12:46:57 -0500 (EST)
Received: by mail-io1-xd2c.google.com with SMTP id i8so18024659iog.7;
 Tue, 23 Feb 2021 09:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=tUxVPhsEl5Tr90FQDfyqOe3TWLOpD7l8Gn4tqHhPz/8=;
 b=iFE6JyYYfYZxoZ8xcQHW/WS5r+k0nzYW/zIBGcfGP2ST72+8TOadviEpkvrN67GpQg
 LVcNaN4TSD/gqo5KWa6Fl5hqmz/vAd4nVVIMg5Y4Mk9MWudYpklkI7bnkzu/x/KBIf8C
 YD1YC5dGxZg/ZB27vh7RdX0dkx/LcjfT/Veh8CWOukejEOyZgij0YCgRcTSw77YCCmh3
 U9Uk/39XOOYXC78x5fJfneTNmBaiNVlzYvM6Zf/58jrdgd7vgYXcza7CTRKLZqlPm1Z6
 Yjhr3ZvGaXbtFZ0vfH5ZbDhW+dzHm6NENxzUBqhSc3eqjseZ2w8mk8dIVI50aR0OwpRa
 mPaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=tUxVPhsEl5Tr90FQDfyqOe3TWLOpD7l8Gn4tqHhPz/8=;
 b=MzvQoUH0oKiLgn5zVo6VSU/wWbMiaxbSsJFjby32C8DCZb+rrx6N3Ut9f2IqOm4yMl
 ms0mSWACSdh83e1O9RrP9Fd6MxMTPNZJVvtioSmhM2/HmFl/+W2E+ViK6THhUmqHFcXj
 LBpCM3lbetyMnkPkgDXe0bAmpN7Mr7Q+YWpq4XEGO7MqukPuPTUDAuGyJj77jB+80Dcq
 nDNV6VFOPH4TQZtm0x3YPEC7ZDGI66NvbAiSIZCnSyi5Khq4H8fkvKfZU/LEo9aRaStX
 raDsZtjs9JgCg79WOg4wyn/pVcEA6nSjU0RHWGNKk31XKkylBjj5gmf0kXtVIodXpgd9
 rGLw==
X-Gm-Message-State: AOAM531IaZiMEPNz52Tkd3bz90sReh7vfy2zNyGIDe/dqZryt+eTIxLl
 IZeMFN5RMYCB38nHfksatd5+xtBp/XBS1tfv2fF1/bA/3CNAYA==
X-Google-Smtp-Source: ABdhPJzeOZbsfdzVUavgYNTlA5EeY0Aq9Z0d6cVoDKnOtfzFWXKa4cZCCbPojboTauUcgbzOx1M4DopNqGQtzsr+xDs=
X-Received: by 2002:a02:6a0b:: with SMTP id l11mr15427181jac.82.1614102416544; 
 Tue, 23 Feb 2021 09:46:56 -0800 (PST)
MIME-Version: 1.0
References: <874ki24ref.wl-jch@irif.fr>
In-Reply-To: <874ki24ref.wl-jch@irif.fr>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 23 Feb 2021 09:46:43 -0800
Message-ID: <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [Galene] Dave on bufferbloat and jitter at 8pm CET
	Tuesday 23
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

SXQncyBiZWVuIGEgd2hpbGUgc2luY2UgSSBkaWQgYSB0YWxrLCB0aGlzIGlzIHRoZSBzaHV0dGxl
d29ydGggZmxhc2gKZ3JhbnRzIGNvbmZlcmVuY2UuLi4gZmVlbCBmcmVlIHRvIGhhbmcgb3V0IHdp
dGggbWUgYXQ6CgpodHRwczovL2Nyb2N1cy5pcmlmLmZyOjg0NDMvZ3JvdXAvYnVmZmVyYmxvYXQK
Ci0tLS0tLS0tLS0gRm9yd2FyZGVkIG1lc3NhZ2UgLS0tLS0tLS0tCkZyb206IEp1bGl1c3ogQ2hy
b2JvY3playA8amNoQGlyaWYuZnI+CkRhdGU6IFR1ZSwgRmViIDIzLCAyMDIxIGF0IDk6MzcgQU0K
U3ViamVjdDogW0dhbGVuZV0gRGF2ZSBvbiBidWZmZXJibG9hdCBhbmQgaml0dGVyIGF0IDhwbSBD
RVQgVHVlc2RheSAyMwpUbzogPGdhbGVuZUBsaXN0cy5nYWxlbmUub3JnPgoKClNsaWdodGx5IG9m
ZiB0b3BpYywgRGF2ZSBUYWh0IHdpbGwgYmUgZ2l2aW5nIGEgdGFsayBhYm91dCBidWZmZXJibG9h
dCBhbmQKaml0dGVyIGluIHRoZSBJbnRlcm5ldCBhdCA4cG0gQ0VUIHRvZGF5LCBUdWVzZGF5IDIz
IEZlYnJ1YXJ5IDIwMjE6CgogIGh0dHBzOi8vZmZ3ZC5mbGFzaGdyYW50cy5vcmcvY2FsZW5kYXIu
aHRtbCNldmVudC0xNi8KCkkgaGF2ZW4ndCBzZWVuIGhpcyB0YWxrIHlldCwgYnV0IERhdmUgaXMg
dXN1YWxseSBhIGdvb2Qgc3BlYWtlci4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KR2FsZW5lIG1haWxpbmcgbGlzdCAtLSBnYWxlbmVAbGlzdHMuZ2FsZW5l
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGdhbGVuZS1sZWF2ZUBsaXN0cy5n
YWxlbmUub3JnCgoKLS0gCiJGb3IgYSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxpdHkgbXVz
dCB0YWtlIHByZWNlZGVuY2Ugb3ZlciBwdWJsaWMKcmVsYXRpb25zLCBmb3IgTW90aGVyIE5hdHVy
ZSBjYW5ub3QgYmUgZm9vbGVkIiAtIFJpY2hhcmQgRmV5bm1hbgoKZGF2ZUB0YWh0Lm5ldCA8RGF2
ZSBUw6RodD4gQ1RPLCBUZWtMaWJyZSwgTExDIFRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QK
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQo=

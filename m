Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BF05678A3FA
	for <lists+cake@lfdr.de>; Mon, 28 Aug 2023 03:36:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3B0143CB40;
	Sun, 27 Aug 2023 21:36:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1693186592;
	bh=Gzwb1+m/T4OLuS/Ffj5kueeHhNOlzARS7Fupp35QidU=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=OFFttNWqGgoKsJ2/RkNpzxOyFGeB4gVfSwK+kIdMOceBLP2wRhPWCZkO9sDhwkEAn
	 xln1RpaOa7Dg7YxRsU+CzTmY4BNvsWvYIlA5JwgdnLzNlD1K9AN9yCFFUhttBxD5YS
	 5lMejuBZZ9bZ8AMNlUlIDMgLWS7n2iZ7NK6kgJ7cdGqC2X3HcZgVN06zFUH45OBznd
	 Om1c0dXp2oMlKIwz3qAdknaY+0toapqqrhQGKRohbZO8wHoVAUCROPmt+8d4SCr+XS
	 qAYiu9JZSF73jhXWy1y6DVVesSqXHblH1TDt1ev4QtFPqMXSEQtnQviMZ8sGAGmvse
	 x1krGbX6IMsnw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 601203B2A4
 for <cake@lists.bufferbloat.net>; Sun, 27 Aug 2023 21:36:30 -0400 (EDT)
Received: by mail-pg1-x531.google.com with SMTP id
 41be03b00d2f7-5654051b27fso1539227a12.0
 for <cake@lists.bufferbloat.net>; Sun, 27 Aug 2023 18:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693186589; x=1693791389;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=6Bfdj/VqSiicjGWh6Uxzj/5/9n307Haejg+ix0kF+SY=;
 b=KtME8S1tzBk3KmbOYUdL+xE6H8zZ0LgLxNf1Oka0MXoztk/xpXfEZNW8QpasGBD5Jl
 +xoMUMVdvA1WDaVaYspSCLnPRzC81q+Zw6nnsSAr1UXGhF3KWYISNnhOKUWHMeAFluDg
 o6qXqkqgQZ8KpZtkb9gPPDQ0dDiy/RNrH2bXCFy+hfQDMxbbpR2ZsKsQgC2zK4Fs33RO
 vmFubw/6j5sh1A/z6hyr6JxyCPnYxZBEbCU6bpsQbxFtjPVUIfl5hA5bgu9oS0hdcErb
 oz4rhldXNxLflnez8UdK3gNzLeh5qgegxLlBb+92c/lQUAsGfbFyXylsfSEYOyMw/4q6
 kXJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693186589; x=1693791389;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6Bfdj/VqSiicjGWh6Uxzj/5/9n307Haejg+ix0kF+SY=;
 b=Vjn8vZ85aki2+pvoDqOlJGyt20l4/Jp4QLgF8LtfiIXHFrBSths3KDDXso63GiIQPN
 CKApnkEe3ezsdkm/7Oc8vOuc6M87wN+BylWgmIdF9sgkA5PQW7RMNTCPiqzEBQwTZOZY
 HID8WgqEUFllUKb5dRDjed1sTepy9jtHuBZitTy5dBx8+KdYTRSXhguxUp0dBjw7ccwx
 e2QxR7uDcWkp53iTwIiHZjePrsiOv+CCuobI7M4X7YJK7skVAMintH5DqCMnyF/HPr4Z
 Wkw6XAkbcTVOHS1Vyqrotvg3h3/foMR7iuHxbBn5eHIVYTyq9uqDK7JwQ0MDafsA5WrF
 G6NA==
X-Gm-Message-State: AOJu0YzO3bDhL5d7A0vKd8Qp8Z6z02aBO0rDxmgbWsD/z8LArQ5ytF5N
 KIEi3FKrwQTpqEoPOlfYFBvzRbDWHn+cLJdIHkrAg0HrsHM=
X-Google-Smtp-Source: AGHT+IHtn/mrzZZaZRzcw+slJkgeCto78o2ocgz8UQdAk/l7aExaVX2xxGL/9746F5Xs3fCLO54iBKlq2S0Pj2HwDeI=
X-Received: by 2002:a17:90a:ba93:b0:268:71e4:ec2a with SMTP id
 t19-20020a17090aba9300b0026871e4ec2amr19982712pjr.48.1693186588759; Sun, 27
 Aug 2023 18:36:28 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 27 Aug 2023 18:36:18 -0700
Message-ID: <CAA93jw45oM1ARuZootGE8O-tybg-bqdKZEmU8YCEu8Hf2XPW0g@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cakemq V further thoughts
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBjb250aW51ZSB0byByZXZpc2UgYW5kIGVkaXQgdGhpcyBwaWVjZS4KCmh0dHBzOi8vZG9jcy5n
b29nbGUuY29tL2RvY3VtZW50L2QvMXRUWUJQZWFSZENPOUFHVEdRQ3BvaXVMT1JRek5fYkczVEFr
RW9sSlBoMjgvZWRpdAoKVG9kYXkgSSBjYW1lIHVwIHdpdGggdHdvIG90aGVyIHBvc3NpYmxlIG9i
amVjdGl2ZXMgdG8gdGFja2xlLCBzbwppbnN0ZWFkIG9mIHJlLXJlLXJlLXJlLXJlcmVhZGluZyB0
aGUgYWJvdmUsIHRoZXkgYXJlOgoKQkFORyBtb2RlIC0gdGhlcmUgYXJlIGNlcnRhaW4gY2FzZXMg
d2hlcmUgaXQgaXQga25vd24gdGhhdCB0aGUKYmFuZHdpZHRoIGlzIGdvaW5nIHRvIGRyb3Agc2ln
bmlmaWNhbnRseSAoZXhhbXBsZXMgaW5jbHVkZSBhIGNud2F2ZSB0bwo1Z2h6IGJhY2t1cCB0cmFu
c2l0aW9uIGFuZCBTdGFybGlua3PigJkxNXMgdXBkYXRlIGN5Y2xlKSB3aGVyZSBpdCBtYWtlcwpz
ZW5zZSB0byBkcm9wIGEgYnVuY2ggb2YgcGFja2V0cyBpbW1lZGlhdGVseSByYXRoZXIgdGhhbiB3
YWl0IGZvciB0aGUKc2hpZnQgdG8gZ3JhZHVhbGx5IGJlIHNlZW4uCgp0YyBxZGlzYyBjaGFuZ2Ug
ZGV2IGV0aDAgcm9vdCBjYWtlIGJhbmR3aWR0aCA8bmV3YmFuZHdpZHRoPiBiYW5nCgpDYWtlLWF1
dG9yYXRlIHJld29yayAtIHRoZSBmaXJzdCBhdHRlbXB0IGF0IGRvaW5nIHRoaXMgZGlyZWN0bHkg
aW4KY2FrZSBmcmFua2x54oCmIGRvZXMgbm90IHdvcmsgd2VsbC4gVGhlcmUgaGFzIGJlZW4gYSBs
b3Qgb2YgaW5ub3ZhdGlvbgppbiB0aGUgc3FtLWF1dG9yYXRlIGFuZCBjYWtlLWF1dG9yYXRlIHBy
b2plY3RzLCB3aGljaCBsaXZlIGluCnVzZXJzcGFjZSB0b2RheSB0aGF0IG1pZ2h0IGJlIGFwcGxp
ZWQgbW9yZSBkaXJlY3RseS4gQkFORyBtb2RlLCBhYm92ZSwKaXMgYW4gdW50cmllZCBpbnNwaXJh
dGlvbiB0byBjYWtlIGF1dG9yYXRlLCBhbmQgd291bGQgYWxzbyBjb3BlIHdpdGgKTDRTIGZsb3dz
IGJ5IGRvaW5nIGRyb3BzIG9uIGJpZyByYXRlIGNoYW5nZXMsIHJhdGhlciB0aGFuIG1hcmtzLgoK
Ci0tIApPY3QgMzA6IGh0dHBzOi8vbmV0ZGV2Y29uZi5pbmZvLzB4MTcvbmV3cy90aGUtbWFlc3Ry
by1hbmQtdGhlLW11c2ljLWJvZi5odG1sCkRhdmUgVMOkaHQgQ1NPLCBMaWJyZVFvcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFE97681E3
	for <lists+cake@lfdr.de>; Sat, 29 Jul 2023 22:50:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C2FFB3CB39;
	Sat, 29 Jul 2023 16:50:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1690663805;
	bh=RRdiS/dqq+6QBcEDBrb8LcFqYNcVZ/0p5eB+2GJdbwc=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Hls5KHcoQLphvvsETrGKxLHBofxYiTXixhkwzphOBzfQUdxCD5u/+4dB3+9b8eeg5
	 UKAty5A2Xj7xEwbOTOEc03xaXk9eYpVL+lAAIlN7wFrrdlU1t9DYOx5OCxuv65A0qA
	 lL1FX/RNagpiNnFIfFXB+wAiV+YjoSnkBjbSjlyIcscQDQWlye6v+S1NtWtp1/0fZ/
	 lHZVdmiCoh1IwOm3S9CJ3izup7bIjWaBP8WcHfqL57bS/m/Vmg6XhjYMiY81xOti28
	 +wqp9P2j/iBBK92cspnIe1YZdNamlkKpxugKwqC+ypEVj8CSRevP8sjC8AjX7JVCBr
	 UcpH3Vsffr5Mg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0A1F93B2A4
 for <cake@lists.bufferbloat.net>; Sat, 29 Jul 2023 16:50:03 -0400 (EDT)
Received: by mail-pj1-x1032.google.com with SMTP id
 98e67ed59e1d1-268128a0105so2308854a91.3
 for <cake@lists.bufferbloat.net>; Sat, 29 Jul 2023 13:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690663802; x=1691268602;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ouybZEZBfoZYtNCKadLoIrvWADyC16/seRsHpo/wpU8=;
 b=OhUdERPxlJBPgDfWkl6cf1JDD38QGZav+VRyeR4SfGcFvxs/hfyLnRQHQsCD2f6Uqe
 srxQOKs3BjkJ+bV38U/VelA6AD9qhckvO/AaHXgUclnSkzN3ybnl7Lulkkc5urkMmBet
 HuCp0oF1JoHB7mk1zOmBoNzhdpVheevezRg3wBCs8HUMH070QWGUTHN4YpacNfh8N0zN
 GSZ0rtNC4PZLDvN5YOlfZvAVYgOmyWNA41zhxYWYT/PLaNmOusxcs5bNtavVbW6LREjT
 Z1GhjLvrpM5sIAYwAXh1WLddhd1I7GP2qGhuwsqHyPKmK4eA5LqAwB+Ni9BKJGK1CPSV
 sZig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690663802; x=1691268602;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ouybZEZBfoZYtNCKadLoIrvWADyC16/seRsHpo/wpU8=;
 b=h8Wcuep5/lYi2FsxlIs3KwUEcZh4+nPahktC6cvnD1SWqB7lOX9QcQW7S2Rg9aYIOF
 ExH7uIXaA6gE1zdTRlWA5zUGNp7XWNl/jb6FZZPW9typHPcpKIxbG/WWmKHnbTONh1jR
 0IkRi45ZQh8E7PM2Z8qwqoD6VRaAsahEPlHkh6ugSrRo7Nzqogf1BNNQSOQOW5JZqDP1
 i5FGUfrAUuLjJv+0ZCdU1RAZu9Rn81ET9HL/yaEVhOBYU3bhMSTdC/s8eJgKMay+3JEh
 3iVVb+Nals9WJG9rCysU0l+bIL3tZIFDAMYv8jbS7rt+0g4Y7FZxMdJa/CsVzIf8/mdb
 cktg==
X-Gm-Message-State: ABy/qLYc35wEAamN1ul2EQvnlTiIVK1ezKS3UPyexfdAElXjHCV0YIYB
 3xn1eIpsCaZQrFoXWQMQs+Hop70OkQu2UTYW1s9Z+YuN
X-Google-Smtp-Source: APBJJlHQQvXoIhiDjFLK4pwqWHHruZC+XmH3q2hIR24reoxtBBYd8jqwBO1ZGC/T5eSk9q2pb46ijW5ifOI2tlgiTHw=
X-Received: by 2002:a17:90a:ad04:b0:268:51ab:a84a with SMTP id
 r4-20020a17090aad0400b0026851aba84amr5564981pjq.4.1690663802300; Sat, 29 Jul
 2023 13:50:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5J3=seLV1SsB=o43CSY0+offWOiuqtQt30n5PBy=B-4A@mail.gmail.com>
In-Reply-To: <CAA93jw5J3=seLV1SsB=o43CSY0+offWOiuqtQt30n5PBy=B-4A@mail.gmail.com>
Date: Sat, 29 Jul 2023 13:49:50 -0700
Message-ID: <CAA93jw6jsppbT2A2wdz6S9-eB6KopV149H7gboxh9isWap0=2Q@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] cakemq
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

dGhhbmsgeW91IHNlYmFzdGlhbiBhbmQgZGF2ZSBmb3IgeW91ciBjb21tZW50cyBhbmQgZmVlZGJh
Y2sgc28gZmFyLiBJCndvdWxkIGxpa2UgdG8gZmluZCBvdGhlciBtYXJrZXRzIGZvciBjYWtlLCBt
b3JlIHN0YXRpc3RpY3Mgd29ydGgKY29sbGVjdGluZywgYW5kIG90aGVyIGlkZWFzLCBpbiB0aGUg
aG9wZSB0aGF0IHdlIGNvdWxkIGZpbmQgc29tZXRoaW5nCmZ1bmRhYmxlIG91dCBvZiB0aGUgbWl4
LgoKT24gRnJpLCBKdWwgMjgsIDIwMjMgYXQgOTowN+KAr0FNIERhdmUgVGFodCA8ZGF2ZS50YWh0
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBJIGRvbid0IGtub3cgaWYgaXQgaXMgcG9zc2libGUgdG8g
bXVsdGl0aHJlYWQgY2FrZSBvciBub3QuIEJ1dCBJCj4gc3RhcnRlZCB3cml0aW5nIHRoZSBpZGVh
cyB1cCBoZXJlOgo+Cj4gaHR0cHM6Ly9kb2NzLmdvb2dsZS5jb20vZG9jdW1lbnQvZC8xdFRZQlBl
YVJkQ085QUdUR1FDcG9pdUxPUlF6Tl9iRzNUQWtFb2xKUGgyOC9lZGl0P3VzcD1zaGFyaW5nCj4K
PiBQcmV0dHkgZnJhZ21lbnRhcnksIG90aGVyIHVzZSBjYXNlcywgb3RoZXIgZmVhdHVyZXMsIG90
aGVyCj4gbWlzLWZlYXR1cmVzLCBhbmQgdGhvdWdodHMgcmVxdWVzdGVkLgo+Cj4gLS0KPiBQb2Rj
YXN0OiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWJ4bW9CcjRjQktnCj4gRGF2ZSBU
w6RodCBDU08sIExpYnJlUW9zCgoKCi0tIApQb2RjYXN0OiBodHRwczovL3d3dy55b3V0dWJlLmNv
bS93YXRjaD92PWJ4bW9CcjRjQktnCkRhdmUgVMOkaHQgQ1NPLCBMaWJyZVFvcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCg==

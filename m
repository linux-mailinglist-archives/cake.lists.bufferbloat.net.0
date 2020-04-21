Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 266711B32A7
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 00:33:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E556B3CB42;
	Tue, 21 Apr 2020 18:33:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587508431;
	bh=vLDh+2H8lfiSf47bvaihNWxSEIAprfjkljEtzP+VhlY=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pDrdAPKd5FDBG067gEBajO9roC3bo8965p4xksiZVBLO8m3Ywte08RAtKefGv/j5w
	 65GR7ji2sD93jHoESxKM7/u+meD9dfLNhDgyK5oPUBITrxwgbrvZQuIA0gP9BL3n2n
	 /thZynzjbk9YGGq+pM2ZsDEhvAUMPLPawXeKpn4iwMUqUTO2yLY2hoSL7uAzyGJLF4
	 PEfObiQF3EknfCW2tdrWeV5p4nux2ritvrQkHRJqLZacSt1L+D4ELsW5HaJ1tSEjFJ
	 faFHg1dvs3L/eczGd+bLr0jVzvkIprYumcghzWx3UiB/pGJ4rHRZ8exsepuzJT+rHk
	 AJ4pFSY3cYsVQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6D7003B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 18:33:50 -0400 (EDT)
Received: by mail-lf1-x12a.google.com with SMTP id f8so8251lfe.12
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 15:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=cWUrmihllg5d8w5L4rCUfdHel2QzIiY9HRx9l8A4qWU=;
 b=t6u8qQLHJOPVTjeQlKvxxwOiy4CZXqhQBjXA/D33OsE68ELcltT3HYLxlIcvGQLL5z
 iEquv+yPq8VqhyZG957Js+h8f4DS3bWbDw2ga0NFNtbzCk1LB4gJys7YFUaoorbh+Tiq
 y11i2EO2m3c0N2YwFKCscHS3Um8FPi2L1uMrMsBejYezbnIVBzxq99vIIsFRvQaaHPUD
 8qvKC7t+t1BxD0Jgv+zCsPOtTonbk06Z6wthTkbKBJmneo3FJVzLcDNI1qKp4bT3Xbbq
 ZtBisy3r9UZVsdEZfG5gWsnJl6FMiiD6HpWLRtY9s8JoD5UyxVKBnKtL1DUjB+FepDAF
 NdvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=cWUrmihllg5d8w5L4rCUfdHel2QzIiY9HRx9l8A4qWU=;
 b=fLeo7pGyaVCokzw1Irp1rMq111ca538Lhk57kaNvQfESPSaa+kM2am3UsxRrM5B6pT
 fOI1neH6woCKqSjGH0sNQa2CJLCY2qSVDNXie6xFESOzzwYULKXkS+tkC4hgVKk9/OiA
 GeyXrAeJ79T42E2GUy/YmdnInw4gsPOpyuuLpRSDTsp1pmqNWPc1H3qcC7En0j60xcQC
 Rf66LhkA2f2aBboPfPXEgg5whOGt2GjjajDTsfK0qFmCkhCstHwNpb1TlDlS9Y2lABmT
 WszDVMnYUFWUcHJcEmVp1Xx/UezBMcsBdiGtEg2GsZMkPm9bV7o90s2yhgHYKANETPge
 oBaw==
X-Gm-Message-State: AGi0PubXyompHa6pr5Yzn+9xhHXnVRAphVTZAdndj20VLwvasMQDVSyi
 5YE67zIU5YtqKkXYI8Sddcw=
X-Google-Smtp-Source: APiQypIoxYZTwpGCv7v7ODTPkw50y1w2TlNwGAlv8vkZAwLywak81QD1I5YAsUudreyS2SfG3Dz9JQ==
X-Received: by 2002:ac2:48b1:: with SMTP id u17mr14743285lfg.187.1587508429377; 
 Tue, 21 Apr 2020 15:33:49 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-192-nat-p.elisa-mobile.fi.
 [83.245.235.192])
 by smtp.gmail.com with ESMTPSA id 18sm456280ljo.17.2020.04.21.15.33.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Apr 2020 15:33:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
Date: Wed, 22 Apr 2020 01:33:47 +0300
Message-Id: <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
To: Thibaut <hacks@slashdirt.org>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyMiBBcHIsIDIwMjAsIGF0IDE6MjUgYW0sIFRoaWJhdXQgPGhhY2tzQHNsYXNoZGlydC5v
cmc+IHdyb3RlOgo+IAo+IE15IGN1cmlvc2l0eSBpcyBwaXF1ZWQuIENhbiB5b3UgZWxhYm9yYXRl
IG9uIHRoaXM/IFdoYXQgZG9lcyBmcmVlLmZyIGRvPwoKVGhleSdyZSBhIGxhcmdlIEZyZW5jaCBJ
U1AuICBUaGV5IG1hZGUgdGhlaXIgb3duIENQRSBkZXZpY2VzLCBhbmQgZGVibG9hdGVkIGJvdGgg
dGhlbSBhbmQgdGhlaXIgbmV0d29yayBxdWl0ZSBhIHdoaWxlIGFnby4gIEluIHRoYXQgc2Vuc2Us
IGF0IGxlYXN0LCB0aGV5J3JlIGEgbW9kZWwgZm9yIG90aGVycyB0byBmb2xsb3cgLSBidXQgZmV3
IGhhdmUuCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

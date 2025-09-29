Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED5ABABE79
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 09:51:55 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8A3D270DF98;
	Tue, 30 Sep 2025 09:51:53 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=Xbza7PI2
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759218713;
 b=fX87uAJwEu0rBFhT8/GzZHKoFp7gtP7anVcerNnUs+McbAYUMN4+Kqt5PWCn3WV7QcAA0
 UkK/pOz1ymTGeAyEv78NOvbG031wP5AjBGi/8oz36eRasUYFAZhooRat/wzYgAhA2rTZtFq
 oAih3jAcEqGKuRRg2qfFyAr9VtuhGaI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759218713; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7ufXuqIopp+wk/20h0D5vJZFgltDAqBUlEzAC0G/qNo=;
 b=YkCH1s774htZeLo3pME68ho9I2DQlY1SDtiKI2s6lEtjpnWLDi8nI7HUaxzhwAce4NJZp
 Y6we6tI9xJ4B0X4IBhwWtRJGUsdnUFSfF8SFvzmQ3X+zvZyuw78lp6jC+E27sOafyWFHK//
 assJ2neHSbkXY5gvM2JaaHiDJdLS/hc=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
	by mail.toke.dk (Postfix) with ESMTPS id CEDC970AEC1
	for <codel@lists.bufferbloat.net>; Mon, 29 Sep 2025 23:04:59 +0200 (CEST)
Received: by mail-wr1-x42b.google.com with SMTP id
 ffacd0b85a97d-3f0ae439b56so3080203f8f.3
        for <codel@lists.bufferbloat.net>;
 Mon, 29 Sep 2025 14:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759179898; x=1759784698;
 darn=lists.bufferbloat.net;
        h=mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=kPzNBjObbE2MZlmv/92iPO5zu+iqNBGtxIN/9lwbhUo=;
        b=Xbza7PI2cSljikzds/wVRlVEuTr8wTnFhneYE4+p2xcykgTqw73g7IKkbKOGZrUgI6
         nbgI9WPbMUduSuE5EBOz3P1AyHW8kvo1nY27MC+yeJC/VGgtCSNjE7BAEC+oQfWzkbnI
         ZcCpXj4JykJbUSEIAdjn9dp3Rg8Yrm01i5ARYN6Kgcc473Q8hPvC54BOMappg2tEq4Cf
         votRhkCx73MP3XPE5AK7oNy9dSY/8N4/q+dT573xZZ10pfSbxFtgSQqtulBEOYkiL3xO
         yOszYbEyM/qgX98Wu6JySRmXlmEETLvJ9VNJlqmmkeBKLmkFHA5M5PTm+AHvnF3zRkuS
         wB7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759179898; x=1759784698;
        h=mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kPzNBjObbE2MZlmv/92iPO5zu+iqNBGtxIN/9lwbhUo=;
        b=A3jPgG2AkJzYtzVoQ0w530HPH3lrdf6fIifw99vgmPWm6FEq10JA9mZ5H5N7P/lbSH
         nyggxgMqD/bnm04Z6y7n/jpo0d3HklwKMRw79SgvfYeWLyElaOjDJSnq+zYokTnhIJNt
         fbK2HyZYXzjvLLxMG3CE7wJFYjyqHX3QrRLOqMB5owml5IyM0yGvdRQW86TKVbEFxsyL
         Q69YhYEQvoxWZp6XhXx69Scebe0pyVfnAeR7ZcF/Gt7uaAm6N7Q+iRt24WCiMsCuhwiW
         HTTo7xdmdibHTtoLSKp3RfyXAS4Q83jdjfWB+UxhF+xCEjKZAwkXvk+M3fsOvbbGsUSj
         tYxQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6Qu++AZ4khcVrXqtsqPZY2kr65RyipkxPEnZ9I1OkCXhKdFwrFuuxIfDpmTIJpRFL0ZyfeQ==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzpsSWo2s1HjcEsuwBCR5U51OwX7yoealt3XgyuVJRzx7swk5xT
	ZQdaZxRKv+2M9+1sfu6xEPgddHb3HxTaFpg8adRrjBfKLk3UcI+E4Lc0
X-Gm-Gg: ASbGnctF5pspxuqTbPiRcePfMaDd1tQLY635j7eNv9ocYaPPY40JsXdGBT+yZZmB4JL
	UoWII6wVEGjyZlNIfWC8ogeSiwozuNV0FCoUIZURR6yqt2T1CUTRAj41lMcEOQDXAeyRUCpCtcL
	W8U5aLTWkJscNd5xTQG+CaoSS4VDxwq46zLCtok/5fcsjQIUPkGBcP/3sfP9EiN/un4S7DKIe6f
	lW51/IYwuLUCYg6+X8IXCOqusJgJw6/u8BWJMbeHojB8gzZLnwa36+zspi4WFjoel8RvxMH68M9
	oE4GtD7UikbhQX8nO1fJJa81B1ioTgeCf/0F/ae2jJLwlb756CTS+ZlVhsvKLJBudUtAzNLvxH0
	sjpJrub1793WAbUKpsgTFD2ECeFDOp9N0o138O5XNsyMEy2+iJ50=
X-Google-Smtp-Source: 
 AGHT+IHdYI1C/0hjWrpgQJAzvOqA+HKDEcetgv/iAdvie5UY7LurVqHYTqQvpTEkh/nccdhSux6YSQ==
X-Received: by 2002:a05:6000:2585:b0:3ee:15b4:174c with SMTP id
 ffacd0b85a97d-40e4486c164mr15759069f8f.3.1759179897982;
        Mon, 29 Sep 2025 14:04:57 -0700 (PDT)
Received: from [127.0.0.1] ([197.210.52.229])
        by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-40fc5602efdsm20540747f8f.34.2025.09.29.14.04.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 14:04:57 -0700 (PDT)
Date: Mon, 29 Sep 2025 22:04:50 +0100 (GMT+01:00)
From: Inemesit Affia <inemesitaffia@gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
Cc: libreqos <libreqos@lists.bufferbloat.net>,
	Cake List <cake@lists.bufferbloat.net>,
	bloat <bloat@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID: <42638eb0-d2c4-41d5-8012-2e9a5da79a0b@gmail.com>
In-Reply-To: 
 <CAJUtOOiFbiG6PUWh_kHnhg4OSB-Yt1ok1H0ftrOZM0sc1pyYhA@mail.gmail.com>
References: 
 <CAJUtOOiFbiG6PUWh_kHnhg4OSB-Yt1ok1H0ftrOZM0sc1pyYhA@mail.gmail.com>
MIME-Version: 1.0
X-Correlation-ID: <42638eb0-d2c4-41d5-8012-2e9a5da79a0b@gmail.com>
X-MailFrom: inemesitaffia@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: YFDU6ZN5OHNLDZDZS65EELCHIZG2JLY6
X-Message-ID-Hash: YFDU6ZN5OHNLDZDZS65EELCHIZG2JLY6
X-Mailman-Approved-At: Tue, 30 Sep 2025 09:51:51 +0200
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Starlink] Keynote: QoE/QoS - Bandwidth Is A Lie! at WISPAPALOOZA
 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/42638eb0-d2c4-41d5-8012-2e9a5da79a0b@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2lsbCB3ZSBoYXZlIGFjY2VzcyB0byBsaXZlIHZpZGVvL3JlY29yZGluZz8NCg0KU2VwIDI5LCAy
MDI1IDk6NTk6MzMgUE0gRnJhbnRpc2VrIEJvcnNpayB2aWEgU3RhcmxpbmsgPHN0YXJsaW5rQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldD46DQoNCj4gSGVsbG8gdG8gYWxsLA0KPiANCj4gSSB3aWxsIGJl
IG1vZGVyYXRpbmcgYSBkaXNjdXNzaW9uIHBhbmVsICJLZXlub3RlOiBRb0UvUW9TIC0gQmFuZHdp
ZHRoIElzIEENCj4gTGllISIgYXQgV0lTUEFQQUxPT1pBIDIwMjUgaW4gTGFzIFZlZ2FzLCBOZXZh
ZGEsIG9uIFRodXJzZGF5LCBPY3RvYmVyIDE2LA0KPiBhdCA5QU0gUERULg0KPiANCj4gaHR0cHM6
Ly93d3cud2lzcGFldmVudHMub3JnL1dQQUxPT1pBMjUvc2Vzc2lvbi8zMDA3NDk0L2tleW5vdGUt
cW9lcW9zLWJhbmR3aWR0aC1pcy1hLWxpZQ0KPiANCj4gLi4ud2l0aCBldmVyeWJvZHkgcmVsZXZh
bnQgaW4gdGhpcyBnYW1lOg0KPiANCj4gKkFwcExvZ2ljIE5ldHdvcmtzKiAoZm9ybWVybHkgU2Fu
ZHZpbmUpIHdpbGwgYmUgcmVwcmVzZW50ZWQgYnkgaXRzIENUTywNCj4gQWxleGFuZGVyIEhhdsOk
bmcsICpCZXF1YW50ICpieSBpdHMgQ0VPIGFuZCBDby1Gb3VuZGVyLCBKb3NlIExvcGV6LCAqQ2Ft
Yml1bQ0KPiBOZXR3b3JrcyogYnkgaXRzIFNlbmlvciBEaXJlY3RvciBvZiBFbmdpbmVlcmluZywg
RG1pdHJ5IE1vaXNlZXYsICpQYXJhcXVtDQo+IFRlY2hub2xvZ2llcyogYnkgaXRzIEZvdW5kZXIv
Q0VPL0RpcmVjdG9yLCBBaml0aCBQYXNxdWFsLCAqUHJlc2VlbSogKEJ5DQo+IEF0ZXJsbyBOZXR3
b3JrcykgYnkgaXRzIEZvdW5kZXIgYW5kIENoaWVmIFByb2R1Y3QgT2ZmaWNlciwgRGFuIFNpZW1v
biBhbmQNCj4gbGFzdCBidXQgbm90IGxlYXN0LCAqTGlicmVRb1MqIHdpbGwgYmUgcmVwcmVzZW50
ZWQgYnkgb3VyIENoaWVmIFByb2R1Y3QNCj4gT2ZmaWNlciwgSGVyYmVydCBXb2x2ZXJzb24uDQo+
IA0KPiBJdCB3YXMsIG9idmlvdXNseSwgcmVzZXJ2ZWQgdG8gb3VyIGJlbG92ZWQgRGF2ZSBUw6Ro
dCwgYnV0IEkgd2FzIGZvcmNlZCB0bw0KPiBwaWNrIGl0IHVwIGluc3RlYWQgb2YgaGltLi4uYnkg
dGhlIGNpcmN1bXN0YW5jZXMuDQo+IA0KPiAqSG9wZSB0byBzZWUgYXQgbGVhc3Qgc29tZSBvZiB5
b3UgaW4gTGFzIFZlZ2FzIC0gd2Ugd2lsbCBiZSBhdCB0aGUgYm9vdGgNCj4gIzYzMCEqDQo+IA0K
PiBBbGwgdGhlIGJlc3QsDQo+IA0KPiBGcmFuaw0KPiANCj4gRnJhbnRpc2VrIChGcmFuaykgQm9y
c2lrDQo+IA0KPiANCj4gKkluIGxvdmluZyBtZW1vcnkgb2YgRGF2ZSBUw6RodDogKjE5NjUtMjAy
NQ0KPiANCj4gaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0LzAxL2luLWxvdmluZy1tZW1vcnkt
b2YtZGF2ZS8NCj4gDQo+IA0KPiBodHRwczovL3d3dy5saW5rZWRpbi5jb20vaW4vZnJhbnRpc2Vr
Ym9yc2lrDQo+IA0KPiBTaWduYWwsIFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcxNA0K
PiANCj4gaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KPiANCj4gU2t5cGU6IGNhc2lv
YTUzMDJjYQ0KPiANCj4gZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gU3RhcmxpbmsgbWFpbGluZyBs
aXN0IC0tIHN0YXJsaW5rQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KPiBUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHN0YXJsaW5rLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

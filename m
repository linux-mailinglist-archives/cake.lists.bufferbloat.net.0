Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A855EBAA9F2
	for <lists+cake@lfdr.de>; Mon, 29 Sep 2025 23:11:29 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 5326070AFC2;
	Mon, 29 Sep 2025 23:11:28 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=ebfX34aX
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759180288;
 b=s8H1HFTVtAiTUwP0oSV4NJb0I8VYxpvzsEY3qYimMiCFjAGJLBJjrDL+bgkGf7r/G76Ku
 4gRePtTt3o3pkuj3P++qizse+nau9BeynUROkkl/wezwlYyIV2MxPfX+B469erAfzsoNXg9
 KI4oqYJsBUe7F68XSQMK7mSvRIoJPSU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759180288; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=gekaEJT1UtH4DMDltG2S0cQUIIbEhw+1QWbMwQC5DYo=;
 b=uN+Ehq2Rd4a/kv4jhF7Pww8ekhQ7D6As76cgSjBSqT+Xd9WRttCwaZCzFsISLD+Bbc3RM
 Vg6LLTitJ86a0Ye4dBmRnhOwV9a6Ti9EKXe7ibWYeAMit/EyazITHG2l2oPGeGvBvpvS/mq
 3igJWumFNkvKUnKwxXMcHhfLawsH4Io=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
	by mail.toke.dk (Postfix) with ESMTPS id D69E370AF9B
	for <cake@lists.bufferbloat.net>; Mon, 29 Sep 2025 23:11:25 +0200 (CEST)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-b00a9989633so949881666b.0
        for <cake@lists.bufferbloat.net>;
 Mon, 29 Sep 2025 14:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759180285; x=1759785085;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DLUPyyYXNlzOu8LJCsDlfwNlPFsXizHCICl0UYrIr9Q=;
        b=ebfX34aX0tWz+8jLLZALkHlkQsAFrBL2A4jcAXACePPpAIOvtftye1wJFxtkFH38CO
         lg+ugFJcpRTawzhZUqzBjOHtEOETFcALmIrvv4GfWxN6zMtLxafra9JwsrwB9P7gWvrY
         afiVIYHI2C44CGKBhkHMxc1HTWpBzZbj7SKDwmFzWVCG8k3dnLRkSE7ZX0OambWhotje
         pZ0u4DXsY10RaLTZSRua5MJ5nzNZat6H8aCesXqTH++Nw3VJPN+kwMVG3JanJdt33GZI
         NRA4wnsHrlKM4NIT93LbTgozZcDO7e59mpDMxGXLfrw06y/KEsEjVYoePm8J9ms7vQRX
         haYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759180285; x=1759785085;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DLUPyyYXNlzOu8LJCsDlfwNlPFsXizHCICl0UYrIr9Q=;
        b=c5E/G+2584+OlU47uyWPLAJxis0TB7mxWNGTSk1+oXoohCjM0r9Geek4br0iK1mje/
         1HTudBEsowsk7cnKMQ0HJR+9CsHbGynHRGi39zrzpYXW04wa1dgC6rusxxawHCGJ6tJy
         Dx5uh+0zg5lWobmwWPdPSYUZ3orfACrLKs/DLco4JH+IunEwAAulqffi9ld3U0prwRFK
         bITkDPMtg2iTRh++ALNtpYZq+dXvnaLIqUBShnvI7C6daA5z7QohSljC5DuhahTYpV1w
         lYJ5dzFRnXCzQJB5Y3hHquWMup3wppUF6pcc/+DUJyTMg9GejEyqLIz4409UUoaK+pEb
         kMzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWKeh8dofCPsozkN19BZQ4sanRx9fu716wOgPm/5GqD+uCYkhB6Uhcl5HiNuk2KGb/UvLEo@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yyp5T47UDcn44wtDO+0lLGj2XfqkrqcxYeXJz/dfUObQGZwJhkG
	JvD7gdUXfXHI11X+RkXj8H10YRo4wFU2H5Moi9MPaaDXz7d4uH/JPoSkYXmULL1reHM8Vyb69lR
	SOlwpgB7hNf1BFbnPVAmP58KnVTvL9v4=
X-Gm-Gg: ASbGncse0PQ5ut9C8ee6fd3JjqSl6IAh/jGVDMl92cOaDq5YypFnVqtB3eDBoB1Yezt
	hIaxOSrKQEYx1yrp8AEawmPEL7nrcw0cH7foeOMyIF70w+blCuXGQqezhUUELHQkyitBxzkfMnW
	U7vaE6b/P3/dagXBDAO1DU24Hb2be/4JT8jQHZWarQau0i4pX2E9w56uk7lOz4cgvWZdhUzCWTm
	/DCi/eZxzGKVHXZosg=
X-Google-Smtp-Source: 
 AGHT+IGWNjXkMW6IKrHWqLgSgRludTLh25GBaxdSUZHi+tENNEJyRQKuR780QooN0Z2zmmGsZazVrG+ZDuWgk/OIGHA=
X-Received: by 2002:a17:907:8b9b:b0:b41:1d96:29d7 with SMTP id
 a640c23a62f3a-b413562151bmr190937366b.5.1759180284526; Mon, 29 Sep 2025
 14:11:24 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAJUtOOiFbiG6PUWh_kHnhg4OSB-Yt1ok1H0ftrOZM0sc1pyYhA@mail.gmail.com>
 <42638eb0-d2c4-41d5-8012-2e9a5da79a0b@gmail.com>
In-Reply-To: <42638eb0-d2c4-41d5-8012-2e9a5da79a0b@gmail.com>
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Mon, 29 Sep 2025 23:12:50 +0200
X-Gm-Features: AS18NWCZOfwWq1W4n2-7sR7zkvEyDlMIMWYGrSDqxf-QqJ63NnnESzrsNUHWcQM
Message-ID: 
 <CAJUtOOht0nvVgvTrOv7DtF0kGynwBgff0k6KxPsweMG4B_aadQ@mail.gmail.com>
To: Inemesit Affia <inemesitaffia@gmail.com>
Cc: libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
	bloat <bloat@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID-Hash: G5JFQDGOTOJ6XYUYJQMUZVPZLLDAMYRI
X-Message-ID-Hash: G5JFQDGOTOJ6XYUYJQMUZVPZLLDAMYRI
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Starlink] Keynote: QoE/QoS - Bandwidth Is A Lie! at WISPAPALOOZA
 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOht0nvVgvTrOv7DtF0kGynwBgff0k6KxPsweMG4B_aadQ@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R29vZCBxdWVzdGlvbi4gU2FkbHksIG5vLiBJdCB0b29rIG1lIGxpdGVyYWxseSAzIHllYXJzIHRv
IGdldCBXSVNQQSB0byBkbw0KdGhpcyBwYXJ0aWN1bGFyIHBhbmVsIHdpdGggYWxsIHRoZSBRb0Uv
UW9TIGNvbXBhbmllcyBvbiBpdC4NCg0KTm93LCBteSBuZXh0IG1pc3Npb24gaXMgdG8gZ2V0IHRo
ZW0gdG8gc3RyZWFtLCBvciBhdCBsZWFzdCwgcmVjb3JkLCBhbGwgdGhlDQpwYW5lbHMuDQoNCkJ1
dCB0ZWxsIHlvdSB3aGF0IC0gSSBoYXZlIHJlY29yZGVkIHRoZSBwYW5lbCBsYXN0IHllYXIgKHRo
ZXJlIHdlcmUganVzdCAzDQpjb21wYW5pZXMsIG91dCBvZiA2LCBpbnZpdGVkLCB1bmZvcnR1bmF0
ZWx5KSBhbmQgaXQgd2FzIGp1c3QgbXkgb2xkZXINCmlQaG9uZSwgYnV0IGhlcmUgeW91IGFyZSwg
aXQncyBzdGlsbCBnb29kIHRvIHdhdGNoOg0KaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/
dj1adXpJYVdHczlWaw0KDQpJIHdpbGwgdHJ5IHRvIGRvIGJldHRlciB0aGlzIHllYXIsIHdpdGgg
ZXZlcnlvbmUgaW52b2x2ZWQgYXMgaXQgc2hvdWxkIGJlLA0KdGhlcmUgd2lsbCBiZSBhIGxvdCBv
ZiBnb29kIHN0dWZmIHNoYXJlZC4NCg0KQWxsIHRoZSBiZXN0LA0KDQpGcmFuaw0KDQpGcmFudGlz
ZWsgKEZyYW5rKSBCb3JzaWsNCg0KDQoqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAq
MTk2NS0yMDI1DQoNCmh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVt
b3J5LW9mLWRhdmUvDQoNCg0KaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2Jv
cnNpaw0KDQpTaWduYWwsIFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcxNA0KDQppTWVz
c2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1DQoNClNreXBlOiBjYXNpb2E1MzAyY2ENCg0KZnJh
bnRpc2VrLmJvcnNpa0BnbWFpbC5jb20NCg0KDQpPbiBNb24sIFNlcCAyOSwgMjAyNSBhdCAxMTow
NOKAr1BNIEluZW1lc2l0IEFmZmlhIDxpbmVtZXNpdGFmZmlhQGdtYWlsLmNvbT4NCndyb3RlOg0K
DQo+IFdpbGwgd2UgaGF2ZSBhY2Nlc3MgdG8gbGl2ZSB2aWRlby9yZWNvcmRpbmc/DQo+DQo+IFNl
cCAyOSwgMjAyNSA5OjU5OjMzIFBNIEZyYW50aXNlayBCb3JzaWsgdmlhIFN0YXJsaW5rIDwNCj4g
c3RhcmxpbmtAbGlzdHMuYnVmZmVyYmxvYXQubmV0PjoNCj4NCj4gSGVsbG8gdG8gYWxsLA0KPg0K
PiBJIHdpbGwgYmUgbW9kZXJhdGluZyBhIGRpc2N1c3Npb24gcGFuZWwgIktleW5vdGU6IFFvRS9R
b1MgLSBCYW5kd2lkdGggSXMgQQ0KPiBMaWUhIiBhdCBXSVNQQVBBTE9PWkEgMjAyNSBpbiBMYXMg
VmVnYXMsIE5ldmFkYSwgb24gVGh1cnNkYXksIE9jdG9iZXIgMTYsDQo+IGF0IDlBTSBQRFQuDQo+
DQo+DQo+IGh0dHBzOi8vd3d3Lndpc3BhZXZlbnRzLm9yZy9XUEFMT09aQTI1L3Nlc3Npb24vMzAw
NzQ5NC9rZXlub3RlLXFvZXFvcy1iYW5kd2lkdGgtaXMtYS1saWUNCj4NCj4gLi4ud2l0aCBldmVy
eWJvZHkgcmVsZXZhbnQgaW4gdGhpcyBnYW1lOg0KPg0KPiAqQXBwTG9naWMgTmV0d29ya3MqIChm
b3JtZXJseSBTYW5kdmluZSkgd2lsbCBiZSByZXByZXNlbnRlZCBieSBpdHMgQ1RPLA0KPiBBbGV4
YW5kZXIgSGF2w6RuZywgKkJlcXVhbnQgKmJ5IGl0cyBDRU8gYW5kIENvLUZvdW5kZXIsIEpvc2Ug
TG9wZXosDQo+ICpDYW1iaXVtDQo+IE5ldHdvcmtzKiBieSBpdHMgU2VuaW9yIERpcmVjdG9yIG9m
IEVuZ2luZWVyaW5nLCBEbWl0cnkgTW9pc2VldiwgKlBhcmFxdW0NCj4gVGVjaG5vbG9naWVzKiBi
eSBpdHMgRm91bmRlci9DRU8vRGlyZWN0b3IsIEFqaXRoIFBhc3F1YWwsICpQcmVzZWVtKiAoQnkN
Cj4gQXRlcmxvIE5ldHdvcmtzKSBieSBpdHMgRm91bmRlciBhbmQgQ2hpZWYgUHJvZHVjdCBPZmZp
Y2VyLCBEYW4gU2llbW9uIGFuZA0KPiBsYXN0IGJ1dCBub3QgbGVhc3QsICpMaWJyZVFvUyogd2ls
bCBiZSByZXByZXNlbnRlZCBieSBvdXIgQ2hpZWYgUHJvZHVjdA0KPiBPZmZpY2VyLCBIZXJiZXJ0
IFdvbHZlcnNvbi4NCj4NCj4gSXQgd2FzLCBvYnZpb3VzbHksIHJlc2VydmVkIHRvIG91ciBiZWxv
dmVkIERhdmUgVMOkaHQsIGJ1dCBJIHdhcyBmb3JjZWQgdG8NCj4gcGljayBpdCB1cCBpbnN0ZWFk
IG9mIGhpbS4uLmJ5IHRoZSBjaXJjdW1zdGFuY2VzLg0KPg0KPiAqSG9wZSB0byBzZWUgYXQgbGVh
c3Qgc29tZSBvZiB5b3UgaW4gTGFzIFZlZ2FzIC0gd2Ugd2lsbCBiZSBhdCB0aGUgYm9vdGgNCj4g
IzYzMCEqDQo+DQo+IEFsbCB0aGUgYmVzdCwNCj4NCj4gRnJhbmsNCj4NCj4gRnJhbnRpc2VrIChG
cmFuaykgQm9yc2lrDQo+DQo+DQo+ICpJbiBsb3ZpbmcgbWVtb3J5IG9mIERhdmUgVMOkaHQ6ICox
OTY1LTIwMjUNCj4NCj4gaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0LzAxL2luLWxvdmluZy1t
ZW1vcnktb2YtZGF2ZS8NCj4NCj4NCj4gaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50
aXNla2JvcnNpaw0KPg0KPiBTaWduYWwsIFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcx
NA0KPg0KPiBpTWVzc2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1DQo+DQo+IFNreXBlOiBjYXNp
b2E1MzAyY2ENCj4NCj4gZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gU3RhcmxpbmsgbWFpbGluZyBs
aXN0IC0tIHN0YXJsaW5rQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KPiBUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHN0YXJsaW5rLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KPg0K
Pg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

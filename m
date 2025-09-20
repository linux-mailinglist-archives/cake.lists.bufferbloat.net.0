Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDFFB8C5CB
	for <lists+cake@lfdr.de>; Sat, 20 Sep 2025 12:43:58 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8BC526BF61F;
	Sat, 20 Sep 2025 12:43:57 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=LmbuuZcI
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1758365037;
 b=e/Z97WrzKtZ5JrSSr0p60C2IWJA8shcujidMQXpk+Vl0wpOsDRQfznbR6Vqe4sI06YVG9
 aS9/aryutR1PD2h8VZxsBvF0vdXt+qM08S0FFWqR6AoZqEC/1ZrG1AetdvU0gs448bqMiaQ
 GDkJRWx17mtvphoTjQIfiiae2TcN2gA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1758365037; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4WhTcuutZn/65+ySGH2IuWluJk1TO1qMkjpI0FzvedQ=;
 b=5GU2DoGJdW1sCDv+/wqyYSdojySP5Ygbmp9Tu63QW8LOl3jI/4pzW11nuBNUdCfAMS4UZ
 JYSiToByHjlAs688AZePcS8bYi+Sw3FhtLbvp1D1/xmEMoI5P/Jkz3iGXNLlE5a+vwJGSH+
 /FxJJynODQmX1GTEd2e2S1BOHfLwQZY=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
	by mail.toke.dk (Postfix) with ESMTPS id 537B36BF5FB
	for <cake@lists.bufferbloat.net>; Sat, 20 Sep 2025 12:43:55 +0200 (CEST)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-b07c2908f3eso440115866b.1
        for <cake@lists.bufferbloat.net>;
 Sat, 20 Sep 2025 03:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758364975; x=1758969775;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P+lKc2rxbfpEO3QWKa8FAjlC3osJp2zVqPLw80VDTbQ=;
        b=LmbuuZcI9mjJzq/rnaeTOrZQQlAfpYfwqU39vePNyxc7gKGJUM4aKbx5fOZ5mQmWl4
         jCaRmpjTgkF6/S5kIXauZVPS1McyUQxTLejG9HgP20EV72Nlunektojy7ws6EydxW9sZ
         QZAMyVAvz/7Fpqjc6AUbrvNuWWlk+c+HWjzZuho4fC9pc8HN5pZcTb3WqP7w/8s2kozF
         mkJ/hPEucMlseg+dqz5IRBwd5/f2fOfsk4BDjMHp1KXryFeA1GX+Pbe+xWnpFIaGH22g
         gLa7s6cNFHiUDNxqbJ1y0B7ysANeH7PBWZbNanE+vL1ZO6G9gWFazKMm8Igdj+KaE002
         3I0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758364975; x=1758969775;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P+lKc2rxbfpEO3QWKa8FAjlC3osJp2zVqPLw80VDTbQ=;
        b=YmABZfwWwHnc/+G1UN0RL7Pwf+cPFe5boKjzrUC76irdoCQh1x/k4GUaycBM8KbCOJ
         UMKb0hrTuGUORcBujRi/bE4osamnd2v8DUsAvqMAGxDZnh8yRASy4zgkl3PvR+YVJKVo
         ICYzQhyCRy0Vd9vDkIIUer+YUWFjF/o335uzsSWU7FOE5p6lScEEwlutRrHll9ULKCfY
         /tqwvDUi/JBNcI7mN+lWYZJFtmbbtTMTXpZn+AhCPbjU116PY3BG8Wnos3QIgtajduTx
         E+3NrDHrOY+dxlyH56P8JS6C17oxuxMlUGY+NMsDE5RmAlW37Lyz0xjdC+ylK9UVfXk1
         5DDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXkZjiTDSQ5ECy/AWyuTUJnMhZb4YHzdiivfH23/ufZpK96IAtSdsnifU+iuK7z493ex3uJ@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxUxdFcBoMfqMfIcGQfuzjdJCICJ5OphySsQwXhC3hVZmmFTS9F
	SatumfNgOmjxRwktN+ICGYrwbpkC8JO5cK3cEOXk4dQqspbuTr4G1QikQgBPAx/eY2ZuRFHcqk+
	7y273VCiRo8wDJpJuj3iMgEdGWWw7uWk=
X-Gm-Gg: ASbGnctx90klJ1OoZFV5Z702IwulBnSJMECJHJZuOcmkt9E0Iw0xqukuZh/6wsFv7mw
	Ww4ILF/jPfJ4IJvxQd/8nLJRoZup5HMB8oI0XE66eMTEpYH/NWf3N8J7hiDup8TbtGo7/nFRKk6
	a+kXZKnt5rXiX8I1ddwgbsHYXg4C/NhD8XNycUBpT5rvGmwW82kmGE+TS6PK9MHUwXcPqZhxs5c
	DxwHnAW
X-Google-Smtp-Source: 
 AGHT+IEBh5HptS2GJNtmKxsHld7OpVduJRU05qqntrLIhGPY74F9jnUPPK2Q6lZjjz15nqDZTsUxBijiJcmmgWF0Tyo=
X-Received: by 2002:a17:907:80a:b0:b0c:99b8:8acd with SMTP id
 a640c23a62f3a-b24f3e59339mr707312166b.33.1758364974427; Sat, 20 Sep 2025
 03:42:54 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAJUtOOhN5j3P9NanP+eQqBk5K59dXVJ=0McKM-nZ64jwzUOEew@mail.gmail.com>
In-Reply-To: 
 <CAJUtOOhN5j3P9NanP+eQqBk5K59dXVJ=0McKM-nZ64jwzUOEew@mail.gmail.com>
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Sat, 20 Sep 2025 12:43:51 +0200
X-Gm-Features: AS18NWC-bF65Wt71m_MRR3JfP3dsDGZx5bXv7QipCSH9NU40JJGM4OtW_n5KE_4
Message-ID: 
 <CAJUtOOjrKvWgogPT2nKb1zhLnY9RUhZ2f1KtVgOiY7+O89FMxg@mail.gmail.com>
To: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
	bloat <bloat@lists.bufferbloat.net>, codel@lists.bufferbloat.net
Message-ID-Hash: HIQWCDW7BYY7ZKUPVRVV3YZOQ4NSI7GD
X-Message-ID-Hash: HIQWCDW7BYY7ZKUPVRVV3YZOQ4NSI7GD
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: Responsiveness under Working Conditions
 (draft-ietf-ippm-responsiveness-07)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOjrKvWgogPT2nKb1zhLnY9RUhZ2f1KtVgOiY7+O89FMxg@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXMgc3VnZ2VzdGVkIGJ5IFdpbGwgSGF3a2lucyAtIGFueW9uZSBpbnRlcmVzdGVkIHRvIGZvbGxv
dyB0aGlzIGNsb3NlbHksDQpjYW4gam9pbiB0aGVpciBTbGFjazoNCmh0dHBzOi8vdGVhbXJwbS5z
bGFjay5jb20vam9pbi9zaGFyZWRfaW52aXRlL3p0LTFudDdkMnlqOC1iUG5POGQzeHdqa0E3cGJZ
UkdxX0x3Iy9zaGFyZWQtaW52aXRlL2VtYWlsDQoNCkhlcmUgaXMgdGhlaXIgR2l0SHViOiBodHRw
czovL2dpdGh1Yi5jb20vbmV0d29yay1xdWFsaXR5L2NvbW11bml0eS93aWtpDQoNCkFsbCB0aGUg
YmVzdCwNCg0KRnJhbmsNCg0KRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrDQoNCg0KKkluIGxvdmlu
ZyBtZW1vcnkgb2YgRGF2ZSBUw6RodDogKjE5NjUtMjAyNQ0KDQpodHRwczovL2xpYnJlcW9zLmlv
LzIwMjUvMDQvMDEvaW4tbG92aW5nLW1lbW9yeS1vZi1kYXZlLw0KDQoNCmh0dHBzOi8vd3d3Lmxp
bmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3JzaWsNCg0KU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNB
cHA6ICs0MjE5MTk0MTY3MTQNCg0KaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KDQpT
a3lwZTogY2FzaW9hNTMwMmNhDQoNCmZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tDQoNCg0KT24g
RnJpLCBTZXAgMTksIDIwMjUgYXQgNDo1NeKAr1BNIEZyYW50aXNlayBCb3JzaWsgPGZyYW50aXNl
ay5ib3JzaWtAZ21haWwuY29tPg0Kd3JvdGU6DQoNCj4gSGVsbG8gdG8gYWxsLA0KPg0KPiBKdXN0
IHNhdyB0aGlzIHNoYXJlZCBieSBKYXNvbiBMaXZpbmdvb2Q6DQo+DQo+IGh0dHBzOi8vZGF0YXRy
YWNrZXIuaWV0Zi5vcmcvZG9jL2RyYWZ0LWlldGYtaXBwbS1yZXNwb25zaXZlbmVzcy8NCj4NCj4g
b24gTGlua2VkSW4NCj4gPGh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9mZWVkL3VwZGF0ZS91cm46
bGk6YWN0aXZpdHk6NzM3NDc4NTYwMDE5NDgwOTg1Ni8+LA0KPiBmaWxsZWQgaW4gb24gSnVseSA3
LCAyMDI1Lg0KPg0KPiBBbGwgdGhlIGJlc3QsDQo+DQo+IEZyYW5rDQo+DQo+IEZyYW50aXNlayAo
RnJhbmspIEJvcnNpaw0KPg0KPg0KPiAqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAq
MTk2NS0yMDI1DQo+DQo+IGh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3Zpbmct
bWVtb3J5LW9mLWRhdmUvDQo+DQo+DQo+IGh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9pbi9mcmFu
dGlzZWtib3JzaWsNCj4NCj4gU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6ICs0MjE5MTk0MTY3
MTQNCj4NCj4gaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KPg0KPiBTa3lwZTogY2Fz
aW9hNTMwMmNhDQo+DQo+IGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tDQo+DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAt
LSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

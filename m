Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BE8C9CBAE
	for <lists+cake@lfdr.de>; Tue, 02 Dec 2025 20:10:43 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id EB747A2337F;
	Tue, 02 Dec 2025 20:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764702642;
	bh=9JWFYXHZ/Gg8FS/6oO7WW4wzBHQJTuTH6/SPZaJSyZY=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=hTJEtvIcKU3Uao4Tl6mB04iyssAS/7YxfHT5r4r84RsG45p8j6nmTW7jDHdekKdyC
	 UdD3XxnnhlKQZ0Os9RBPRBsmJLygxnhHWYEr3D0ipIzmKgQu3rp8SKjZFZV26ix2GB
	 UcPuOFqhkm2O1QSHtM5gL8WDgo+zXNklB/1p8jK2QNluLGBg3GjTfqjX/V007mEhWV
	 p9hkvS11Qx6xLxEhv0bhWHROgaacDcynraFYfBE8i0zY0EsVZpsz4I/N9BBae8aCUk
	 yQ9+1lzAag6Z2GMe4kDCVk0cOhdGieMeBrLrO9squB3RYlGrSS07YkQRsNQKgXmL7u
	 QsNkOkxkT2UcA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764702642;
 b=O3MwrI5cYh+L/nd7AmBtB2uPRKsoY6vRhaWA/CFbHzk4DmyDxl4IuqxAfIbITZSyrppUo
 OrNHOVjLzPySY7oAN7K2uiEUyAdA+mQ5X/R+MhRUhu+5lYMb4n68ixS85aGXsU0W9wcWt+F
 tLXoVOq9jVXtvqo2WPVomPyALaC3rT8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764702642; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9JWFYXHZ/Gg8FS/6oO7WW4wzBHQJTuTH6/SPZaJSyZY=;
 b=OsZI39/4UPXt3wfWW3ahm9QWDnpWWyWGs+ReEtw/mFor13/yJDYPP19QhrKRxZVZgYNfr
 6Le+8ihyTDwBoPNK+EFy3jxwasLO61GqlEd0Om1x2qga9TIdOHWvM6ifhcerSNE3YYVi22P
 qQF9tfAhdKQu285zuus8frdw9JOZ2TE=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org;
 arc=none;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by mail.toke.dk (Postfix) with ESMTPS id 8A4D1A2336C
	for <cake@lists.bufferbloat.net>; Tue, 02 Dec 2025 20:10:40 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B742409FC;
	Tue,  2 Dec 2025 19:10:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0083BC4CEF1;
	Tue,  2 Dec 2025 19:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764702637;
	bh=rsSmygFIAY4vcsAN+Ighfqm8RnZc6tR4kLbyvhedq/M=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=s5mRWO6fc8qP65IKNSltvE3lIlBCybMoyAF3pHpQ9KCqRktrkW5kly26zhDCsot7K
	 PtAPi5fa+Tmx2zw/4Xz8O4hvF6TS5wWPaIFVylY/5Nj1+zLCb3J2rMjFBqtO9Nd/n+
	 256U7WSX/V8JSAlavp42jYjFz9iCU1NjIgH6+DPauCnoxIpqzw01Ejfwf+WhgkEmtB
	 C35oc1k2ZcKLNow/vl7pAF5x4CcitD+gXzqnqA3kk2OfPTtr9z28lfF5lKAdcOyBLy
	 2A355eB7RTbcpWIBJF+24jqr/SSVQdBoDFiD4438mPFaUEghp8Cgk5/ABCpRXga/pU
	 sz5gyVnvL09rQ==
Date: Tue, 2 Dec 2025 11:10:36 -0800
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Cc: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>, Jamal Hadi
 Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko
 <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonas =?UTF-8?B?S8O2cHBlbGVy?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
Message-ID: <20251202111036.07964fdd@kernel.org>
In-Reply-To: <20251201-mq-cake-sub-qdisc-v4-0-50dd3211a1c6@redhat.com>
References: <20251201-mq-cake-sub-qdisc-v4-0-50dd3211a1c6@redhat.com>
MIME-Version: 1.0
Message-ID-Hash: 2BAGLZE5DTBYWZCNIDFJXWNBKRTSXPOU
X-Message-ID-Hash: 2BAGLZE5DTBYWZCNIDFJXWNBKRTSXPOU
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v4 0/5] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251202111036.07964fdd@kernel.org/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAwMSBEZWMgMjAyNSAxMTowMDoxOCArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6DQo+IFRoaXMgc2VyaWVzIGFkZHMgYSBtdWx0aS1xdWV1ZSBhd2FyZSB2YXJpYW50
IG9mIHRoZSBzY2hfY2FrZSBzY2hlZHVsZXIsDQo+IGNhbGxlZCAnY2FrZV9tcScuIFVzaW5nIHRo
aXMgbWFrZXMgaXQgcG9zc2libGUgdG8gc2NhbGUgdGhlIHJhdGUgc2hhcGVyDQo+IG9mIHNjaF9j
YWtlIGFjcm9zcyBtdWx0aXBsZSBDUFVzLCB3aGlsZSBzdGlsbCBlbmZvcmNpbmcgYSBzaW5nbGUg
Z2xvYmFsDQo+IHJhdGUgb24gdGhlIGludGVyZmFjZS4NCg0KTGV0J3MgcHVzaCB0aGlzIG91dCB0
byB2Ni4yMCAob3IgbHVja3kgdjcuMSkuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cg==

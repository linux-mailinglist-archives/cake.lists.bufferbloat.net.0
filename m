Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 956B2B2BC37
	for <lists+cake@lfdr.de>; Tue, 19 Aug 2025 10:51:49 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 295F5C41F5A;
	Tue, 19 Aug 2025 10:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1755593506;
	bh=dDRtObG7aYe6GOPMhTehEogaO8ZEdu33qRvrMZ0KGBg=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=JwaSkuTrOfXzKNhwJEcPRC5JE3heoJG8CGfc5LwjsQdGBAYR9XXRJLWOEmqDJC4zO
	 rSr+VT4H6DTZHwcuAfonWYoFMEvWKROOL7V8YyLoUqtmcjHPIfcw7O3unzg1h/8Na4
	 RamYw7pvCRSc3tjo1DfGeDXjSI/pLAYHHpJJ8dCNsSFYvb0mK288ybqstkhqCY9p5E
	 Cwu14aOCEsWgI2Ih5ltjPJm1M66euJF1km7RAwTbLU6VlrJ4QOSUievdrxCEjaHAOG
	 QnIcALCS8blnzTp51T3AhXLKKL2u50gn7zVYAp3C8VHhQO5VILFi3BcwflN1Wl2Re6
	 WbK4ZQrY7c+mQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1755593504;
 b=wsE6Z/mmXiBOO+6FvWRHsjkX+IAkqaZrQjKuV7R2dmBhz7FqI0tnbzuqt4/OEDGDa3yPv
 EWgT57S526PGJAE8wWKLFy+ex5CCKt5qcRGwG/pXGZrg/2MxJKomhwFYuWzXT986XPdYGdi
 4phxpJIJVXnvm9LvEBgVi+QND1xyXQE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1755593504; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dDRtObG7aYe6GOPMhTehEogaO8ZEdu33qRvrMZ0KGBg=;
 b=1wnnQnm2gBHSplBmcAZ3LqM69F6Gp1ZNf2qkAOvFyq89cT6JhMDbaKNSyXv9Tu1Ep0Iop
 cYNgJyITw4m35hm6sYSiIva0c5+kdH21JX9BY/kiIl08Hp6rIXq3PI/JjvEhmLV/sJyYyxn
 IA1r9PHSjpjsn0y8lC38KWKCaPIWNxQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1755593500; bh=jgcAdVqxyFY4tD8DGpZ73j1dA0dSsUrPS79OJAYl0NY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=BUMIAagKBvzWPsGJjIyM4bF6MsPKG8CuWrTP3PR/VzeuxXMCacozumt0jFWQ9kvu0
	 iILiri72jmnCaISAYIM6NK9ID0yjfsroRs/dJu57L1t+PEEsL6dm+4PTerw+1lLHJy
	 HzwsxTExfT1Jq174m0ZNg6heNhXnXAZvMYOR2xcMJRVgRfYISTvuKlsljTQRGJWnFd
	 jins3iFTYF/MUD9DTZqO/C/CfGLEgwaZehXlnvNvlyFgFpasn7cE4kFjkBGTAcivUX
	 R6yaTXq3YfPwtDnCuv3Vd98JDcbRZPVzefuNdY3zZAgR6/v6rrzH8ZDVUtkGZ3GGfV
	 E0ZTg6UmeKCzA==
To: William Liu <will@willsroot.io>, netdev@vger.kernel.org
Cc: dave.taht@gmail.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, kuba@kernel.org, savy@syst3mfailure.io,
 jiri@resnulli.us, davem@davemloft.net, edumazet@google.com,
 horms@kernel.org, cake@lists.bufferbloat.net, William Liu
 <will@willsroot.io>
In-Reply-To: <20250819033601.579821-1-will@willsroot.io>
References: <20250819033601.579821-1-will@willsroot.io>
Date: Tue, 19 Aug 2025 10:51:33 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <871pp7k82y.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: U56CPZRKNPJHRZV2CQGABPIQP7OJMVJR
X-Message-ID-Hash: U56CPZRKNPJHRZV2CQGABPIQP7OJMVJR
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v2 1/2] net/sched: Make cake_enqueue return NET_XMIT_CN
 when past buffer_limit
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/871pp7k82y.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2lsbGlhbSBMaXUgPHdpbGxAd2lsbHNyb290LmlvPiB3cml0ZXM6DQoNCj4gVGhlIGZvbGxvd2lu
ZyBzZXR1cCBjYW4gdHJpZ2dlciBhIFdBUk5JTkcgaW4gaHRiX2FjdGl2YXRlIGR1ZSB0bw0KPiB0
aGUgY29uZGl0aW9uOiAhY2wtPmxlYWYucS0+cS5xbGVuDQo+DQo+IHRjIHFkaXNjIGRlbCBkZXYg
bG8gcm9vdA0KPiB0YyBxZGlzYyBhZGQgZGV2IGxvIHJvb3QgaGFuZGxlIDE6IGh0YiBkZWZhdWx0
IDENCj4gdGMgY2xhc3MgYWRkIGRldiBsbyBwYXJlbnQgMTogY2xhc3NpZCAxOjEgXA0KPiAgICAg
ICAgaHRiIHJhdGUgNjRiaXQNCj4gdGMgcWRpc2MgYWRkIGRldiBsbyBwYXJlbnQgMToxIGhhbmRs
ZSBmOiBcDQo+ICAgICAgICBjYWtlIG1lbWxpbWl0IDFiDQo+IHBpbmcgLUkgbG8gLWYgLWMxIC1z
NjQgLVcwLjAwMSAxMjcuMC4wLjENCj4NCj4gVGhpcyBpcyBiZWNhdXNlIHRoZSBsb3cgbWVtbGlt
aXQgbGVhZHMgdG8gYSBsb3cgYnVmZmVyX2xpbWl0LCB3aGljaA0KPiBjYXVzZXMgcGFja2V0IGRy
b3BwaW5nLiBIb3dldmVyLCBjYWtlX2VucXVldWUgc3RpbGwgcmV0dXJucw0KPiBORVRfWE1JVF9T
VUNDRVNTLCBjYXVzaW5nIGh0Yl9lbnF1ZXVlIHRvIGNhbGwgaHRiX2FjdGl2YXRlIHdpdGggYW4N
Cj4gZW1wdHkgY2hpbGQgcWRpc2MuIFdlIHNob3VsZCByZXR1cm4gTkVUX1hNSVRfQ04gd2hlbiBw
YWNrZXRzIGFyZQ0KPiBkcm9wcGVkIGZyb20gdGhlIHNhbWUgdGluIGFuZCBmbG93Lg0KPg0KPiBJ
IGRvIG5vdCBiZWxpZXZlIHJldHVybiB2YWx1ZSBvZiBORVRfWE1JVF9DTiBpcyBuZWNlc3Nhcnkg
Zm9yIHBhY2tldA0KPiBkcm9wcyBpbiB0aGUgY2FzZSBvZiBhY2sgZmlsdGVyaW5nLCBhcyB0aGF0
IGlzIG1lYW50IHRvIG9wdGltaXplDQo+IHBlcmZvcm1hbmNlLCBub3QgdG8gc2lnbmFsIGNvbmdl
c3Rpb24uDQo+DQo+IEZpeGVzOiAwNDZmNmZkNWRhZWYgKCJzY2hlZDogQWRkIENvbW1vbiBBcHBs
aWNhdGlvbnMgS2VwdCBFbmhhbmNlZCAoY2FrZSkgcWRpc2MiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBX
aWxsaWFtIExpdSA8d2lsbEB3aWxsc3Jvb3QuaW8+DQo+IFJldmlld2VkLWJ5OiBTYXZpbm8gRGlj
YW5vc2EgPHNhdnlAc3lzdDNtZmFpbHVyZS5pbz4NCg0KQWNrZWQtYnk6IFRva2UgSMO4aWxhbmQt
SsO4cmdlbnNlbiA8dG9rZUB0b2tlLmRrPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cg==

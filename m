Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F22FC936F5
	for <lists+cake@lfdr.de>; Sat, 29 Nov 2025 03:49:01 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 745469DD8E9;
	Sat, 29 Nov 2025 03:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764384539;
	bh=uqiqcrKHDigMlDqU4KqXrFoNrprF3feHTZc+5st7tZM=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ScancUkVfQPzF8BdIuiqEmXKQE47ajGiuNbWjOZVfS4/c4XeO4fRHpitvTgdtLIZE
	 W+v/9F8PbmfIAhOOGLTexy1zQoH/FV7fYsTaG9rTth2XFxu22p8/pGHeYKmGBkCOvy
	 Qx9FlXDmPlyBZ4aHoigfiNpM5mIBZ0HF1yvDII9zyEdtam1Xq9+txnJjFRxzHSaezg
	 +pXyqCaAN4irDY22NAO/W3In8ACi0+Z8/issW6/c9l+Ku3fIIJG3ko1ldZmS7aK9Hp
	 /s2qbP6uPYy7Azexy+kppM9Cf+zYNcaODrKmkndF+t4a+Op8XAYlZqccRn3uojQaj2
	 HG3sl8zSxyxnA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764384539;
 b=nJogRPgNj7SEypxVYtkKnOCJqKrBvZPgLLGpQbmpwcGTR3g420RtGCO1n+KtZR1WdNCKS
 IUjss5JTFuIxNPvbN3JQXH6l5vQWZsqdd7ivQ5jDLR1JMIBV6Hn6PHmZuQrLI5e05+Xy/cY
 Nijmac/EGX5Yxk9981wVi3I2vU3SV+w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764384539; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=uqiqcrKHDigMlDqU4KqXrFoNrprF3feHTZc+5st7tZM=;
 b=8U3YHBC7zA1SyMqR0/U0ai1oHF1Fqbs0HYRoNPzr0AM02R1qkZ47gtM8z5d55LZJUICyD
 1NISdmEHZBHKplYTORIsVPMcd2K2aj/2+JiHnUtfi5BPexp3HUmpaQJ9/VAq0bOLzCmIl84
 jc3kL/0iXwdV0amRszctZVzwzCZfRsE=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org;
 arc=none;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
	by mail.toke.dk (Postfix) with ESMTPS id D48009DD8C9
	for <cake@lists.bufferbloat.net>; Sat, 29 Nov 2025 03:48:56 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8F15560193;
	Sat, 29 Nov 2025 02:48:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B11BDC4CEF1;
	Sat, 29 Nov 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764384534;
	bh=/enZJ3f1Xj+OcCbUp/ebQOy2ec39G9qi6aMo7DqvXzI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ipDH2/arN7XL9Qq6UL21XUqMvbTZp1rqjJgXXW75p6yksT3yhS30VYjZy+JkbY5ue
	 XEkdLKASN+jcEbaU8hdrMmzUoZmDoGWXO0artnxYwFHY9PaIYdkryibMFx2gAVVN6m
	 lGp+biCN18f0ekjWjB+86pR5WZnhstMceCyXJdenWwtAxzrvvlslm/1C39NFbMDWrC
	 2XvTbLtEcU+IgB1YJ2WbuQqrz6h9LU4sV9fJpPeomfne/f47NikrQnl0pePmgFC5nK
	 SMe+3ajQBbMNXCIzYxDXChl+E+onoORxqs9PN5Bt0wepttsnWeMVTD2PvRGxAzIaSd
	 e032W1rf7Ywow==
Date: Fri, 28 Nov 2025 18:48:52 -0800
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>
Cc: Cong Wang <xiyou.wangcong@gmail.com>, Jamal Hadi Salim
 <jhs@mojatatu.com>, Jiri Pirko <jiri@resnulli.us>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonas
 =?UTF-8?B?S8O2cHBlbGVy?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org
Message-ID: <20251128184852.7ceb3e72@kernel.org>
In-Reply-To: <87cy51bxe1.fsf@toke.dk>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
	<aSiYGOyPk+KeXAhn@pop-os.localdomain>
	<87o6onb7ii.fsf@toke.dk>
	<20251128095041.29df1d22@kernel.org>
	<87cy51bxe1.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: S2ZKZWOJDFH2S4JZGB33AEETSO6LIHW2
X-Message-ID-Hash: S2ZKZWOJDFH2S4JZGB33AEETSO6LIHW2
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251128184852.7ceb3e72@kernel.org/>
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

T24gRnJpLCAyOCBOb3YgMjAyNSAyMzozMzoyNiArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6DQo+IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+IHdyaXRlczoNCj4g
PiBPbiBUaHUsIDI3IE5vdiAyMDI1IDIwOjI3OjQ5ICswMTAwIFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbiB3cm90ZTogIA0KPiA+PiBZZWFoOyBob3cgYWJvdXQgSSBmb2xsb3cgdXAgd2l0aCBhIHNl
bGZ0ZXN0IGFmdGVyIHRoaXMgaGFzIGJlZW4gbWVyZ2VkDQo+ID4+IGludG8gYm90aCB0aGUga2Vy
bmVsIGFuZCBpcHJvdXRlMj8gIA0KPiA+DQo+ID4gV2h5IGlzIGlwcm91dGUyIGEgYmxvY2tlcj8g
QmVjYXVzZSB5b3UncmUgbm90IHN1cmUgaWYgdGhlICJBUEkiIHdvbid0DQo+ID4gY2hhbmdlIG9y
IGJlY2F1c2UgeW91J3JlIHdvcnJpZWQgYWJvdXQgTklQQSBvci4uID8gIA0KPiANCj4gTm8sIGp1
c3QgdGhhdCB0aGUgcGF0Y2ggdGhhdCBhZGRzIHRoZSBuZXcgcWRpc2MgdG8gaXByb3V0ZTIgbmVl
ZHMgdG8gYmUNCj4gbWVyZ2VkIGJlZm9yZSB0aGUgc2VsZnRlc3RzIGNhbiB1c2UgdGhlbS4gV2hp
Y2ggdGhleSB3b24ndCBiZSB1bnRpbCB0aGUNCj4ga2VybmVsIHBhdGNoZXMgYXJlIG1lcmdlZCwg
c28gd2UnbGwgaGF2ZSB0byBmb2xsb3cgdXAgd2l0aCB0aGUgc2VsZnRlc3RzDQo+IG9uY2UgdGhh
dCBoYXMgaGFwcGVuZWQuIElJVUMsIGF0IGxlYXN0IDopDQoNCllvdSBjYW4gYWRkIGEgVVJMIHRv
IHRoZSBicmFuY2ggd2l0aCB0aGUgcGVuZGluZyBpcHJvdXRlMiBjaGFuZ2VzDQp3aGVuIHlvdSBw
b3N0IHRoZSBzZWxmdGVzdHMgYW5kIHdlJ2xsIHB1bGwgdGhlbSBpbiBOSVBBLCBvciBwb3N0IA0K
dGhlIHBhdGNoZXMgYXQgdGhlIHNhbWUgdGltZSAoanVzdCBub3QgaW4gb25lIHRocmVhZCkuDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

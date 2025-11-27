Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D506EC8D5A2
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 09:32:47 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 945939D3B13;
	Thu, 27 Nov 2025 09:32:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764232366;
	bh=U+qE2FX3Re8MD05/g/7LjUxzyg1lKuUgV9M682tbo3M=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=PbDtB6a/XSPQOei3ToFIOH7Dtes+uNbsNHM9SeWH0BKbUMwxA2XkXFpSEvOsTrFd5
	 YqqU7193ztIXLt5qcFe00qTScL7sQ4JGPKZOE1lel6UOLJseSMrtNbf+FHLNhtgxSl
	 9xc/zTesSQBsa6YwIyc3Zez0nx+4YjLtG+3r5r81WPhalc/ztVv1gz5bxX+RPJurJU
	 CsRCHyqI7zrqYJedVUPrALKKGGdD7NPALZzey+uYfR6uiqT/jW1KA+deX+maJgX5K6
	 D4DwT8ILINmWx9v5RCi+RS740t3esEA27zlrXmy+fDDO83b/59KYYKuX0r0tRx3Xar
	 Qpl056fCfcDAw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764232366;
 b=ssXkxRKWglyStmva9IhxRgtvGlxS4y/smY8hnKsJo5RqyNQ9Azr0dW5Er585ycp8V0bM9
 bwurTCjPv7FKgXb9i6YMxEZuPhjEwR8VvICSHioO5sXvLoiNbZUHPk1KjntiMkKaJA/2w6K
 hbcI2lrJ15LDTgwPfadWVCBwnNwZ33g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764232366; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=U+qE2FX3Re8MD05/g/7LjUxzyg1lKuUgV9M682tbo3M=;
 b=guScBEzfAESUnHHZGQgL707qqgML9zckFEDzsfxESe0vw4ovlpcnw/D8d4ISh3BS9W49q
 pYsnr6HpXwKznN08yZRxFJZ0ooL8qms7nLrOmBNBZfRr4LSOJHCgEuZ6UHDXj8zeTIrEe8C
 jRZMmGnuTskHyxy8wsly8u2gIiCNaD8=
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
	by mail.toke.dk (Postfix) with ESMTPS id 3131F9D3B02
	for <cake@lists.bufferbloat.net>; Thu, 27 Nov 2025 09:32:40 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0471B60139;
	Thu, 27 Nov 2025 03:43:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E832C4CEF8;
	Thu, 27 Nov 2025 03:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764214986;
	bh=n9n3yGRDHka3SDIZ8zG0ckFrHUiNrWlkVL4RqQb4kmw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=kxrf74cCmUAwvrhSqC3+oIkwm20Zh8Fq+Q8cmPEfOyF1E1nX1++myYJ2qkRgUCTCb
	 oIYg74skYLzxxF98VssOSKUKeINiNNwqlkBaEIAmFM7lJLXvUU8skebZ/53hjWkoYL
	 CvM/WrSOFvFgdapAZ7ifouoBY4kz9D2JHeAfs875CkIHWnWYUq3rE7LnDJS7n9mtu9
	 hfuk26MVddvvxEQlmYtgfXuNnpPMH+/qsKqKEPIg/7m35lPanaRRkV5wxRHje5o7ZP
	 JmOqp4Jr/lzSFGAt8zw0yJ1dcoHvmqAUTC6YV2G+DY/rn17+5uBgN32C/v5lpGJZfy
	 WydEqk8ts7uEA==
Date: Wed, 26 Nov 2025 19:43:05 -0800
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Cc: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>, Jamal Hadi
 Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko
 <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonas =?UTF-8?B?S8O2cHBlbGVy?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
Message-ID: <20251126194305.31ebd8e7@kernel.org>
In-Reply-To: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
References: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
MIME-Version: 1.0
Message-ID-Hash: YQ5A2TBUNRLXEUCLLVWZNFNIUN4C6DCF
X-Message-ID-Hash: YQ5A2TBUNRLXEUCLLVWZNFNIUN4C6DCF
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251126194305.31ebd8e7@kernel.org/>
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

T24gTW9uLCAyNCBOb3YgMjAyNSAxNTo1OTozMSArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6DQo+IFRoaXMgc2VyaWVzIGFkZHMgYSBtdWx0aS1xdWV1ZSBhd2FyZSB2YXJpYW50
IG9mIHRoZSBzY2hfY2FrZSBzY2hlZHVsZXIsDQo+IGNhbGxlZCAnY2FrZV9tcScuIFVzaW5nIHRo
aXMgbWFrZXMgaXQgcG9zc2libGUgdG8gc2NhbGUgdGhlIHJhdGUgc2hhcGVyDQo+IG9mIHNjaF9j
YWtlIGFjcm9zcyBtdWx0aXBsZSBDUFVzLCB3aGlsZSBzdGlsbCBlbmZvcmNpbmcgYSBzaW5nbGUg
Z2xvYmFsDQo+IHJhdGUgb24gdGhlIGludGVyZmFjZS4NCg0KTG9va3MgbGlrZSB0aGlzIG5lZWRz
IGEgcmVzcGluIGFmdGVyIEVyaWMncyByZWNlbnQgY2hhbmdlcy4NCi0tIA0KcHctYm90OiBjcg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

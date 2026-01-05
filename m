Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BCACF49B9
	for <lists+cake@lfdr.de>; Mon, 05 Jan 2026 17:14:58 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8DA07B58B8D;
	Mon, 05 Jan 2026 17:14:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767629697;
	bh=EJUs2E1K4OFpzt7vEfXaYzU36aTyAo1AVB43rxeI49g=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=X8ZkmZX+Wygf98larGbLT1Rcih3Nhx3Ak6DxfnUbJCsTwu6N0uRGz2UlpVCSu3Zrq
	 qVTMMC1+aTmYTEtjXvzF6a1AnQTUC2DN6luc044RwiuehKhsoLO90hQyUG8bV5a+Ow
	 5ALpaImay7Czzb8c6Ptsepzs1iNUTFrpaHeA9jKx5hQL2kwTnxbllaLMwphXEqu7Ow
	 nqQrp/7MCD2ojmrHhqyxcLw+BcIrIDyWwxItrC/3KKKHRVNq7148zvfd+ADBTJ5yuR
	 c8ZdWPJrROgRHztLDXhb+y5/2H5wR+Cdcg/NpglOaA7rTSaBVaITHc9Hok2Nx1WBXd
	 cXFvs3OXAZkNw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767629697;
 b=Yvm8Uiqk0wYLB7HhBtq+aMdWueCmBRgKFS1bIAqTePw56H3ORiGqvGUtD89E8XojgP9Wj
 InsabKQarnw2tWOPYeN1pPpVxTigU+mKN+zCV5WlqZVBL3L0FZYdB4jMWxcdNJzDLYfXtgV
 EHC2kWXYAl/zYiVOZJKiUDQvjp6LW8s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767629697; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=EJUs2E1K4OFpzt7vEfXaYzU36aTyAo1AVB43rxeI49g=;
 b=jzkRJNEttibj4Hj8id9EeZXfskNFRaOq0SSBWmdEHPDnL/+r2VTjJtw/rj/8NexpObYhk
 +usEZnuQ9AKbx1WvW2M0d7U9KNc0/Wftsr2z99SJ9wy5M1yhatCgq/GwDjPwE2T9AageUJV
 23CwSFTUHhG8XuAKdfh9Y/Sze3/2TK8=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1767629618; bh=0SOZObbSeAoHjarXi+RDp8H4CbREBxG7IO0uxXTMoqg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=R6RbdP9Cctp5c2PIqVIM55KhRn37ZuinnjivHWNgPKefJUxxKIDDfvlDmX+9Wc/8l
	 oelbERWKdmU/6rpoy5LGejxjmU32RFXyO8Gq5CJjt16QvU4c6sa54W4OwQ28lebEVs
	 fMxzEIMeWAADGEMfKo5044uQYhO53pnmQQoobO7ODn8d8eVwmxyybcjilWfUAX1wv2
	 +w2c1fUyf+gbSC76mJbDA/HLm3DVDDICdr2qs/QYf1Ukergru9cz3EnFbwvyUxlybW
	 1Ij+hrxOmJ0/L/VY5uqArEYBKGWUb3JaKd30lEgRk6hiznMwIuU+YpmuHh+fZGI5A9
	 7YKJztynY61HA==
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang
 <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonas
 =?utf-8?Q?K=C3=B6ppeler?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <20260105072414.50f4537e@kernel.org>
References: <20260105-mq-cake-sub-qdisc-v5-0-8a99b9db05e6@redhat.com>
 <20260105072414.50f4537e@kernel.org>
Date: Mon, 05 Jan 2026 17:13:38 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87seck5971.fsf@toke.dk>
MIME-Version: 1.0
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; max-recipients; max-size; news-moderation; no-subject;
 digests; suspicious-header
Message-ID-Hash: CZ2RPEFFQKDP2F6VC75YXVLIJRXSHDYA
X-Message-ID-Hash: CZ2RPEFFQKDP2F6VC75YXVLIJRXSHDYA
X-Mailman-Approved-At: Mon, 05 Jan 2026 17:14:55 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v5 0/6] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87seck5971.fsf@toke.dk/>
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOg0KDQo+IE9uIE1vbiwgMDUg
SmFuIDIwMjYgMTM6NTA6MjUgKzAxMDAgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0K
Pj4gQSBwYXRjaCB0byBpcHJvdXRlMiB0byBtYWtlIGl0IGF3YXJlIG9mIHRoZSBjYWtlX21xIHFk
aXNjIHdpbGwgYmUNCj4+IHN1Ym1pdHRlZCBzZXBhcmF0ZWx5Lg0KPg0KPiBDb3VsZCB5b3Ugc2Vu
ZCBpdCBvdXQ/IEkgdGhpbmsgd2UgbmVlZCB0byBhcHBseSBpdCB0byBUREMgdG8gbWFrZSB0aGUN
Cj4gdGVzdCBwYXNzLg0KDQpBaCB5ZXMsIG9mIGNvdXJzZTsgd2lsbCBkbyENCg0KLVRva2UNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK

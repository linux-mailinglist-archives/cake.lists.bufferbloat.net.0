Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEC2C93431
	for <lists+cake@lfdr.de>; Fri, 28 Nov 2025 23:33:30 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 81BD89DC6C9;
	Fri, 28 Nov 2025 23:33:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764369209;
	bh=qqGrNmoIV2jM0KE0ivORkytvHQmioQ788IqrMmGkKt0=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Aj+afArKLDWaeJuzeh0Dl0poOP2lJ3ex6ff2sUCUcQuCBtyga9eavYZ0eiePwH8IX
	 PcMHHaK/nnBMMclIPxb20ao6RkViyaN5CbPrT2VvVF7q9HK9mIt8FBEisKor2XB3XF
	 RGtLll/RYWB79kWvbSRK+w7oofaZ4VVBKIORHIj/1fTwnCkNcf7rZcJhYJeSc6n6MC
	 BZXOsBGmoB24S5IO2CIWA8KRGQdRrSjEr07cmlNuqS4lp9RN/aa3pL+OH65ClC0THr
	 u9mzFCHl2IR/YC4NNPMtpmC9PDdQVmXdfVmkhTkEh9eld7AlLs2tqg2L0tMCipDze8
	 NnhKTrFocGihQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764369209;
 b=kSghNZUHeqb8LfVHvZt7WUm8DvZjS/+AqqrdRX2UhqZM0pmVmMqmPGxJC4C5fj0SybUvo
 cemJcVzCcnyXvt5V5otpnczCrM0oABFLsPmz2bJyqv7jLzHQIUvRzdYxKfv7c5GvtiIordg
 hLnDBpRsznPnm/A9sObMlxjYw2J152o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764369209; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=qqGrNmoIV2jM0KE0ivORkytvHQmioQ788IqrMmGkKt0=;
 b=beSkDVaMrzpaSHZz+TFM+CiDarDUsK8VYCkyp0x8Vt3FvPPNtlEw8UIheLpUwyxL+85TJ
 W1LM0dIN42ReJ3oN4b6JMqm6KWTw7A+qO+PB4xrAsfaAl8Ixwk37NUIdcnjGS2UQ2hkmuuq
 bl32XJ9LYL386wEZTDm3eqiTLMFIcJs=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764369207; bh=WL9A52lnn5mHxkJ6CM/+q+QoyHQOWevPx8HeleWcZVY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=nr8PHpwzi9hitypynJygbrU3FqdFQz4aVV+9edEeHouY4mMqN11i9dvSqztM3Uqjm
	 KgriF4kWUUBlnWanIrPuH43/BWoAAaLu25PbDO8z3OPE270g3355NGUGH0J9K3+AY+
	 dulxjCw2lvFTGF0cpQXlYmfBSezrgYu9h1xvikpn3KU9rnQbpoMLRY16Zbme65tXDN
	 pwG+6m3sOP3Cfe7+gi3cvoLeiOJdYndUYqa5KoEXTTunE6qOdSJZJ8cRaj/FSAi8pT
	 Qg7QdwQ63ruwu72gF3/Bo9kemZND7BklxsFiTE+Se4uxfGkKez/mhZTUCcZz/3ubNo
	 eTLR9NUsQB5nw==
To: Jakub Kicinski <kuba@kernel.org>
Cc: Cong Wang <xiyou.wangcong@gmail.com>, Jamal Hadi Salim
 <jhs@mojatatu.com>, Jiri Pirko <jiri@resnulli.us>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonas =?utf-8?Q?K?=
 =?utf-8?Q?=C3=B6ppeler?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <20251128095041.29df1d22@kernel.org>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <aSiYGOyPk+KeXAhn@pop-os.localdomain> <87o6onb7ii.fsf@toke.dk>
 <20251128095041.29df1d22@kernel.org>
Date: Fri, 28 Nov 2025 23:33:26 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87cy51bxe1.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: WMD7LOV5HFY26P5AYCLE5Y7Z67B6AXMY
X-Message-ID-Hash: WMD7LOV5HFY26P5AYCLE5Y7Z67B6AXMY
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87cy51bxe1.fsf@toke.dk/>
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOg0KDQo+IE9uIFRodSwgMjcg
Tm92IDIwMjUgMjA6Mjc6NDkgKzAxMDAgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0K
Pj4gPiBJcyB0aGVyZSBhbnkgY2hhbmNlIHlvdSBjb3VsZCBwcm92aWRlIHNlbGZ0ZXN0cyBmb3Ig
dGhpcyBuZXcgcWRpc2MNCj4+ID4gdG9nZXRoZXIgd2l0aCB0aGlzIHBhdGNoc2V0Pw0KPj4gPg0K
Pj4gPiBJIGd1ZXNzIGlwcm91dGUyIGlzIHRoZSBtYWluIGJsb2NrZXI/ICANCj4+IA0KPj4gWWVh
aDsgaG93IGFib3V0IEkgZm9sbG93IHVwIHdpdGggYSBzZWxmdGVzdCBhZnRlciB0aGlzIGhhcyBi
ZWVuIG1lcmdlZA0KPj4gaW50byBib3RoIHRoZSBrZXJuZWwgYW5kIGlwcm91dGUyPw0KPg0KPiBX
aHkgaXMgaXByb3V0ZTIgYSBibG9ja2VyPyBCZWNhdXNlIHlvdSdyZSBub3Qgc3VyZSBpZiB0aGUg
IkFQSSIgd29uJ3QNCj4gY2hhbmdlIG9yIGJlY2F1c2UgeW91J3JlIHdvcnJpZWQgYWJvdXQgTklQ
QSBvci4uID8NCg0KTm8sIGp1c3QgdGhhdCB0aGUgcGF0Y2ggdGhhdCBhZGRzIHRoZSBuZXcgcWRp
c2MgdG8gaXByb3V0ZTIgbmVlZHMgdG8gYmUNCm1lcmdlZCBiZWZvcmUgdGhlIHNlbGZ0ZXN0cyBj
YW4gdXNlIHRoZW0uIFdoaWNoIHRoZXkgd29uJ3QgYmUgdW50aWwgdGhlDQprZXJuZWwgcGF0Y2hl
cyBhcmUgbWVyZ2VkLCBzbyB3ZSdsbCBoYXZlIHRvIGZvbGxvdyB1cCB3aXRoIHRoZSBzZWxmdGVz
dHMNCm9uY2UgdGhhdCBoYXMgaGFwcGVuZWQuIElJVUMsIGF0IGxlYXN0IDopDQoNCi1Ub2tlDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B5EC90027
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 20:27:53 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8851C9D57D4;
	Thu, 27 Nov 2025 20:27:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764271672;
	bh=68JCBPsRiWh1q7WOpIchuFXEMqG80rGQt3h8S+zb0Wc=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=H96VXVcU6uUQsEK2dz/dxbjB+1eQBq2SU3BFacVsqXNlDYIvEPuhnWjIV3hXn5MvS
	 YhZvqWzQqvaIkf1aWufjw19EewFDkuXgh2I66BZHULtQXZvhIN1GZWItFlL7s/26gK
	 kEY3j6fVnTHAHNee99u7uQgx4n1E9JH5cyqaQpbdgCpGxqttKYZrem762CXyJisFt9
	 EucSnmnmSvAoyFAxkq+xPo/CmhHxfuRt/y3RtQ0XNu87+7p1vyuR5kL7aafqyCwNaf
	 M+Mtv2PVI3d/10xkA1AfIqshtvah/uiLYkNk0/2Iv/dnZzQklDU4SjMviX0fy38sho
	 RE8kGmuyigpXA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764271672;
 b=oUsv0irjtIX5qA02R7uPwy4K1OolDQ9d2wzK2rNA5SfqrBfUuBaL1E1uabyi0ChHsg5ZN
 QAFcwq9DzzYZxckuFe4ctzU0LWZADoCEQEfgK/tspeiL0V3HIww7LCDmvHQzweKygauxwsY
 Vfx9CHkjaYfKvkVAbKPCZ6r+vWSYHJ4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764271672; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=68JCBPsRiWh1q7WOpIchuFXEMqG80rGQt3h8S+zb0Wc=;
 b=QP6UsBDrYnH4nHOLn11zhvf5wvRF3YOjG4uScj4aZPaMqOygbKilZbWzSOapWWSL07DeQ
 BiQzisof7lQ88cMzwULL0I6Vz22umFtmIIGVa4adbdp2cgX7DD+llqcRpxPJn+9WZVRCZGD
 8jjSgpjbVgYSEEzeX2QZeblGQq1SDa4=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764271670; bh=byOpwHBiMxL3uSBexjGsaLR2xKlpLWJHeTrPx2wTXmw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=fiffvJBwflH68EeoRvs0Qj2hYCoOFGn+8U9PdPq/lSLwA0vzTqBOdsqxiqFgkrFf8
	 mkJ+FpAPuMSb400jQXyaq7tvpaxkz3UWAcBNPbVlWiIRUyE0OicEClfJRhXD0Fxxze
	 TgdZINwWVtl87uoMgd0fNYtux57eHVdq3MY1vB9r0fExUKIt9+IkOfyn73SqnPPU5C
	 ZK+h9ouL5CIj7P5dh/G1N6pHlrHBZHDuQBUregwaWc5OpzIHlWGRN8RYhqz4BmQGBO
	 ODVsFwsCo6ExyS8VURyLFHVbVlQ748scqotIshL58pmnXdXLTHCCDG2aERnhRexGyY
	 9c6PbB1g7FObA==
To: Cong Wang <xiyou.wangcong@gmail.com>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonas =?utf-8?Q?K?=
 =?utf-8?Q?=C3=B6ppeler?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <aSiYGOyPk+KeXAhn@pop-os.localdomain>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <aSiYGOyPk+KeXAhn@pop-os.localdomain>
Date: Thu, 27 Nov 2025 20:27:49 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87o6onb7ii.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: LWMOOUQ4N5A43GJTV35Z5JF65RDUGPG6
X-Message-ID-Hash: LWMOOUQ4N5A43GJTV35Z5JF65RDUGPG6
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87o6onb7ii.fsf@toke.dk/>
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

Q29uZyBXYW5nIDx4aXlvdS53YW5nY29uZ0BnbWFpbC5jb20+IHdyaXRlczoNCg0KPiBIaSBUb2tl
LA0KPg0KPiBPbiBUaHUsIE5vdiAyNywgMjAyNSBhdCAxMDozMDo1MEFNICswMTAwLCBUb2tlIEjD
uGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6DQo+PiAgRG9jdW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNz
L3RjLnlhbWwgfCAgIDMgKw0KPj4gIGluY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaCAgICAg
IHwgICAxICsNCj4+ICBuZXQvc2NoZWQvc2NoX2Nha2UuYyAgICAgICAgICAgICAgICB8IDYyMyAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0NCj4+ICAzIGZpbGVzIGNoYW5nZWQs
IDUwMiBpbnNlcnRpb25zKCspLCAxMjUgZGVsZXRpb25zKC0pDQo+DQo+IElzIHRoZXJlIGFueSBj
aGFuY2UgeW91IGNvdWxkIHByb3ZpZGUgc2VsZnRlc3RzIGZvciB0aGlzIG5ldyBxZGlzYw0KPiB0
b2dldGhlciB3aXRoIHRoaXMgcGF0Y2hzZXQ/DQo+DQo+IEkgZ3Vlc3MgaXByb3V0ZTIgaXMgdGhl
IG1haW4gYmxvY2tlcj8NCg0KWWVhaDsgaG93IGFib3V0IEkgZm9sbG93IHVwIHdpdGggYSBzZWxm
dGVzdCBhZnRlciB0aGlzIGhhcyBiZWVuIG1lcmdlZA0KaW50byBib3RoIHRoZSBrZXJuZWwgYW5k
IGlwcm91dGUyPw0KDQotVG9rZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldAo=

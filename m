Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 666A9C9EC3E
	for <lists+cake@lfdr.de>; Wed, 03 Dec 2025 11:50:49 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id A9E84A287C4;
	Wed, 03 Dec 2025 11:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764759025;
	bh=/le2o/FMuYFzL3XeKs1Qge7TSC6bm43FyvPfGQt1dN4=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=bPjoSQ825WyFgNH79pxH/UwIhRyzT0YQcOCG+bjN9prjakENM0K0Z7+8f7cxAgKsL
	 Ui8o4nVP+aHry2o+b508Hmdi37icaHOy9qe/C+hL0HI3aG6AYzK8LeBKfs0UFQ8pan
	 AUtAn/Q5840I/jXirDJ1itijWXI/pIDqrJIO60eWqCwGCo5bd95d3mkpgUe9AehdBF
	 QkZNnwEsQ0EvcbA//+Je/HiP4SFYXQcW3P0e3nCIYYQmBDpkWRiX8eiQwkkgdrG226
	 1YCqtdZvxIkdA3EoP3r2+M5lFYmpcAuSD8yTl9r/sq2U4sJAZ3Oc/5vanxQ16UdkPn
	 G+edxJ4D6pIww==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764759025;
 b=hVoEJMf95DEfhKi8GRguKtl8rGqIk9to7TYw2iLMgYZJKXM3cTmJ/TECoiCvDqoUkPeLg
 nUNySVQphSHWX/wqhOmTpNAcC5ibt+qbiCr6+h1VtYPHBS35tkW2hd6h6xthFnrDrEyQ5aY
 5fdeLFU46+XBxk8OTEhe6IkU2OW87L0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764759025; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/le2o/FMuYFzL3XeKs1Qge7TSC6bm43FyvPfGQt1dN4=;
 b=JsfJi2G/sEmZLEkeXC9peAIHy3gArrwxiB6DBjzhNS0DK7kYPq6E0B8pxBJLENNPIB1jA
 5APcZFniaIvM1F3uOXJGTFJm6IUQvPdMVtbuJ7OUofzKayk5dGa96hdzgej+Mn0TyojIOdo
 swoIuK4rzOugEufxt37fg4AxlbcK2vI=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764758931; bh=Z1D04chXBYJFwwNAJuYTORWw41cHBHStJVr7oBf+7vA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=tsDYJQ1K0iglRE14nGbybI33DvZiEHJDpwLf7+4qzlWDw7YnnivsiBkY+wZTomsI7
	 NZTO3hjhp32nCXa5TLoR/Y6vhPtVC5jjNel3kUPPfAjmx++XOFv/RJlgS4lAJIHPML
	 hXHhChUFYTv8SmVB+eFps0lZUjzWr/AIR1WwqQ8JfBusqE2CbubqblW0X+uwswU/Vq
	 4Xh4TTIXlPdRswkjRgGVLEJzGqB3GwdESbuCoLprKigFlDIvncn4Pplxsi3QGsYwYo
	 ziA1GY7C515CMMOQy0WrDC9zx79Ts4GdranAKgjPIk8be3aVpsgZQlvibyEYio5KWv
	 XeA9DuF4QVw3A==
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang
 <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonas
 =?utf-8?Q?K=C3=B6ppeler?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <20251202111036.07964fdd@kernel.org>
References: <20251201-mq-cake-sub-qdisc-v4-0-50dd3211a1c6@redhat.com>
 <20251202111036.07964fdd@kernel.org>
Date: Wed, 03 Dec 2025 11:48:50 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87tsy796y5.fsf@toke.dk>
MIME-Version: 1.0
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; max-recipients; max-size; news-moderation; no-subject;
 digests; suspicious-header
Message-ID-Hash: 2SCNEB6K56BEIQ2K5Y4IWWM5CHYHMDKR
X-Message-ID-Hash: 2SCNEB6K56BEIQ2K5Y4IWWM5CHYHMDKR
X-Mailman-Approved-At: Wed, 03 Dec 2025 11:50:24 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v4 0/5] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87tsy796y5.fsf@toke.dk/>
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOg0KDQo+IE9uIE1vbiwgMDEg
RGVjIDIwMjUgMTE6MDA6MTggKzAxMDAgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0K
Pj4gVGhpcyBzZXJpZXMgYWRkcyBhIG11bHRpLXF1ZXVlIGF3YXJlIHZhcmlhbnQgb2YgdGhlIHNj
aF9jYWtlIHNjaGVkdWxlciwNCj4+IGNhbGxlZCAnY2FrZV9tcScuIFVzaW5nIHRoaXMgbWFrZXMg
aXQgcG9zc2libGUgdG8gc2NhbGUgdGhlIHJhdGUgc2hhcGVyDQo+PiBvZiBzY2hfY2FrZSBhY3Jv
c3MgbXVsdGlwbGUgQ1BVcywgd2hpbGUgc3RpbGwgZW5mb3JjaW5nIGEgc2luZ2xlIGdsb2JhbA0K
Pj4gcmF0ZSBvbiB0aGUgaW50ZXJmYWNlLg0KPg0KPiBMZXQncyBwdXNoIHRoaXMgb3V0IHRvIHY2
LjIwIChvciBsdWNreSB2Ny4xKS4NCg0KQWxyaWdodCA6KA0KDQpJJ2xsIHJlc3VibWl0IGFmdGVy
IHRoZSBtZXJnZSB3aW5kb3cgd2l0aCB0aGUgaGVhZGVyIGNoYW5nZXMgV2lsbCBzdWdnZXN0ZWQu
DQoNCi1Ub2tlDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cg==

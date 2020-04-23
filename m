Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CAD1B6697
	for <lists+cake@lfdr.de>; Thu, 23 Apr 2020 23:59:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B52D43CB44;
	Thu, 23 Apr 2020 17:59:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587679198;
	bh=oBtlzIhDNAq+XsV7JN15qXpYYLORnonqeto3JjfE/vs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iHav6xl15B+xq9vzOX0dnqwmwy2HuMv+h95PJH5UOl/Q7iVwN14f5liof7Q4Ukr9D
	 rETfQvJx9eC6/3fs9m4v/EPwgaBisAXELJEHjVUAeluZ2gRJFC8yHjN5F7yHsaIp+s
	 Gn1PdFd+OcB4Lc3A57gXr/vnzTUzM+WNsmbjLKyB45yvTfa9VnFB72Ywx6tCsw+xqo
	 +CrLGKSREOzxNguHbO/kptEb/aGkhKdAu4zky3YEDXklYIiXn4pi3x/WIJJlr84tIW
	 AhyfJYKaM/ZVonZ6B1398QyUzanCZhoHkDGC25Z7U4+IEXiB/8uCe9WOmfBvkBEsfz
	 JFvnHxHVrdKoA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8A31A3B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 17:59:56 -0400 (EDT)
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id CBBEE202C7;
 Thu, 23 Apr 2020 23:59:55 +0200 (CEST)
Received: from sakura (freebox.vlq16.iliad.fr [213.36.7.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ns.iliad.fr (Postfix) with ESMTPS id BE44D20289;
 Thu, 23 Apr 2020 23:59:55 +0200 (CEST)
Date: Thu, 23 Apr 2020 23:59:54 +0200
From: Maxime Bizon <mbizon@freebox.fr>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <20200423215954.GN28541@sakura>
References: <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
 <20200423092909.GC28541@sakura> <87o8ri76u2.fsf@toke.dk>
 <20200423123329.GG28541@sakura> <877dy66tng.fsf@toke.dk>
 <20200423173111.GL28541@sakura> <871roe6of0.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871roe6of0.fsf@toke.dk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Apr 23 23:59:55 2020 +0200 (CEST)
Subject: Re: [Cake] Advantages to tightly tuning latency
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Ck9uIFRodXJzZGF5IDIzIEFwciAyMDIwIMOgIDIwOjM1OjE1ICgrMDIwMCksIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToKCj4gSSBtZWFudCBtb3JlIGRldGFpbHMgb2YgeW91ciBTT0Mg
cGxhdGZvcm0uIFlvdSBhbHJlYWR5IHNhaWQgaXQncwo+IEFSTS1iYXNlZCwgc28gSSBndWVzcyB0
aGUgbW9zdCBpbXBvcnRhbnQgbWlzc2luZyBwaWVjZSBpcyB3aGljaCAoTGludXgpCj4gZHJpdmVy
IGRvZXMgdGhlIEV0aGVybmV0IGRldmljZShzKSB1c2U/CgotIE1hcnZlbGwgS2lya3dvb2QsIG12
NjQzeHhfZXRoIGRyaXZlcgotIE1hcnZlbGwgQThrLCBtdnBwMiBkcml2ZXIKCj4gWXVwLCBJIHRo
aW5rIHNvLiBXaGF0IGRvZXMgeW91ciBjdXJyZW50IHNvbHV0aW9uIGRvIHdpdGggcGFja2V0cyB0
aGF0Cj4gYXJlIGRlc3RpbmVkIGZvciB0aGUgV2lGaSBpbnRlcmZhY2UsIEJUVz8gSnVzdCBwdW50
IHRoZW0gdG8gdGhlIHJlZ3VsYXIKPiBrZXJuZWwgcGF0aD8KCnllcywgYnV0IHRoYXQgd29uJ3Qg
Zmx5IGFueW1vcmUgZm9yIDExYXggcmF0ZXMKCi0tIApNYXhpbWUKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

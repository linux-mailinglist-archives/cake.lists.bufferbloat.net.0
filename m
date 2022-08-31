Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C61035A88D3
	for <lists+cake@lfdr.de>; Thu,  1 Sep 2022 00:13:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 915FA3CB45;
	Wed, 31 Aug 2022 18:13:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1661984008;
	bh=EqIv+HZ1p7289m+cIBGj8uB9y7QBH4DYt8oqbVyVOf8=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=VWYPz0HAUiprzX4+Ifi9mDYy87FIaTXcYanHaZHXLQxDdFQC5IJeA1+uu93FKGIKB
	 ytvCgL+qVzdwyUUd9wBwv9hdBoM/RBtVqmoY5dMqYBeEC2GhQGQGU0SpRFYUvwUzbw
	 kPCgHtxV0fBZ5XzwKE4+rGk386uXZBmMAGX4BoxnClJJhMP6E+NmygzVMOBfGki1w5
	 s5UFOccuiOVzuA9TBg3rk2p4HSnir8Xv2WmUSyH1cFxsQOIcvZBYeIUJ6PCaoJqFvD
	 d/ipbZP08ZBbyIOqx29Ev2PY3ikqGrd0xJbUg8EZYB08hb53xv/jaZpuyZH5t2U2S1
	 HarlktQ53Z8wA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D15D73B2A4
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 18:13:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1661984004; bh=J9smbeqwF6HR5Ev13cYaGixwetsw3HqCQJoMKnNobPk=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=Yq0bCWf5x+zj9awb5k1GIpMVkIug1D1TLqlt5Dev8vwemjzHhVw9vpOHhhmBwfWlM
 zml4ovmXxk62T6QvcMzM4/x++m4o+9GK8G43Uzjl+8DgaP/545i6a34KbKjTmLc/fy
 AvV97PNhjpij/DVHZNeh0DnrbEkg1FQbHbybO8XdEi6/slDcRH3VyNBKgo6bNmYjRK
 I128pcpOd0jMNbm4NjY6XugFE7kHU7BDJcaJzsv2y2HMUHsSEF5UqlM+E5dQmQO3vB
 nPEpRdqTu7MUBfjQiKGrzVtoIdzikr9x1AlFdEW1eF3DNFYVxGhW+/AOVB9HmkAgJg
 OGctYF2ksL5fg==
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <166198321517.20200.12054704879498725145.git-patchwork-notify@kernel.org>
References: <20220831092103.442868-1-toke@toke.dk>
 <166198321517.20200.12054704879498725145.git-patchwork-notify@kernel.org>
Date: Thu, 01 Sep 2022 00:13:24 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87wnao2ha3.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net] sch_cake: Return __NET_XMIT_STOLEN when
 consuming enqueued skb
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 cake@lists.bufferbloat.net, edumazet@google.com, kuba@kernel.org,
 xiyou.wangcong@gmail.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

cGF0Y2h3b3JrLWJvdCtuZXRkZXZicGZAa2VybmVsLm9yZyB3cml0ZXM6Cgo+IEhlbGxvOgo+Cj4g
VGhpcyBwYXRjaCB3YXMgYXBwbGllZCB0byBuZXRkZXYvbmV0LmdpdCAobWFzdGVyKQo+IGJ5IEph
a3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+Ogo+Cj4gT24gV2VkLCAzMSBBdWcgMjAyMiAx
MToyMTowMyArMDIwMCB5b3Ugd3JvdGU6Cj4+IFdoZW4gdGhlIEdTTyBzcGxpdHRpbmcgZmVhdHVy
ZSBvZiBzY2hfY2FrZSBpcyBlbmFibGVkLCBHU08gc3VwZXJwYWNrZXRzCj4+IHdpbGwgYmUgYnJv
a2VuIHVwIGFuZCB0aGUgcmVzdWx0aW5nIHNlZ21lbnRzIGVucXVldWVkIGluIHBsYWNlIG9mIHRo
ZQo+PiBvcmlnaW5hbCBza2IuIEluIHRoaXMgY2FzZSwgQ0FLRSBjYWxscyBjb25zdW1lX3NrYigp
IG9uIHRoZSBvcmlnaW5hbCBza2IsCj4+IGJ1dCBzdGlsbCByZXR1cm5zIE5FVF9YTUlUX1NVQ0NF
U1MuIFRoaXMgY2FuIGNvbmZ1c2UgcGFyZW50IHFkaXNjcyBpbnRvCj4+IGFzc3VtaW5nIHRoZSBv
cmlnaW5hbCBza2Igc3RpbGwgZXhpc3RzLCB3aGVuIGl0IHJlYWxseSBoYXMgYmVlbiBmcmVlZC4g
Rml4Cj4+IHRoaXMgYnkgYWRkaW5nIHRoZSBfX05FVF9YTUlUX1NUT0xFTiBmbGFnIHRvIHRoZSBy
ZXR1cm4gdmFsdWUgaW4gdGhpcyBjYXNlLgo+PiAKPj4gWy4uLl0KPgo+IEhlcmUgaXMgdGhlIHN1
bW1hcnkgd2l0aCBsaW5rczoKPiAgIC0gW25ldF0gc2NoX2Nha2U6IFJldHVybiBfX05FVF9YTUlU
X1NUT0xFTiB3aGVuIGNvbnN1bWluZyBlbnF1ZXVlZCBza2IKPiAgICAgaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9uZXRkZXYvbmV0L2MvOTBmYWJhZThhMmMyCgpBaCwgY3Jvc3NlZCBzdHJlYW1zIChq
dXN0IHNlbnQgdjJbMF0pLgoKSG1tLCBva2F5LCBzbyBhcyBub3RlZCBpbiB0aGUgY2hhbmdlbG9n
IHRvIHYyLCBqdXN0IHRoaXMgcGF0Y2ggd2lsbApicmVhayBodGIrY2FrZSAoYmVjYXVzZSBodGIg
d2lsbCBub3cgc2tpcCBodGJfYWN0aXZhdGUoKSk7IGRvIHlvdSBwcmVmZXIKdGhhdCBJIHNlbmQg
YSBmb2xsb3ctdXAgdG8gZml4IEhUQiBpbiB0aGlzIG1vZGUsIG9yIHRvIHJldmVydCB0aGlzIGFu
ZAphcHBseSB0aGUgZml4IHRvIHNmYiBpbiB2MiBpbnN0ZWFkPwoKLVRva2UKCgpbMF0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIyMDgzMTIxNTIxOS40OTk1NjMtMS10b2tlQHRva2UuZGsK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

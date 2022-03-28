Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 769064E9B48
	for <lists+cake@lfdr.de>; Mon, 28 Mar 2022 17:43:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D33663CB38;
	Mon, 28 Mar 2022 11:43:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1648482229;
	bh=NGAEFhweD4qYHRiHEc05pJZmtnrFrefmBp9FsfTPp+M=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=nb5G+NlUjeGm9Fvl++AeBCDH3F94//XjohrEOgkB/nzFjbEswqROkEy5tpDLyqq3W
	 04ht8+JmP19N8kqL9u8ffgXD3Csf9xtOKOM43iFD12NECuepHO7kb2Fc0BlFwRPKui
	 pSr1SJeAgcKHHOqhgJWwEBKSQ0HN13x2PttnyEcPyMOBVeWVWQ6QR72HG7cGCS9CbW
	 zGRVeBl710gWkH8VIfR0gKJLN0Kw6Kf8PI/herYawz74l3oGVLy74/CkCI0SjRDdVd
	 iijlPgj07Yl9FthuEbuFYX1EeZDkrUwkGO1Z82QR1ebCAIfhrGdpD9qHDNPSDGBMGX
	 0WfVneFMMl9AA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 23EB53B2A4
 for <cake@lists.bufferbloat.net>; Mon, 28 Mar 2022 11:43:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1648482226; bh=JCpqMHJ6otYgfj2zSfXB9RBHyVtJRWFIKxZQ4Fk3YvI=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=XgTSl9cvKEL5rwjrGQY4S32YWBWp8Iqjd/z/0ehjHwdD2AxisgQxeITwsWiX+I/4Z
 zL2PJtSiqPD/ituh8X/SnMhDZHiGha6c3ha9J9fMV4cLXp+Z/RATrWRn/LhB7Agcjm
 qGW4Fi5WJjAPi9Ah9zz1ZQHuwYuwnNwtmcQG62l4a8yg8AkN4sql3AdUAFUowCQ60F
 b39Zg2FDEZffGWiqyGui3JKNcXVKAVmFoMzhn7A9zRrN9wxZeg2mCWgyzJjWIRJZaT
 ayyw6GR9BZsouydytE7ZNruFHXfvbcSr+KqvsvEMOhIStdD1sPN0DmPiDGmdxiBpNb
 VXJLG47mw36rw==
To: Christophe Leroy <christophe.leroy@csgroup.eu>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jamal Hadi Salim
 <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko
 <jiri@resnulli.us>, Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <356a242a964fabbdf876a18c7640eb6ead6d0e6b.1648468695.git.christophe.leroy@csgroup.eu>
References: <356a242a964fabbdf876a18c7640eb6ead6d0e6b.1648468695.git.christophe.leroy@csgroup.eu>
Date: Mon, 28 Mar 2022 17:43:46 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87bkxq5bgt.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next] sch_cake: Take into account guideline
 DEF/DGSIC/36 from French Administration
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christophe Leroy <christophe.leroy@csgroup.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Q2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBjc2dyb3VwLmV1PiB3cml0ZXM6Cgo+
IEZyZW5jaCBBZG1pbmlzdHJhdGlvbiBoYXMgd3JpdHRlbiBhIGd1aWRlbGluZSB0aGF0IGRlZmlu
ZXMgYWRkaXRpb25hbAo+IERTQ1AgdmFsdWVzIGZvciB1c2UgaW4gaXRzIG5ldHdvcmtzLgoKSHVo
LCB0aGF0J3MgaW50ZXJlc3RpbmchCgo+IEFkZCBuZXcgQ0FLRSBkaWZmc2VydiB0YWJsZXMgdG8g
dGFrZSB0aG9zZSBuZXcgdmFsdWVzIGludG8gYWNjb3VudAo+IGFuZCBhZGQgQ09ORklHX05FVF9T
Q0hfQ0FLRV9ER1NJQyB0byBzZWxlY3QgdGhvc2UgdGFibGVzIGluc3RlYWQgb2YKPiB0aGUgZGVm
YXVsdCBvbmVzLgoKLi4uaG93ZXZlciBJIGRvbid0IHRoaW5rIHdlIHNob3VsZCBiZSBpbmNsdWRp
bmcgc29tZXRoaW5nIHRoaXMKc3BlY2lhbC1wdXJwb3NlIGludG8gdGhlIHFkaXNjIGtlcm5lbCBj
b2RlLCBhbmQgY2VydGFpbmx5IHdlIHNob3VsZG4ndApoYXZlIGEgY29uZmlnIG9wdGlvbiB0aGF0
IGNoYW5nZXMgdGhlIG1lYW5pbmcgb2YgdGhlIGV4aXN0aW5nIGRpZmZzZXJ2CmtleXdvcmRzIQoK
UmF0aGVyLCB0aGlzIGlzIHNvbWV0aGluZyB0aGF0IGlzIGJlc3Qgc3BlY2lmaWVkIGZyb20gdXNl
cnNwYWNlOyBhbmQgaW4KZmFjdCBDYWtlIGFscmVhZHkgaGFzIG5vIGxlc3MgdGhhbiB0d28gZGlm
ZmVyZW50IHdheXMgdG8gZG8gdGhpczogdGhlCidmd21hcmsnIG9wdGlvbiwgYW5kIHNldHRpbmcg
dGhlIHNrYi0+cHJpb3JpdHkgZmllbGQuIEhhdmUgeW91IHRyaWVkCnVzaW5nIHRob3NlPwoKLVRv
a2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

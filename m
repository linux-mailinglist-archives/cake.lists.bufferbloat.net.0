Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 929533E0008
	for <lists+cake@lfdr.de>; Wed,  4 Aug 2021 13:14:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 37CDE3CB40;
	Wed,  4 Aug 2021 07:14:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628075678;
	bh=Jo/0elpEcQ8dHetOnMUpC1u7T8LVILQmRAhAQlumWHA=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=OWdQdWGnOq/Jy1TzZe9RX1zLbfD5xfthaEIbfrgEEhurVCKD1g82BCLzpLAF8u9UM
	 84UUH806yw85HWvPk43tf3znU81foc8laRQf1sBrxB8PGyNPvzqzMSPYexLekn0M4D
	 BnPDJEG9aIgIhAhu/r8AzKL00P0sN5QZqnvFeO9MmIoeC/+SMN/ey/tNT/7HY38AJU
	 a067R695Y8D2/oAgol8sG0cZb3CvaaIDkjDh6N/7kemso59xJ7vRLOV0k7Lqsx0evL
	 p8/tZPUzIB2zrYRC4PCaShbcmSsNQzUaOfCpFaT7DBIiyJgKqmTEbsIye7RjBE8lTM
	 p5D9ukMI+PRvw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D7D223CB37
 for <cake@lists.bufferbloat.net>; Wed,  4 Aug 2021 07:14:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1628075672; bh=8gVXQTLdWKFdUlDsS0Mq/oGrOJZmPoeV5nSVtP5qkV0=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=TJUjksVkjdE2DfQxo80qY87LQC6HiH3z9MBuOTE85m7qLPtHQJiPzdqvbo9AfZhUz
 SBcYKx/8w9IeABU8fxj8Hwoq5R3EoggfxLIFipfl4ieL+vNti2IIpMEisVXXdvpKSt
 U6baeCFY0AMoSmQKBooBdqYXLOWrvXS5wQ1BXim6Ec37oRwJzY3UZUuG6jtvpag+0a
 eLIB0O8J9++vtuZi/H6UrWn6yhelpv7PUKM2XASUhlI5Y88zl8zrhgfbPbmQtDm6Fu
 i0kOaZH0BQJTvdfysjLzLuktX6ZAghhrVI4ogoA8jGq8COo9Tmt3e143V+LVzw7qFd
 mAlFloQvvtToQ==
To: Pete Heist <pete@heistp.net>, Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
Date: Wed, 04 Aug 2021 13:14:30 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87r1f95und.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] cake srchost/dsthost stopped working?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

UGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PiB3cml0ZXM6Cgo+IE9uZSBtb3JlIHRpcCwgcmV2
ZXJ0aW5nIHRoaXMgY29tbWl0IHNlZW1zIHRvIGZpeCBpdDoKPgo+IGh0dHBzOi8vZ2l0aHViLmNv
bS90b3J2YWxkcy9saW51eC9jb21taXQvYjBjMTllZDYwODhhYjQxZGQyYTcyN2I2MDU5NGI3Mjk3
YzE1ZDZjZQoKQWgsIEkgdGhpbmsgSSBzZWUgd2hhdCB0aGUgcHJvYmxlbSBpczsgY291bGQgeW91
IHBsZWFzZSB0cnkgdGhlIHBhdGNoCmJlbG93PwoKLVRva2UKCmRpZmYgLS1naXQgYS9uZXQvc2No
ZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IDk1MTU0Mjg0M2NhYi4u
YTgzYzRkNDMyNmRhIDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQv
c2NoZWQvc2NoX2Nha2UuYwpAQCAtNzIwLDcgKzcyMCw3IEBAIHN0YXRpYyB1MzIgY2FrZV9oYXNo
KHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpxLCBjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAogc2tp
cF9oYXNoOgogICAgICAgIGlmIChmbG93X292ZXJyaWRlKQogICAgICAgICAgICAgICAgZmxvd19o
YXNoID0gZmxvd19vdmVycmlkZSAtIDE7Ci0gICAgICAgZWxzZSBpZiAodXNlX3NrYmhhc2gpCisg
ICAgICAgZWxzZSBpZiAodXNlX3NrYmhhc2ggJiYgZmxvd19tb2RlICYgQ0FLRV9GTE9XX0ZMT1dT
KQogICAgICAgICAgICAgICAgZmxvd19oYXNoID0gc2tiLT5oYXNoOwogICAgICAgIGlmIChob3N0
X292ZXJyaWRlKSB7CiAgICAgICAgICAgICAgICBkc3Rob3N0X2hhc2ggPSBob3N0X292ZXJyaWRl
IC0gMTsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

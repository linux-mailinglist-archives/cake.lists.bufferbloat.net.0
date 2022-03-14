Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 008574D8F69
	for <lists+cake@lfdr.de>; Mon, 14 Mar 2022 23:18:29 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9D0DF3CB38;
	Mon, 14 Mar 2022 18:18:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1647296308;
	bh=bwwBdSd17R0hm4YepdNWxFY9BlQJY8rWbgGMrJu8k2s=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=EGP4D5gMFJYW2VGUNI7b+zfF5yoyRb4QMNA/bWTl+U8px5kyd/5kdmIFHS964Y6mi
	 M64gg/uIo85w0H4chmnvbEQQI7WqOlwcFB7krdtkZ0QrFLfP3UFDHf5ZvNLHYQPTUk
	 dHo2L2MmCurDFPPJBWK8TpVB/WCh82iG9K/HQgxynnpK+4wlCgOFmLv7iURbYKi/yX
	 Xo9sA72ZbsNqyTFMDk51wm+Lg6QdUTqGxqF0taDCBpnC/nRsNSsQqvaIk1teuUoLR3
	 f36dkoyhgzQ16ijxI2RW1UfMFvaPQIY+RaEJnOfgulU+BsyN90uzVe7++XTIr9y/t0
	 Cv0KiuKhozU+Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3099F3B29E
 for <cake@lists.bufferbloat.net>; Mon, 14 Mar 2022 18:18:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1647296305; bh=QzxXXqJAjhQ20YMTDAFlXeJdAlKAHPRs4jQNh1F5XTo=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=n1OtEQPnZTC/SJsMaszCBCeEn6/qpupUaVyTOqyS02B98uveb5ESaGHEZjvlxRT6B
 cmVNzv4mVZWiuCIYX5Ew6Om3O0cDZ47gdhio4Q5fCA1b18XJb46Injq0k8CzhKHCNa
 5VGf3NiP7FfXhNEXuQ2gHxjAbopjY88WLChvOywyIcF3Y4BHqssyCuj1aJQMrMU120
 fLPYGBnToR7XRnSuKcxzg6XzzkqDxNi0d9y+2oCXQCWFFTCcudub7141ChybeOcCRH
 snYGyHmMaMFad+TP2LEsP38jhtd3Dn6p3zDGyIrLXRhOSq7OsPYkuPiFJWFx52ue/V
 SNAgxHqSG+Omg==
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <CAA93jw7OFa9Wzq9Gx1rZv2Dpe0S61bymr8xve-KzeW7RTZRBiQ@mail.gmail.com>
References: <CAA93jw7OFa9Wzq9Gx1rZv2Dpe0S61bymr8xve-KzeW7RTZRBiQ@mail.gmail.com>
Date: Mon, 14 Mar 2022 23:18:24 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87mthsuqj3.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] libreqos adds pping integration
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

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9yY2hhYy9MaWJyZVFvUwoKQ29vbCEgV291bGQgYmUgYW4gZXhjZWxsZW50IHVzZSBjYXNl
IGZvciB0aGUgQlBGLWJhc2VkIHBwaW5nICh0byBhdm9pZAp0aGUgb3ZlcmhlYWQgb2YgbGlicGNh
cCkuLi4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

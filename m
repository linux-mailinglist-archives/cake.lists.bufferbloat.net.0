Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBCA1C1A64
	for <lists+cake@lfdr.de>; Fri,  1 May 2020 18:12:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E81233CB39;
	Fri,  1 May 2020 12:12:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588349523;
	bh=9VqVN7VDCJc0jmz52qWlHN29C+mHDnJwCPg3qULFOO4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RSOStq6UakyStal8gfbQw7W9WRweZLhPpG//xnyFbLrcWsSsDTU5LrDqGMxrLuu/9
	 Q+BnDfzq+acljkipy0EJQcs/Z9iaygUhGJwBNt3bWRlcqzrSgqG+0+ncYr/sU2xqEs
	 J5TibDZJ4mUMxEHavpax9ngSdWCS9++hEnNYeX6xKB6cyHF9QidFyrNRBAqNKsR3F/
	 03B/YQ+k3g5HO37TVujV5mTd2+rOU3No/XM/ecQbg8XdvQljA+fedVRWRY0oJ3LnCF
	 Qqh9SGcbzYyW277TBRpHgXr5H7uZ6edlCM3AbYTt3VNYQwypWzeQekJnppzCPw4TaN
	 d+R62QC07IlkQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D8F503CB35;
 Fri,  1 May 2020 12:12:02 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id f3so5339813ioj.1;
 Fri, 01 May 2020 09:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=EyPaqJUUlkY2M5EThddPBR4076+jqUqLCuNeN+fqrks=;
 b=naTBVMgdE396nqzFkCn0G2fu4aBEj7ZKT4m9OjKuMoEQeUqFeuz4Sa/63Fvmb1sAB2
 1Ua7WWBDuRZ70NNR8ML8n+YcPKmOEsvOrt6g8ZB89MNsMxOPphQOqrxbW5HFxtA6nNz4
 5NS3o+kggurkDkMg+qunsvRmmamS9C03QR5Ty4gf/x38eijwyqp4rVhVq/kZw3iidDzP
 TRwcFvOyvJ7uBcO4MzheHtnLbU1oYGtO2+OqHAaDdze2vn2pP0eeJTEv1IUlYQb2My1D
 1r6KpMcHl3H8Pcs3vbuVsPvIKoXCPsSXMyZaPXPexCWecO3PwS+HplHMnPHEd3JsmxT6
 sjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=EyPaqJUUlkY2M5EThddPBR4076+jqUqLCuNeN+fqrks=;
 b=IwYYNGBxlGlcjvEyFheoGTwS7bBJ2idkNqdBvCRtJnbEucC3epMs2kYTpxb4NCLuCv
 VsNDcvlBBNBl4wLgOypDCVoW1Cf+uRC7/rcD10V4G0uQYJfGu9q+igduvWE9AeoSh57y
 R0an4G9UGz8LWObXGeuLkoqrxh3gG6R6clLHMc04Swm4R9P+j29ZOHEZIbBcUVB2tnKN
 UlJG/9YvRMtMsvwLoMlNux5PMca4bj77kw2l9cwDDJFPQaSTPctPuLPpT3efmp0faX16
 v6QzV+DyDlQUqIFfpPzYIriQtJ6OD7dGGEni5DWPstD6UsmAS6KifPDvighfMkOMIvO/
 MNUg==
X-Gm-Message-State: AGi0PubKNviu5dtYakmev2tlLxW3Fu7W8EGzekYiyOipCKjxSFisfu9s
 016QNBZMmxgFmI2UqUMNY9+4GAx/k2SqWv9wyNLjJCfT
X-Google-Smtp-Source: APiQypIwnHFCcZIJ4g3Rtxyo3/GkMSOfNvEc0oI6HNE6HCyE8LOkw4PrSC1EVugiuWBM3V1h4ZJyw2m42VH0TuUJHhY=
X-Received: by 2002:a6b:b8d6:: with SMTP id i205mr4652947iof.123.1588349521954; 
 Fri, 01 May 2020 09:12:01 -0700 (PDT)
MIME-Version: 1.0
References: <87368jc3df.wl-jch@irif.fr>
In-Reply-To: <87368jc3df.wl-jch@irif.fr>
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 1 May 2020 09:11:50 -0700
Message-ID: <CAA93jw4c956EVgXo2G+PSKARhcbiSvG9LFEnMzMfhxAnh6=Efw@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Subject: [Cake] Fwd: [Babel-users] OT: Centralised WebRTC server available
	for testing
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBraW5kIG9mIGhhdmUgYW4gdWx0ZXJpb3IgbW90aXZlIGZvciB0cmFja2luZyB0aGlzIHdvcmss
IGFzIEEpIHRoZQpjb2RlYmFzZSBpcyBuZXcsIHNtYWxsIGFuZCBub3QgY3J1ZnR5IGFuZCBCKSBq
dWxpdXN6CnNvbWV0aW1lcyBib3RoZXJzIHRvIGFuc3dlciBteSBlbWFpbHMsIGFuZCBDKSBJIGRv
bid0IHJlYWxseSBoYXZlIGEKZ3JpcCBvbiB0aGUgc3RhdGUgb2Ygd2VicnRjIGNvbmdlc3Rpb24g
Y29udHJvbC4KCkkgdXNlZCB0byByZWFsbHkgZW5qb3kgZGlua2luZyB3aXRoIHZpZGVvY29uZmVy
ZW5jaW5nIHRvb2xzLiBJJ2xsIGJlCmdldHRpbmcgdGhpcyBzZXJ2ZXIgdXAgc29tZXdoZXJlLCBi
eSBhbmQgYnkuCgotLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLQpGcm9tOiBK
dWxpdXN6IENocm9ib2N6ZWsgPGpjaEBpcmlmLmZyPgpEYXRlOiBGcmksIE1heSAxLCAyMDIwIGF0
IDQ6MTYgQU0KU3ViamVjdDogW0JhYmVsLXVzZXJzXSBPVDogQ2VudHJhbGlzZWQgV2ViUlRDIHNl
cnZlciBhdmFpbGFibGUgZm9yIHRlc3RpbmcKVG86IGJhYmVsLXVzZXJzIDxiYWJlbC11c2Vyc0Bs
aXN0cy5hbGlvdGguZGViaWFuLm9yZz4KCgpIaSwgYW5kIHNvcnJ5IGZvciBhYnVzaW5nIHRoaXMg
bGlzdCBmb3IgYW5vdGhlciBvZmYtdG9waWMgcG9zdC4KClNvbWUgb2YgeW91IG1heSByZW1lbWJl
ciB0aGUgcGVlci10by1wZWVyIFdlYlJUQyBzZXJ2ZXIgSSBhZHZlcnRpc2VkIGEgZmV3CndlZWtz
IGFnby4gIFdoaWxlIGl0IGlzIHN0aWxsIHdoYXQgSSByZWNvbW1lbmQgZm9yIG9uZS1vbi1vbmUg
Y29udmVyc2F0aW9ucwoocGVlci10by1wZWVyIGlzIGdvb2QpLCBJJ3ZlIGJlZW4gd29ya2luZyBv
biBhIGNlbnRyYWxpc2VkIHNvbHV0aW9uIGZvcgpsYXJnZXIgZ3JvdXBzIG9mIHBlb3BsZS4KCldl
J3ZlIGp1c3QgdGVzdGVkIHllc3RlcmRheSBhIG1lZXRpbmcgd2l0aCAxMiBwYXJ0aWNpcGFudHMg
KDEyIGluY29taW5nCmFuZCAxMzIgb3V0Z29pbmcgZmxvd3MpLCBhbmQgaXQgaGVsZC4gIFNvIEkg
Z3Vlc3MgSSBtaWdodCBhcyB3ZWxsIG1ha2UgaXQKYXZhaWxhYmxlLiAgVGhlIGRlbW8gc2VydmVy
IGlzIG9uCgogIGh0dHBzOi8vdnBzLTYzYzg3NDg5LnZwcy5vdmgubmV0Ojg0NDMvCgpJdCBpcyBk
ZXNjcmliZWQgb24KCiAgaHR0cHM6Ly93d3cuaXJpZi5mci9+amNoL3NvZnR3YXJlL3NmdS8KClRo
ZSBjb2RlIGlzIGF2YWlsYWJsZSwgYW5kIHdpbGwgYmUgbGljZW5zZWQgdW5kZXIgYSBGcmVlIGxp
Y2Vuc2Ugd2hlbiBJJ20KcmVhZHkuCgotLSBKdWxpdXN6CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCYWJlbC11c2VycyBtYWlsaW5nIGxpc3QKQmFiZWwt
dXNlcnNAYWxpb3RoLWxpc3RzLmRlYmlhbi5uZXQKaHR0cHM6Ly9hbGlvdGgtbGlzdHMuZGViaWFu
Lm5ldC9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vYmFiZWwtdXNlcnMKCgotLSAKTWFrZSBNdXNp
YywgTm90IFdhcgoKRGF2ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWts
aWJyZS5jb20KVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

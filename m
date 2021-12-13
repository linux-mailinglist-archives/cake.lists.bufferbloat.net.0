Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A99574730E2
	for <lists+cake@lfdr.de>; Mon, 13 Dec 2021 16:49:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7FB043CB39;
	Mon, 13 Dec 2021 10:49:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639410569;
	bh=RObj51Axqb0s4BtJoW1EL/wn7cUrs1uEebfC7iBckZo=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h2Q891Mf+sTsYIdUWecb+WQQQHUd11puUgU4DAh2SPBfQsHZzmxQ2oZ2YTyjAdaiu
	 HH7oEYQhpxliIUnILJYcJv091k6cv3sRXcWVFi9ylahJzvZcnjPHgm/brc1aF4U0fN
	 L26RVM+K0y/3saGdx/N7gy+tTLCTEwRXItHMbkLlvp1/+mBUMSK7v3gSuZBSf5ojSe
	 yB3jr0FpdbVN2rfwVU4r7wiIfwp1+Jtx3fwBHoY63aabo/0Vn+GjRsgHxBt4VxuAij
	 GVfN01E0rJuttrbn3QXQcXB2sM+a2A6cxD7KC80rmRW5fA1zTH4Dr+hWEHUE6VKy1g
	 xVQ1C3KVLgILw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 359173B29E
 for <cake@lists.bufferbloat.net>; Mon, 13 Dec 2021 10:49:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1639410564;
 bh=c4IRwp8jsH2qmHN/jJrz6FMOaEh7XG6TzAfR668Mju8=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=VsZ39YK8/8MP/RsZpB+mQ5dfFCUmSenIoVcYpxdjgdGSq8JxEwn9HQRQKf2cLFVgq
 18FNCWeGj5+mSudmHgQbzm7LBC8hNONTJ1HDecvN6q+a7j4VOQh4bv8qHQHlHAJfku
 P4mMOwBgd5BoMeIRHyw+TLteXN+uYZEggUYnfJ0g=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mt79F-1mhBRC1gfx-00tQoB; Mon, 13
 Dec 2021 16:49:23 +0100
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <CAA93jw4HeUJXskAbxaS8=t1eSJZ+nASFAst_eeN-xFp1i++4SQ@mail.gmail.com>
Date: Mon, 13 Dec 2021 16:49:22 +0100
Message-Id: <9939A1DB-DEC4-4C1D-9BD8-5FF7D41933EF@gmx.de>
References: <CAA93jw4HeUJXskAbxaS8=t1eSJZ+nASFAst_eeN-xFp1i++4SQ@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Provags-ID: V03:K1:aXVvz3+uOxI4xcfS6GM3AIEuzkBvD72EhsOHNBJKsoRTQ261JAr
 xHUJ5KKv3mUZ0uiQvmlu5KhefXjXEO8xcrp3LgOhtbPIQpHY8ekDluYygZyt6CLmmzng4CF
 eU2lz4aG2NJwWaHCFWqE7rZpRe2TTnTZAhM2ufS4u28RKR7KZ7OUm0l4ZWDYvHL+EzCWhaY
 mOecM3qCQylffevQfCh/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GfhMRO5soWQ=:COHa3mvw3xCn3A0E1wXobV
 72LLDBHWLAjXpl3WfjdKqWFyLY6uyp9/quDaqDhCvgQwZWGl+ogk3WJXYs+ynqrYRKKcMuHhT
 2KGU7HuHLGjmQLO/TrYGuT+eSuH3VwyJSdZeoSpuIWTiO/EPhGWont1FhPjbZnjubvptKOjbK
 X9+AHze4P2GPytEP0a4qqBkUB1Qcq/I7WQaieOJwUumRT+iukFYV8mYbou4hoTxAlctoDH8Ul
 8U5N5sVmTYgTFUd+nCfzTegBKBK9zt8J/EiVOVX/9qLZ7W5O1x9AU2kDcC6Zlvt6d3X+JoT7N
 hFakbQgYJiK3VLEp3M1Q9YnVUHYur1DRJhm4J8gK6KSgZGfhJIM1NNCSprQy/64roW8+Tfq/I
 CRltXbn3On3MHpINHYuuMD7mOmQ/KXjAkcVwJmcShLUV0RACO7oaM0G/3lP5gLS11W2N6Qwna
 D4M5ZGsq8bqx49z5zznKTdBpZHY93qCK2VWkZjuqo3HARG5iWIbwUilNbTalPglFQd53dk2Fv
 +mTVz16BN+b+MzPmGzMlAKb5XbiM7HVGWO9x+C1KxrzOhOLOuDigMFWgECmAUQnqfQ05vLPZi
 l1r0mkwVpk+fOEa2sv6Py7wsAs6TCfd1wcrG0WpDHnUAFmf0rwTdVU44OJoMvGDui3YWmsU9D
 ZOZXuW9lHPgFYUFJzsdHQ1SJkkA3qahr/xKVWi7M2hkpJg2F2dxWUB0JoGzvYyehWU5FA0sRv
 ELoNOzBJdvzB8kmE5cJZ+JWXzFNJAkws5vcZ6AMYKaLGhwMwVShz9TrpOeO+u7bnhXAZBR2iL
 I+lgJhc1xRzCuwgqw1Mw5wM4AblzmZdcw2ttRR+LxnyMNFI+tA=
Subject: Re: [Cake] arl qdisc looks clever
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

SGkgRGF2ZSAKCiIKClRoZSBsYXRlbmN5IG1lYXN1cmVtZW50IGNvbWUgZnJvbSB0d28gc291cmNl
czogb25lIGlzIHRoZSBSVFQgZnJvbSBrZXJuZWzigJlzCiAqIFRDUC9JUCBzdGFja3MsIGFub3Ro
ZXIgaXMgdGhlIGhhbGYgcGF0aCBSVFQgbWVhc3VyZWQgZnJvbSByb3V0ZWQgVENQCiAqIHN0cmVh
bXMuICIKCldoYXQgaWYgYSByb3V0ZXIgdGVybWluYXRlcyBhbG1vc3Qgbm8gbG9jYWwgdHJhZmZp
YyBhbmQgbW9zdGx5IGhhbmRsZXMgc2F5IHdpcmVndWFyZCBWUE4gdHJhZmZpYyBpbiBVRFA/CgpP
dGhlciB0aGFuIHRoYXQgSSByZWFsbHkgYXBwcmVjaWF0ZSB0aGF0IHRoaXMgc2VlbXMgdG8gdXNl
IHRoZSBzYW1lIGlkZWFzIHRoYXQgd2UgY3VycmVudGx5IHBsYXkgd2l0aCBvdmVyIGluIHRoZSBv
cGVud3J0IGZvcnVtLi4uIEdyZWF0IHRoYXQgdGhpcyBpcyBhZGRpdGlvbmFsIHByaW9yIGFydCAo
c2ltaWxhciB0byBMRURCQVQpIHNvIHRoYXQgdGhlcmUgc2hvdWxkIGJlIG5vIGxlZ2FsIHVuLWRl
cHRoIHRvIGV4cGVjdC4KClJlZ2FyZHMKCVNlYmFzdGlhbgoKCgo+IE9uIERlYyAxMywgMjAyMSwg
YXQgMTY6NDIsIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4gaHR0
cHM6Ly9jaHJvbWl1bS5nb29nbGVzb3VyY2UuY29tL2Nocm9taXVtb3MvdGhpcmRfcGFydHkva2Vy
bmVsLysvcmVmcy9oZWFkcy9zdGFiaWxpemUtcXVpY2tmaXgtMTMzMTAuNzYuQi1jaHJvbWVvcy00
LjE0LWd3L25ldC9zY2hlZC9zY2hfYXJsLmMKPiAKPiAtLSAKPiBJIHRyaWVkIHRvIGJ1aWxkIGEg
YmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cj4gaHR0cHM6Ly93YXlmb3J3YXJkLmFyY2hpdmUu
b3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3JnCj4gCj4gRGF2ZSBUw6RodCBDRU8s
IFRla0xpYnJlLCBMTEMKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id E51C796DE9
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 01:50:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DDA3F3CB38;
	Tue, 20 Aug 2019 19:50:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566345052;
	bh=sv9MVN1U2/bcskL5gLf2Q7SQn27LiWG29KRtrO2+nsg=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V/XAF4fDBULv/OcC5gcUew+oSjw0r9u18FXn3b7H9ELXYx9m2nUOjenSo5Ke9iJ3v
	 r02+YWp+QqdWbRSROtHfIlxO3b1RzJMISohszkAXUYwb2rwHm49pLaNT8nUiUXz5zY
	 E2hx2PjGpW9TRWknuxxa1moEPweqHbu012HV3RVjABsX0v9msxBpq6g+ToDB5rx3kd
	 C1S+FIhgWgo9UyesxyRk2elKLn6vdgYFJa/mVS9mEq6BySJJefoWCiPqTXeKexPYsN
	 Q/3826lOxz/V8s2xpwM1TbfVXKQaPQQi27B3DErlEtfXMfHbmIfr/PemKKiyP7asMb
	 A5fKoYyaeX5CQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.taht.net (mail.taht.net
 [IPv6:2a01:7e00::f03c:91ff:feae:7028])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 18B213B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 19:50:52 -0400 (EDT)
Received: from dancer.taht.net (c-73-162-29-198.hsd1.ca.comcast.net
 [73.162.29.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.taht.net (Postfix) with ESMTPSA id A8CA421425;
 Tue, 20 Aug 2019 23:50:50 +0000 (UTC)
From: Dave Taht <dave@taht.net>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <7165ee2c-df04-c7ab-ca5c-cdf5aa14ed54@newmedia-net.de>
Date: Tue, 20 Aug 2019 16:50:49 -0700
In-Reply-To: <7165ee2c-df04-c7ab-ca5c-cdf5aa14ed54@newmedia-net.de> (Sebastian
 Gottschall's message of "Tue, 20 Aug 2019 20:18:17 +0200")
Message-ID: <87k1b7flba.fsf@taht.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Subject: Re: [Cake] cake in dd-wrt
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

U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKCj4gdG8gbWFrZSBpdCBzaG9ydC4gaSBhZGRlZCBub3cgZnFfY29kZWxfZmFzdCB0byBkZC13
cnQgdG9vLgoKVGhhbmsgeW91LiBJIG5vdGUgdGhhdCBpdCByZXF1aXJlcyBhIHBhdGNoIHRoYXQg
aXMgaW4gdGMtYWR2LgoKKiBGaXhlZCAoMTAyNCkgbnVtYmVyIG9mIHF1ZXVlcwoqIE5PIHRjIGZp
bHRlciBzdXBwb3J0CiogY2xvc2VyIHRvIE8oMSkgYnVsayBkcm9wcGVyCiogbGVzcyBkZXRlcm1p
bmlzdGljIGJ1bGsgZHJvcAoqIGdzbyBzcGxpdHRpbmcgd2l0aCB2ZXJ5IHByZWxpbWluYXJ5IFND
RSBzdXBwb3J0CiogdG9uIG9mIHN0YXRzIHJpcHBlZCBvdXQKCkFzIHRvIHdoZXRoZXIgb3Igbm90
IGFueSBvZiB0aGVzZSBhcmUgImtpbGxlciIgZmVhdHVyZXMsIEkgZG9uJ3Qga25vdy4gSQpjZXJ0
YWlubHkgd291bGRuJ3Qgc2hpcCBpdCBhcyBhIGJ1aWx0LWluIHBhY2thZ2UgaW4gYSBmaW5hbCBy
ZWxlYXNlIC0KYnV0IEkgd291bGQgY2VydGFpbmx5IGxvdmUgdG8ga25vdyBpZiBpdCBtYWRlIGEg
ZGlmZmVyZW5jZSBpbiBjcHUgdXNlIG9uCmxvd2VyIGVuZCBwbGF0Zm9ybXMgb24geW91ciB1c2Vy
YmFzZS4KCk1heWJlIHdpdGggc29tZSBmZWVkYmFjayBmcm9tIHRoZSBmaWVsZCBJJ2QgYmUgaW5z
cGlyZWQgdG8gZG8gbW9yZSB3aXRoCml0LgoKPgo+IEFtIDE4LjA4LjIwMTkgdW0gMTg6MzMgc2No
cmllYiBEYXZlIFRhaHQ6Cj4+IGh0dHBzOi8vc3ZuLmRkLXdydC5jb20vdGlja2V0LzU3OTYKPj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IENha2Ug
bWFpbGluZyBsaXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

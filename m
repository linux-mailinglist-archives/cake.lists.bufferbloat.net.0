Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B7A4020C8
	for <lists+cake@lfdr.de>; Mon,  6 Sep 2021 22:50:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F1D343CB46;
	Mon,  6 Sep 2021 16:50:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1630961410;
	bh=en7j1fX6C8QSXVg+SYBcG5JG53Z5e75gF0qjcCaxpkU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TN4zvPD+qiHkRPAqjyRyXa0mHm2zQQ9fWMwSUtTPWAQ88m8p3oKlUzBkw6T07du2r
	 yENeqRyVB1RQRC4CVEfOAHTfm1bfHPkHTR2KsjVyo3AG/3mu6k+RmqRhp62eJg43yh
	 Wd7z0+PJ1+tFX+09OQR3EpbJ7w1ShcVUKiImUtFJDrtx/+baJ8uMWxqvK8VFKTA5QT
	 kqeitCUKUG3NtXmUptV/bG8Rx9GKqMOtuUuqT+nqvNvtz7qc00iN/RZxsLWTc4SFdD
	 cNH8VZIZsEocR23hbLAPNzUN69OYZ9IKv8Ax0o2tiardk/orJGvGqQeoWynLqwT1bD
	 HBx7lNFGYp5gg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from picard.linux.it (picard.linux.it [IPv6:2001:1418:10:5::2])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 12B353B29E
 for <cake@lists.bufferbloat.net>; Mon,  6 Sep 2021 16:50:08 -0400 (EDT)
Received: by picard.linux.it (Postfix, from userid 10)
 id 4D0C23C2493; Mon,  6 Sep 2021 22:50:06 +0200 (CEST)
Received: from hermione.lilliput.linux.it ([192.168.1.24]
 helo=hermione.sv.lnf.it) by eraldo.lilliput.linux.it with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <gaio@lilliput.linux.it>)
 id 1mNLYl-0004gp-Ds; Mon, 06 Sep 2021 22:49:43 +0200
Received: by hermione.sv.lnf.it (Postfix, from userid 1000)
 id 36BE2A00379; Mon,  6 Sep 2021 22:49:38 +0200 (CEST)
Date: Mon, 6 Sep 2021 22:49:38 +0200
From: Marco Gaiarin <gaio@lilliput.linux.it>
To: Sebastian Moeller <moeller0@gmx.de>
Message-ID: <20210906204938.GA30319@lilliput.linux.it>
References: <20210903135710.GH3638@sv.lnf.it>
 <CAA93jw7ArNURJ0HyiD-PFXF6LFGWjtxWbe1F30z4MVGSksuZSw@mail.gmail.com>
 <5228B44C-4CF3-44E3-B5AE-E7F6E22C1AB5@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5228B44C-4CF3-44E3-B5AE-E7F6E22C1AB5@gmx.de>
Organization: Casa Gaiarin
Subject: Re: [Cake] Cake: how know 'framing compensation'?
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
Cc: cake@lists.bufferbloat.net, Marco Gaiarin <gaio@sv.lnf.it>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TWFuZGkhIFNlYmFzdGlhbiBNb2VsbGVyCiAgSW4gY2hlbCBkaWAgc2kgZmF2ZWxhdmUuLi4KCj4g
Q3B1bGQgeW91IGVsYWJvcmF0ZSBhIGJpdCBvbiB5b3V1ciBhY2Nlc3MgbGluaywgcGxlYXNlPwo+
IEFyZSB5b3UgdXNpbmcgYSBEU0wgbW9kZW0gYW55d2hlcmUgYXQgYWxsIGFuZCB0aGVuIGEgd2ly
ZWxlc3MgbGluayB5b3Ugb3BlcmF0ZQo+IHlvdXJzZWxmIGJldHdlZW4gbW9kZW0gYW5kIHJvdXRl
cj8gSWYgdGhpcyBpcyB0cnVlLCBjYW4geW91IHNoYXJlIGluZm9ybWF0aW9uCj4gYWJvdXQgdGhl
IGRzbCBsaW5rLCBsaWtlIGl0cyB1cGxvYWQgYW5kIGRvd25sb2FkIHNwZWVkcz8KPiBPciBkb2Vz
IHlvdXIgSVNQIHN1cHBseSB5b3VyIGludGVybmV0IHZpYSBhIHdpcmVsZXNzIGxpbmsgZGlyZWN0
bHkgdG8geW91cgo+IHJvdXRlcj8KCkV4YWN0bHkuIE1pIHByb3ZpZGVyIChOR0ksIEVvbG8pIHBy
b3ZpZGUgbWUgYSBDUEUgY29ubmVjdGVkIHZpYSBhCndpcmVsZXNzIGxpbmsgdG8gdGhlIGJhc2Ug
c3RhdGlvbi4KCkkndmUgZGlyZWN0bHkgY29ubmVjdGVkIHRoZSBDUEUgdG8gbXkgbGludXggYm94
LCBhbmQgaSd2ZSBzZXR1cCB0aGUKaW50ZXJmYWNlL3B1YmxpYyBpcCBhZGRyZXNzIHZpYSBQUFBv
RS4KCgpNb3JlIGNsZWFuIG5vdz8gVGhhbmtzLgoKCj4+PiAgICAgdGhlIGNha2UgbWFpbGluZyBs
aXN0IGNvbnRhaW5zIGFuc3dlcnMgdG8geW91ciBxdWVzdGlvbnMuCgpTdWJzY3JpYmVkIQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

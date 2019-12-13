Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 171C211E520
	for <lists+cake@lfdr.de>; Fri, 13 Dec 2019 15:02:26 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E4F4E3CB4C;
	Fri, 13 Dec 2019 09:02:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576245744;
	bh=WWYXxXWOoiaYtNKASmyJjTEt0tfk7x95H9JZjeUadvY=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XOt2Dh8uAdGMjhx7UxgR2aP5SzNBNS61zE+/S93Fv4LbCXANjvKp36lkwphoJ2Wrv
	 iRhuOcPPq1CiGIOwMzuoHfEApOyCCteIWTqGiEHRBpK5o7GRkpapf0TFRmxQdN8k4J
	 R0AOWvKuA7t1wMPP1v8iDBhoh0TPm9MFRr+eqzX10+KSl3KyTapTjnSfb+84CIIXJz
	 U8s6znFqmbrejCD5pdkQpMz4/74XlN6Yq8kfnDchHRG+9pYEgRGMkIrY6sAPcCHpaV
	 OVNcFvaznyeeSguAWZCSc+HlI6TLKdYiGFddJU0LuezW+YBrseGiBZYqyaCiIvYgnw
	 WZ0JR4BAVU0IQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 18E903CB47
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 09:02:23 -0500 (EST)
Received: by mail-lf1-x142.google.com with SMTP id f15so2017414lfl.13
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 06:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=pLc1jQlEKheICgeOSU9VB7wm/Oqb5tm2L+1FZGaf4ts=;
 b=HszVTQ2pG44bN0JLbd0qM8xn0j0dSwFivX/xjy/Ckb7DEmFCEkhpUTBlrE6XKCWwqU
 y+amrawfbNtTgF/gkvPLC/XYFAn3yU4rkjYqZSgdt0yvuvUhJygOulTq6eLOgeTxNntg
 LlKNYlGtt0WArl6UGJuoCOpB2YmsOsMaG4mP5yqB9wFEnKQMQtVen2zNKkyhnxBtem3s
 FGXW7R/VzVKC37XUWN+Kwod2aaAKRjnDiUauYoBKaif+0tvrIU6QiqnJNV6x5Wf3GAu9
 StW0pAU03DKKR644+4IwlmH3ZBZ0cQWNSfFqPgkBAKBiIHAHMwbX/BfrEony+DbqLt38
 8ghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=pLc1jQlEKheICgeOSU9VB7wm/Oqb5tm2L+1FZGaf4ts=;
 b=gsdwA2wwskzmmaA3YmpKo6tqtqilS+zEEo42fDUpXmoybvcCB1YMqhaHerSLeSz66B
 DAlBrVeUhiPhJ+l5eG0NwvkbJn6AfFUFtkoXcBl9QVNFUNzf735M22+hz4nKXtHTSxbG
 FLTymmdmF7RmRvR4vP6YZ6AcFuRlU9IuVVMWsiqz0q9TAT4u2rXWkHrdKfEmsECcQcov
 nFInpAdSWOS6jrAcBNkGia26G36TulfwJWUa1NmjJekxxOWu7op5MICDAGTUJqAgWpVz
 xl7Gsf1gw2ls0XUoE02qbRZ/rEM/OxIB+IecxKX+b7wyKgE0vLLri3vtZh03ofk8qWpI
 QpCQ==
X-Gm-Message-State: APjAAAUjH6cCPTu6clSeG75U74m2WGz8cU4GUkPN/YGnjsbdIwsOSuW9
 l6bSv+zhGTX9zQTqDhhPr1aG3EJO
X-Google-Smtp-Source: APXvYqzAEadXiBSjKdnEs2JOrhcdUr1sFLZlb/yTtf9gxDHl3sUCOjKShf8w6SrQ3Cx2RjS1PmL6Rg==
X-Received: by 2002:ac2:5088:: with SMTP id f8mr9076773lfm.163.1576245741852; 
 Fri, 13 Dec 2019 06:02:21 -0800 (PST)
Received: from jonathartonsmbp.lan (83-245-229-102-nat-p.elisa-mobile.fi.
 [83.245.229.102])
 by smtp.gmail.com with ESMTPSA id a21sm4643075lfg.44.2019.12.13.06.02.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Dec 2019 06:02:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
Date: Fri, 13 Dec 2019 16:02:19 +0200
Message-Id: <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
To: Thibaut <hacks@slashdirt.org>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Trouble with CAKE
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxMyBEZWMsIDIwMTksIGF0IDM6NDMgcG0sIFRoaWJhdXQgPGhhY2tzQHNsYXNoZGlydC5v
cmc+IHdyb3RlOgo+IAo+IEkndmUgYmVlbiB1c2luZyBDQUtFIG9uIG15IERTTC1jb25uZWN0ZWQg
TGludXggcm91dGVyIGZvciB0aGUgbGFzdCBmZXcgeWVhcnMsIGFuZCBpdCB3b3JrZWQgd2VsbCB1
bnRpbCB2ZXJ5IHJlY2VudGx5LiBUd28gdGhpbmdzIGhhcHBlbmVkOgo+IAo+IDEpIE15IElTUCAo
RnJlbmNoICJGcmVlIikgc3dpdGNoZWQgbXkgRFNMQU0gdG8gbmF0aXZlIElQdjYsIHdoaWNoIGZv
ciB0aGUgdGltZSBiZWluZyBtZWFucyB0aGF0IEkgaGFkIHRvIHJldmVydCB0byB1c2luZyB0aGVp
ciBzZXQtdG9wLWJveCAoRnJlZWJveCkgaW5zdGVhZCBvZiB0aGUgVkRTTDIgbW9kZWwgSSB3YXMg
dXNpbmcgaW4gYnJpZGdlIG1vZGUgdW50aWwgdGhlbiAoQ0FLRSBpbiAiYnJpZGdlZC1wdG0gZXRo
ZXItdmxhbiIgbW9kZSkKPiAyKSBJIHVwZ3JhZGVkIG15IHJvdXRlciBmcm9tIDMuMTYgKERldnVh
biBKZXNzaWUpIHRvIDQuOSAoRGV2dWFuIEFTQ0lJKQo+IAo+IFNpbmNlIHRoZW4sIG5vIG1hdHRl
ciB3aGljaCBzZXR1cCBJIHVzZSwgSSBjYW5ub3QgZ2V0IENBS0UgdG8gd29yayBhcyBpbnRlbmRl
ZC4gU3BlY2lmaWNhbGx5LCBhbnkgbG9uZy1zdGFuZGluZyBiZXN0IGVmZm9ydCBzdHJlYW0gKHN1
Y2ggYXMgYSByZW1vdGUgcnN5bmMpIHdpbGwgYmUgdGhyb3R0bGVkIHRvIGEgbmVhciBncmluZGlu
ZyBoYWx0IGV2ZW4gdGhvdWdoIHRoZXJlIGlzIG5vIG90aGVyIHNpZ25pZmljYW50IHRyYWZmaWMg
Z29pbmcgb24uIFNvbWUgcmFuZG9tIGJ1cnN0cyBjYW4gYmUgc2VlbiAod2l0aCBpZnRvcCkgYnV0
IG5vdGhpbmcgZXZlciBnZXRzIGNsb3NlIHRvIGhhbGYgdGhlIG1heGltdW0gYmFuZHdpZHRoLiBU
aGlzIGlzIG5vdGFibHkgYWZmZWN0aW5nIHRoZSBPcGVuV1JUIGJ1aWxkYm90cyBJJ20gaG9zdGlu
ZyBvbiB0aGlzIGxpbmsuCgpPbGQga2VybmVscywgaW5jbHVkaW5nIDQuOSBzZXJpZXMsIHRlbmQg
dG8gYmUgbW9yZSBwcm9ibGVtYXRpYyB0aGFuIHRoZSBsYXRlc3Qgb25lcy4gIElmIHlvdSBjYW4s
IEkgd291bGQgcmVjb21tZW5kIHVwZGF0aW5nIHRvIGEgNS54IHNlcmllcyBrZXJuZWwsIGluIHdo
aWNoIENha2UgaXMgYW4gdXBzdHJlYW0gZmVhdHVyZS4gIEkgd29uJ3QgcHJlc3VtZSB0byBndWVz
cyBob3cgYmVzdCB0byBhY2hpZXZlIHRoYXQgd2l0aCB5b3VyIGRpc3Ryby4KClRoZSBnb29kIG5l
d3MgaXMgdGhhdCBGcmVlLmZyIGlzIGFtb25nIHRoZSByZWxhdGl2ZWx5IGZldyBJU1BzIHdobyBo
YXZlIGFjdGl2ZWx5IHRhY2tsZWQgYnVmZmVyYmxvYXQgdGhlbXNlbHZlcy4gIEFzIGEgd29ya2Fy
b3VuZCB3aGlsZSB5b3Ugc29ydCB0aGlzIG91dCwgeW91IHNob3VsZCBnZXQgcmVhc29uYWJsZSBw
ZXJmb3JtYW5jZSBqdXN0IGZyb20gdXNpbmcgdGhlIEZyZWVib3ggZGlyZWN0bHkuCgogLSBKb25h
dGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

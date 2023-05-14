Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B413D701C22
	for <lists+cake@lfdr.de>; Sun, 14 May 2023 09:24:50 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 45F4B3CB41;
	Sun, 14 May 2023 03:24:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1684049088;
	bh=P6kOwOVDv5nlCRXwy2rPui78MnDu6cnNoyEMqOGRlFY=;
	h=To:Date:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=T+USYY9Z266vdF8pLDOtv0QjIETd7dDSpRQcxzoMgcjHgj+AOjJJT31BmQ/LMAd/n
	 ahfx2cGqfy+qsYIDsTa56FNWvTHXNvPwNTx6OB7QiRVc883ohwcJkNhhS19e0iWrSJ
	 W/q6V7snNqOfaAzIFKNiZMBPhxem5gtCb42wW+vuMIu/G4m43uvtktXS8AErvGUf+B
	 n7prAJmgfwmaq9Q56Cik9iOM3e20oeuAcWRwgD3aL/p2Ok3x66ZEE2RYU6FssuQFC5
	 zBNw/+bW7doXYxHfXuMu81wqAz2yYWTrYpXrjfzaXMyNfbJo1kcWxwitf1Xq4e5vtX
	 qAqfYJNl5Cusg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.optimcloud.com (unknown [46.23.82.140])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BB3DA3B2A4;
 Sun, 14 May 2023 03:24:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=optimcloud.com;
 s=dkim; t=1684049082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:list-id;
 bh=OqTLTKLdw92QotG8r72zlByQPZylJRcKj9hcVXAI/+Q=;
 b=Pqwf6DExOIS6MkZBKapDkMQmcpDy1sxoyA3qYYxlf2mA7putrFUW11+Ct/44Wm52h2kLrt
 cK2kXFfmXierjufwrgVAte7UV6/D81H57K81Kq29O64aPVO5dYnP7oQImFoMrYRQPKV1Tb
 oo13bSd+bO12U6gWOPyg9DECfs9XaitwUyuIcngb3WSUy8/i3LgHYiP82O5m9zVUR73fh6
 loSH45LPyAfVrnE9PWd0P1KRWV2ek38+Sbyy2pzgFUkSFMwOv8xrkDRdF7DfGpgzM4Mif4
 ikK/mk4WJAxBI7t8vL5CYXUL+fJAvYPmjKSbeRc4XGdQM1h73LADKd6wvIEZiA==
Authentication-Results: mail.optimcloud.com;
 auth=pass smtp.mailfrom=lists@optimcloud.com
Message-Id: <1684048938565.2338658676.760710244@optimcloud.com>
To: Dave Taht <dave.taht@gmail.com>, Dave Taht via Cake
 <cake@lists.bufferbloat.net>, "cerowrt-devel"
 <cerowrt-devel@lists.bufferbloat.net>
Date: Sun, 14 May 2023 07:24:34 +0000
In-Reply-To: <CAA93jw6NgYCGOf=dR9VT+w-DY=91Y5nHmcGcSKpL+DixmgHuLw@mail.gmail.com>
References: <CAA93jw6NgYCGOf=dR9VT+w-DY=91Y5nHmcGcSKpL+DixmgHuLw@mail.gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: /
Subject: Re: [Cake] industrial lte/wifi router with cake
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
From: lists--- via Cake <cake@lists.bufferbloat.net>
Reply-To: lists@optimcloud.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cm1laC4uLiBoYXJkd2FyZXMgb2suLi4gc29mdHdhcmVzIGJsb2F0ZWQgYW5kIHRoZSB1aSBpcyBh
IGJpdCBvdmVyYmxvd24uLi4gCnRoZXkgZG8gaGF2ZSBzZGtzIGF2YWlsYWJsZSBmb3IgYnVpbGRp
bmcgZmlybXdhcmVzCgp0aGF0cyBiZWluZyBzYWlkLi4uIGhhcHB5IHRvIHNlZSB5b3VyIGFib3V0
Li4gaW0gY3VycmVudGx5IHdvcmtpbmcgb24gYSAKY3JhZGxlcG9pbnQvdGVsdG9uaWthIGtpbGxl
cgoKaXBxODA3NCwgZHVhbCA1RyBjYXJkcywgNCBzaW0gc2xvdHMsIDgwMjExQVggcnVucyBPcGVu
V1JUIGNvbXBsZXRlIAptYW5hZ21lbnQgcGxhdGZvcm0gYW5kIG1vcmUgOikKCnN0YXkgdHVuZWQu
Li4KCk9uIFN1bmRheSAxNCBNYXkgMjAyMyAwMTo0MToxNCBBTSAoKzA3OjAwKSwgRGF2ZSBUYWh0
IHZpYSBDYWtlIHdyb3RlOgoKID4gVGhlIGhhcmR3YXJlIGZyb20gdGhpcyBjb21wYW55IGxvb2tz
IHN0dXJkeSwgYnV0IHRoYXQgaXMgYWxsIEkga25vdyAKYWJvdXQgaXQuCiA+IAogPiBodHRwczov
L3dpa2kudGVsdG9uaWthLW5ldHdvcmtzLmNvbS92aWV3L1JVVFgxMQogPiAKID4gaHR0cHM6Ly93
aWtpLnRlbHRvbmlrYS1uZXR3b3Jrcy5jb20vdmlldy9SVVRYMTFfVHJhZmZpY19TaGFwaW5nCiA+
IAoKLS0gClNlbnQgd2l0aCBWaXZhbGRpIE1haWwuIERvd25sb2FkIFZpdmFsZGkgZm9yIGZyZWUg
YXQgdml2YWxkaS5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

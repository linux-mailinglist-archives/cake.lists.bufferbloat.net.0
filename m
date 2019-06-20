Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 478A04C68F
	for <lists+cake@lfdr.de>; Thu, 20 Jun 2019 07:11:25 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B164D3CB39;
	Thu, 20 Jun 2019 01:11:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1561007483;
	bh=3c0R+86mVzu1Oo+ScBYpLJ3RFUf9fMK3KwSmmehIIac=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S9U0Y8fQq3xsv9/OvJyKf4Xviz2GNR3KTzFASsbdHktEa0J0EqWrT2aRPT4miV/Pd
	 X4nDUtcQ0XjHTfPOPxfvHBJ/bMSK3+tOdCF5uTHH9SIBVJ7DZAfwjAFQKvQH4YnC2D
	 /U/FrmBnuAHXBunutzIZWXXKRpy6CcljgZG7I5+RIzAXPNkT/3AaEwgsM7uNmHzzdQ
	 kdv44I3AIaCzhjEHULMTpTBAr+iO2pMjK5NyRxMjqgE/CohGJRvjigMnE+n7XIHG+w
	 baXk32uQS4gAspalTN4qJun53wwX0Hkf9UovtWhCWIRpBvhcf8BNB/MW1Yt8X2AQiS
	 5ZzzzEowE2d1w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 001793B2A4;
 Thu, 20 Jun 2019 01:11:22 -0400 (EDT)
Received: by mail-io1-xd2f.google.com with SMTP id i10so1264302iol.13;
 Wed, 19 Jun 2019 22:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=nQ2ZS5AIYdyU85BZTUJ1qm/DHrWGi/f3gAUhpCMTjZE=;
 b=lY++W+Md8e3VxS5V36hKAP8q71rZzC27HNI5WXFUaDndB7pO/IVa2R2ETe/sspVGJg
 X7i+RmHeFJCOZK6ywt5rOFYjSRC9Nr46rOseFE+aPDKC9bGpxWeKCX72NSJs7jLwGhV1
 tPGt3Dd0IIF3jFtsMhJVdVBCRaX0IqjxtZLy4FsxUlc6xeFF1DWnKjDwWbzKHKGsYokb
 ypw2AU98H2lVCmkeMWd8AhKaJ0fqbqbErOHfG0kADQhLIopVfkcXM09E1Bymp+S311gt
 6tZxVPSvwZPoiN7A0cd9jibXrViMmhYXSuQGQqpQymGIZnp6dfr3nFEMCMk3wMxU8qRE
 vCHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=nQ2ZS5AIYdyU85BZTUJ1qm/DHrWGi/f3gAUhpCMTjZE=;
 b=fHXIhVtKlZVXoyTxc3CYMsEOcn0yIs17R7xbh9hDrVbGg1mGmFqX0cIQwyPbUJAv6D
 WIrayn0BWSr7PYxOO2WViZ3OU5rbfIXTok+9Y58wmRkmbjuIL8FkQAqLw1pR1dP7wVuG
 QNShtqJBSnvonPE+x0BOC9doK1+eE86C06wuXP1AQJzl/jo8lbQJtLPMpn46odVNByGz
 0cfQhKceD4w6y8Ram5Gf1rVvqvQRMaKdpP7QVbg6rQxruBYfRf7voJR/mQcO1s7JuxhY
 kud/i5XUQnBVYTZeurGA38U7k2htBiwdr6nzCjdH0gsywc2MCPTjy0+F8XRABBgJMpRX
 6SUQ==
X-Gm-Message-State: APjAAAXH/AWrDWRJDhZ6xTaPBfyKcbXzhfLLc56LcTFGG98XeSJWjzsb
 56I9wNgpFMhrjPhRbc/WyPfhkm/xZ++NpE4ueog=
X-Google-Smtp-Source: APXvYqwTEVxlkCYmyZbR5smgUWC+jFApPqhHwKlk+Jg2xR87XbbB/u/C+oor2idI1Q7KokdKCxfQFqWlor79ejuNLIY=
X-Received: by 2002:a05:6602:2183:: with SMTP id
 b3mr15020203iob.249.1561007482388; 
 Wed, 19 Jun 2019 22:11:22 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 19 Jun 2019 22:11:11 -0700
Message-ID: <CAA93jw6C3agU4sencGgeJWHThEDsa-ingmkMG+EzUwydGw96GQ@mail.gmail.com>
To: babel-users <babel-users@lists.alioth.debian.org>,
 HOMENET <homenet@ietf.org>, Cake List <cake@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] althea presentation on isp in a box at nanog 76
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

aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1HNEVLYmdTaHlMdwoKSW50ZXJlc3Rpbmcg
c3R1ZmYgLSB3aXJlZ3VhcmQsIGZxX2NvZGVsL3NjaF9jYWtlLCBiYWJlbCB3aXRoIG5ldwptZXRy
aWMgdGhhdCBhbGxvd3MgZm9yIGNyeXB0b2N1cnJlbmN5IHRyYWZmaWMgYmlsbGluZy4KCi0tIAoK
RGF2ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVs
OiAxLTgzMS0yMDUtOTc0MApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

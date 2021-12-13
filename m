Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B4037473329
	for <lists+cake@lfdr.de>; Mon, 13 Dec 2021 18:45:17 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 36F083CB39;
	Mon, 13 Dec 2021 12:45:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639417516;
	bh=zqh7Tugd2bzTvWPQ8gQfOh40pkGOW4QzeZiTMQlf+Tk=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k04gABgAScZtk1OgBaRSyDsoPHAbEpQ4IjNbxAXPfvUkDjHqR17oTsQ6SQCwzd5Qy
	 0yOAf8PC+J18XGpjam7jc9/89iJ7JB2r2N0NLbeIHzMAnBe03gWbKViQMswSS9Zuxf
	 De/CX1+FoDNnL5/lG8XSAlzefeuJcc1HcZKK/dBfrS89Sb9LdQKQyWWvb8IEBrzK9f
	 k6dCPtBB2X8hzvhSYXBEJnGJJ8ns6vlFTD8unw7GhovdXpttFkHQMoldyUd3VD/FW+
	 yUYK3Cq0YMeGHOTMep67Dol+Giumt19/1uZScB/KDBZyfAnK85aLmF/dq9n+a243SW
	 Vgam2dn314d1w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DFB953B29E
 for <cake@lists.bufferbloat.net>; Mon, 13 Dec 2021 12:45:13 -0500 (EST)
Received: by mail-lf1-x12a.google.com with SMTP id d10so32319113lfg.6
 for <cake@lists.bufferbloat.net>; Mon, 13 Dec 2021 09:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=YsrFjMSPs+hFzhv3I3Kd5unfNCQNZ6QGf43nR5HXzl4=;
 b=L+4RVCmegxba4XuIMufE+fXB4NUU12cF68QKsQo44quw6MSjMN0eakiCBDtcZ5vZRI
 VfeTQSnvdL4UFFJqcc6/ODbgcWrOsKnRQBCAvHys0DuxXugme61UWbODJ1foSBoT+eFl
 32++gHtQ2lcJFOjJtErWlsaN4HDecFveeLBe+cxJCPDbuUG+b1LE+xOSjOhygvZjPY2D
 ZWyG7cUUTluW6kUKx60mvikc+dQXX1T2NudgE5wnS5SLT6vdnW/xm7E0Bmq8DdZCuRX2
 1Mmu5bazUlZxeLDnxlgc6wmrQZiRfPtESbiI8yQCiob73B/vu2g3lZDfOTkKG9DJAQTs
 e8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=YsrFjMSPs+hFzhv3I3Kd5unfNCQNZ6QGf43nR5HXzl4=;
 b=Rl7Q/6+GFDh0zZLowTk8J0KGXRAnyYkCoiIdUlJriDvv/Y9lIfkQhE9fWWrB4zxxRM
 HcqJLWdHYZ0r/sauxHkLhTXzPkEiuDLrv6cfl1NghwvDjLDHIeryR/2J9Jrp+ZellP2G
 NXTW3k4RAmXYA04ECNXcaSO5ddMTvr/YPpiRc994n8iPXpQNYAI+9DNFQojxROJi1FB4
 IU7WHsFLXYrxDAtnGv8/ZDkfX8m7hINM6FFrbZFz+pFAfdgJ5XaUI3MwjhR9fxwKdt6/
 YCjCGXAol3RSf8rj/bTMmFDnHFr5c24o+i/TxPQLWHWabliGfTJyufdIdqfWyllMo0bd
 wSCQ==
X-Gm-Message-State: AOAM5318uDLIJLa08K8vkchmpBegGuyR7h13wzMAIDDsidtzcmr3lbQk
 G9J2zfH9SeM22GFahpdfvbQ=
X-Google-Smtp-Source: ABdhPJxivyfChHIpXQ6CH/3ibe6vTdZkOJ9WBN/cX1/X9xHaXINM90yG9JtDV5w/5nG8xtHHrUxB0Q==
X-Received: by 2002:a05:6512:118d:: with SMTP id
 g13mr31454617lfr.66.1639417512407; 
 Mon, 13 Dec 2021 09:45:12 -0800 (PST)
Received: from smtpclient.apple (188-67-240-81.bb.dnainternet.fi.
 [188.67.240.81])
 by smtp.gmail.com with ESMTPSA id g36sm1515055lfv.16.2021.12.13.09.45.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Dec 2021 09:45:11 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw5WQ_sXPZSiSyMrBvwu=QZUsXiZxSuR0jJV9iLjqebiYA@mail.gmail.com>
Date: Mon, 13 Dec 2021 19:45:10 +0200
Message-Id: <18098E06-CB62-4967-B604-268063392C35@gmail.com>
References: <CAA93jw5WQ_sXPZSiSyMrBvwu=QZUsXiZxSuR0jJV9iLjqebiYA@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] sometimes I worry about cobalt's effectiveness
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

PiBPbiAxMiBEZWMsIDIwMjEsIGF0IDk6MzQgcG0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWls
LmNvbT4gd3JvdGU6Cj4gCj4gTE9ORyBzdHJpbmcgb2YgdGVzdHMgb24gbWlrcm90aWsgYXQgMTlN
Yml0IGhlcmU6Cj4gaHR0cHM6Ly9mb3J1bS5taWtyb3Rpay5jb20vdmlld3RvcGljLnBocD9wPTg5
NzU1NCNwODk3NTU0CgpJIGNhbid0IHNlZSBhbnkgb2YgdGhlIGltYWdlIGF0dGFjaG1lbnRzIGlu
IHRoYXQgdGhyZWFkLCBzaW5jZSBJJ20gbm90IGEgbWVtYmVyIG9mIHRoZSBmb3J1bS4gIElzIHRo
ZXJlIGFueXRoaW5nIHRoYXQgc2NyZWFtcyBvZiBiZWluZyBzb21ldGhpbmcgSSBzaG91bGQgYmUg
YXdhcmUgb2Y/CgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

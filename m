Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B48B332FC7
	for <lists+cake@lfdr.de>; Tue,  9 Mar 2021 21:20:40 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E489B3CB40;
	Tue,  9 Mar 2021 15:20:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1615321238;
	bh=l0SEWZ7+njBdR0IRu76K/dvjBtFhvm2YQbf+z/8E3qI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QME7220WsPfCuTH3qgO3pNSqDNhnm8Kwzs8/7DB22g37U0lL4UDyur34EOG2LAqOj
	 LNbUWZmeHM7ImVL1L8oPPOh/x+M5vZAic5vixovC5oBuSaUxFe9dgsyIjhFa7tuasU
	 RyfcDyn+P9pA0YPyXLYahygWvUUJHS7em0/3V7Hx6jjU8lnxdP25QyOLgej1KDvaM/
	 aFnIhKq1g6n+J0r1XVpSMUjWsJm0uTPpGWvKCz26tolVJxRDbt9KPP0/C3fxRZjlnr
	 yUZMZ/M/BRTEbdkTF4WEGj1GAf+lgzTR/Eqxks0VmckUDBuND8l8wyNvgZ1REedN05
	 WHPzb2MgwOC1g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com
 [IPv6:2607:f8b0:4864:20::d2b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E136B3B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Mar 2021 15:20:37 -0500 (EST)
Received: by mail-io1-xd2b.google.com with SMTP id n132so15406859iod.0
 for <cake@lists.bufferbloat.net>; Tue, 09 Mar 2021 12:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/lZZs2NmfFvwK1J7kGqie3p7qaGKWeICX8GGk6bZN4o=;
 b=I4ezvoCeeVbys2Z5YOh0VVS4Bdw81AmG70iSGy1+H/u2R3XwnVOz7+Y0KElIG+RtWo
 kKFa3hwbvDLSczkey6tTn/Jlg8E7157SRpC7dvy0xkiNkscETKG/iCeV1C3qIO6FKSqc
 ZqE3rrqjE9+uekyV3YZU5SH4zHyGbTXbrVoD/gHN2dJ9n0SeBKl0uqicheuYY70N1mIW
 dfVzRfFHVoUXWnBRWqugGs3hKA32d7I0IRs4NpvKJA/Z0UxgBwuLrvrqvgD3hNNMrPNv
 HXgEJD11wcRwymG3CnfOymhbMzcWdG3Hkh23pFfnWz0QJOUc7nFatI7PDRPy39iBqAFY
 6giQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/lZZs2NmfFvwK1J7kGqie3p7qaGKWeICX8GGk6bZN4o=;
 b=ghp+JgUSSvx3a/8TF/0q5RoSf584xrRnied3cF++H6A50VOw+JJbo7voy1gldRKtRx
 Qyh87IqnlOhbnHFrdLCpWzCtMKdWwAOMudvO7q3y30FAHE1Cw23ipu4mOoBkldsJp4Q6
 QieWY47QewvoWuVwCRvTHyAKlgtrTR6vPn+OLHcG3zcHCRjx9f/WWNEA2TeWUfDfPnB7
 gV4XYA/LRMDHIGKvs8CRgh/yIrNgBO+oLaGRCqO0/Mw0CHKesRr1MXj/WZktk3RiHngC
 fYVjrs7HEWLPxUiXBOC9WmljfLcjmSDlGN7Ydk2t0sMSNomPAt/KrftgwcSyaLeCZNfT
 bv8g==
X-Gm-Message-State: AOAM532rc3FQ06ompGVmT/cThjjfzB/lqFcWrIYzQOfF/yJ/0GHnUtBh
 1ts9KrXj8XXx4haybEZrtlahsGLI0jMQWtGiyaav+fHESLs=
X-Google-Smtp-Source: ABdhPJw+tTRnSJrvKizXRpj7/e0tJAIRmeXLlK6wiF6INRuUAPS2YDM+mgklAWFkelNUcyRtqULgID7ed6GsEeo7Nis=
X-Received: by 2002:a5d:9599:: with SMTP id a25mr15078437ioo.25.1615321237412; 
 Tue, 09 Mar 2021 12:20:37 -0800 (PST)
MIME-Version: 1.0
References: <5407860ac65c4059838e7952ae162f9d@telenor.no>
In-Reply-To: <5407860ac65c4059838e7952ae162f9d@telenor.no>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 9 Mar 2021 12:20:26 -0800
Message-ID: <CAA93jw6Z1af9T=qf5kjwnhu+_4V6JnKXrUciXAuL1sEpkBCWWg@mail.gmail.com>
To: Taraldsen Erik <erik.taraldsen@telenor.no>
Subject: Re: [Cake] STEAM tcp algo from CDN?
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
Cc: =?UTF-8?Q?Toke_H=C3=B8iland=2DJ=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

MTAtMjAgZmxvd3MsIGN1YmljLCBsYXN0IEkgbG9va2VkLiBJdCdzIHVnbHkuCgpCZWdnZWQgdGhl
bS4uLiBpbiBwZXJzb24uLi4gaW4gb3JlZ29uLi4uIHRvIHN0b3AuCgpPbiBUdWUsIE1hciA5LCAy
MDIxIGF0IDExOjQxIEFNIFRhcmFsZHNlbiBFcmlrCjxlcmlrLnRhcmFsZHNlbkB0ZWxlbm9yLm5v
PiB3cm90ZToKPgo+IERvZXMgYW55Ym9keSBoZXJlIGtub3cgd2hhdCB0Y3AgYWxnbyBTVEVBTSB1
c2VzIGZvciBkb3dubG9hZCBvZiBnYW1lcz8KPgo+Cj4gLUVyaWsKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UKCgoKLS0gCiJGb3IgYSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxp
dHkgbXVzdCB0YWtlIHByZWNlZGVuY2Ugb3ZlciBwdWJsaWMKcmVsYXRpb25zLCBmb3IgTW90aGVy
IE5hdHVyZSBjYW5ub3QgYmUgZm9vbGVkIiAtIFJpY2hhcmQgRmV5bm1hbgoKZGF2ZUB0YWh0Lm5l
dCA8RGF2ZSBUw6RodD4gQ1RPLCBUZWtMaWJyZSwgTExDIFRlbDogMS04MzEtNDM1LTA3MjkKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

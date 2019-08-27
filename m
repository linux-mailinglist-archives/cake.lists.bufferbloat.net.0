Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F409F3B9
	for <lists+cake@lfdr.de>; Tue, 27 Aug 2019 22:04:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D1F9F3CB38;
	Tue, 27 Aug 2019 16:04:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566936254;
	bh=rwkE0JqtwbexVCDpaw4tWLWTV3JsSM8WdI0cfajS6dg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fMZkTnJ/BdmHRfdKedzEf+zY8zSVzbpS3oX2Iihf+j9aNTaEmkMOY7zjIAg7Wk3Zr
	 rpp1Aeg0pQ7a0lvZhPBddmf1kabTH4O6yvQ2yTUxcP1TnhFXeEqoR8VMf0+KzRCo6g
	 i6SFeIp5a2jEJfhAlVh5IS95/6tdfDaPLRGJty30cY/B+mxqQ61fsp2bXrHnuOs6ag
	 qT6SfGPK6Y8IGgXuQEwJFdGd+xHmmPLyMNa0Gpt5m7Oa3Yq7aBf5IajxJ7rRawJEHX
	 rP85aJgGxrDbDOKJ9/ZVSbV9EuWD6NvmiT44ajfpBsYtKuiXNmKZclE2lb231ToXV1
	 pI0nop/IiNLJg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A92713CB35
 for <cake@lists.bufferbloat.net>; Tue, 27 Aug 2019 16:04:13 -0400 (EDT)
Received: by mail-qt1-x82b.google.com with SMTP id j15so278792qtl.13
 for <cake@lists.bufferbloat.net>; Tue, 27 Aug 2019 13:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KY082qgeuRGnDMr7yiCbUIqz+KKVYzFt94uEHZYqXrU=;
 b=tJDsJIEgpUGXKJzalhH3cw5qagPEZ9f01+v2ExpuKs+8pzSzx39hAC/FIpv/nLDMtL
 DhQmnDeY1fuxNWN0G6fMTBiPRnwQ2+QGp1+euOEnA1F/cbfGaCEAOJqvGqbSvvN+1PgS
 IyVcpwMceIJvR0xJfWFaYNFKPOw47/pF1XwGz1LuUrP8O27cSTV4UeyMjQZ8dM9GbD2C
 4OqUFu3oMW3f3NXjsm0br/BWQ0yZ58NKgKvqQgODNJEM7SBIwuZwvXcZeV1shnGrEFMo
 jfpdXcsrirb5L2gbVQ/FD/i4EyRUhs8Y7h3HQJMuO7+xwzApEMKFW7psUtod4yJbPXKj
 BODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KY082qgeuRGnDMr7yiCbUIqz+KKVYzFt94uEHZYqXrU=;
 b=uIDiBbeH/1HH0csWKGE6tw1XF2a+PsJHeLlwUIA673yM2d++/AXEAEWUSIzOjTbVIQ
 F5zxHvCf6VwSEJv92Z8MPvotjfD0aXr3Le5vczhAvdXeHZ024jxM5FHcbiHwuITCcJxl
 BLhK5JaVSKXS0ygCfurbDTNVyz4zd40cIgPqDaD+SR1rOIJWUojt4TbJ9CWZQDWo1IqN
 TW4CEyvGOLkvtcoaDKgnOFLxtQMcnHXAwK4422JgcwUp6mWQuiAKmXHtZQcEzQ0xFxM2
 j6mJe3ssJijCBUDROlc5Z697K9VAeX5L/rJxkiXm133gB11Tv9Vpc9iRB/HS2gzDGuTa
 bjPQ==
X-Gm-Message-State: APjAAAXdnwux8W9X/PzNdiLlOrJCR7uw8VxVjTxUbL2VYM0p0RaWx5uM
 ivD6FgSGVNj1rZBpdAgJ4Lw+ZA==
X-Google-Smtp-Source: APXvYqweaK9/oef37qLF6OfRjn/1t1nOUA3QhIWjszr7nxco24vzUx4sWB27l6wHSxGfvx9KY0rdEg==
X-Received: by 2002:ac8:269a:: with SMTP id 26mr679751qto.186.1566936253064;
 Tue, 27 Aug 2019 13:04:13 -0700 (PDT)
Received: from xps13 (pool-96-233-168-28.spfdma.east.verizon.net.
 [96.233.168.28])
 by smtp.gmail.com with ESMTPSA id d45sm48532qtk.57.2019.08.27.13.04.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 13:04:12 -0700 (PDT)
Date: Tue, 27 Aug 2019 16:04:09 -0400
From: Stephen Hemminger <stephen@networkplumber.org>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20190827160409.3c1afcc2@xps13>
In-Reply-To: <87h864l6q5.fsf@toke.dk>
References: <9cbefe10-b172-ae2a-0ac7-d972468eb7a2@gmail.com>
 <87h864l6q5.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Fwd: Re: Unable to create htb tc classes more than 64K
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
Cc: cake@lists.bufferbloat.net, bloat@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCAyNiBBdWcgMjAxOSAwOTozNToxNCArMDIwMApUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gPHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cgo+IFR1cm5zIG91dCB0aGF0IHdpdGggdGhlICJl
YXJsaWVzdCBkZXBhcnR1cmUgdGltZSIgc3VwcG9ydCBpbiBzY2hlZF9mcSwKPiBpdCBpcyBub3cg
cG9zc2libGUgdG8gd3JpdGUgYSBzaGFwZXIgaW4gZUJQRiwgdGh1cyBhdm9pZGluZyB0aGUgZ2xv
YmFsCj4gcWRpc2MgbG9jayBpbiBzY2hlZF9odGIuIFRoaXMgaXMgcHJldHR5IGNvb2wsIGlmIHlv
dSBhc2sgbWUhIDopCj4gCj4gLVRva2UKPiAKClRoYW5rcywgSSBtYXkgdXNlIHRoaXMgdG8gcmV2
aXNpdCBkb2luZyBuZXRlbSBpbiBlQlBGICh4bmV0ZW0pLgpOb3QgaGF2aW5nIHRoaXMgZmVhdHVy
ZSB3YXMgYSBzaG93IHN0b3BwZXIgYXQgdGhlIHRpbWUuCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

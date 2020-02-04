Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BE5151D2B
	for <lists+cake@lfdr.de>; Tue,  4 Feb 2020 16:25:59 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 06F813CB39;
	Tue,  4 Feb 2020 10:25:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1580829958;
	bh=kNraWKq0j+P+9aSxtcut1s7xMKxISlNJxcz3bhtnodg=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RbyiH3fuC6OnRsv6cDt6ebeczgC85yd5YyDdFhLjCOUEAIJ4MUorxfdy53/Fb0iL8
	 CkRQqMqGGOMkR027/bOEkNiEgeyk6+hEoyTroOsIVPDNFYp7G4BWd61ozXI+BEkwOa
	 sBlQHvcCQ85UkbiDKreOEUQIq9aM6p9BXoPScp9CrlCyycfrWdNXGQXOEfCy/i248P
	 m51qVvElusa3uMn9jS0FBsG73U+DesQnPcJ1vH94ITXB5l94v2Na5O+8gUeJTaKgt4
	 u/WJ6FGx8dLUwh4qaowPAhMo33dKUA2wgc/wxYFh93rJVJ/1bontEXETTy96E7k3iB
	 +gEYP2NmcWpUA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 638343B29E
 for <cake@lists.bufferbloat.net>; Tue,  4 Feb 2020 10:25:56 -0500 (EST)
Received: by mail-lj1-x22d.google.com with SMTP id r19so19058061ljg.3
 for <cake@lists.bufferbloat.net>; Tue, 04 Feb 2020 07:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=FQGP6/7QABARZDeIrz8qFyKMmCSyXKN3Qi8Lwr/nrAI=;
 b=n5L47ej/c45dFx/6NbEJjNiqnVpKriJoVEIdE38vtLp9QbGsztzF75tzL7LDpczokx
 /Ca64ZGFSHACXTA/dqi7C6TM8SXOHazGRT15OXIqaYkdBRTqUDiAs+ciT9rBeZgFvN7+
 DkLIGG3qGWUFT006KSEhCysHwiefZw5FWumVNVopahIYSl/qy0q3xI8RSQMJHdImhKg1
 frbStknDS7E/Z/YfULb4/uKboNhkSy/QtfSRRPoy/WW2FERz1SVi+Uk6b+5FzFPi9KoD
 aStthFwYJsYBo4rmLKEZLQQJA0UDZKCep6thPCXmtbmop7xDQH45ip0/cDJgph0mPFlw
 mxIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=FQGP6/7QABARZDeIrz8qFyKMmCSyXKN3Qi8Lwr/nrAI=;
 b=WJ6d5H6SDSP9avdKcOH/bV6foJIUFSab/ohb9dJPT+AqeR/4ivgV6mG4FxPs49aAv0
 VUF9k3/cFi0FNBGvSWFo7DcBJipet2QHrvQhBFUm+7VWA9e1dTmsXFiftK2uYoHbLL3R
 KlzGx6IL0GZnLFz+3kuyrcBUEOz5xrRgZDGiRAGXVYjMQxTx+xsOHz3hoDXLC+xTZDnb
 RTOiCQgrOs9c8PMqahIAqH0mj7UdURmnaaHN82Phw/hsys5IDOGEWnT3A27GoiJHsR0S
 mltGYHqNvolK4eayCrPeTfLn2j7whRA0G+9wa3OK3fljZ/mSmwt2it1pIXozLS7llpoB
 d6Bg==
X-Gm-Message-State: APjAAAXzwvRjDRCPgdYNaoQ6u3DU55V0eY0EZlQQTXxLDNsTiE68EW63
 qE59I76cPD6JYGXK7+9WzeKvoYIY
X-Google-Smtp-Source: APXvYqwb+qWBElKVs+Vtnf3NVM+6PQGYWNSEHRscxBNktsrAAgr7mzmBzbcIboa7/UDfyeZyzUpiQQ==
X-Received: by 2002:a2e:3202:: with SMTP id y2mr18642022ljy.132.1580829955337; 
 Tue, 04 Feb 2020 07:25:55 -0800 (PST)
Received: from jonathartonsmbp.lan (83-245-229-102-nat-p.elisa-mobile.fi.
 [83.245.229.102])
 by smtp.gmail.com with ESMTPSA id h7sm10843616lfj.29.2020.02.04.07.25.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Feb 2020 07:25:54 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAKf5G6JeQFqDYV5Ttop3Tqb7WUGW2ZvYj-4S6C=VsF2JeZfs_Q@mail.gmail.com>
Date: Tue, 4 Feb 2020 17:25:53 +0200
Message-Id: <07250850-5FAF-4AB7-9551-0B26D648AF3D@gmail.com>
References: <CAKf5G6JeQFqDYV5Ttop3Tqb7WUGW2ZvYj-4S6C=VsF2JeZfs_Q@mail.gmail.com>
To: =?utf-8?Q?Bj=C3=B8rn_Ivar_Teigen?= <bjorn@domos.no>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Cake in mac80211
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

PiBPbiA0IEZlYiwgMjAyMCwgYXQgNToyMCBwbSwgQmrDuHJuIEl2YXIgVGVpZ2VuIDxiam9ybkBk
b21vcy5ubz4gd3JvdGU6Cj4gCj4gQXJlIHRoZXJlIGFueSBwbGFucywgd29yayBvciBqdXN0IGNv
bW1lbnRzIG9uIHRoZSBpZGVhIG9mIGltcGxlbWVudGluZyBjYWtlIGluIG1hYzgwMjExIGFzIHdh
cyBkb25lIHdpdGggZnFfY29kZWw/CgpUbyBjb25zaWRlciBkb2luZyB0aGF0LCB0aGVyZSdkIGhh
dmUgdG8gYmUgYSBjb25jcmV0ZSBiZW5lZml0IHRvIGRvaW5nIHNvLiAgTW9zdCBvZiBDYWtlJ3Mg
bW9zdCB1c2VmdWwgZmVhdHVyZXMsIGJleW9uZCB3aGF0IGZxX2NvZGVsIGFscmVhZHkgc3VwcG9y
dHMsIGFyZSBhY3R1YWxseSBpbXBsaWVkIG9yIGV2ZW4gZG9uZSBiZXR0ZXIgYnkgdGhlIFdpRmkg
ZW52aXJvbm1lbnQgYW5kIHRoZSBtYWM4MDIxMSBsYXllciBhZGFwdGF0aW9uIChwYXJ0aWN1bGFy
bHkgYWlydGltZSBmYWlybmVzcykuCgpZb3UgY2FuIG9mIGNvdXJzZSBhdHRhY2ggYSBDYWtlIGlu
c3RhbmNlIHRvIHRoZSB3aWZpIGludGVyZmFjZSBhcyB3ZWxsLCBpZiB5b3UgaGF2ZSBhIG5lZWQg
dG8gZG8gc28uCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

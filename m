Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCD160EA6A
	for <lists+cake@lfdr.de>; Wed, 26 Oct 2022 22:42:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5A9FC3CB46;
	Wed, 26 Oct 2022 16:42:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666816944;
	bh=k/GLErh36hCctR1Fs2KXQMoCNjw/Aj5PdnuPC00DJGI=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=bbxl6T+yuDP00m9YlS/thLx6NtAxFk5ZuNAg6affwNMb33ocjyVdj+5Z9hIfjJbz/
	 yOqD+BrFpEprh2vDrvajlZdrp7g9sF0s6vJ52/twx2S90yoErWt6NCEhsbeG3ViAxF
	 V08st1ueZnLnkC1ENlDgbVGeif0Ek9lo7QF3U26EirfFKbXlYRbKjeB2Hsao9gC9Hn
	 CSPAyB8M52oPQFBhK8sk0cgwxdM4UqbWXOH6SWEcmcCFpXktkq0ogotfjaThbwb0O2
	 xscnxys4TevyGmvNGYoC8IMIs9tEsd1uk0B4hRqzPkSVZfUDhv27bSIQ5xLQKdpu2G
	 gj9P/kr5I7lcw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E5A543B2A4;
 Wed, 26 Oct 2022 16:42:22 -0400 (EDT)
Received: by mail-wr1-x436.google.com with SMTP id bk15so28433320wrb.13;
 Wed, 26 Oct 2022 13:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=B0FJLQPd5VYtFuJ45Fcs6+cU+KTtWIzoVhtQdxrK8NM=;
 b=KKPwwagQdeFJAqWyn0sjjBtlt79+am3SQbhsXXXGwiIUGo+qJ1RrkJyUNoYwd2bE+M
 v2r0M6bjIKFXcHdX3ieS2oKEA0xKaePuHbAscRoVjceykU8WAuyYaSkZO9pje8fHTuZi
 AnmT7jF/x4GPs1qyL0EAFJk/HfH1cBjmBbzlixQ2EhHtmkccX3gXFb0U/UvRCL6fEb/f
 m7eQRwMWfkroj3pY3scVh12cq5I+FKNCfsRO8c80BdcmahOBjJf9JPc557IF79CvZR9R
 CJ6XU8T+w6baUhIHuy/8IX4xN3w4Z+nOKmc0hCHXQg7MJEJgc5GuBQ2wJT4IonPiSvxZ
 dEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=B0FJLQPd5VYtFuJ45Fcs6+cU+KTtWIzoVhtQdxrK8NM=;
 b=AbSGxmRikaUe2o9H01ls7IovZVyfyioigIdXKxSOJRZbWsIu5TbuQP3JKGkL06lKBy
 b4JLzaCe7r8xwQ/mORduCGpV+4FOBX4RtR+VNLeDC22qDPmEX6xIXBfHhZf6O37DwrNg
 wcBapwoaMtDqQf3JPX95/EewjsaVfZRomq0JBZmRQskpxtalRcaENa5J+JrvT020USCg
 u8j2Y3HJyryJb/VR6WTNs073Wkhh1UFZG0dBD/Q/u9tznkqcuQcExmnb0Sxnk8Lt5z9Y
 tds3f5W0GWful001IRtCsZ5Xh03uZw+ojFGiLMkZ1QrXWVUNHtnX86QVK2dzJRITU1B1
 dsBg==
X-Gm-Message-State: ACrzQf1d5IpYqSpZneHHtG3WO9Z6/aJeGN23i8g/ZAEVxE+n3QwkcBLG
 rBRSJhDDEXqhpp8SFwazvDTU2z2N5iWWuGEmmvWVvlKP
X-Google-Smtp-Source: AMsMyM5bIaHo91XvqfZyXC62ytyxYSQXeGYgadUCxpz+hWPig7Ubpp6+cubyrkx8GqfrjzRWmEgX81ALwwDxNfpCiLo=
X-Received: by 2002:adf:aa8c:0:b0:236:6e59:99ff with SMTP id
 h12-20020adfaa8c000000b002366e5999ffmr12700989wrc.688.1666816941850; Wed, 26
 Oct 2022 13:42:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
 <9989D2F5-3A6A-454E-ABB8-71A29F3AAC0D@gmx.de>
 <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
 <C0D30810-C913-4E31-A18B-CD3887C329E9@gmx.de>
In-Reply-To: <C0D30810-C913-4E31-A18B-CD3887C329E9@gmx.de>
Date: Wed, 26 Oct 2022 13:42:09 -0700
Message-ID: <CAA93jw5T-qUGsAeewUx=V5k2vZXn85FeY5mYosx2_E4PccMVtw@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] [Rpm] [Make-wifi-fast] The most wonderful video ever
	about bufferbloat
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Stuart Cheshire <cheshire@apple.com>, Rpm <rpm@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBsb3ZlZCBwYWNlZCBjaGlycGluZy4KCkkgYWxzbyBsb3ZlZCBwYWNrZXQgc3Vid2luZG93cy4g
SSB3aXNoIHdlIGNvdWxkIGFsbCBhZ3JlZSB0byBnZXQKY3JhY2tpbmcgb24gd29ya2luZyBvbiB0
aG9zZSB0d28gdGhpbmdzIGZvciBjdWJpYyBhbmQgcmVubyByYXRoZXIgdGhhbgp3aGluZ2luZyBh
bGwgdGhlIHRpbWUgYWJvdXQgdGhlIHN0dWZmIHdlIHdpbGwgbmV2ZXIgYWdyZWUgb24uCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK

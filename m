Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EC3986B1
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 23:39:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C20B03CB38;
	Wed, 21 Aug 2019 17:39:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566423595;
	bh=WktXERapwCR7V5r6uO94EDC5zmehjf3yaFb3hm9fJe4=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pDqQCeax1zf5S1p6RpSRDJRilraY3ZhtG2BhwZ0YYdqNYpmBPHPIjbpCM9/YhSuYF
	 m749WI4N7vuEEqJumSq0z/nGqLAI6dyQwM/rLH4vmb+uVBfhvPJqBwi1RjJacIoVA1
	 Kr7nCsfRDc3gkCOdSeRLfj6BgGS2qhyau4FFQELzgAGBWG3K2Czlm/FSPMmUbEyW9Z
	 N/Ahfw7T00O/QjNtwO5i0ogWoCe7toxkKYJ9nmkN9q5u7msBJvpWn3ZKYOQe+u56o9
	 vd2zj5/Zmv1jwcDErTBRqwO8F3Q/9AZ9/fLOndIr2KNZxOZD87pDNQftvbmbgnCjtz
	 Iq2ecwgPOB6ig==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D4B733CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 17:39:53 -0400 (EDT)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C5A8685545
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 21:39:52 +0000 (UTC)
Received: by mail-ed1-f69.google.com with SMTP id d64so2157554edd.1
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 14:39:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=QO7Yp1Y4SsdmOdse558v0AWJvk6Bl6VfXr3agXPTUW4=;
 b=K9oUUrJs7dR8KmXOdaRVVSHDVAnpoYakN7ZzFa1k9WQV6F4miw9yrrYorLSy0Gal//
 qR6L2KuV6KfyNpNzyTzTB576lBMfiyB7EiBBXU0vcVGmLskr0Fk2n3cAYeiRN3i/6Iuk
 jKMIo4opr+qo6MNdp0xKpBpEi8r7zB+qO8XhHTmt6SPzGmMJV0c7wSqQhCPQWvdB7AlP
 znIyE3LCiTIIWia3SlPZ3+dYVpdaoGfVjslR91pliCxCPBMo0pqoRS/21RVWHif1F4Ve
 aVNndlgsjpL+6nAYtsLbL5AQwdd6Z+EAmOufQevm9bfxGUxR5sD/oVrTHBV0y6xZgg78
 KtCQ==
X-Gm-Message-State: APjAAAWqLCBEhr4rZQw4MM6zqZkvEr7NGhSvPFKzikGTFrDzwK6Xjnfy
 XGZdkgi2ULp2gjSissk7R7G3FH8IwQyPnK5UfVSe/m2xnFuQ+noG+7p5qSyXOR9/FZrO8AV4BWw
 SaHje/ZswlxO6x4MJv91LWQ==
X-Received: by 2002:a50:f318:: with SMTP id p24mr39333639edm.50.1566423591616; 
 Wed, 21 Aug 2019 14:39:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/dlMHyLtqevilf8QVpWiJxTC73WU/WUgzLvDzmR4ANSEIFd9ih7R21B4jGvs14JXVAB+cew==
X-Received: by 2002:a50:f318:: with SMTP id p24mr39333624edm.50.1566423591480; 
 Wed, 21 Aug 2019 14:39:51 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id b3sm1945367ejl.55.2019.08.21.14.39.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 14:39:50 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 46378181CEF; Wed, 21 Aug 2019 23:39:50 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 Sebastian Moeller <moeller0@gmx.de>, cake@lists.bufferbloat.net,
 Dave Taht <dave.taht@gmail.com>, Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk> <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 21 Aug 2019 23:39:50 +0200
Message-ID: <87wof6p595.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] pie in dd-wrt
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

U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKCj4gQW0gMjEuMDguMjAxOSB1bSAxODoyMSBzY2hyaWViIFNlYmFzdGlhbiBNb2VsbGVyOgo+
Pgo+PiBPbiBBdWd1c3QgMjEsIDIwMTkgNjoxMjowMyBQTSBHTVQrMDI6MDAsIFNlYmFzdGlhbiBH
b3R0c2NoYWxsIDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPj4+IHRoYXRz
IHJhdGhlciBvbGQuIGkgcmV3cm90ZSBhbGwgdGhlIHFvcyBjb2RlIGluIHRoZSBsYXN0IDQgb3Ig
NSBkYXlzLgo+Pj4gc28KPj4+IHRoaW5ncyBtaWdodCBiZSBjaGFuZ2VkLiBuZXh0IHBoYXNlIGlz
IGJyaW5naW5nIGFsbCB0aGUgbGluayBsZXZlbAo+Pj4gZGV0YWlsIGNvbmZpZ3VyYXRpb24gc3R1
ZmYgaW50byB0aGUgZ3VpIHdoaWNoIHdpbGwgYmUgZG9uZQo+Pj4gdG9tb3Jyb3cgb3IgYXQgbGVh
c3Qgc3RpbGwgd2l0aGluIHRoaXMgd2Vlay4KPj4+IGkgYWxzbyBhZGRlZCBub3cgY2FrZSB0byBz
b21lIHNtYWxsZXIgbG93IGJ1ZGdlZCByb3V0ZXJzIHdpdGggbGltaXRlZAo+Pj4gcmVzb3VyY2Vz
LCBzbyBzZWUgaG93IGl0IHJ1bnMuIGkgaGFkIGJhZCBleHBlcmllbmNlcyB3aXRoIGZxX2NvZGVs
IGluCj4+PiB0aGUgcGFzdCBkdWUgc29tZSBoaWdoIG1lbW9yeSB1c2FnZS4KPj4+IGVzcGVjaWFs
bHkgc2luY2UgaXRzIGhhcmQgY29kZWQgc29tZXdoYXQgaW50byB0aGUgd2lyZWxlc3MgYXRoOWsK
Pj4+IGRyaXZlci4KPj4+IHNvIGkgYWxyZWFkeSBtb2RkZWQgaXQgZm9yIG1vcmUgZWZmaWNpZW50
IGhhbmRsaW5nLiA0IG1iIG1heCBwZXIgcXVldWUKPj4+IGlzIHNpbXBseSB0b28gbXVjaCBmb3LC
oCBhIDMyIG1iIHJhbSBiYXNlZCByb3V0ZXIuCj4+IFRoaXMgaXMgd2h5IEknbSBzcW0gd2UgcmVk
dWNlZCB0aGUgcXVldWVkIHBhY2tldCBtYXhpbXVtIG0gdG8gYXJvdW5kIDEwMDAsIGFuZCBhbHNv
IHdoeSBjYWtlIGhhcyBhbiBleHBsaWNpdCBtZW1saW1pdCBrZXl3b3JkLgo+IHllYWggYnV0IGRv
ZXMgdGhpcyBoZWxwIGlmIGZxX2NvZGVsIGlzIGhhcmRjb2RlZCBpbnRvIG1hYzgwMjExPyBmcV9j
b2RlbCAKPiBoYXMgYSBtZW1saW1pdMKgIGtleXdvcmQgdG9vIGJ0dy4gaXRzIGZpeGVkIHRvIDRN
Qi4gaSByZWR1Y2VkIGl0IHRvIDI1NmtiIAo+IG9uIGxvdyBtZW1vcnkgYXJjaGl0ZWN0dXJlcy4g
bm8gb3RoZXIgd2F5IHRvIGdldCBhcm91bmQgT09NIHByb2JsZW1zCj4gbWFjODAyMTHCoCBkb2Vz
IGFsd2F5cyBtYWtlIHVzZSBvZiBmcV9jb2RlbC4gaXQgaGFzIGEgb3duIGJ1aWxkIGluIAo+IGlt
cGxlbWVudGF0aW9uCgpUaGUgbWFjODAyMTEgaW1wbGVtZW50YXRpb24gYWxzbyBoYXMgYSBtZW1s
aW1pdCBwYXJhbWV0ZXIuIFlvdSBjYW4gc2V0Cml0IHRocm91Z2ggZGVidWdmcyAtIDJNQiB3b3Vs
ZCBiZToKCmVjaG8gMjA5NzE1MiA+IC9zeXMva2VybmVsL2RlYnVnL2llZWU4MDIxMS9waHkwL2Fx
bQoKb3IgdGhyb3VnaCBpdzoKCml3IHBoeSBwaHkwIHNldCB0eHEgbWVtb3J5X2xpbWl0IDIwOTcx
NTIKClRoZSBubDgwMjExIGF0dHJpYnV0ZSBpcyBjYWxsZWQgTkw4MDIxMV9BVFRSX1RYUV9NRU1P
UllfTElNSVQuCgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

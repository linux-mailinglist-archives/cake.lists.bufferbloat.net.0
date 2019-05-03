Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id D916E130FA
	for <lists+cake@lfdr.de>; Fri,  3 May 2019 17:13:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A1AE33CB39;
	Fri,  3 May 2019 11:13:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556896398;
	bh=5NenHPjzmBgwkOl87tt/czr2I2Yj67wggYAifOFqKtY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bs4qeNcQqdrMKgUah+D0OdAQOews7vQs6EjMmuyNXxgSHFH8sEP+NdiC2WDc8C/hp
	 GD4YVdgfHFEFlbUux2Z5UdGVzBgufwxDc7R7DhqYYRbAssLcNSgFPXnWWbJzdrI+ku
	 e9xeAXWe3KAV2UKk5h32297xf0P6+VDOu5JyZBr+TQp7zAwCX1HLj6KhQZzVjjq73l
	 pg8QGotwnHY0987Vv70vd5ei2Uy0+3q6LxazdZU0bo4h4MeVAhVbYT3WqYhL8CM/cy
	 WOHjuNKR1ILo/WFUPsYAIact7U7dquGp4zz36qExJSHZr7Ph+3SuxzEfnDWhRkyRTq
	 EFCsn3d9QVgpg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 14AFE3CB35
 for <cake@lists.bufferbloat.net>; Fri,  3 May 2019 11:13:17 -0400 (EDT)
Received: by mail-ed1-f66.google.com with SMTP id f37so6378949edb.13
 for <cake@lists.bufferbloat.net>; Fri, 03 May 2019 08:13:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=9OB5U01gE0ihNsPhnI3xLxXzVR37gKG4V5jFCcPh4Rc=;
 b=FnvLncSCreEEtJEHNzQaf+odwR5RobNASeVnskcq4flfysHTXSmS5Bt4Wwsc9OZeD2
 DAtX9HYVLbGIQuzVvKgPhUj96VzcV0Hqq7L7V0LUVM4MrVSUJ7B6xMwAqmxnUmNGtnbM
 RP+vhEhRBYNF7JUeGGEzd7IIHxjMHLIw5kggGQe+WkP7S2q/yYWfX/jROzAmAAMLmf8H
 Pt9Y/ui+t5niBa3hmNWFMeyoK3iAR77m2Ho31rzyW7mq6ZuY+hZoGElyFiaj5jP1LLT1
 JtmaSxZ41x/gZvpCFkGIW+Gfhpdo2V/eKHFeMOC632yqdeFEavIKaHd8DxcwRqFmnbA5
 Pxsw==
X-Gm-Message-State: APjAAAUN+py9Uh10UvsjVNhy+TKuNLv500MmmNvmU8ZrCR6+LKg9k8eS
 Hi6G8E65mNLFpE3jNuXHHxISae/XFhA=
X-Google-Smtp-Source: APXvYqyBbChY55so8d5IEG4c5pNU5fLocf3x7Ibmr88wZfozRvC1RLONDux6/uxB2cZ9Q6JQS7CSgA==
X-Received: by 2002:a50:bd85:: with SMTP id y5mr9092470edh.112.1556896395896; 
 Fri, 03 May 2019 08:13:15 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.vpn.toke.dk.
 [2a00:7660:6da:10::2])
 by smtp.gmail.com with ESMTPSA id t29sm642377edb.30.2019.05.03.08.13.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 08:13:15 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 8ED821800E2; Fri,  3 May 2019 17:13:14 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
In-Reply-To: <96D6EC2B-C57B-450D-AC65-9D9526840D83@darbyshire-bryant.me.uk>
References: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
 <87pnozhb2s.fsf@toke.dk>
 <96D6EC2B-C57B-450D-AC65-9D9526840D83@darbyshire-bryant.me.uk>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 03 May 2019 17:13:14 +0200
Message-ID: <87muk3h8qd.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Possible conntrack lookup improvements
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

S2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQgPGtldmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3
cml0ZXM6Cgo+PiBPbiAzIE1heSAyMDE5LCBhdCAxNToyMiwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu
c2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+PiAKPj4gS2V2aW4gRGFyYnlzaGlyZS1Ccnlh
bnQgPGtldmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3cml0ZXM6Cj4+IAo+Pj4gSGkgRXZl
cnlvbmUsCj4+PiAKPj4+IEnigJl2ZSBiZWVuIHdvcmtpbmcgb24gYWN0X2N0aW5mbyB0b3dhcmQg
Z2V0dGluZyB0aGF0IHVwc3RyZWFtIGFuZCBpdCBpcwo+Pj4gZ2V0dGluZyBjbG9zZXIuIFNpbmNl
IHRoYXQgbW9kdWxlIGFsb25nIHdpdGggYWN0X2Nvbm5tYXJrIGRvZXMgaXRzIG93bgo+Pj4gY29u
bnRyYWNrIGxvb2t1cHMgSeKAmXZlIGJlZW4gbG9va2luZyBhdCB3aGF0IHRoZXkgZG8gYW5kIHdo
YXQgd2UgZG8gaW4KPj4+IGNha2UuCj4+PiAKPj4+IFR3byBwYXRjaGVzIGF0dGFjaGVkIC0gb25l
IGlzIGEgc2ltcGxlIHZhcmlhYmxlIGVsaW1pbmF0aW9uIHdpdGggbm8KPj4+IGZ1bmN0aW9uYWwg
Y2hhbmdlLiBUaGUgc2Vjb25kIGNoYW5nZXMvc2ltcGxpZmllcyB0aGUgY29ubnRyYWNrIHR1cGxl
Cj4+PiBsb29rdXAgJiB1c2FnZS4gSeKAmXZlIGhhZCBhIHBsYXkgYW5kIEkgZG9u4oCZdCB0aGlu
ayBJ4oCZdmUgYnJva2VuIGFueSBvZgo+Pj4gdGhlIGhvc3QgZmFpcm5lc3MgQlVUIGl0IGNvdWxk
IGRvIHdpdGggc29tZSBtb3JlIHRlc3RpbmcsIHRoYXTigJlzIHdoZXJlCj4+PiB5b3UgY29tZSBp
buKApiBwcm9iYWJseSBQZXRlICYgR2VvcmdlIDotKQo+PiAKPj4gU2VlbXMgcmVhc29uYWJsZS4g
QnV0IHBsZWFzZSBmb2xkIHRoZXNlIHR3byBwYXRjaGVzIGludG8gb25lOyBjaGFuZ2luZwo+PiBl
dmVyeXRoaW5nLCB0aGVuIGltbWVkaWF0ZWx5IGNoYW5naW5nIGl0IGFnYWluIGRvZXMgbm90IGhl
bHAKPj4gcmVhZGFiaWxpdHkuLi4gQW5kIHRoZSBleHBsYW5hdGlvbiBtYWtlcyBhIGxvdCBtb3Jl
IHNlbnNlIGlmIHlvdSBqdXN0Cj4+IGNoYW5nZSB0aGUgd2hvbGUgdGhpbmcgaW4gb25lIHBhdGNo
IDopCj4+IAo+PiAtVG9rZQo+Cj4gWWVhaCwgd2hlbiBJIGRvIHRoZSBQUiBhZnRlciB0ZXN0aW5n
IGNvbmZpcm1zIEkgaGF2ZW7igJl0IHRvdGFsbHkKPiBzY3Jld2VkIHVwIGhvc3QgZmFpcm5lc3Mg
aW4gdGhlIHByb2Nlc3MgSeKAmWxsIG9mIGNvdXJzZSBzcXVhc2ggdGhlbQo+IHRvZ2V0aGVyIDot
KQoKQ29vbCA6KQoKLVRva2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

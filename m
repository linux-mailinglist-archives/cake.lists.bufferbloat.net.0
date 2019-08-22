Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC47994AB
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 15:16:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E47EF3CB38;
	Thu, 22 Aug 2019 09:16:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566479771;
	bh=Q9NdF9jijdl919mmkYoz91DWqInTwENS4yODT/wDtow=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W63a4lKq6IfbhiNxV6hbMxlzSlQIZN3d+WgAeF0zOgpql++h/eda5DSzmsvv1HLDe
	 vSrBAdzcgd/aoHMUfynyCnEdyTKrXhI/GNKGvnRblI4X4YolcJErzA1UBitPcjZq0X
	 ClnRP55xF62f6naH7c0R5iC17JlerI3UVi/Z5OO2PP94+Og/vLGYFrydHDN1D2nVXG
	 Wgar5sGonOAscnktKHAOC/4o9iOkOJ/AhJuqGV6k0NPLVkz4ks2YazTV25U2ml1mSF
	 ueNJh5beyGS9s2JoYTM14Bj6rS1T2DtgtNSjmTvAVHDl6AmcD9/LHK/2Sg9aFLZ2Mf
	 ApdH49eedKmSQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com
 [IPv6:2607:f8b0:4864:20::d2b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 06D1B3B29E
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 09:16:11 -0400 (EDT)
Received: by mail-io1-xd2b.google.com with SMTP id s21so11791681ioa.1
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 06:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M24AM+asdjrDqhEiq5ttyHN6a9bnQW5YBSKf6EJ9DzI=;
 b=Oq3fRziv6TNNVWNoT09XHnKWXfJMPAxqrUV2ihgjoYrr2sl8DEsnWWYtrHaLWLK5//
 818x02rV9+NTA1+prWFlveDJCkqTHmB7Z45Fpr/M6EhW+LVX6WR0HmIKUaEbYxoqVKSk
 Kym8VxFSvfZvuGh4wisZ49jR74FaxqefiRzTgFWQ0E/2DeD8XNdBEcmpyqfFMvLWd+/0
 ajhBm9PwZRssSEZYyBP9z0zCXyFHJ2UXODJrclA9i89FW1BXkWLNo07t+GZEJtiQ/RWW
 pU4zBxWHo5EZ4qUtbyOz6wm/bWSnaeoEA5ivaq9zmYxFXDRT6vIhsgJ4VREcYYmYU5SK
 VQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M24AM+asdjrDqhEiq5ttyHN6a9bnQW5YBSKf6EJ9DzI=;
 b=QWaJvanKW/V2rVkEN9W9LzM489e1LZ3zUSpBWh0VH22LjLeK+6QdfykPizFU23hC/o
 pQqPJ9qy8PR4QaXfY9CvA+hfZSIoc9EVoglsvpedfybeJKvuSM7X88MAEz8oF0vpzRSw
 TjgLHmLzYg/wwJMKia7FEEMhiJ5tXssE2RMLYgr3X9G4jIuX8GFhR/dgGKK0rijmiYGh
 oZtnQJLqjrho1/1f6AweCN70pRXE2HI5J6Ryw1c38QYKyKkev093gOTp8hN7i+swJNI4
 BusBnpTN2EINBe5pkO7uf/EGIGGEbJRG60lsb/SdtJlz2usFVUt6Euw4nbjgvMhmW2DN
 Ewjg==
X-Gm-Message-State: APjAAAXl3az6UIbXQY1jeTme+OY/7J/v6dW7OAyyN4Z0dLDZRvB9SsQh
 ObSFneGNPwGVuHsYfoKITIpBk6I2tiPy67nHK+c=
X-Google-Smtp-Source: APXvYqyo6YsNXMvOoPyqAr8lpRL4rBwQtaerdwT88X4oRJ+YkwPW4JJlLJHRHAdYV660pFnCd4LwGn/gOF7jprZVD7s=
X-Received: by 2002:a5e:8a48:: with SMTP id o8mr13444668iom.287.1566479770294; 
 Thu, 22 Aug 2019 06:16:10 -0700 (PDT)
MIME-Version: 1.0
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
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
 <87sgpvflo4.fsf@taht.net> <87wof6rf7t.fsf@toke.dk>
 <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87v9uqea3x.fsf@taht.net> <87tvaap57q.fsf@toke.dk>
 <CAA93jw6f0kedxwoN-ER3W1QKeg0sMxVCy6YYk_gRbrVwhD42jQ@mail.gmail.com>
 <5bbd2b81-9846-3a7a-130c-0f59e04fd2d1@newmedia-net.de>
In-Reply-To: <5bbd2b81-9846-3a7a-130c-0f59e04fd2d1@newmedia-net.de>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 22 Aug 2019 06:15:57 -0700
Message-ID: <CAA93jw4=13D-+WHLYPiV4NPqeVJwrLJe=nkr+a9D9Cqvq49pEQ@mail.gmail.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Subject: [Cake] Wifi Memory limits in small platforms
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Battle of the Mesh Mailing List <battlemesh@ml.ninux.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SXQncyB2ZXJ5IGdvb2QgdG8ga25vdyBob3cgbXVjaCBmb2xrIGhhdmUgYmVlbiBzdHJ1Z2dsaW5n
IHRvIGtlZXAKdGhpbmdzIGZyb20gT09NaW5nIG9uIDMyTUIgcGxhdGZvcm1zLiBJJ2QgbGlrZSB0
byBob3BlIHRoYXQgdGhlCnVuaWZpZWQgbWVtb3J5IG1hbmFnZW1lbnQgaW4gY2FrZSAodnMgYSBj
b2xsZWN0aW9uIG9mIFFvUyBxZGlzY3MpIGFuZAp0aGUgbmV3IGZxX2NvZGVsIGZvciB3aWZpIHN0
dWZmIChjdXR0aW5nIGl0IGRvd24gdG8gMSBhbGxvYyBmcm9tIGZvdXIpCmhlbHAsIG1hc3NpdmVs
eSBvbiB0aGlzIGlzc3VlLCBidXQgdW50aWwgdG9kYXkgSSB3YXMgdW5hd2FyZSBvZiBob3cKbXVj
aCB0aGUgZmllbGQgbWF5IGhhdmUgYmVlbiBwYXRjaGluZyB0aGluZ3Mgb3V0LgoKVGhlIGRlZmF1
bHQgMzJNQiBtZW1vcnkgbGltaXRzIGluIGZxX2NvZGVsIGNvbWVzIGZyb20gdGhlIHN0cmVzc2lu
ZwphYm91dCAxMEdpZ0UgbmV0d29ya2luZyBmcm9tIGdvb2dsZS4gNE1CIGlzIGxpbWl0IGluIG9w
ZW53cnQsCndoaWNoIGlzIHN1aXRhYmxlIGZvciB+MUdiaXQsIGFuZCBpcyBzb3J0IG9mIHRoZXJl
ICBkdWUgdG8gODAyLjExYWMncwptYXhpbXVtIChpbXBvc3NpYmxlIHRvIGhpdCkgb2YgYSB0eG9w
IHRoYXQgbGFyZ2UuCgpTb21ldGhpbmcgYXMgc21hbGwgYXMgMjU2SyBpcyBlc3NlbnRpYWxseSBh
Ym91dCAxMjggZnVsbCBzaXplIHBhY2tldHMKKGFuZCBvZnRlbiwgYWNrcyBmcm9tIGFuIGV0aGVy
bmV0IGRldmljZSdzIHJ4IHJpbmcgZWF0IDJrKS4KClRoZSBzdHJ1Y3R1cmUgb2YgdGhlIG5ldyBm
cV9jb2RlbCBmb3Igd2lmaSBzdWJzeXN0ZW0gaXMgIm9uZSBpbiB0aGUKaGFyZHdhcmUsIG9uZSBy
ZWFkeSB0byBnbywgYW5kIHRoZSByZXN0IGFjY3VtdWxhdGluZyIuIEkKdHlwaWNhbGx5IHNlZSBh
Ym91dCAxMy0yMCBwYWNrZXRzIGluIGFuIGFnZ3JlZ2F0ZS4gMjU2ayBzdHJpa2VzIG1lIGFzCmEg
Yml0IHNtYWxsLgoKSSBoYXZlbid0IGNoZWNrZWQsIGJ1dCBkb2VzIHRoaXMgcGF0Y2ggc3RpbGwg
ZXhpc3QgaW4gb3BlbndydC9kZC13cnQ/Ckl0IGhhZCBoZWxwZWQgYSBsb3Qgd2hlbiB1bmRlciBt
ZW1vcnkgcHJlc3N1cmUgZnJvbQphIGxvdCBvZiBzbWFsbCBwYWNrZXRzLgoKaHR0cHM6Ly9naXRo
dWIuY29tL2R0YWh0L2Nlcm93cnQtMy4xMC9ibG9iL21hc3Rlci90YXJnZXQvbGludXgvZ2VuZXJp
Yy9wYXRjaGVzLTMuMTAvNjU3LXFkaXNjX3JlZHVjZV90cnVlc2l6ZS5wYXRjaAoKQXJndWFibHkg
dGhpcyBjb3VsZCBiZSBtYWRlIG1vcmUgYWdncmVzc2l2ZSwgYnV0IGl0IG1hc3NpdmVseSByZWR1
Y2VkCm1lbW9yeSBidXJkZW5zIGF0IHRoZSB0aW1lIEkgZGlkIGl0IHdoZW4KZmxvb2RpbmcgdGhl
IGRldmljZSwgb3IgaGF2aW5nIGxvdHMgb2YgYWNrcywgYW5kIHdoaWxlIGl0IGNvc3QgY3B1IGl0
CnNhdmVkIG9uIG9vbWluZy4KClRoZXJlJ3MgdHdvIG90aGVyIGR1YmlvdXMgdGhpbmdzIGluIHRo
ZSBmcV9jb2RlbCBmb3Igd2lmaSBzdGFjawpwcmVzZW50bHkuIFJpZ2h0IG5vdyB0aGUgY29kZWwg
dGFyZ2V0IGlzIHNldCB0b28gaGlnaCBmb3IgcDJwIHVzZQooMjBtcywgd2hlcmUgNm1zIHNlZW1z
IG1vcmUgcmlnaHQpLCBhbmQgaXQgYWxzbyBmbGlwcyB1cCB0byBhIHJlYWxseQpoaWdoIHRhcmdl
dCBhbmQgaW50ZXJ2YWwgQU5EIHR1cm5zIG9mZiBlY24gd2hlbiB0aGVyZSdzIG1vcmUgdGhhbiBh
CmZldyBzdGF0aW9ucyBhdmFpbGFibGUgKHJhdGhlciB0aGFuICJhY3RpdmUiKSAtIGl0J3MgYW4g
b3Zlcmx5CmNvbnNlcnZhdGl2ZSBmaWd1cmUgd2UgdXNlZCBiYWNrIHdoZW4gd2UgaGFkIG1ham9y
IGlzc3VlcyB3aXRoCnBvd2Vyc2F2ZQphbmQgbXVsdGljYXN0IHRoYXQgSSdkIGhvcGVkIHdlIGNv
dWxkIGN1dCBiYWNrIHRvIG5vcm1hbCBhZnRlciB3ZSBnb3QKYW5vdGhlciByb3VuZCBvZiByZXNl
YXJjaCBmdW5kaW5nIGFuZCBmZWVkYmFjayBmcm9tIHRoZSBmaWVsZCAod2hpY2gKZGlkbid0IGhh
cHBlbiwgYW5kIHdlIG5ldmVyIGdvdCBhcm91bmQgdG8gbWFraW5nIGl0IGNvbmZpZ3VyYWJsZSwg
YW5kCmJlaW5nIDI1eCBiZXR0ZXIgdGhhbiBpdCB3YXMgYmVmb3JlIHNlZW1lZCAiZW5vdWdoIikK
Ckkgd2FzIHB1enpsZWQgYXQgYmF0dGxlbWVzaCBhcyB0byB3aHkgSSBoYWQgZHJvcHBpbmcgYXQg
YWJvdXQgNTBtcwpkZWxheSByYXRoZXIgdGhhbiBlY24sIGFuZCB0aG91Z2h0IGl0IHdhcyBzb21l
dGhpbmcKZWxzZSwgYW5kIHRoaXMgbW9ybmluZyBJJ20gdGhpbmtpbmcgdGhhdCBmb2xrIGhhdmUg
YmVlbiByZWR1Y2luZyB0aGUKbWVtbGltaXQgdG8gMjU2ayByYXRoZXIuLi4uCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK

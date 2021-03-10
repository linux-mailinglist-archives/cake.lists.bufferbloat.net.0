Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A9B333295
	for <lists+cake@lfdr.de>; Wed, 10 Mar 2021 01:57:24 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0CBE03CB39;
	Tue,  9 Mar 2021 19:57:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1615337843;
	bh=NskKUz8YJNGqaDyERkoteFJRMsHfWjpShhz3/wwrq3U=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a2r3XX1Mkfy5acHsh/hPWA8oC8FptBlhMiDUOFoFzpYsrSHKDwwElI31uUjS5RZB4
	 WYOzYIxkTW3j7bLzQqZGYXo6r3EfUEM/Ai8co/nBVums6NLGm7qP13a5Rj3OyXGq70
	 rvEL+hx0A8VKKJD5TYFYw66N+iPDeZ9fJa8M0QAD7CSFGk7rcBeU7gDyqbGU/pHA/O
	 pAc7CUL/vn44tRfDw3Up8yv8CujkKEpfhsff/QjQe4fKrxe2KUOgxU5rNLvh0p/l2q
	 256+d+qEfPlMCXneb4hSc/BOue7M5Hlz8LQnKRymKmnESFiSHX8N1bCRDxItAYDJ1g
	 39USheeaJT0HA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BC2663B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Mar 2021 19:57:21 -0500 (EST)
Received: by mail-il1-x12a.google.com with SMTP id d5so13966761iln.6
 for <cake@lists.bufferbloat.net>; Tue, 09 Mar 2021 16:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=blKMMVzA0nq6ruDfTEvH2F4JS7wHymS+8nnQdyHCMsw=;
 b=NkmUE2g44oLJd5YY/HB2WU5pwHrZHP1StWza3WFdrzSqlVjBgAo8bghm90WXOi73Hs
 o7bPMRrgYcsKguv/znwfLjmBafVSMUV6vZH+mL2f4GLLcDkupXHlsYBYw5MXEFTC4aUD
 CGySIw3lJCLTrkNZpkLFX3AuI7UzBEZnFBwOjnKaI7+Rn2QbtytE5aOMuQOLGGKryPqK
 gJyAi5r70g0Afd6j850rSPxV3v8KBtbwtaDaljuQ750K+cUHslse1DHzNjkb3z5lrDil
 XV9nnQL0F6Bngz27/5P1Y3jfhYchMGEJMX04Qbh0+bYRzilxf1oVNGxmfvY6DuM3+mfb
 cRFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=blKMMVzA0nq6ruDfTEvH2F4JS7wHymS+8nnQdyHCMsw=;
 b=bHGllGZtOE1Dx+r3gq7NdW9vfNcqXqiGMy3e0ODSDyHlAdDNZsvVgGv8jLrace+DoR
 9tWhOWBgfHjAAWL9ubRO5VmJI1jyLTJD+DFjp2KQRZjPC5V3CmKgHhBa4+OPOTOMbAen
 ZULJryZyzr2e6fsO+2Q3E/ErZKwLMhgd/+usu//goXtSTtVvedJQh5WMMQQWBO4ZG2o4
 zqWNV/wbs0PjVRv6yTTUjFd2v49qZswUlDXXKdXYobu5YZwWOCZ9XcvdYM+9ka/+cmVQ
 8/72T6E4j58HcbdtQKMjE2wB82BRdNg1t3lgXih3y328RUNQFoM+nf9Vyziw7RUFx7pJ
 1j9w==
X-Gm-Message-State: AOAM532cMq1eGt6UJr2CnWQXhR8tWX46RsxBhvNtKp7hytwsWYGCiBmX
 EFe1vaz6Oygr2oSR5uFNSFnmVCv3+Yl7ICVq5dk=
X-Google-Smtp-Source: ABdhPJyDwa1gp3NtpoKXTrsbPiq3DGKlcB5wP7g4WzEOHtd2zdli7a4o8ZZe/jOkNQDD4KYrC4tPVBtNiN1VPK41XeE=
X-Received: by 2002:a05:6e02:f06:: with SMTP id
 x6mr678003ilj.287.1615337841227; 
 Tue, 09 Mar 2021 16:57:21 -0800 (PST)
MIME-Version: 1.0
References: <5407860ac65c4059838e7952ae162f9d@telenor.no>
 <CAA93jw6Z1af9T=qf5kjwnhu+_4V6JnKXrUciXAuL1sEpkBCWWg@mail.gmail.com>
 <9AADDAFC-ECCE-4023-BB68-C5CC729EC521@gmail.com>
 <59bb446ac8791ead9d3ce9a0f1bfff3e7d6f58d8.camel@lochnair.net>
In-Reply-To: <59bb446ac8791ead9d3ce9a0f1bfff3e7d6f58d8.camel@lochnair.net>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 9 Mar 2021 16:57:09 -0800
Message-ID: <CAA93jw5vmqoRjD5OerJgWbD7FnZG4_PoSYffDRXCY6hdJU+o2A@mail.gmail.com>
To: Nils Andreas Svee <me@lochnair.net>
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
 <cake@lists.bufferbloat.net>, Taraldsen Erik <erik.taraldsen@telenor.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSB3b3VsZCByZWFsbHkgbGlrZSB0aGVtIHRvIHVzZSBsZXNzIGZsb3dzIC0gb3IgQkJSIHN0YXJ0
ZWQgdXAKc2VwYXJhdGVseSB3aXRoIGEgMjAwK21zCmludGVydmFsIGJldHdlZW4gc3RhcnRzIHdv
dWxkIGJlIGdvb2QuLi4uCgpPbiBUdWUsIE1hciA5LCAyMDIxIGF0IDQ6MzEgUE0gTmlscyBBbmRy
ZWFzIFN2ZWUgPG1lQGxvY2huYWlyLm5ldD4gd3JvdGU6Cj4KPiBPbiBXZWQsIDIwMjEtMDMtMTAg
YXQgMDE6MTQgKzAyMDAsIEpvbmF0aGFuIE1vcnRvbiB3cm90ZToKPiA+ID4gT24gOSBNYXIsIDIw
MjEsIGF0IDEwOjIwIHBtLCBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+
ID4gPgo+ID4gPiAxMC0yMCBmbG93cywgY3ViaWMsIGxhc3QgSSBsb29rZWQuIEl0J3MgdWdseS4K
PiA+Cj4gPiBJIGNhbid0IGNvbmZpcm0gQ1VCSUMgZnJvbSBoZXJlLCBidXQgaXQgc2VlbXMgdG8g
YmUgNC04IGZsb3dzIGluCj4gPiBwYXJhbGxlbCBub3cuICBMYXRlbmN5IHRvIHRoZSBuYXRpb25h
bCBDRE4gaXMgYWJvdXQgMjJtcyBvdmVyIExURSwgc28KPiA+IGl0J3MgaGFyZCB0byBkaXN0aW5n
dWlzaCBDVUJJQyBmcm9tIGFueXRoaW5nIGVsc2UgaW4gcGFydGljdWxhcjsgaW4KPiA+IHRoaXMg
cmFuZ2UgaXQgd291bGQgbG9vayBhIGxvdCBsaWtlIE5ld1Jlbm8uICBJdCBzZWVtcyB0byBzaHV0
IGRvd24KPiA+IGVhY2ggZmxvdyBhbmQgc3RhcnQgYSBmcmVzaCBvbmUgYWZ0ZXIgYWJvdXQgYSBt
aW51dGUuCj4gU2VlaW5nIHNvbWV3aGVyZSBiZXR3ZWVuIDgtMTYgaGVyZSBJIGJlbGlldmUuIElJ
UkMgSSd2ZSBzZWVuIHlvdQo+IG1lbnRpb24gYmVpbmcgbG9jYXRlZCBpbiBGaW5sYW5kLCBpZiBz
byB3ZSdyZSBwcm9iYWJseSBvbiB0aGUgc2FtZQo+IGRhdGFjZW50ZXIgaW4gU3RvY2tob2xtLgo+
Cj4gVGhlIGZsb3dzIGFyZSBwcm9iYWJseSBub3QgbGFzdGluZyBsb25nIGJlY2F1c2UgdGhlIGRv
d25sb2FkcyBhcmUgc3BsaXQKPiBpbnRvIGNodW5rcywgd2hpY2ggYWNjb3JkaW5nIHRvIG15IGxv
Z3MgYXJlIGF0IG1vc3QgMSBNQi4gUGF0Y2hlcyBzZWVtCj4gdG8gd29yayBkaWZmZXJlbnRseSwg
dGhvc2UgY2FuIGJlIG11Y2ggbGFyZ2VyIChsb2dzIHNob3dzIHRoZSBsYXJnZXN0Cj4gb25lIHRo
ZSBwYXN0IG1vbnRocyB3YXMgMTM3IE1CLCBkZXBlbmRzIG9uIHRoZSBnYW1lIEkgYXNzdW1lKS4K
Pgo+IC0tCj4gQmVzdCBSZWdhcmRzLAo+IE5pbHMKPgoKCi0tIAoiRm9yIGEgc3VjY2Vzc2Z1bCB0
ZWNobm9sb2d5LCByZWFsaXR5IG11c3QgdGFrZSBwcmVjZWRlbmNlIG92ZXIgcHVibGljCnJlbGF0
aW9ucywgZm9yIE1vdGhlciBOYXR1cmUgY2Fubm90IGJlIGZvb2xlZCIgLSBSaWNoYXJkIEZleW5t
YW4KCmRhdmVAdGFodC5uZXQgPERhdmUgVMOkaHQ+IENUTywgVGVrTGlicmUsIExMQyBUZWw6IDEt
ODMxLTQzNS0wNzI5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

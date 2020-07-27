Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8929122FC71
	for <lists+cake@lfdr.de>; Tue, 28 Jul 2020 00:46:24 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 740C43CB38;
	Mon, 27 Jul 2020 18:46:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595889983;
	bh=kWz4/HTNp4o3lYQ/umR6evbs5jiufunquTAoVrXVU/8=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Frbu4fz27VI1n4UdUnsDY/7tgTB51+UPbaVCjWhzr38j5ApyerwKRYE6EaVNyYsrr
	 +PbTHiP6UAHgMCYQshSFq5ssEGDHYwe6A2p1vfYTCMuu8Wf3Sf6GFvdlmgUUIWEPpb
	 /5WBvXMtVaPm+pzhG6EfIDPRxo8JbwB59aoVtvMbH+WzylndxFGUBoWXr+KbG0c8VH
	 wYr/uEl/rertEPL02glP51+/QSpPK2bwAf10oyggOfQbXdTxVxmXXCIY6HZz1yvk/B
	 eHgxCFLmWEeiWf9/s46/9iKb8slfVq9kWCqjthOQKxY0gwV7v1anKVMda0/hX+TAQl
	 U6JltDIbpYZiQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9C21A3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 27 Jul 2020 18:46:22 -0400 (EDT)
Received: by mail-lj1-x235.google.com with SMTP id h19so19015915ljg.13
 for <cake@lists.bufferbloat.net>; Mon, 27 Jul 2020 15:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=BY8kTuIsINj1AHRCDsVULphepw9ErUikeFex/wTlYvs=;
 b=aYOIjpWGciPA1KIxbmG4bkJjG7n0X8VzFo+LTI7wv2lIONn4Tlczo66BP+apUnQds4
 BBSn2WVjoy3biepmfrrKczsEG8mN9mGJmeATDT62gQncJgjcVueFc6piFBCTFJVElF9O
 02croSlngZlekm2RXLePjaSeFZ/d5RAOF4YE2Lo08oiqWMTs3MKkY1bU4IdrS9sI88PK
 cDKADSi7ceJN7S9X5OS75QRJyRIfBeYfPPCIcX+Hqmdjd1GhW57oMP4uGv+Z8s9YcxhH
 K9ht1fhOo6eLsq4DWJa1ne0Dyg0uhMsqBjenJZljrHMujx+t7gFH37xByrpoNEwerf3n
 fIqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=BY8kTuIsINj1AHRCDsVULphepw9ErUikeFex/wTlYvs=;
 b=nnsbZXq0Dx26820Z7sMSgVT5nfAoCcd+qb5gT/v4uVeqYPIcvG+7THs0uuzzhJ5vNG
 f0gEGxfDjCtFO/vPwa1t/B7r7TMOf+u7NzdnHqm3c68MDFvKPkjJrQXp+v6DNBx51fUa
 g9tvuLkHdkIvy0rIOlkIHYilCeeF9agPrSDoHx/KWjMyxsDdS24JfmQbA/uulBwaDUx7
 gtLUKKVKmxt+a+0M943c7/3MwACWLAeZuR78JEFJ6TWiRKOgjIOlWyeEax+drhxLE8qJ
 3V+8fyIUccnnCjlF5JX1I+GVKY8dfonq9wZPzYHBV/Xboj3qsPDR79IZ0TB5aCf5U6hW
 fXYQ==
X-Gm-Message-State: AOAM532Ld/amxTu9eYi9N0jUvfY/IDpB3qH2MJK34HwAnLvVNie6uo+t
 2tPJ5G9NNe9NswjWDzDW6kw=
X-Google-Smtp-Source: ABdhPJw521Z4yrCa6Dt/Pzm0/ASBJA/xdf/2km+HULt1zXFtx6ZES0V/qRU7wjnXJ5SMywATifGrnw==
X-Received: by 2002:a2e:92d0:: with SMTP id k16mr11433638ljh.48.1595889981525; 
 Mon, 27 Jul 2020 15:46:21 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-252-162-nat-p.elisa-mobile.fi.
 [83.245.252.162])
 by smtp.gmail.com with ESMTPSA id b11sm3328944lfb.42.2020.07.27.15.46.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Jul 2020 15:46:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.6\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAD9MmSc54e2NaVnqAVSw8Nk2MbdFr0OFXtT4RC2TUKuDcg0_PA@mail.gmail.com>
Date: Tue, 28 Jul 2020 01:46:03 +0300
Message-Id: <6B18F76E-A466-42A7-ACF7-52D5E6CD3572@gmail.com>
References: <CAD9MmSc54e2NaVnqAVSw8Nk2MbdFr0OFXtT4RC2TUKuDcg0_PA@mail.gmail.com>
To: Jim Geo <dim.geo@gmail.com>
X-Mailer: Apple Mail (2.3445.9.6)
Subject: Re: [Cake] Cake, low speed ADSL & fwmark
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

PiBPbiAyOCBKdWwsIDIwMjAsIGF0IDEyOjQxIGFtLCBKaW0gR2VvIDxkaW0uZ2VvQGdtYWlsLmNv
bT4gd3JvdGU6Cj4gCj4gVGhhbmsgeW91IGZvciBhbGwgdGhlIGVmZm9ydHMgeW91IGhhdmUgZG9u
ZSB0byBtYWtlIGludGVybmV0IHVzYWJsZS4KPiAKPiBJIGN1cnJlbnRseSB1c2UgaHRiICYgZnFf
Y29kZWwgaW4gbXkgbG93IHNwZWVkIEFEU0wgNk1icHMgZG93bmxpbmsvMSBNYnBzIHVwbGluay4g
SSB1c2UgZndtYXJrIHRvIGNvbnRyb2wgYm90aCB1cGxpbmsgYW5kIGRvd25saW5rIHdpdGggZ29v
ZCByZXN1bHRzIGluIHRlcm1zIG9mIGJhbmR3aWR0aCBhbGxvY2F0aW9uLiBTdHJlYW1pbmcgdmlk
ZW8gaXMgY2hvcHBpbmcgYnVsayB0cmFmZmljIHN1Y2Nlc3NmdWxseS4KPiAKPiBJcyBzZXR0aW5n
IHVwIGNha2Ugd29ydGggdGhlIGVmZm9ydCBhdCBzdWNoIGxvdyBzcGVlZHM/IFdvdWxkIGl0IHJl
ZHVjZSBsYXRlbmN5PwoKQ2FrZSBoYXMgYSBiZXR0ZXItcXVhbGl0eSBzaGFwZXIgdGhhbiBIVEIg
ZG9lcywgYW5kIGEgbW9yZSBzb3BoaXN0aWNhdGVkIGZsb3ctaXNvbGF0aW9uIHNjaGVtZSB0aGFu
IGZxX2NvZGVsIGRvZXMuICBUaGVzZSB0ZW5kIHRvIG1hdHRlciBtb3JlIGF0IGxvdyBzcGVlZHMs
IG5vdCBsZXNzLiAgSXQncyBhbHNvIGdlbmVyYWxseSBlYXNpZXIgdG8gc2V0IHVwIHRoYW4gYSBj
b21wb3VuZCBxZGlzYyBzY2hlbWUuCgo+IFJlZ2FyZGluZyBmd21hcmsgY2FuIHlvdSBwbGVhc2Ug
ZWxhYm9yYXRlIG1vcmUgb24gdGhlIGNhbGN1bGF0aW9ucyBwZXJmb3JtZWQ/IE1hbiBwYWdlIGlz
IG5vdCB0aGF0IGhlbHBmdWwuCj4gCj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGlzOgo+IAo+IEkg
dXNlIDEsMiwzLDQgYXMgbWFya3Mgb2YgdHJhZmZpYy4KPiBJZiBJIHNldCB0aGUgbWFzayB0byAw
eGZmZmZmZlsuLl0gdGhlIG1hcmtzIHdpbGwgcmVtYWluIHVuY2hhbmdlZC4gVGhlbiByaWdodCBz
aGlmdGluZyB3aWxsIG9jY3VyIGZvciB0aGUgdW5zZXQgYml0cywgc28gdGhleSB3aWxsIGxhbmQg
b24gdGlucwo+IDEsMSwzLDEKPiAKPiBDYW4geW91IHBsZWFzZSBjb3JyZWN0IG1lPyBJZiBsb2dp
Y2FsIGFuZCBwZXJmb3JtZWQgYmV0d2VlbiBtYXNrIGFuZCBtYXJrIHZhbHVlPwoKU2luY2UgdGhl
cmUncyBvbmx5IGEgZmV3ICJ0aW5zIiBhdCBhIHRpbWUgdXNlZCBpbiBDYWtlLCBhbmQgdGhlIGZ3
bWFyayBpcyBhIGRpcmVjdCBtYXBwaW5nIGludG8gdGhvc2UgdGlucywgYSBuYXJyb3cgbWFzayBp
cyBwcm9iYWJseSBzYWZlciB0byB1c2UgdGhhbiBhIHdpZGUgb25lLiAgVGhlIHJlYXNvbiBmb3Ig
dGhlIG1hc2sgaXMgc28geW91IGNhbiBlbmNvZGUgc2V2ZXJhbCB2YWx1ZXMgaW50byBkaWZmZXJl
bnQgcGFydHMgb2YgdGhlIG1hcmsgdmFsdWUuICBUaGUgc2hpZnQgaXMgc2ltcGx5IHRvIG1vdmUg
dGhlIGZpZWxkIGNvdmVyZWQgYnkgdGhlIG1hc2sgdG8gdGhlIGxvdyBlbmQgb2YgdGhlIHdvcmQs
IHNvIHRoYXQgaXQgaXMgdXNlZnVsIHRvIENha2UuCgpGb3IgeW91ciB1c2UgY2FzZSwgYSBtYXNr
IG9mIDB4RiB3aWxsIGJlIGNvbXBsZXRlbHkgc3VmZmljaWVudC4gIEl0IHdvdWxkIGFsbG93IHlv
dSB0byBzcGVjaWZ5IG1hcmsgdmFsdWVzIG9mIDEtMTUsIHRvIG1hcCBkaXJlY3RseSBpbiB0aGUg
Zmlyc3QgMTUgdGlucyB1c2VkIGJ5IENha2UsIG9yIGEgbWFyayB2YWx1ZSBvZiAwIHRvIGZhbGwg
YmFjayB0byBDYWtlJ3MgZGVmYXVsdCBEaWZmc2VydiBoYW5kbGluZy4gIE5vbmUgb2YgQ2FrZSdz
IHRpbiBzZXR1cHMgdXNlIG1vcmUgdGhhbiA4IHRpbnMsIGFuZCBtb3N0IHVzZSBmZXdlci4KCiAt
IEpvbmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

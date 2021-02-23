Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E635B323272
	for <lists+cake@lfdr.de>; Tue, 23 Feb 2021 21:52:17 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C08213CB38;
	Tue, 23 Feb 2021 15:52:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614113536;
	bh=nxAiX1HjhB+Rf66MLSEConLOS0N8ExDX8M6+vOCN2F0=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pnjAyUz9qXXnaY7RYea1KfBFPxPk1Oyy7f4o2D7F2D8i2qgwV7o9Lkdr9dcXDBpTI
	 n3dOIghE3nDzsrtP+mKIq11nFQbAt87y+22hxGJkPgUySkeM3HJd1G+dBVuK39zAr6
	 sTxXv7MSnpAnQdt/q610H/iEpzv6984wITgyYb+igcDVljYIJ2xYvyZfXy3ZspkklC
	 jkU3/7WyASQso5d9Sb1GpbtauiZhVMViVr1QPK3fq2ARjPYVsHhqbDMRKEbS5Iym1Z
	 xL7yqQvUL/JuNCZ98iaNTbKOxpuNKvkLKWm/KC0xMNlZrGfv5cKZcW3ShgReRe/u2K
	 RUZp6jEivbvCA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 62A533B29E
 for <cake@lists.bufferbloat.net>; Tue, 23 Feb 2021 15:52:15 -0500 (EST)
Received: by mail-qk1-x735.google.com with SMTP id 81so102600qkf.4
 for <cake@lists.bufferbloat.net>; Tue, 23 Feb 2021 12:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :content-transfer-encoding:content-language:thread-index;
 bh=1FQPxjHJewoY4KmN60YYWGJ78f7evQhyZavycfeyPnQ=;
 b=LlyEhOAYXgp2/mpMhiTH5cq/W+yQPbtNC300cVHV8OrtpZE45CwAlLdFEjTWVERRou
 GlDtiSCuXStwFU6l6TALm9y9bAUU4RQ7+032EDnJA+jTQ/wSFVKLQjD9TNAdOJsKMFek
 4AxqTOJvEwSCB5qCytFJj8OXqofhu63Eozq30dMJ9GaVQo9FOEC+cJfPRQnazpSQWqPG
 xiLj0NPhPQDCw3OsNeAQWTwd9CPHLXkF4+Y4P9TEFiSREaCsObRevsMx/wI7Etgi4pOC
 LmNa4hxgXzrkK1iBw4SwwV/2gUG7XYtSLEVrtr5/dZ9h/EVvIZjB5VgDv8Nk+GQqFV7R
 EeeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:content-language
 :thread-index;
 bh=1FQPxjHJewoY4KmN60YYWGJ78f7evQhyZavycfeyPnQ=;
 b=Y5mvFWf5D14pxk21m4MSlUutxv1iDZdIXSg6ZV1uxet3OMBEvvwhkLbL5iWRi/qxOF
 ErjBnZerWLy20Q5x6lfrEx2D4iIXuhaKth54eME3LrX2YhWCPbVYhTVtkrDNjwZKcInf
 KWej6eRD33T1Gn0J4eoQIzwGCTIueUFAmGOlKetqp2NDcp4ZRTqlEgmqkPxW7Nby+uNn
 Y6g8wHm9WJ0g0jmhT6VITd9iAY8pBezBYbUhObM1SsMOsLYx16HEcsLvQb8Cq+m/CU+Y
 iOtZiMoEQ1PhMknPtnVKBACDaClaoxrZmrwa8i6P7hVPtdCdDO6THQnbDrllR6ViZ40U
 poww==
X-Gm-Message-State: AOAM533PwKB95vTsUxRfT1ewn4pVago1MjFO/2Q48OkgssfHOsM3Rbrm
 TIZ0J+oTPZ49vgyxyCjp5pfdoqRQaGXD6xNT
X-Google-Smtp-Source: ABdhPJzufqCS24eAgG2VYd4b8pvnQL9Ft2R5kQzfR2KhX7Ktke7By7Q0sgfkorTB5fS1vUswY+Au0A==
X-Received: by 2002:a05:620a:12f2:: with SMTP id
 f18mr28717558qkl.17.1614113534455; 
 Tue, 23 Feb 2021 12:52:14 -0800 (PST)
Received: from DESKTOPCIICUKU
 (bras-base-toroon0240w-grc-12-70-51-234-16.dsl.bell.ca. [70.51.234.16])
 by smtp.gmail.com with ESMTPSA id a9sm7181148qtx.96.2021.02.23.12.52.13
 for <cake@lists.bufferbloat.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Feb 2021 12:52:13 -0800 (PST)
From: "Jeremy Marks" <jmarks2@gmail.com>
To: "'Cake List'" <cake@lists.bufferbloat.net>
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk> <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
 <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
 <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
 <f954af51-8a96-d4de-d9ac-f3c78174cd39@sager.me.uk>
In-Reply-To: <f954af51-8a96-d4de-d9ac-f3c78174cd39@sager.me.uk>
Date: Tue, 23 Feb 2021 15:52:12 -0500
Message-ID: <003101d70a25$c32357a0$496a06e0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQG9qMS4LtDx6E49v/2g8DNj85OmawJGv/gMAe+9JewB26Rj5wGPdpeiAPIeNF4Buhc2NAJIa6sIqjRH6YA=
Subject: Re: [Cake] Enforcing video quality question
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

VGhhbmsgeW91IHZlcnkgbXVjaCEKCi0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQpGcm9tOiBDYWtl
IDxjYWtlLWJvdW5jZXNAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiBPbiBCZWhhbGYgT2YgSm9obiBT
YWdlcgpTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAyMywgMjAyMSA2OjE1IEFNClRvOiBjYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApTdWJqZWN0OiBSZTogW0Nha2VdIEVuZm9yY2luZyB2aWRlbyBx
dWFsaXR5IHF1ZXN0aW9uCgpIZXJlIGlzIHRoZSB0b3kgUW9TIHNvbHV0aW9uIGZvciBsaW51eCwg
d2hpY2ggaXMgYSBzaW1wbGlmaWVkIHZlcnNpb24gb2YgdGhlIG9uZSBJIHVzZXMgc3VjY2Vzc2Z1
bGx5IG9uIG15IGhvbWUgbmV0d29yay4gSXQgdXNlcyBxdWl0ZSBhIGZldyBzY2hlZHVsZXIgbW9k
dWxlcyAtIHNjaF9odGIsIGFjdF9jb25ubWFyaywgZW1fbWV0YSBldGMgLSB0aGF0IG1heSBub3Qg
bG9hZCBhdXRvbWF0aWNhbGx5LCBzbyB0aGV5IG1heSBuZWVkIHRvIGJlIGxpc3RlZCBpbiAvZXRj
L21vZHVsZXMuCgpUb2tlLCB0aGFua3MgZm9yIGFncmVlaW5nIHRvIGxldCB0aGUgYXR0YWNobWVu
dCB0aHJvdWdoLgoKSm9obgoKT24gMTkvMDIvMjAyMSAxOTowNCwgSm9obiBTYWdlciB3cm90ZToK
PiBZZXMuIFRoZSBtYXJrcyBhcmUgc2V0IG9uIGVncmVzcyBzbyB5b3UgY2FuIHNlbGVjdCBvbiBp
bnNpZGUgSVAgCj4gYWRkcmVzcywgcG9ydCwgcHJvdG9jb2wgLSBpbiBmYWN0IG1hbnkgY2hhcmFj
dGVyaXN0aWNzIHRoYXQgaXB0YWJsZXMgCj4gcnVsZXMgY2FuIHRlc3QgZm9yLiBJJ2xsIHB1dCB0
b2dldGhlciBhIHRveSBpcHRhYmxlcyBydWxlcyBmaWxlIGFuZCBhIAo+IHRveSBzY3JpcHQgd2l0
aCB0aGUgbmVjZXNzYXJ5IHRjIGNvbW1hbmRzLiBJdCdsbCB0YWtlIG1lIGEgZmV3IGRheXMgCj4g
dGhvdWdoIGFzIEknbSBidXN5IHdpdGggb3RoZXIgc3R1ZmYgY3VycmVudGx5Lgo+IAo+IFBTIGRv
ZXMgdGhlIGNha2UgbGlzdCBhbGxvdyBhdHRhY2htZW50cz8gSXQgd2lsbCBiZSBhIHNtYWxsIHpp
cCBmaWxlLgo+IAo+IEpvaG4KPiAKPiBPbiAxOS8wMi8yMDIxIDE1OjAyLCBQZXRlciBMZXBlc2th
IHdyb3RlOgo+PiBIaSBKb2huCj4+Cj4+IERvZXMgdGhpcyByZXN1bHQgaW4gdGhlIGFiaWxpdHkg
dG8gc2V0IHBlciBpbnRlcm5hbCBob3N0IG1heCBpbmdyZXNzIAo+PiBiYW5kd2lkdGg/IElmIHNv
LCBhbnkgY2hhbmNlIHlvdSBjYW4gc2hhcmUgYSBzbmlwcGV0IG9mIGEgc2NyaXB0PyBJIAo+PiB3
aWxsIGJlIHRyeWluZyB0byByZXByb2R1Y2UgeW91ciBzZXR1cC4KPj4KPj4gVGhhbmsgeW91IQo+
Pgo+PiBQZXRlcgo+Pgo+PiBPbiBGcmksIEZlYiAxOSwgMjAyMSBhdCA3OjE2IEFNIEpvaG4gU2Fn
ZXIgPGpvaG5Ac2FnZXIubWUudWsgCj4+IDxtYWlsdG86am9obkBzYWdlci5tZS51az4+IHdyb3Rl
Ogo+Pgo+PiAgICAgVGhhdCdzIGJhc2ljYWxseSB3aGF0IEkgZG8uIEkgc2V0IG1hcmtzIG9uIG91
dGdvaW5nIHRyYWZmaWMgaW4gCj4+IHRoZSBtYW5nbGUKPj4gICAgIHRhYmxlIHdoaWNoIGFyZSBj
b3BpZWQgdG8gY29ubm1hcmsgYmVmb3JlIGVncmVzcy4gVGhlbiBvbiBpbmdyZXNzIAo+PiB0aGUK
Pj4gICAgIGNvbm5tYXJrIGlzIHJlc3RvcmVkIHRvIHRoZSBwYWNrZXQgYW5kIHB1bnRlZCB0byBp
ZmIwIHVzaW5nIAo+PiAnYWN0aW9uCj4+ICAgICBjb25ubWFyawo+PiAgICAgYWN0aW9uIG1pcnJl
ZCBlZ3Jlc3MgcmVkaXJlY3QgZGV2ICRJRkInIGFzIGFuIGluZ3Jlc3MgZmlsdGVyIG9uIAo+PiB0
aGUKPj4gICAgIGluY29taW5nCj4+ICAgICBpbnRlcmZhY2UgKHBwcDAgaW4gbXkgY2FzZSkuIFRo
ZW4gSSBoYXZlIEhUQiBjbGFzc2VzIG9uIGlmYjAgCj4+IHdoaWNoIHNldCByYXRlCj4+ICAgICBs
aW1pdHMgZm9yIGRpZmZlcmVudCB0cmFmZmljIGNsYXNzZXMgaW5kaWNhdGVkIGJ5IHRoZSBtYXJr
cy4gSSAKPj4gaGF2ZSBvbmx5IDYKPj4gICAgIHRyYWZmaWMgY2xhc3NlcyAoSSBidW5kbGUgYWxs
IHZpZGVvIGludG8gb25lIGNsYXNzKSwgYnV0IGFzIG1hcmtzIAo+PiBhcmUgMzIKPj4gICAgIGJp
dHMgd2lkZSB0aGVyZSBpcyBsb3RzIG9mIHNjb3BlIGZvciBjbGFzc2VzIGZvciBpbmRpdmlkdWFs
IElQIGFkZHJlc3Nlcy4KPj4KPj4gICAgIEpvaG4KPj4KPj4gICAgIE9uIDE4LzAyLzIwMjEgMTk6
MjgsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB2aWEgQ2FrZSB3cm90ZToKPj4gICAgICA+IFBl
dGVyIExlcGVza2EgPGJpenpieXN0ZXJAZ21haWwuY29tIAo+PiA8bWFpbHRvOmJpenpieXN0ZXJA
Z21haWwuY29tPj4KPj4gICAgIHdyaXRlczoKPj4gICAgICA+Cj4+ICAgICAgPj4gQSB1c2VyIG9u
IHRoZSBPcGVuV3J0IGZvcnVtIHN1Z2dlc3RlZCBoYXNobGltaXQgcnVsZXMgCj4+IHN1cHBvcnRl
ZCBieQo+PiAgICAgID4+IGlwdGFibGVzLiBIb3cgZG9lcyB0aGF0IGlkZWEgc291bmQgdG8geW91
Pwo+PiAgICAgID4KPj4gICAgICA+IFRoYXQgd2lsbCByZXN1bHQgaW4gYSBjbGlmZi1lZGdlIHBv
bGljZXIgKGkuZS4sIGFzIHNvb24gYXMgYSAKPj4gZGV2aWNlIGdvZXMKPj4gICAgICA+IG92ZXIg
aXRzIGxpbWl0cyBpdCB3aWxsIHNlZSBldmVyeSBwYWNrZXQgZ2V0IGRyb3BwZWQpLiBUaGlzIAo+
PiBkb2Vzbid0Cj4+ICAgICAgPiBpbnRlcmFjdCB0b28gd2VsbCB3aXRoIHRoZSBidXJzdGluZXNz
IG9mIFRDUCwgc28geW91J2xsIGxpa2VseSAKPj4gZ2V0Cj4+ICAgICAgPiBlcnJhdGljIGJlaGF2
aW91ciBvZiB0aGUgdHJhZmZpYyBpZiB5b3UgZG8gdGhhdC4gRG9pbmcgdGhlIAo+PiBzYW1lIHRo
aW5nCj4+ICAgICAgPiB3aXRoIEhUQiBtZWFucyB0aGUgcm91dGVyIHdpbGwgcXVldWUrc2hhcGUg
ZWFjaCBjbGFzcyAoYW5kIAo+PiB3aXRoIEZRLUNvRGVsCj4+ICAgICAgPiBvbiB0aGUgbGVhdmVz
LCB5b3UnbGwgZ2V0IGEgbmljZSBBUU0gYmVoYXZpb3VyIGFzIHdlbGwpLCBzbyAKPj4gdGhhdCB3
aWxsIGJlCj4+ICAgICAgPiBzbW9vdGhlciBhbmQgbGVzcyBwcm9uZSB0byBibG9hdCA6KQo+PiAg
ICAgID4KPj4gICAgICA+IC1Ub2tlCj4+ICAgICAgPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiAgICAgID4gQ2FrZSBtYWlsaW5nIGxpc3QKPj4gICAg
ICA+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0IDxtYWlsdG86Q2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQ+Cj4+ICAgICAgPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5m
by9jYWtlCj4+ICAgICAgPgo+PiAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gICAgIENha2UgbWFpbGluZyBsaXN0Cj4+ICAgICBDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldCA8bWFpbHRvOkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pgo+PiAg
ICAgaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+Pgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5n
IGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

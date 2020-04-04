Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A05219E6C9
	for <lists+cake@lfdr.de>; Sat,  4 Apr 2020 19:36:23 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id ED7E33CB39;
	Sat,  4 Apr 2020 13:36:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586021781;
	bh=Fl5Jwj0XyMpZRhoSC9adr1y7dMlpJkgI3CfdKufFkrU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cJOS78Y22TpHVcIN9ItXpgqmVqU7mpSTrYIzl/qD5xVmxjsHE/lHJ+ZtE3Cn9lCHt
	 q9YWFdmOv3F+Wd6yAaxBQaTRH1kJ9v71IPCYHLkZTCGiZ0fuLnO8bGrO60X+uoVIJF
	 rgTdnbApR8CyrMu98GZ1GX31/IQLNAjBCvdMm+x88Vj9A1rXnrxIPVeEoBqtQpqVU1
	 0qbqgPOH1jrSkkPE0P/hdTb528l3SV+8VwWbq9M3JjtKDTjxKzLbW77vOGW5lXy8UJ
	 0/m3tYi5YiwptWevvRTLVK2aKVSp21B1hy0JPdXj6G/PImiHznFE4fWHh4gLdb0cC1
	 xmltnqIq5k1wA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1266F3CB35;
 Sat,  4 Apr 2020 13:36:20 -0400 (EDT)
Received: by mail-io1-xd2d.google.com with SMTP id o127so11164257iof.0;
 Sat, 04 Apr 2020 10:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zguCU6YzRTtPSuXdg/PK9MS3KRarcZd/B6RKyR9gZ0E=;
 b=oT9h894gwDf2XkK+bObS3TiOw3Y1WM/TWs/V5/SKjXS2WFRygZN1JY5nLVtQFZHkbE
 Y7PDJvgWoMg0NAvDaeGwaUJxmDbEGPQWLXsPrHjNM+MK9M9jg3gSxaZAKw/MFey5U4Pn
 5+wZDUTHP+6X7LwsUAR0HEXtFRqjCZoSkwM8lwZD2qvEZK7PPw2GYxEpJIf8sd4Mrcgo
 LlRqUSDoNhJZOjqki1bfUakrV6mjxi9GxGZCMdq0R4Pl6k2t5TYc+YeRiXHeezKdhzuq
 q55n5XJEXcVUog14GEACyFO7Lmt58qCCPtMQqR4rwpaN/UU7FtdBp7OSHixk4MNevxJ5
 AYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zguCU6YzRTtPSuXdg/PK9MS3KRarcZd/B6RKyR9gZ0E=;
 b=q1WzaHvoMoAG7qWmkxbPyQCqS9zEgctWBqYnRWT/tTw8QX8BrQxxYqTg6O11kdIKuK
 nuJFUosJet+f7jctwr2trGvOXwqkZprGu6Bxjfhtt0y3yCzee88vVhI2j2BWhSE/U9sr
 yLxaHqAygMWX9s09XIkdq/Kw0wOoAumYtK5wWKxgmPnfOVwBimyeCwTc0UGXPaSKj6Cm
 U5ZQmMhb2KMfnyhLlsXAePLaQYagCboey47uDM+SfbxsSQlPr7xN1WMGCaYGk0MrFERE
 rg8RG2W/ejONGg++ndaCmvxgdYH8m4eYx5er/kdVwEg0tgT4vhrbkiCA9wbfYHMiDmj7
 xKEQ==
X-Gm-Message-State: AGi0Pubc/G2ZvHNDKliCsw4ryy63vyyspQCdN8YuD6c4JW2IV0/hP1eN
 mUXRjBT1w1gw3ZaWEHidJmjSHQUZcm57i5TQ+vg=
X-Google-Smtp-Source: APiQypLLRQlDC/OoXtOJ4S0ii3rfipsBXtbZ87DloN0MPHe0+te20JDiyXNwJz9sEkYBMjmuak8SS3RLg/PEDtPlFMM=
X-Received: by 2002:a6b:dd14:: with SMTP id f20mr13131998ioc.123.1586021779478; 
 Sat, 04 Apr 2020 10:36:19 -0700 (PDT)
MIME-Version: 1.0
References: <CALQXh-P1JGWHXQYnRd68woqj-C8CLxaxeD5=4xjYLYiLubkSeQ@mail.gmail.com>
 <1586011622.632930657@apps.rackspace.com>
 <CAA93jw7CDCVfY0pspLbSaSqf2_0s_23oXsGfEy1x_MHQKEkUNQ@mail.gmail.com>
 <CALQXh-Ot+ZE8M9num31K173pWF5SqDMFizjgUcP13ZCw06KhXw@mail.gmail.com>
In-Reply-To: <CALQXh-Ot+ZE8M9num31K173pWF5SqDMFizjgUcP13ZCw06KhXw@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 4 Apr 2020 10:36:01 -0700
Message-ID: <CAA93jw4wDVyh9ZwXMuDt0=c0JTKVKkMG9WGnR5wJ1TYUh+LTjw@mail.gmail.com>
To: Aaron Wood <woody77@gmail.com>
Subject: Re: [Cake] [Bloat]  New board that looks interesting
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSB0aGluayBJJ2xsIHdhaXQgZm9yIHknYWxsIHRvIHRyeSBpdCBhbmQgcmVwb3J0IGJhY2suIEkg
dHJ1c3QgbXkKYXB1MnMgYW5kIEkgYWN0dWFsbHkga2luZCBvZiBsaWtlIHRoZXkgbGFjayBhIGdy
YXBoaWNzIGNoaXAgYW5kIG5lZWQKdG8gYmUgY29uZmlndXJlZCB2aWEgc2VyaWFsIHBvcnQuCgpJ
biBvdGhlciBuZXdzIEkndmUgc3RhcnRlZCB0ZXN0aW5nIHVidW50dSAyMC40LCB3aGljaCBhbW9u
ZyBvdGhlcgp0aGluZ3MsIGhhcyB3aXJlZ3VhcmQgaW4gaXQuIEkndmUgYmVlbiByZWFsbHkgZnJ1
c3RyYXRlZCB3aXRoIHRoZQpzdGF0ZSBvZiBkaXN0cmlidXRpb25zIGxhdGVseSwgdHJ5aW5nIHRv
IGdldCBhbnkgY29tcGxleCB0aGluZyBkb25lCmhhcyByZXF1aXJlZCBzbmFwcyBhbmQgZG9ja2Vy
IGNvbnRhaW5lcnMgYW5kIEkgcmVhbGx5IHByZWZlciBydW5uaW5nCnN0dWZmIG5hdGl2ZWx5IHdo
ZW4gcG9zc2libGUuIFRvb2xzIHRoYXQgSSBzdGlsbCByZWx5IG9uIGxpa2UgbXJ0ZyBhbmQKc21v
a2VwaW5nIGFyZSB1bmRlcm1haW50YWluZWQsIHRyeWluZyB0byBnZXQgem9uZW1pbmRlciB0byBj
by1leGlzdAphbmQgY28taW5zdGFsbCB3aXRoIGFueXRoaW5nIGVsc2UgKG5vdGFibHkgaml0c2kg
dGh1cyBmYXIpIGhhcyBiZWVuIGEKcmVhbCBQSVRBLgoKSSBhbSBwbGVhc2VkIGF0IHRoZSBpbmNy
ZWFzaW5nIHNpemUgb2YgdGhlIGlwdjYgZGVwbG95bWVudCwgbXkgcGhvbmUKZ290IGl0IGxhc3Qg
bW9udGguLi4uCgpJIHRoaW5rIEkndmUgZm91bmQgYSBiYWJlbCBidWcgd2l0aCBkZWZhdWx0IHJv
dXRlcy4uLgoKYW5kIEkgZmlyZWQgdXAgYSBrZXJuZWwgYnVpbGQgdG8gZ28gaGFjayBvbiB0aGUg
YXgyMDAgY2hpcHMuCgpPbiBTYXQsIEFwciA0LCAyMDIwIGF0IDk6MjcgQU0gQWFyb24gV29vZCA8
d29vZHk3N0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gVGhlIGNvbXBhcmlzb24gb2YgY2hpcHNldCBw
ZXJmb3JtYW5jZSBsaW5rICh0byBPcGVtV1JUIGZvcnVtcykgdGhhdCB3ZW50IG91dCBoYWQgdGhp
cyBjaGlwLCB0aGUgSjQxMDUgYXMgdGhlIGZhc3Rlc3QuICBBYmxlIHRvIGRvIGEgZ2lnYWJpdCB3
aXRoIGNha2UgKG5lYXJseSBhYmxlIHRvIGRvIGl0IGluIGJvdGggZGlyZWN0aW9ucykuCj4KPiBJ
IHRoaW5rIHRoaXMgaGFzIHJlcGxhY2VkIHRoZSBhcHUyIGFzIHRoZSBib2FyZCBJ4oCZbSBnb2lu
ZyB3aXRoIGFzIG15IGVkZ2Ugcm91dGVyLgo+Cj4gT24gU2F0LCBBcHIgNCwgMjAyMCBhdCA5OjEw
IEFNIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+IEhpc3Rvcmlj
YWxseSBJJ3ZlIGZvdW5kIHRoZSAiQ2VsZXJvbiIgY2hpcHMgcmF0aGVyIHdlYWssIGJ1dCBpdCdz
IGp1c3QKPj4gYSBicmFuZC4gSSBoYXZlbid0IHRoZSBmb2dnaWVzdCBpZGVhIGhvdyB3ZWxsIHRo
aXMgdmFyaWFudCB3aWxsCj4+IHBlcmZvcm0uCj4+Cj4+IFRoZSBpbnRlbCBldGhlcm5ldCBjaGlw
cyBhcmUgYmVzdCBvZiBicmVlZCBpbiBsaW51eCwgaG93ZXZlci4gSXQncwo+PiBiZWVuIG15IGhv
cGUgdGhhdCB0aGUgMjExIHZhcmlhbnQgd2l0aCB0aGUgdGltZWQgbmV0d29ya2luZyBzdXBwb3J0
Cj4+IHdvdWxkIHNob3cgdXAgaW4gdGhlIGZpZWxkIChzY2hfZXR4KSBzbyB3ZSBjb3VsZCBmaWRk
bGUgd2l0aCB0aGF0LAo+PiAodGhlIGFwdTJzIGFyZW4ndCB1c2luZyB0aGF0IHZlcnNpb24pIGJ1
dCBJIGNhbm5vdCBmb3IgdGhlIGxpZmUgb2YgbWUKPj4gcmVtZW1iZXIgdGhlIHJpZ2h0IGtleXdv
cmRzIHRvIGxvb2sgaXQgdXAgYXQgdGhlIG1vbWVudC4gdGhpcyBmZWF0dXJlCj4+IGxldHMgeW91
IHByb2dyYW0gd2hlbiBhIHBhY2tldCBlbWVyZ2VzIGZyb20gdGhlIGRyaXZlciBhbmQgaXMgc29y
dCBvZgo+PiBhIHdob2xlIG5ldyBiYWxsZ2FtZSB3aGVuIGl0IGNvbWVzIHRvIHNjaGVkdWxpbmcg
LSB0aGVyZSBoYXNuJ3QgYmVlbgo+PiBhbiBhcW0gZGVzaWduZWQgZm9yIGl0LCBhbmQgeW91IGNh
biBkbyBmcSBieSBwbGF5aW5nIHRyaWNrcyB3aXRoIHRoZQo+PiBzZW50IHRpbWVzdGFtcC4KPj4K
Pj4gQWxsIHRoZSBvdGhlciBmZWF0dXJlcyBsb29rIHJhdGhlciBuaWNlIG9uIHRoaXMgYm9hcmQu
Cj4+Cj4+IE9uIFNhdCwgQXByIDQsIDIwMjAgYXQgNzo0NyBBTSBEYXZpZCBQLiBSZWVkIDxkcHJl
ZWRAZGVlcHBsdW0uY29tPiB3cm90ZToKPj4gPgo+PiA+IFRoYW5rcyEgSSBvcmRlcmVkIG9uZSBq
dXN0IG5vdy4gSW4gbXkgZXhwZXJpZW5jZSwgdGhpcyBjb21wYW55IGRvZXMgcmF0aGVyIG5lYXQg
c3R1ZmYuIFRoZWlyIFhNT1MgYmFzZWQgbWljcm9waG9uZSBhcnJheSAoUmVTcGVha2VyKSBpcyBy
ZWFsbHkgdXNlZnVsLiBXaGF0J3MgdGhlIHN0YXRlIG9mIHBsYXkgaW4gTGludXgvT3BlbldSVCBm
b3IgSW50ZWwgOTU2MCBjYXBhYmlsaXRpZXMgcmVnYXJkaW5nIEFRTT8KPj4gPgo+PiA+IE9uIFNh
dHVyZGF5LCBBcHJpbCA0LCAyMDIwIDEyOjEyYW0sICJBYXJvbiBXb29kIiA8d29vZHk3N0BnbWFp
bC5jb20+IHNhaWQ6Cj4+ID4KPj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+ID4gPiBDYWtlIG1haWxpbmcgbGlzdAo+PiA+ID4gQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKPj4gPiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UKPj4gPiA+IGh0dHBzOi8vd3d3LnNlZWVkc3R1ZGlvLmNvbS9PRFlTU0VZLVg4
Nko0MTA1ODAwLXAtNDQ0NS5odG1sCj4+ID4gPgo+PiA+ID4gcXVhZC1jb3JlIENlbGVyb24gSjQx
MDUgMS41LTIuNSBHSHogeDY0Cj4+ID4gPiA4R0IgUmFtCj4+ID4gPiAyeCBpMjExdCBpbnRlbCBl
dGhlcm5ldCBjb250cm9sbGVycwo+PiA+ID4gaW50ZWwgOTU2MCA4MDIuMTFhYyAod2F2ZTIpIHdp
ZmkvYmx1ZXRvb3RoIGNoaXBzZXQKPj4gPiA+IGludGVsIGJ1aWx0LWluIGdyYXBoaWNzCj4+ID4g
PiBvbmJvYXJkIEFSTSBDb3J0ZXgtTTAgYW5kIFJQaSAmIEFyZHVpbm8gaGVhZGVycwo+PiA+ID4g
bS4yIGFuZCBQQ0llIGFkYXB0ZXJzCj4+ID4gPiA8JDIwMAo+PiA+ID4KPj4gPgo+PiA+Cj4+ID4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gPiBCbG9h
dCBtYWlsaW5nIGxpc3QKPj4gPiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4gPiBodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAo+Pgo+Pgo+Pgo+PiAtLQo+
PiBNYWtlIE11c2ljLCBOb3QgV2FyCj4+Cj4+IERhdmUgVMOkaHQKPj4gQ1RPLCBUZWtMaWJyZSwg
TExDCj4+IGh0dHA6Ly93d3cudGVrbGlicmUuY29tCj4+IFRlbDogMS04MzEtNDM1LTA3MjkKPgo+
IC0tCj4gLSBTZW50IGZyb20gbXkgaVBob25lLgoKCgotLSAKTWFrZSBNdXNpYywgTm90IFdhcgoK
RGF2ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVs
OiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

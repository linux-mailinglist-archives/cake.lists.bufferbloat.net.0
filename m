Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CDE4688DD
	for <lists+cake@lfdr.de>; Sun,  5 Dec 2021 02:25:11 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EF1513CB39;
	Sat,  4 Dec 2021 20:25:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1638667509;
	bh=JQmRzETtchdH8pyLpAGhxxCTyCjNHy87lAbMWfDLEXk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ab2f7GSLTLCciH3ZphAhTP9FAIZ51hpz1AnjC48mhx3jFuhvB3CrBKLOLux/VGCLP
	 w5kO4zCS0qVR2Gp9mwZpYpaZHC2nmdy/jZhjGfjJ2jZxdv1AXetD/4+Q7ynJiBivon
	 z6BI0CNXgJ1GwPotXwifOtJeOfAw0oCy7MLJWK750A3OmO4aEUmcESALUgC4ZgSt72
	 nRXUaaQ2/GFrWyDpvRoE04OXD0ZbDivXhh1PCK76MYgVbkPxGA4dKkY4ZoIDZhPyez
	 lN6vo24zrzKNW01ZfCC1eJ+q1qILFRMnV3fuAuyxQxvtx1tk0ddZEddx7wMckToLsu
	 YjueyifVLxiLw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com
 [IPv6:2607:f8b0:4864:20::133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 417923B29E
 for <cake@lists.bufferbloat.net>; Sat,  4 Dec 2021 20:25:08 -0500 (EST)
Received: by mail-il1-x133.google.com with SMTP id j21so6646669ila.5
 for <cake@lists.bufferbloat.net>; Sat, 04 Dec 2021 17:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MMGMYWewILDmeTAqITv/cnd2HN5oltggpb0LJVo+RIU=;
 b=QGFYibftLRelQMupTolP27/qRbwkHwAoKBe+bH9qa5R5xJ49ZHgrNQt03DQXlfQ9iE
 KCdJipk+mGscPvoLs6vlffa65GTHMV+VxA8wE82qJ35fCHCD/TX63LNkDjvlzePcHj02
 pU7LQC2xjn+T0Bc44RKjVejcXBH0lBvs8vDYpGi7aTAE3rM+j4DyPigXnuVg9hfgRWeb
 1Sc67XfhGZ90huX+PTYCPgQ9P8QiQmn5TupqbFZbXG0A7+p673u8cWSJqOw1XHA9pNwO
 i0uhj6JPt22jYnhjW9aGdJ/o9eSh9N1n5CgcSP5Hacch4Zsz6ICDkoiKRaK8Wbp9Xs+G
 75sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MMGMYWewILDmeTAqITv/cnd2HN5oltggpb0LJVo+RIU=;
 b=m9JvhbSjzG1FsNZEOtJG0zkpZR0dfFBid9D18valijhRGw+9Pd/rkU3pJWz4qyjJME
 pEeNpChZVksOCcSGGfm7pKvN36EoQwd1gi2xPiGrZGGkJlm7UJQJV2F9C3KQCvXzrAGW
 yy2E6JZEtcdfKEJ6ynb3LDlm0U2MB97XMLcv9K9PDytd90z8uAAVmC3PRNNFXyHOJMZu
 tVhKTwgCGEeJvBSjJjUAIGlGTrQorl/nj+jILsl/S9GAxhQe2zBt2gi63N/36xJrfMo8
 NzxjMBtELQbF4VV17866FgkoxoZ9v5k3vLJKO1jIq6T4UnpEcWVjyt+S2GJ9h4Ea4Fae
 9aNg==
X-Gm-Message-State: AOAM532kOPi9wEBA31mfZwH8sux0nMpodQ75067mgACjl/pDtr3rI9mX
 xefn9ENLZ5HkgnOqutMeuUlvFjAyWRrUOJa35dY=
X-Google-Smtp-Source: ABdhPJzhQzKAxzGcc9bh5TsRpSLO9+sdYSKwDaRH9X4KHT6SYloEC3xGVTAOCzeLIFxo70GALg8SN3nTEvpCf3XTlmE=
X-Received: by 2002:a05:6e02:20ea:: with SMTP id
 q10mr23221041ilv.283.1638667507528; 
 Sat, 04 Dec 2021 17:25:07 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw5MbJwUQf3=N6xsv7dn7V+1dKeX5QR93+f7erHup+TUQg@mail.gmail.com>
 <0A6AB0B7-E010-42E3-BAEE-FCBFA5995117@gmail.com>
 <1638658910.996417608@apps.rackspace.com>
In-Reply-To: <1638658910.996417608@apps.rackspace.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 4 Dec 2021 17:24:55 -0800
Message-ID: <CAA93jw6C0CsAtUk9qnyemTkb-hmb15BQH2a2NUydZcFxGhApNg@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: Re: [Cake] Understanding the Achieved Rate Multiplication Effect in
 FlowQueue-based AQM Bottleneck
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
Cc: jonathan.kua@deakin.edu.au, Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSB0b28gaGF2ZSBiZWVuIHRyeWluZyB0byBnZXQgYmVsb3cgMW1zIChoZWNrLCAzbXMpIHByZWNp
c2lvbiBvciBhdApsZWFzdCwgcmVzb2x1dGlvbi4gSSBjYW1lIHVwIHdpdGggdGhlIG1vc3QgcHJv
bWlzaW5nIHRoaW5nIEkgY2FuIHRoaW5rCm9mIGZvcgppbnRlcmFjdGlvbnMgaW4gYSBtdWx0aXRo
cmVhZGVkIGVudmlyb25tZW50IHlldCwgSSB0aGluay4gZ2xpYmMgaGFzCmxvbmcgbWFwcGVkIHRo
ZSBrZXJuZWwgY2xvY2sgcGFnZSBpbnRvIHByb2Nlc3MgbWVtb3J5LCBzbyBpIHdhcwp0aGlua2lu
ZwooaG9waW5nKSB0aGF0IG1tYXBpbmcgdGhhdCBvbiB0b3Agb2YgaXRzZWxmIGEgemlsbGlvbiB0
aW1lcyBhbmQgdXNpbmcKdGhhdCBhcyBteSB0ZXN0IGRhdGEgc291cmNlIGZvciB3cml0ZXMgb3V0
IGFjcm9zcyB0aGUgbmV0d29yayBJJ2QgZ2V0CnNvbWUKcmVhbGx5IGZpbmUgZ3JhaW5lZCBpbnNp
Z2h0cy4KCkhhdmVuJ3QgZ290IGFyb3VuZCB0byBpdCB5ZXQuCgpPbiBTYXQsIERlYyA0LCAyMDIx
IGF0IDM6MDEgUE0gRGF2aWQgUC4gUmVlZCA8ZHByZWVkQGRlZXBwbHVtLmNvbT4gd3JvdGU6Cj4K
PiBJIGFncmVlIHdpdGggeW91ciBicm9hZCBhc3Nlc3NtZW50LCBKb25hdGhhbi4KPgo+Cj4KPiBU
aGUgc2VsZi1pbnRlcmZlcmVuY2UgcHJvYmxlbSB3aXRoaW4gYSBob3N0IGlzbid0IGp1c3QgYSBu
ZXR3b3JrIHByb2JsZW0uIEl0J3MgYSB1c2VyLXNwYWNlIHNjaGVkdWxlciBwcm9ibGVtIGFzIHdl
bGwuCj4KPgo+Cj4gVGhlcmUgYXJlIGxvdHMgb2YgaW50ZXJhY3Rpb25zIGJldHdlZW4gdXNlci1z
cGFjZSBzY2hlZHVsZXIgKGluIHRoZSBjYXNlIG9mIExpbnV4LCB0aGUgIkNvbXBsZXRlbHkgRmFp
ciBTY2hlZHVsZXIiIGFuZCBpdHMgcXVhbnR1bSwgd2hpY2ggaXMgc2V0IGJ5IHRoZSBIWiB2YXJp
YWJsZSBhdCBib290KSBhbmQgdGhlIG5ldHdvcmsgc3RhY2sgaW4gdGhlIGtlcm5lbC4gVGhpcyBp
bnRlcmFjdGlvbnMgaGF2ZSBub24tdHJpdmlhbCBlZmZlY3RzIHdoZW4gbXV0bGlwbGUgZmxvd3Mg
YXJlIGluZGVwZW5kZW50bHkgY3JlYXRlZCBieSBjb25jdXJyZW50IHByb2Nlc3NlcykuCj4KPgo+
Cj4gTGF0ZWx5LCBJJ3ZlIGJlZW4gc3R1ZHlpbmcsIGZvciByZWFzb25zIHJlbGF0ZWQgdG8gbXkg
ZGF5IGpvYiwgdGhlIGNvbXBsZXggaW50ZXJhY3Rpb25zIG9mIHRpbWluZyBhdCBzdWItbWlsbGlz
ZWNvbmQgc2NhbGUgYW1vbmcgdGhyZWFkcyBhbmQgcHJvY2Vzc2VzIG9uIGEgc2luZ2xlIHN5c3Rl
bSBpbiBMaW51eC4gSS9PIGRyaXZlbiBieSB0aHJlYWRzIGJlY29tZSBoaWdobHkgY29ycmVsYXRl
ZCwgYW5kIHNvIGFzc3VtaW5nICJpbmRlcGVuZGVuY2UiIGFtb25nIGZsb3cgdGltaW5nICBpcyBq
dXN0IG5vdCBhIGdvb2QgYXNzdW1wdGlvbi4KPgo+Cj4KPiBUaGUgcGFwZXIgb2JzZXJ2ZXMgdGhl
IHJlc3VsdHMgb2YgImRlcGVuZGVuY2llcyIgdGhhdCBjb3VwbGUvcmVzb25hdGUuCj4KPgo+Cj4g
T24gRnJpZGF5LCBEZWNlbWJlciAzLCAyMDIxIDc6MDlwbSwgIkpvbmF0aGFuIE1vcnRvbiIgPGNo
cm9tYXRpeDk5QGdtYWlsLmNvbT4gc2FpZDoKPgo+ID4gPiBPbiA0IERlYywgMjAyMSwgYXQgMTI6
MjcgYW0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+
Cj4gPiBodHRwczovL2pvbmF0aGFua3VhLmdpdGh1Yi5pby9wcmVwcmludHMvamt1YS1pZWVlbGNu
MjAyMV91bmRlcnN0YW5kaW5nX2FyX3ByZXByaW50LTIwanVsMjAyMS5wZGYKPiA+ID4KPiA+ID4g
SSB3b3VsZCBsb3ZlIGl0IGlmIHNvbWVob3cgdGhlIG1lYXN1cmVkIGVmZmVjdHMgb2YgY2h1bmts
ZXRzIGFnYWluc3QgY2FrZSdzCj4gPiBwZXItaG9zdC9wZXIgZmxvdyBmcSB3YXMgZXhhbWluZWQg
b25lIGRheS4KPiA+Cj4gPiBJIGhhdmVuJ3QgYWN0dWFsbHkgbWVhc3VyZWQgaXQsIGJ1dCBiYXNl
ZCBvbiB3aGF0IHRoZSBhYm92ZSBwYXBlciBzYXlzLCBJIGNhbiBtYWtlCj4gPiBzb21lIGZpcm0g
cHJlZGljdGlvbnM6Cj4gPgo+ID4gMTogV2hlbiBjb21wZXRpbmcgYWdhaW5zdCB0cmFmZmljIHRv
IHRoZSBzYW1lIGxvY2FsIGhvc3QsIHRoZSBwZXJmb3JtYW5jZSBlZmZlY3RzCj4gPiB0aGV5IGRl
c2NyaWJlIHdpbGwgYmUgcHJlc2VudC4KPiA+Cj4gPiAyOiBXaGVuIGNvbXBldGluZyBhZ2FpbnN0
IHRyYWZmaWMgdG8gYSBkaWZmZXJlbnQgbG9jYWwtbmV0d29yayBob3N0LCB0aGUKPiA+IHBlcmZv
cm1hbmNlIGVmZmVjdHMgdGhleSBkZXNjcmliZSB3aWxsIGJlIGF0dGVudWF0ZWQgb3IgZXZlbiBl
bnRpcmVseSBhYnNlbnQuCj4gPgo+ID4gMzogVGhleSBub3RlZCBvbmUgb3IgdHdvIGNhc2VzIG9m
IG9ic2VydmFibGUgZWZmZWN0cyBvZiBoYXNoIGNvbGxpc2lvbnMgaW4gdGhlaXIKPiA+IHRlc3Rz
IHdpdGggRlEtQ29kZWwuIFRoZXNlIHdpbGwgYmUgZ3JlYXRseSByZWR1Y2VkIGluIHByZXZhbGVu
Y2Ugd2l0aCBDYWtlLCBkdWUKPiA+IHRvIHRoZSBzZXQtYXNzb2NpYXRpdmUgaGFzaCBmdW5jdGlv
biB3aGljaCBzcGVjaWZpY2FsbHkgYWRkcmVzc2VzIHRoYXQgcGhlbm9tZW5vbi4KPiA+Cj4gPiAt
IEpvbmF0aGFuIE1vcnRvbgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+IENha2UgbWFpbGluZyBsaXN0Cj4gPiBDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldAo+ID4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+
ID4KCgoKLS0gCkkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoK
aHR0cHM6Ly93YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3Lmlj
ZWkub3JnCgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==

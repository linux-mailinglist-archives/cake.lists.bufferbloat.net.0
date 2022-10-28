Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A8D611B95
	for <lists+cake@lfdr.de>; Fri, 28 Oct 2022 22:35:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 895CE3CB46;
	Fri, 28 Oct 2022 16:35:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666989310;
	bh=GDSIJavFy8jls2UuBt2kf/XylgKSFmdnyHQz+U4ZAls=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=NLyVJWhT7u046qvnkdR0eCma7pX5CLHzeD243dPAdY/F1GQTRfstNgNV65sITkinj
	 v3lcKVRjSFa4tYQIKG27BrawXQ3HR95QOpiLM0fMMxOcB1/YhsCRE1emGFQF8xRsXo
	 HIDVh9Or1XOqYiC8yQtLId3FQnHEBAODOCECY2B7eW2MCse1/Q0ArqVAD5FUDjIKrd
	 CzKRk1kag/jJN175/lMiTUFtE0q41+BRae2RCeyJAlyYUg3b41V/Q5pUgN4V75js8X
	 KZVCY6YqHG7YCaM1BWHj1oRrrWcvcA+gCVrBe5Ae6d59xy89/uVRt5ygX7DDbibKDz
	 KyeKmPZZ3xacQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A18143CB37;
 Fri, 28 Oct 2022 16:35:08 -0400 (EDT)
Received: by mail-wr1-x42b.google.com with SMTP id z14so8014165wrn.7;
 Fri, 28 Oct 2022 13:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qv+kpvEg13jCrskU8s4b9sgaa8lgkub2MFmuWNndTbQ=;
 b=D3lo3GueS1myWmtM9wR8xSmVTBkkDhagaRUHSdW3SALZyCYGAHX/OGe+fECi11tSDG
 P9YesRNBC3GcuptRwtnZgDi36yzuzOadq+naFM6IPqVE6uI3l8k8QwGQR6MFDRT34UVu
 CuZe9jzpUFHcOwkR7Jiumq7MYt4Tc1hk1/Sr6pSXoC6kO3GePs5PbbUIwjah2yRS1aiq
 oau66LogSzY4CBssflJZcPCZrkKd4y0LQcnZ6WJNRNE287yccRrli9Nu638tpGVdHQdB
 8FnwdIXAoOkm9gOIRRnwB6Karnhre+uYv2DpKfYyUZYsi0QKVuobiBR9kdx8Sxzsv09c
 WyBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Qv+kpvEg13jCrskU8s4b9sgaa8lgkub2MFmuWNndTbQ=;
 b=P1bGIGODrV7tLvCBl5EB//OhR2eSrNJ5gHaH4K0lRYdVnI3hK1Q1LMetSuU4LlxHq1
 aeytoXIjj81wxRaHBxNOQverJQ9JHyII1w0fq0Mh/SX1UwcEfiJL6hRjWbMz8Kq89eB0
 2aD+sZPFriinKKmtizhvNClXCNc4QgJXJXVIpl/+S/hfwViJMaKtMAZw2kE1dreOThZ5
 bBx1yf4YZ/zKYuNbweQ/saLRnuwyq6F9PiZCj9+2EiBFUipDoSpPXJIwAeuTv9B6gIEJ
 rpzi6D4giCn7p3HB/jMjF6e7kHq544PLM/uQi9GKPr76tzcijVGto8HqYc7IG0SMrYuX
 qwUA==
X-Gm-Message-State: ACrzQf0Xjz6t9FuHM5wrzIo55bgqdOmb5xaVOasonPqsAQ2b6q7b1E9J
 wxk5A72ALrt+f18TkvBktpN1z/OcGpPFQ1UYhFcgbT8G
X-Google-Smtp-Source: AMsMyM5EFzVD+TUisgyTD+WZy10wBmz9zmuJuIgyOiVUua8+atI7CBb0CLgu9HQQRXL2XumFvbQSoG1hwMb1j31fGpc=
X-Received: by 2002:a05:6000:69b:b0:22e:36aa:5f1 with SMTP id
 bo27-20020a056000069b00b0022e36aa05f1mr623243wrb.430.1666989306970; Fri, 28
 Oct 2022 13:35:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw57yAkTQTTZBhNuk8Ft-iHzNiaaZhuBN-BQ=TFu17dvbg@mail.gmail.com>
In-Reply-To: <CAA93jw57yAkTQTTZBhNuk8Ft-iHzNiaaZhuBN-BQ=TFu17dvbg@mail.gmail.com>
Date: Fri, 28 Oct 2022 13:34:54 -0700
Message-ID: <CAA93jw4cRh6MQw23=EhYWq3N3QKn+_QFk8=2RwWhhr0Xd9cYUA@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net
Subject: [Cake] QDISC_DROP_REASON project
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlcmUgd2VyZSwgYXQgbGFzdCBjb3VudCwgMjYwMCsgcGxhY2VzIHdoZXJlIHBhY2tldHMgY291
bGQgYmUgZHJvcHBlZAppbiB0aGUgbGludXgga2VybmVsLCBhbmQgdGhhdCBkb2Vzbid0IGFjY291
bnQgZm9yIGp1c3QgZHJvcHBpbmcKcGFja2V0cyBhdCB0aGUgcGh5c2ljYWwgbGF5ZXIgYW5kIChJ
IGRvbid0IHRoaW5rKSBvbiB0aGUgcnggcmluZy4KRFJPUF9SRUFTT04gc3VwcG9ydCBoYXMgYmVl
biBtaWdyYXRpbmcgaW50byB0aGUga2VybmVsLCBidXQgbm90IHlldApmb3IgcWRpc2NzLCBhbmQg
d2VyZSBpdCB0aGVyZSwgaXQgd291bGQgcHJvdmlkZSBhIGNvbnZlbmllbnQKdHJhY2Vwb2ludCBm
b3Igd2h5IGl0IGhhcHBlbmVkLCBiZSBpdCBjb25nZXN0aXZlLCBvdmVyZmxvdywgb3Igc2VsZgpk
ZWZlbnNlLgoKWW91IGNhbiBwdWxsIGFwYXJ0IHRoZSBwYWNrZXRzIGFuZCBzZWUgd2hlcmUgdGhl
eSB3ZXJlIGdvaW5nIG9yIHdoZXJlCnRoZXkgY2FtZSBmcm9tLCBhbmQgc28gb24uCgpBbmQgaXQn
cyBraW5kIG9mIGJhZCB0byBiZSBkcm9wcGluZyBwYWNrZXRzIGZvciBhbnkgb3RoZXIgcmVhc29u
LAplbHNld2hlcmUgaW4gdGhlIHN5c3RlbS4KClNpbWlsYXJseSBJIGFtIHNlZWluZyBhIExPVCBv
ZiBlY24gbWFya2luZyBpbiB0aGUgZmllbGQgdGhhdCBJIGFtIG5vdApzdXJlIGlzIGNvcnJlY3Qg
b3Igbm90LCBhbmQgdGhlcmUncyBub3QgYSBnb29kIHdheSB0byB0cmFjayB0aGF0CnByZXNlbnRs
eS4KCkkgaGFkIGEgc3R1ZGVudCBsaW5lZCB1cCBmb3IgdGhpcywgYnV0IHNoZSBkcm9wcGVkIG91
dC4gSSdkIG11Y2gKcmF0aGVyIHRlYWNoIHNvbWVvbmUgaG93IHRvIGRvIHRoaXMgcHJldHR5IGJh
c2ljIGpvYiBpbnNpZGUgdGhlIGtlcm5lbAp0aGFuIGRvIGl0IG15c2VsZiwgc28gaWYgeW91IGtu
b3cgYW55b25lIHdpdGggZXZlbiBtb2Rlc3Qga2VybmVsCnNraWxscyB3aWxsaW5nIHRvIHRha2Ug
aXQgb24gd2l0aCBtZSwgSSdkIGFwcHJlY2lhdGUgaXQuCgotIGh0dHBzOi8vZ2l0aHViLmNvbS9y
Y2hhYy9MaWJyZVFvUy9pc3N1ZXMvMTQzCgpPbiBGcmksIE9jdCAyOCwgMjAyMiBhdCAxOjEyIFBN
IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBUaGVyZSBpcyBhIHRv
biBvZiBncmFudCBtb25leSBnb2luZyBhcm91bmQsIGFuZCB2YXJpb3VzIGZ1bmRzIGFyZQo+IGNs
b3NpbmcgYXQgdGhlIGVuZCBvZiB0aGlzIG1vbnRoIG9yIHRoZSBuZXh0LiBJZiB5b3Uga25vdyB0
YWxlbnRlZAo+IHBlb3BsZSB0aGF0IGFyZSBiZWluZyBsYWlkIG9mZiwgb3IganVzdCB3YW50IHRv
IHByYWN0aWNlIHRoZWlyIGNyYWZ0Cj4gaW4gYW55IHdheSB0byBtYWtlIGZvciBhIGJldHRlciBp
bnRlcm5ldCwgcGxlYXNlIHBhc3MgdGhlc2UgbGlua3MKPiBhbG9uZy4gSWYgeW91IGtub3cgb2Yg
YW55IG90aGVyIGZ1bmRpbmcgc291cmNlcywgcGxlYXNlIHBvc3Q/IEknZCBsaWtlCj4gdG8gZ2V0
IGEgc3RhYmxlIGZsb29yIGJhY2sgdW5kZXIgbWFrZS13aWZpLWZhc3QgaW4gcGFydGljdWxhciwg
YW5kCj4gZmluZCBmb2xrIHdpbGxpbmcgdG8gZnVuZCBvciBoZWxwIG91dCAoYW5kIHRlc3QpIG9u
IHRoZSBsaWJyZXFvcy5pbwo+IHByb2plY3QuCj4KPiBOTE5FVCBpcyBldSBvbmx5IGFuZCBoYXMg
dHdvIGZ1bmRzIGZvY3VzZWQgb24gcHJpdmFjeSBhbmQgc2VjdXJpdHkuCj4gVGhleSBhcmUgdHlw
aWNhbGx5IGdvb2QgZm9yIDMwLTUwayBldSBhbmQgcnVuIGZvciBhIHllYXIsIGEgdmVyeSBzaG9y
dAo+ICgzIHBhZ2VzIG9yIGxlc3MpIGFwcGxpY2F0aW9uIGZsaWVzIHdlbGwgd2l0aCB0aGVtLiBD
bG9zaW5nIGRlY2VtYmVyIDFzdDoKPgo+IGh0dHBzOi8vbmxuZXQubmwvYXNzdXJlLwo+IGh0dHBz
Oi8vbmxuZXQubmwvZW50cnVzdC8KPgo+IE5MTkVUIGhhcyBiZWVuIGEgaHVnZSBzdXBwb3J0ZXIg
b2YgYnVmZmVyYmxvYXQubmV0IG92ZXIgdGhlIHllYXJzLAo+IG1vc3QgcmVjZW50bHkgZnVuZGlu
ZyBteSAiY2Vyb3dydCBpaSIgcHJvamVjdCwgd2hpY2ggd2FzIGEKPiBjb25zdHJ1Y3RpdmUgZmFp
bHVyZSwgaW4gdGhhdCBJIGxvc3Qgd2F5IHRvbyBtdWNoIHRpbWUgdG8gZGVhbGluZyB3aXRoCj4g
cmVncmVzc2lvbnMgaW4gdGhlIHN0YWNrIHRvIG1ha2UgdGhlIHNsaWdodGVzdCBiaXQgb2YgZm9y
d2FyZAo+IHByb2dyZXNzLgo+Cj4gSW4gZ2VybWFueSB0aGVyZScgcyB0aGlzOgo+Cj4gaHR0cHM6
Ly9mb3J1bS5vcGVud3J0Lm9yZy90L2dlcm1hbnlzLXNvdmVyZWlnbi10ZWNoLWZ1bmQvMTQxMDg5
Cj4KPiBBbmQgaW4gYW1lcmljYSwgQVJEQyBpcyB2ZXJ5IGZvY3VzZWQgb24gd2lyZWxlc3MgYXBw
bGljYXRpb25zLgo+Cj4gaHR0cHM6Ly93d3cuYW1wci5vcmcvZ3JhbnRzLwo+Cj4gVGhlIE5TRiBQ
T1NFIGdyYW50cyBwcm9ncmFtIGp1c3QgY2xvc2VkICh3ZSBkaWRuJ3QgcXVhbGlmeSksIHBvdXJp
bmcKPiAyMW0gaW50byB2YXJpb3VzIG9wZW4gc291cmNlIG9yZ3MsIG9yIHNvIEkgaG9wZS4KPgo+
IC0tCj4gVGhpcyBzb25nIGdvZXMgb3V0IHRvIGFsbCB0aGUgZm9sayB0aGF0IHRob3VnaHQgU3Rh
ZGlhIHdvdWxkIHdvcms6Cj4gaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL3Bvc3RzL2R0YWh0X3Ro
ZS1tdXNocm9vbS1zb25nLWFjdGl2aXR5LTY5ODEzNjY2NjU2MDczNTIzMjAtRlh0ego+IERhdmUg
VMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCgoKCi0tIApUaGlzIHNvbmcgZ29lcyBvdXQgdG8gYWxs
IHRoZSBmb2xrIHRoYXQgdGhvdWdodCBTdGFkaWEgd291bGQgd29yazoKaHR0cHM6Ly93d3cubGlu
a2VkaW4uY29tL3Bvc3RzL2R0YWh0X3RoZS1tdXNocm9vbS1zb25nLWFjdGl2aXR5LTY5ODEzNjY2
NjU2MDczNTIzMjAtRlh0egpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCg==

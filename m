Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BF12FA09797
	for <lists+cake@lfdr.de>; Fri, 10 Jan 2025 17:34:59 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A82233CB39;
	Fri, 10 Jan 2025 11:34:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736526898;
	bh=pictX5gTzKvxhh59qH2CVyLF1ucWG6eQ3HBDp0c/wMA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=eMaov1nsT7qAp0EoZrIxbxzlZw51K/Yo+JqpGs/0SV0al7fVWixClpi43pOQw/qKs
	 tk/4lLRAQllVd7Dr+6JR61tciUwFLJKbFTsI3Pj3lCJINIZJcqdJQPR0A8mQrAFUI4
	 uR252WUrsqLc7bBWHG6WCTkts1VxrRBNydVyv3K99SccSxt02WkXFlYUBy00v6RKxw
	 cXtZOgTSiBuZgQ9HbB966bgoMq10rzlEwtIpFOiduQ4F+RSIGKV5itBLgQozMtcAwP
	 xVrZh9glzJ7PplSQ7SA2XbKcYIrZATgZDQ+4pLQGe5X+38GfOrndWUD9oUS6koc9E8
	 58nXjhxZe2LZA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com
 [IPv6:2607:f8b0:4864:20::332])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0729F3B29E
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 11:34:58 -0500 (EST)
Received: by mail-ot1-x332.google.com with SMTP id
 46e09a7af769-71e3167b90dso1119802a34.0
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 08:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736526897; x=1737131697; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=11CkczE/8vGwReODL7x/dR45zfgryHzyZrPjsu89VIU=;
 b=gqjqUCAlzuAXNerZnl0CrkdIPtds081ME3+4x1eIpfIJbW64YYN+vsmcLnWpzRryZz
 GmE+kvdGZymVi3mrGNAWDxTwcsZCCt1lFWvMYoxEedMFKCHYIQnfwnwa6YqzqP/+CztV
 bK/isvzGjRcXLLttBKrd1W3glh+k2/8cslIlYr27KL1rJxEtnh0LT6FJsB/le4PWkxOk
 JPTYFm4QOVZApZ/UVJkCC5nua/jWi9Xz1A5Ph+1p5ZkCxjpJ/YMy9EY+hpdLNpwtfxZe
 fpBUjYi1Tgs1YyiE47FM1Uzco0g9H1ljrkUBJtv1ufjWzCEISJlH7ZEXHLe9Tl3xOYYS
 fFEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736526897; x=1737131697;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=11CkczE/8vGwReODL7x/dR45zfgryHzyZrPjsu89VIU=;
 b=gFOxotj81t0uW9lw+1vdaya2gasuKqch4jLyT3CCM1HwGWmrCoGe/E3OwqP+QTNfVm
 PJ/wpKmh+JY3D0AoTFt/30e60vDD3/OCE2AdVeIIjlQAwr3hHQPtRQFsLIy8JHTmobWS
 N5/Clwv3RQJGQo6h/nCj8l+EB2AcfjXld3M8+mluMttLW9oE/Fc9rF00856vA90pzX9d
 oR0iPKzgOvngsThEjmQwUeZ3Wfc7NE0wMzhqxUn0ctBsfWLLxhkUqgENlmfaOY45kFq5
 wBeRNw07c37fG2Zj0b0TFLztEccq1OGbmjWbEqHVtqW/cWf7KA6fdzL4JWA4ah6lv5+B
 4t/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8f8n3vt2jy/t/7hpf/WskrwXq0w2O61IR2yWZkItH5vpSho+J1KrRrFTv8iX9+i6KmfTw@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yyj5eGC8rMoHQzVIoRwZCZqToaVlwE15CbUmKQ05IWc4Qq2uDXd
 +ul4USTZkii+gNScDLds+rxFz3sl9gtuVSI+jFXmoMOrhSC9gg5sytPee9j0kzX0lxNmX8IX7jM
 CCV+C8yNqSTmKfe9zW9JWueaZvVXzlQ==
X-Gm-Gg: ASbGnctzA71XOX1HLvwuJK+hN+bAjHL416c2bo0urvRXZWYBMw+9+ZidypJBkiGe3zI
 HHclA99FKmTuX4MtQHwCwn0OwC6GFIiXyipOBcWZwMho+Ch58z7HjmAsp0tTLAqoiXXa30E/x
X-Google-Smtp-Source: AGHT+IGeNYIktVa64S61zCfT1OmY1m8DrBDdjHOcJDtGjAY4LUIuCoiR+fgyjfDh9a5PQd3QmIT7UDyXjULhLxt6MQU=
X-Received: by 2002:a05:6871:53c4:b0:29e:74a0:e03f with SMTP id
 586e51a60fabf-2aa06799f9dmr6184384fac.24.1736526897358; Fri, 10 Jan 2025
 08:34:57 -0800 (PST)
MIME-Version: 1.0
References: <20250110155531.300303-1-toke@redhat.com>
 <2FE6B2E2-9A34-47C1-B203-F0C424F00704@gmx.de>
In-Reply-To: <2FE6B2E2-9A34-47C1-B203-F0C424F00704@gmx.de>
Date: Fri, 10 Jan 2025 08:34:45 -0800
X-Gm-Features: AbW1kvbDicKpwRj1EJ6wYQ5Jck49rHP4vh8Io_WQ6uMUZRY0cWKdzr11uiSwPM4
Message-ID: <CAA93jw54GOfYP56XTh-jjjfAbybNDeYUgUENNA2+aSQbXpS91A@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] [PATCH net-next] sched: sch_cake: Align QoS treatment to
 Windows and Zoom
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
Cc: cake@lists.bufferbloat.net,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

YWN0dWFsbHkgaW4gcmUtcmVhZGluZyB0aGF0LCBJIHRoaW5rIGl0IGxlYXZlcyBucWIgaW4gMCAo
NDQsIG5vdCA0NSwKaXMgbm93IFZJKSwgd2hpY2ggd2Fzbid0IG15IGludGVudC4KCk1vcmUgYmVs
b3cuLi4KCk9uIEZyaSwgSmFuIDEwLCAyMDI1IGF0IDg6MjTigK9BTSBTZWJhc3RpYW4gTW9lbGxl
ciA8bW9lbGxlcjBAZ214LmRlPiB3cm90ZToKPgo+IE1tbWguIG9mZiB0aGUgTGludXggbGlzdHMv
Zm9sa3MgZm9yIGRpc2N1c3Npb246Cj4KPiBjYW4gSSBwcm9wb3NlIHRvIGRyb3AgTlFCIGRvd24g
dG8gQmVzdEVmZm9ydD8gVGhlIHN1cHBvc2VkIHJlcXVpcmVtZW50cyBmb3IgTlFCIG1hcmtpbmcg
c2hvdWxkIG1ha2UgdGhlc2UgZmxvd3MgdGhyaXZlIGluIGEgZmxvdyBpc29sYXRpbmcgc2NoZWR1
bGVyIGxpa2UgY2FrZSB3aXRob3V0IGFueSBzcGVjaWFsIHRyZWF0bWVudC4uLiBtb3ZpbmcgaXQg
dG8gVmlkZW8gb3Igd29yc2UgVm9pY2UgcmVhbGx5IG9ubHkgaW52aXRlcyBhYnVzZS4uLgoKSSB3
b3VsZCBwcmVmZXIgY29uc2lzdGVudCBiZWhhdmlvci4KCj4KPgo+Cj4gPiBPbiAxMC4gSmFuIDIw
MjUsIGF0IDE2OjU1LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gdmlhIENha2UgPGNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPiA+Cj4gPiBGcm9tOiBEYXZlIFRhaHQgPGRhdmUu
dGFodEBnbWFpbC5jb20+Cj4gPgo+ID4gQ2FrZSdzIGRpZmZzZXJ2NCBtb2RlIGF0dGVtcHRlZCB0
byBmb2xsb3cgdGhlIElFVEYgd2VicnRjCj4gPiBRb1MgbWFya2luZyBzdGFuZGFyZHMsIFJGQzg4
MzcuCj4gPgo+ID4gSXQgdHVybnMgb3V0IFdpbmRvd3MgUW9TIGNhbiBvbmx5IHVzZSBDUzAsIENT
MSwgQ1M1LCBhbmQgQ1M3Lgo+Cj4gTmFoLCBhcHBsaWNhdGlvbnMgYXBwYXJlbnRseSBjYW4gb25s
eSByZXF1ZXN0IGEgc21hbGwgc2V0IG9mIERTQ1BzLCBidXQgaXQgaXMgcG9zc2libGUgdG8gbWFr
ZSB3aG9sZSBhcHBsaWNhdGlvbnMgdXNlIGEgZGlmZmVyZW50IERTQ1A6Cj4gZXhhbXBsZSBmb3Ig
bWFraW5nIHB1dHR5IHVzZSBFRgo+Cj4gTmV3LU5ldFFvc1BvbGljeSAtTmFtZSAicHV0dHkiIC1B
cHBQYXRoTmFtZU1hdGNoQ29uZGl0aW9uICJwdXR0eS5leGUiIC1Qb2xpY3lTdG9yZSBBY3RpdmVT
dG9yZSAtTmV0d29ya1Byb2ZpbGUgQWxsIC1EU0NQQWN0aW9uIDQ2CgpXaXRoaW4gYW4gQXBwLi4u
Cgo+Cj4KPiA+Cj4gPiBab29tIGRlZmF1bHRzIHRvIHVzaW5nIENTNSBmb3IgdmlkZW8gYW5kIHNj
cmVlbiBzaGFyaW5nIHRyYWZmaWMuCj4KPiBab29tIGRlZmF1bHRzIHRvIHVzaW5nIENTMCAobXkg
cGFja2V0IGNhcHR1cmVzKSB1bmxlc3MgYW4gYWRtaW5zdHJhdG9yIGVuYWJsZXMgRFNDUHMsIHdo
aWNoIEkgYXNzdW1lIHdpbGwgb25seS9tb3N0bHkgaGFwcGVuIGZvciBidXNpbmVzcyBhY2NvdW50
cy4KCkkgaGF2ZSBzZWVuIGl0IGVuYWJsZWQuIEkgaGF2ZSBhbHNvIG11bHRpcGxlIHJlcG9ydHMg
b2YgInN0dXR0ZXJpbmciLAp3aGljaCBJIGFtIGhvcGluZyB0aGlzIHJlc29sdmVzLgoKPgo+ID4g
QnVtcCBDUzQsIENTNSwgYW5kIE5RQiB0byB0aGUgdmlkZW8gdGluICgyKSBpbiBkaWZmc2VydjQg
bW9kZSwgZm9yCj4gPiBtb3JlIGJhbmR3aWR0aCBhbmQgbG93ZXIgcHJpb3JpdHkuCj4KPiBJIGRv
IGVuZG9yc2UgdGhhdCwgYnV0IHRoYXQgY2hhbmdlIHdpbGwgYWZmZWN0IGFsbCBjdXJyZW50IHVz
ZXJzIG9mIGNha2UgYXMgcGFydHMgb2YgdGhlaXIgaW5kaXZpZHVhbCBRb1MgaGllcmFyY2hpZXMu
CgpJIHRoaW5rIHdpbmRvd3MgdXNlcnMgYXJlIG5vdCBhcyAgY2x1ZWQuCj4gPgo+ID4gVGhpcyBh
bHNvIGJldHRlciBhbGlnbnMgd2l0aCBob3cgV2lGaSBwcmVzZW50bHkgdHJlYXRzIENTNSBhbmQg
TlFCLgo+Cj4gVHdvIGlzc3VlczogaXQgaXMgbm90IHRoYXQgZGVmYXVsdCBXaUZpIHVzZXMgYSBz
YW5lIHN5c3RlbSB0byBiZWdpbiB3aXRoLCBhbmQgTlFCIElNSE8gc2hvdWxkIG5vdCBiZSBlbGV2
YXRlZCBpbiBwcmlvcml0eSB1bmxlc3MgaXQgaXMgYWxzbyBwb2xpY2VkIHdlbGwsIHNvbWV0aGlu
ZyBuZWl0aGVyIFdpRmkgbm9yIGNha2Ugd2lsbCBkbyBvdXQgb2YgdGhlIGJveC4KPgo+Cj4gPgo+
ID4gU2lnbmVkLW9mZi1ieTogRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgo+ID4gU2ln
bmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4g
PiAtLS0KPiA+IG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgNCArKy0tCj4gPiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9u
ZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCj4gPiBpbmRleCA0OGRk
OGM4ODkwM2YuLjJhOTI4OGQ0Yjg3MyAxMDA2NDQKPiA+IC0tLSBhL25ldC9zY2hlZC9zY2hfY2Fr
ZS5jCj4gPiArKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwo+ID4gQEAgLTMyOCw4ICszMjgsOCBA
QCBzdGF0aWMgY29uc3QgdTggZGlmZnNlcnY0W10gPSB7Cj4gPiAxLCAwLCAwLCAwLCAwLCAwLCAw
LCAwLAo+ID4gMiwgMCwgMiwgMCwgMiwgMCwgMiwgMCwKPiA+IDIsIDAsIDIsIDAsIDIsIDAsIDIs
IDAsCj4gPiAtIDMsIDAsIDIsIDAsIDIsIDAsIDIsIDAsCj4gPiAtIDMsIDAsIDAsIDAsIDMsIDAs
IDMsIDAsCj4gPiArIDIsIDAsIDIsIDAsIDIsIDAsIDIsIDAsCj4gPiArIDIsIDAsIDAsIDAsIDIs
IDAsIDMsIDAsCj4gPiAzLCAwLCAwLCAwLCAwLCAwLCAwLCAwLAo+ID4gMywgMCwgMCwgMCwgMCwg
MCwgMCwgMCwKPiA+IH07Cj4gPiAtLQo+ID4gMi40Ny4xCj4gPgo+ID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IENha2UgbWFpbGluZyBsaXN0Cj4g
PiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+ID4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo+CgoKLS0gCkRhdmUgVMOkaHQgQ1NPLCBMaWJyZVFvcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA6F4282C1
	for <lists+cake@lfdr.de>; Sun, 10 Oct 2021 19:51:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CD0FD3CB39;
	Sun, 10 Oct 2021 13:51:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633888296;
	bh=W5Rl+iCtJO6YYOvUx5JSEZBUTni+VyLlkTsF9t0bZpE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JedHV2cn3/xWnZJSRmC1sx1X6yqXB4zLeawwXJSJzLqb7wkEGIIGR9ucbS7kGwhEf
	 v2DkbM38lYBMpweYtwrsyPDjaNcs3EpIXo8OBNp7FGPnwJ/ful8xTPocSo002Qjd4Z
	 XHFlHoe6ty8kfkTRzuFSimNGBSl4hOscuImGCPpUfa5kIZbq4XC75cdfHjg7Gcs94/
	 ey8ymsxslP7CtQFSsU5aXMZ0fa1bm/8eUxCzDrVvLkbuKhLyw5UEgydVfYFsR90nzH
	 oSxNfbo9fH+4QoImDBciQWfAAs/PsRZ8TA6QPJw+GLANAZTKDuRYiJU4MoghZzldjQ
	 2ez3BokRJWXtQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5DC333B29D;
 Sun, 10 Oct 2021 13:51:35 -0400 (EDT)
Received: by mail-il1-x12a.google.com with SMTP id a8so3403337ilj.10;
 Sun, 10 Oct 2021 10:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hQb/fXpt/EKWHtwJGWOEuKfwjF6/mBYlq0KZkzteDuY=;
 b=W0i18j2bqBFV+KrKc/yzgHSlLGa1JDSt0YNh2rOEiN2NKWI7ym/rL7EU4TViUoPVfG
 TNwZoDbqhbKPFpej19xkUT7+l7078dEVRxUYcLYApaE8IdxCSE5woGo1Orhuaony/Ofv
 RqTz1fP4jpC/Q4Tn2zVRdkc60AbSwFeTYv3gCuUm0Q2rM3rvNJt6qUD5x6oT8qzr6U2q
 xjRJ2SYSniNiGp2kKqw4S6XpBVRKfEptzjlNZApRjR7eLQ6ZopIG29dUptn6RiKIoZ+a
 kwnxDAm9uWTag/PX2cy9NdjntzGsBTx05qCxHguueD0BAinPT8Fxl4YVf/Me95ySFawZ
 Sq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hQb/fXpt/EKWHtwJGWOEuKfwjF6/mBYlq0KZkzteDuY=;
 b=0ZcGplyvV9I2rjEHHEhPvfMddRZDybJmB2cw2KWlMgpPe80zqdiCWEgEHboAXVrWvx
 2WeHUeK6cw7TcozVgCCmF0SH93cTtyWBIWbvWb7Iij5fyDgn1CNeKYNtAKni+4LFgetq
 WIIg+wyGlPL2IqxWIZiRll9ydNLGCFM36hJklCTQ8iL2EjkNWUEYozHd9rXyS0kiV91p
 PHSzqsQG1xwg7u0dhmsjYm7xC3f5qmbKR8+g6Jj48mcuYWdlQlrDKxnFignIH4DpNcqJ
 FnKyZlNAj2imlwGSeXdODrAMv5caVVHHEHdM7neVKdVVpQMIT8/mlpgGreXX+g/hmrux
 IxSQ==
X-Gm-Message-State: AOAM533w17JJ2136qhs/C0zy3FOfCQ1pJTjivb0L3Tk9MPINRgWRKEeY
 VlSgI0I+RIrwh1BwvJKYn6T1AoSzzMnDtjItS/7BxjGo
X-Google-Smtp-Source: ABdhPJz26s0NpuZsBWsxwPgU7y46/vCxNPcseuAwCIyuitHYnLDesZJy/y5zx+y0FuxuE6JC6h2ZBc9KlFPPWZiY7io=
X-Received: by 2002:a05:6e02:15c6:: with SMTP id
 q6mr16157084ilu.221.1633888294780; 
 Sun, 10 Oct 2021 10:51:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
 <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
In-Reply-To: <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 10 Oct 2021 10:51:22 -0700
Message-ID: <CAA93jw5X-xrFXX8a6hA2e7FR8adKceXbtqRCq0HDK_9OEDfqjg@mail.gmail.com>
To: Jordan Szuch <jordan@inacomptc.com>
Subject: Re: [Cake] [Bloat] some mikrotik comments
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Z29mZXJpdCEgV2UgaGF2ZSBmbGVudCBzZXJ2ZXJzIHRocm91Z2hvdXQgdGhlIHdvcmxkLCBtb3N0
bHkKdW5kb2N1bWVudGVkLiBJIHRlbmQgdG8gcHJlZmVyIGZvbGsgc2V0dXAgdGhlaXIgb3duLCBs
ZXNzIG5vaXNlIGluIHRoZQpkYXRhLi4uLgoKT24gU3VuLCBPY3QgMTAsIDIwMjEgYXQgOToxOCBB
TSBKb3JkYW4gU3p1Y2ggPGpvcmRhbkBpbmFjb21wdGMuY29tPiB3cm90ZToKPgo+IE9LLCBJJ2xs
IGdpdmUgaXQgYSBzaG90ISBQbGVhc2UgZm9yZ2l2ZSBtZSBoZXJlIGFzIEkgaGF2ZW4ndCByZWFs
bHkgcnVuIGZsZW50IGJlZm9yZS4gV291bGQgcnVubmluZyBzb21ldGhpbmcgbGlrZSB3aGF0J3Mg
bGlzdGVkIGluIHRoZSBRdWljayBTdGFydCBoZXJlIChodHRwczovL2ZsZW50Lm9yZy9pbnRyby5o
dG1sI3F1aWNrLXN0YXJ0KSBiZSBzdWZmaWNpZW50Pwo+Cj4gSm9yZGFuCj4KPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4K
PiBTZW50OiBTdW5kYXksIE9jdG9iZXIgMTAsIDIwMjEgMTI6MTEgUE0KPiBUbzogSm9yZGFuIFN6
dWNoIDxqb3JkYW5AaW5hY29tcHRjLmNvbT4KPiBDYzogQ2FrZSBMaXN0IDxjYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldD47IGJsb2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4gU3Vi
amVjdDogUmU6IFtCbG9hdF0gc29tZSBtaWtyb3RpayBjb21tZW50cwo+Cj4gSXQncyBmbGVudC5v
cmcgcnJ1bCB0ZXN0IG91dHB1dCB0aGF0IEkgbG92ZS4KPgo+IE9uIFN1biwgT2N0IDEwLCAyMDIx
IGF0IDk6MDUgQU0gSm9yZGFuIFN6dWNoIHZpYSBCbG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxv
YXQubmV0PiB3cm90ZToKPiA+Cj4gPiBIaSBEYXZlLAo+ID4KPiA+IEludGVyZXN0aW5nIHRoYXQg
eW91IHNob3VsZCBzZW5kIHRoaXMgb3V0OyBJIHJlY2VudGx5IHBpY2tlZCB1cCBhIHVuaXQgKHRo
aXMgb25lIHNwZWNpZmljYWxseTogaHR0cHM6Ly9taWtyb3Rpay5jb20vcHJvZHVjdC9oYXBfYWMy
KSB0byBkbyBzb21lIHRlc3Rpbmcgb2YgdGhlIHY3IGZpcm13YXJlLiBOb3RoaW5nIHN1cGVyIGhp
Z2ggZW5kIGJ1dCBlbm91Z2ggdG8gZG8gYSBsaXR0bGUgdGVzdGluZy4gSSBoYXZlIENBS0Ugc2V0
IHRvIGRvIHNvbWUgc2hhcGluZyBhbmQgc28gZmFyIHNlZW1zIGZ1bmN0aW9uYWwuIEF0IGxlYXN0
IHRoZSBidWZmZXJibG9hdCBzcGVlZCB0ZXN0cyBmcm9tIERTTFJlcG9ydHMgYW5kIFdhdmVGb3Jt
IGluZGljYXRlIHNvbWUgc2hhcGluZyBpcyBoYXBwZW5pbmcuIElmIHlvdSdkIGxpa2UgYW55IGlu
Zm9ybWF0aW9uIGFib3V0IHRoZSB1bml0LCB0aGUgdjcgZmlybXdhcmUsIG9yIHBhcnRpY3VsYXIg
dGVzdHMgcnVuIHRoZW4gSSdkIGJlIGhhcHB5IHRvIGhlbHAgb3V0Lgo+ID4KPiA+IEpvcmRhbgo+
ID4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBCbG9hdCA8YmxvYXQt
Ym91bmNlc0BsaXN0cy5idWZmZXJibG9hdC5uZXQ+IE9uIEJlaGFsZiBPZiBEYXZlCj4gPiBUYWh0
Cj4gPiBTZW50OiBTdW5kYXksIE9jdG9iZXIgMTAsIDIwMjEgMTE6MzkgQU0KPiA+IFRvOiBDYWtl
IExpc3QgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PjsgYmxvYXQKPiA+IDxibG9hdEBsaXN0
cy5idWZmZXJibG9hdC5uZXQ+Cj4gPiBTdWJqZWN0OiBbQmxvYXRdIHNvbWUgbWlrcm90aWsgY29t
bWVudHMKPiA+Cj4gPiB0aGUgdjcgYmV0YSBnYWluZWQgZG9jIGFuZCBtb3JlIG9zIHN1cHBvcnQg
Zm9yIGZxX2NvZGVsIGFuZCBjYWtlCj4gPiByZWNlbnRseQo+ID4KPiA+IGh0dHBzOi8vZm9ydW0u
bWlrcm90aWsuY29tL3ZpZXd0b3BpYy5waHA/cD04ODUwMDAjcDg4NTAwMAo+ID4KPiA+IGFueW9u
ZSBvdXQgdGhlcmUgYWN0aXZlbHkgdGVzdGluZyBtaWtyb3Rpaz8KPiA+Cj4gPiAtLQo+ID4gRml4
aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOgo+ID4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0
Y2g/dj1jOWdMbzZYcndndwo+ID4KPiA+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxv
YXQgbWFpbGluZyBsaXN0Cj4gPiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiA+IGh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4gPgo+ID4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsb2F0IG1haWxpbmcg
bGlzdAo+ID4gQmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gPiBodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAo+Cj4KPgo+IC0tCj4gRml4aW5nIFN0YXJsaW5r
J3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3
Cj4KPiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwo+CgoKLS0gCkZpeGluZyBTdGFybGlu
aydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZYcndn
dwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

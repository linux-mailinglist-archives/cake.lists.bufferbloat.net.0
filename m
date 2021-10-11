Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 304F9428493
	for <lists+cake@lfdr.de>; Mon, 11 Oct 2021 03:23:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DB9063CB63;
	Sun, 10 Oct 2021 21:23:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633915397;
	bh=4PUYxaOYiQN1/JmUueBvzwzOiOwaM/3dRMt3iPo+LvE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n6tfa+0N9lU0oBnOqXQIGsWmLIH/PKGU9p800+YqmZH/uwLm4ZHQgZXYW1aMLAc+l
	 UjVvEC3KM912JAt1LaNEJk+dJ0FDAXwbMT+D5voGh+k1gRR/bxet2Kzx5lK+FhmeJb
	 x/EbZ3gGv/w/2mPwumPxEFjkV5+upGMIrxCpNCtkWnRuxm9PhEJSqYcGuPGBbXuWvA
	 MsyVmL47WTrYX2tx3fBONJn/xWMf0yez8mA31Y1LQKwZpBG2tOTs2HqPLlELb859s/
	 9XJRlO1BUIxelqKr/5Fk4+lCwsJ3y1Yqjj1gzsndrzg9eZYS1XxG+2bNvFdEemhOl5
	 lkOoL6DuFs4kA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6E9C23B29D;
 Sun, 10 Oct 2021 21:23:16 -0400 (EDT)
Received: by mail-il1-x135.google.com with SMTP id d11so16393483ilc.8;
 Sun, 10 Oct 2021 18:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Orub+wG1GV8mQANvZULgfrq9j+CIhxyM6U06dyPpBK4=;
 b=lvG+RJ36l9SWVh6JNEYpdedlRi+LERH6cz06t68F8q1hioIwDdFfPWKEYQLAJ9zddh
 A6tSiGUdzbpyKvGbrungoo+sEFVE/ISZwHmDKD46QS47KcvSnnHYOUUh9Qz2tIMfQOkc
 XNMpD5Y1h51bpY+gVVK42jZJavUKbqoxrxvLJ35qmpZYr/hQmVh4RAnLqy0Jk2DQWe23
 aunySumPKtlPB/PHAdZhzbBWrrOUB2mYhLmJJpKf8PJ5i1RtRYEfzYbM2BBYF4S2s+HV
 qLuS2K1rR07G8PwLX9nc/r8hVdCvxxM1BBsEZiXNtoDLfUeMLv49HGA3gqpj0qUze9Uz
 T2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Orub+wG1GV8mQANvZULgfrq9j+CIhxyM6U06dyPpBK4=;
 b=OOEVHsxAVvYUvWOetfVQ1+VJdb06aP3cfF/SWpY/tlWJvo2p48mZ/w4aTTo1vfst9t
 k0bQSbBMSQvVbvkYMj2sP4b3Ovu8/6iHsQ9XEPjPrsSy7cX2oWUdinJ4/ZDGz8GsdNDS
 /UXNLLIy9DJkQx90pRoAJUidYNqE7LurHWvbbrlnkvkKpOakPmTrZu+9mjs2Fc7UajkK
 jO6/BGGCQsjdFHZcjDTiub85/FbzncORcolaMPGaDZVD6u4TB+j/ZPJSaUemoCUgzvBx
 sres9Qt/lhiAol0SzSF0HFKMdQ9uJWGQN7+froz2d9w+xfOrEIdXJcc8K6vB/L2eGXwV
 rGvQ==
X-Gm-Message-State: AOAM5332M1xDzzg/BujBP0mW3MkIdDwePhT1TZY1FzM9nR46bJhmVm3X
 Xq0LtqVI9czzL3oNNmiBoHhiAGvFp/cIRj8mqay7Xr8H
X-Google-Smtp-Source: ABdhPJzCtdbIylnHpUWKrpJpcbvmdfTtqtorS9Cj0mPogCIucKWZqc3MCuQW+l7jEuPbD08PuA/lxqGjIkZ0D6UZaIM=
X-Received: by 2002:a05:6e02:1d9b:: with SMTP id
 h27mr13655252ila.274.1633915395735; 
 Sun, 10 Oct 2021 18:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
 <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
 <CAA93jw5P+xoKH13fQiwvUM4BxPPsKTSZ+jg9xP0+9LPFH6tVkA@mail.gmail.com>
 <00ce01d7be3d$ed5bfc30$c813f490$@inacomptc.com>
In-Reply-To: <00ce01d7be3d$ed5bfc30$c813f490$@inacomptc.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 10 Oct 2021 18:23:02 -0700
Message-ID: <CAA93jw7d0w_8NzzoB9yy8kuq0ZqKZZ-D4dbg+TU2S6m9dAahfA@mail.gmail.com>
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

c3RpbGwgYSBiaXQgcHV6emxpbmcsIHNob3VsZG4ndCBzZWUgdGhhdCBzeW5jZWQgZHJvcCBvbiB0
aGUgZG93bi4gdHJ5CjEwNSBvbiB0aGUgZG93bj8gT3IgbGVzcz8KCk9uIFN1biwgT2N0IDEwLCAy
MDIxIGF0IDY6MTggUE0gSm9yZGFuIFN6dWNoIDxqb3JkYW5AaW5hY29tcHRjLmNvbT4gd3JvdGU6
Cj4KPiBEb25lISBTaG91bGQgZmluZSB0aGUgcmVzdWx0cyBpbiB0aGUgc2FtZSBzaGFyZWQgZm9s
ZGVycyBJIHByb3ZpZGVkIGVhcmxpZXIgdW5kZXIgIlJ1biAjMyIKPgo+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tCj4gRnJvbTogRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgo+IFNl
bnQ6IFN1bmRheSwgT2N0b2JlciAxMCwgMjAyMSA5OjA1IFBNCj4gVG86IEpvcmRhbiBTenVjaCA8
am9yZGFuQGluYWNvbXB0Yy5jb20+Cj4gQ2M6IENha2UgTGlzdCA8Y2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQ+OyBibG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pgo+IFN1YmplY3Q6
IFJlOiBbQmxvYXRdIHNvbWUgbWlrcm90aWsgY29tbWVudHMKPgo+IGNvdWxkIHlvdSB0cnkgdGhl
IHJydWwgdGVzdCAoc2hhcGVkL3Vuc2hhcGVkKSBhdCB0aGlzIGJveD86Cj4gZGFsbGFzLnN0YXJs
aW5rLnRhaHQubmV0Cj4KPgo+IE9uIFN1biwgT2N0IDEwLCAyMDIxIGF0IDk6MTggQU0gSm9yZGFu
IFN6dWNoIDxqb3JkYW5AaW5hY29tcHRjLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT0ssIEknbGwgZ2l2
ZSBpdCBhIHNob3QhIFBsZWFzZSBmb3JnaXZlIG1lIGhlcmUgYXMgSSBoYXZlbid0IHJlYWxseSBy
dW4gZmxlbnQgYmVmb3JlLiBXb3VsZCBydW5uaW5nIHNvbWV0aGluZyBsaWtlIHdoYXQncyBsaXN0
ZWQgaW4gdGhlIFF1aWNrIFN0YXJ0IGhlcmUgKGh0dHBzOi8vZmxlbnQub3JnL2ludHJvLmh0bWwj
cXVpY2stc3RhcnQpIGJlIHN1ZmZpY2llbnQ/Cj4gPgo+ID4gSm9yZGFuCj4gPgo+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWls
LmNvbT4KPiA+IFNlbnQ6IFN1bmRheSwgT2N0b2JlciAxMCwgMjAyMSAxMjoxMSBQTQo+ID4gVG86
IEpvcmRhbiBTenVjaCA8am9yZGFuQGluYWNvbXB0Yy5jb20+Cj4gPiBDYzogQ2FrZSBMaXN0IDxj
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0Cj4gPiA8YmxvYXRAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Pgo+ID4gU3ViamVjdDogUmU6IFtCbG9hdF0gc29tZSBtaWtyb3RpayBjb21tZW50
cwo+ID4KPiA+IEl0J3MgZmxlbnQub3JnIHJydWwgdGVzdCBvdXRwdXQgdGhhdCBJIGxvdmUuCj4g
Pgo+ID4gT24gU3VuLCBPY3QgMTAsIDIwMjEgYXQgOTowNSBBTSBKb3JkYW4gU3p1Y2ggdmlhIEJs
b2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+ID4gPgo+ID4gPiBIaSBE
YXZlLAo+ID4gPgo+ID4gPiBJbnRlcmVzdGluZyB0aGF0IHlvdSBzaG91bGQgc2VuZCB0aGlzIG91
dDsgSSByZWNlbnRseSBwaWNrZWQgdXAgYSB1bml0ICh0aGlzIG9uZSBzcGVjaWZpY2FsbHk6IGh0
dHBzOi8vbWlrcm90aWsuY29tL3Byb2R1Y3QvaGFwX2FjMikgdG8gZG8gc29tZSB0ZXN0aW5nIG9m
IHRoZSB2NyBmaXJtd2FyZS4gTm90aGluZyBzdXBlciBoaWdoIGVuZCBidXQgZW5vdWdoIHRvIGRv
IGEgbGl0dGxlIHRlc3RpbmcuIEkgaGF2ZSBDQUtFIHNldCB0byBkbyBzb21lIHNoYXBpbmcgYW5k
IHNvIGZhciBzZWVtcyBmdW5jdGlvbmFsLiBBdCBsZWFzdCB0aGUgYnVmZmVyYmxvYXQgc3BlZWQg
dGVzdHMgZnJvbSBEU0xSZXBvcnRzIGFuZCBXYXZlRm9ybSBpbmRpY2F0ZSBzb21lIHNoYXBpbmcg
aXMgaGFwcGVuaW5nLiBJZiB5b3UnZCBsaWtlIGFueSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgdW5p
dCwgdGhlIHY3IGZpcm13YXJlLCBvciBwYXJ0aWN1bGFyIHRlc3RzIHJ1biB0aGVuIEknZCBiZSBo
YXBweSB0byBoZWxwIG91dC4KPiA+ID4KPiA+ID4gSm9yZGFuCj4gPiA+Cj4gPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+IEZyb206IEJsb2F0IDxibG9hdC1ib3VuY2VzQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldD4gT24gQmVoYWxmIE9mIERhdmUKPiA+ID4gVGFodAo+ID4gPiBTZW50
OiBTdW5kYXksIE9jdG9iZXIgMTAsIDIwMjEgMTE6MzkgQU0KPiA+ID4gVG86IENha2UgTGlzdCA8
Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+OyBibG9hdAo+ID4gPiA8YmxvYXRAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Pgo+ID4gPiBTdWJqZWN0OiBbQmxvYXRdIHNvbWUgbWlrcm90aWsgY29tbWVu
dHMKPiA+ID4KPiA+ID4gdGhlIHY3IGJldGEgZ2FpbmVkIGRvYyBhbmQgbW9yZSBvcyBzdXBwb3J0
IGZvciBmcV9jb2RlbCBhbmQgY2FrZQo+ID4gPiByZWNlbnRseQo+ID4gPgo+ID4gPiBodHRwczov
L2ZvcnVtLm1pa3JvdGlrLmNvbS92aWV3dG9waWMucGhwP3A9ODg1MDAwI3A4ODUwMDAKPiA+ID4K
PiA+ID4gYW55b25lIG91dCB0aGVyZSBhY3RpdmVseSB0ZXN0aW5nIG1pa3JvdGlrPwo+ID4gPgo+
ID4gPiAtLQo+ID4gPiBGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6Cj4gPiA+IGh0dHBzOi8v
d3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKPiA+ID4KPiA+ID4gRGF2ZSBUw6Ro
dCBDRU8sIFRla0xpYnJlLCBMTEMKPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiA+ID4gQmxvYXQgbWFpbGluZyBsaXN0Cj4gPiA+IEJsb2F0QGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+ID4gPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9ibG9hdAo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4gPiBCbG9hdCBtYWlsaW5nIGxpc3QKPiA+ID4gQmxvYXRAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cj4gPiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Jsb2F0Cj4gPgo+ID4KPiA+Cj4gPiAtLQo+ID4gRml4aW5nIFN0YXJsaW5rJ3MgTGF0
ZW5jaWVzOgo+ID4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZYcndndwo+
ID4KPiA+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCj4gPgo+Cj4KPiAtLQo+IEZpeGlu
ZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1j
OWdMbzZYcndndwo+Cj4gRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPgoKCi0tIApGaXhp
bmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9
YzlnTG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C76428503
	for <lists+cake@lfdr.de>; Mon, 11 Oct 2021 04:05:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CD2A33CBD5;
	Sun, 10 Oct 2021 22:05:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633917951;
	bh=NsybjYaU8fjfWfsZScptrtt1nmGucdFbVJ2RORUv2EA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fC0f+ju4kl6QYLExujIE9BrRu+c1IFYuuPKhBwoH0J6Y43+X9UVn3xDmDqPGVeVs7
	 Lnj9f1PlvTB7BBCgcYPsItzV+B3+s1a6y8wsrntrmM8v2lY0s0e1ezsq6+eGOvT/Sc
	 ipebtnm7rx0lodDjcov4l9aTenGSHfCatnBaL9kJxsh335J3REtLf+T1uW1IXQ2mTS
	 IcejZz58uZlLSLVlyfqLFl8unMBvY4huG02gApuGmdBfxmZopU7xg3ox9wyd2sp7Pt
	 7ggKLe9/7Qe58BiDnA0HXRzLm76m6rTm1hUlP0cmjETTfAccDa3r4BOgcBePYNXbAd
	 R7IzbUT33d7uA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7B2743B29D;
 Sun, 10 Oct 2021 22:05:50 -0400 (EDT)
Received: by mail-il1-x135.google.com with SMTP id y17so16490849ilb.9;
 Sun, 10 Oct 2021 19:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6lX5wQnZd0XavMOxwAuvA1LFr2LJqQUSXJ+TWl37Shw=;
 b=Hg+3MrF58CNszJrkFxoKD8ZtVgjz0632Q9wHFHOSITlIzN4FG6C3wIXigJOPe7918I
 6QttqtKmOUYaeV569ZIYVcWHL026RI6JrOs1HKzf5G0vT4J59IE10nqKUdMeqPpXNqQv
 rA/BRE3zCo4KR3n2+4kyGhzpo4VInOqh2u7DNJ4iRQZRVJv94s0RawanI6qrMXnRV479
 6lGqauXpSvAQjk9oqBlrtWWdSb8mLwJ0tXQyCKEvfBoLXYzw68G9i7kVSQSpjuxLCCSP
 xC1lnqPZKAEBIMN6XRoGXFx+kxB7+TdbFBk5mWMRH1e1Ld1V7iMLpfygTje+NbQ2M2Rb
 +ofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6lX5wQnZd0XavMOxwAuvA1LFr2LJqQUSXJ+TWl37Shw=;
 b=5o0k+pLXuSDjv+swJiVhcqBHJB9TIQFLq+9k6ZQr36bQAaRfGEdHsbNmMq8f/72V6b
 TPyMvJNfEPVTq0D6sK62QeHjGgZNYvQd8l+1u52eRNFFEbeBro/BiFkAdyrgQv0TM3JH
 KJJhFoN3EkYBYKY0db12I7yRRYVBcw+zJaI0EmAkUj0tHBXBtgyz/A1Bg7f7TJSUwuad
 4o7HlAqTzt2BvenuKQ8/97oIM134OPNb0uqEKSYgeV1fMJefpUIRvVCYCeXHehQgO5j/
 phj9xWV0FmdtbTs2evHyQkVzOhwK0a4lN2hCfIchprlw2SWym7AXBDZWx/EorEZxap5i
 +U7w==
X-Gm-Message-State: AOAM533UfW0kwTg2/PFCwm8REsbF+1bdWs0/k7U1kDKjtYhctgMWa+XI
 Z6HTzCzw34vZLCQu5VD3T6kj+o/3yTX5B20O1c08wOxnL/w=
X-Google-Smtp-Source: ABdhPJxTsD3Zlq+ztkrK0riq9LcJNQNYGZzrIZaCQPlTb5yZNjk/Tt4vVV9e+hzJKIo2UYVDj4m1q700IsKx3myuYQI=
X-Received: by 2002:a05:6e02:8a3:: with SMTP id
 a3mr16592361ilt.88.1633917949712; 
 Sun, 10 Oct 2021 19:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
 <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
 <CAA93jw5P+xoKH13fQiwvUM4BxPPsKTSZ+jg9xP0+9LPFH6tVkA@mail.gmail.com>
 <00ce01d7be3d$ed5bfc30$c813f490$@inacomptc.com>
 <CAA93jw7d0w_8NzzoB9yy8kuq0ZqKZZ-D4dbg+TU2S6m9dAahfA@mail.gmail.com>
 <CAA93jw7iHVyzagrLYJArCxameLx96Pp9zeqGURDg=dv9uD=7Ww@mail.gmail.com>
 <00e701d7be42$e16683f0$a4338bd0$@inacomptc.com>
In-Reply-To: <00e701d7be42$e16683f0$a4338bd0$@inacomptc.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 10 Oct 2021 19:05:36 -0700
Message-ID: <CAA93jw71Peg6zhirtBU9LELSF39hp-kR5zWTUDHcNwQyn3z8ww@mail.gmail.com>
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

SWYgeW91J2QgbGlrZSB0byB0cnkgaHRiK2ZxX2NvZGVsIGZvciB0aGUgc2FtZSBwYXJhbWV0ZXJz
LCBhbmQgcmVwZWF0CmZvciA1IG1pbnV0ZXM/IEFsc28gcmVwZWF0IHRoZSBiYXNlbGluZSB0ZXN0
IGZvciB0aGF0IGxvbmc/LCBhbmQKY2FsbCBpdCBhIGRheT8gdGhlbiB3ZSBjYW4gaGl0IHRoZSBt
aWtyb3RpayBmb3J1bXMgdG9tb3Jyb3cuLi4uCgpIYXZlIHR3byBtb3JlIHNvbmdzIHRvIGhlbHAg
cGFzcyB0aGUgdGltZToKCmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9d2p1cjBSRy12
LUkKCmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9TlRVY29SOF9weUUKCk9uIFN1biwg
T2N0IDEwLCAyMDIxIGF0IDY6NTQgUE0gSm9yZGFuIFN6dWNoIDxqb3JkYW5AaW5hY29tcHRjLmNv
bT4gd3JvdGU6Cj4KPiBSdW4gIzUgc2hvdWxkIG5vdyBiZSBhdmFpbGFibGUuIEVuam95ZWQgdGhl
IGxpdHRsZSBtdXNpY2FsIGJyZWFrIPCfmIMKPgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
Cj4gRnJvbTogSm9yZGFuIFN6dWNoIDxqb3JkYW5AaW5hY29tcHRjLmNvbT4KPiBTZW50OiBTdW5k
YXksIE9jdG9iZXIgMTAsIDIwMjEgOTo0MSBQTQo+IFRvOiAnRGF2ZSBUYWh0JyA8ZGF2ZS50YWh0
QGdtYWlsLmNvbT4KPiBDYzogJ0Nha2UgTGlzdCcgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
PjsgJ2Jsb2F0JyA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pgo+IFN1YmplY3Q6IFJFOiBb
QmxvYXRdIHNvbWUgbWlrcm90aWsgY29tbWVudHMKPgo+IEdvdCBpdCwgSSdsbCBsZXQgaXQgcnVu
IGF0IDEwNSBoZXJlIHNob3J0bHkuCj4KPiBIYWhhaGEsIGZpdmUgbWludXRlcyBpdCBpcyEgSSds
bCBjaGVjayBvdXQgdGhlIHNvbmcgeW91IGxpbmtlZCBpbiB0aGUgbWVhbnRpbWUuIFRpbWluZyBp
cyB3b3JraW5nIG91dCBhbmQgaGF2aW5nIGEgbGl0dGxlIGZ1biB0ZXN0aW5nIHRoaXMgb3V0LCBz
byBpdCdzIGFsbCBnb29kLgo+Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBE
YXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+Cj4gU2VudDogU3VuZGF5LCBPY3RvYmVyIDEw
LCAyMDIxIDk6MzggUE0KPiBUbzogSm9yZGFuIFN6dWNoIDxqb3JkYW5AaW5hY29tcHRjLmNvbT4K
PiBDYzogQ2FrZSBMaXN0IDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0IDxibG9h
dEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4gU3ViamVjdDogUmU6IFtCbG9hdF0gc29tZSBtaWty
b3RpayBjb21tZW50cwo+Cj4gcnVuICM1IGF0IDEwNSBsb29rcyBjb3JyZWN0LiBIb3dldmVyIHdl
IGFyZSBnZXR0aW5nIHRocm90dGxlZCBlbHNld2hlcmUgbW9zdCBsaWtlbHkgYXQgdCs0MCBzZWMu
IEl0IGNvdWxkIGJlIGluIG15IG5ldyAoc3RhcmxpbmspIGNsb3VkIG9yIGF0IHNwZWN0cnVtLi4u
Cj4KPiB0aHggam9yZGFuIGZvciB0aGUgcmFwaWQgdHVybmFyb3VuZCEhIFlvdSBjYW4gdHJ5IHJ1
bm5pbmcgdGhlIHRlc3QgZm9yCj4gNSBtaW51dGVzICgtbCAzMDApIHNvIGFzIHRvIGdldCBhIG11
c2ljYWwgYnJlYWsuIDopCj4KPiBPbiBTdW4sIE9jdCAxMCwgMjAyMSBhdCA2OjIzIFBNIERhdmUg
VGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gc3RpbGwgYSBiaXQgcHV6
emxpbmcsIHNob3VsZG4ndCBzZWUgdGhhdCBzeW5jZWQgZHJvcCBvbiB0aGUgZG93bi4gdHJ5Cj4g
PiAxMDUgb24gdGhlIGRvd24/IE9yIGxlc3M/Cj4gPgo+ID4gT24gU3VuLCBPY3QgMTAsIDIwMjEg
YXQgNjoxOCBQTSBKb3JkYW4gU3p1Y2ggPGpvcmRhbkBpbmFjb21wdGMuY29tPiB3cm90ZToKPiA+
ID4KPiA+ID4gRG9uZSEgU2hvdWxkIGZpbmUgdGhlIHJlc3VsdHMgaW4gdGhlIHNhbWUgc2hhcmVk
IGZvbGRlcnMgSSBwcm92aWRlZCBlYXJsaWVyIHVuZGVyICJSdW4gIzMiCj4gPiA+Cj4gPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+IEZyb206IERhdmUgVGFodCA8ZGF2ZS50YWh0
QGdtYWlsLmNvbT4KPiA+ID4gU2VudDogU3VuZGF5LCBPY3RvYmVyIDEwLCAyMDIxIDk6MDUgUE0K
PiA+ID4gVG86IEpvcmRhbiBTenVjaCA8am9yZGFuQGluYWNvbXB0Yy5jb20+Cj4gPiA+IENjOiBD
YWtlIExpc3QgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PjsgYmxvYXQKPiA+ID4gPGJsb2F0
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4KPiA+ID4gU3ViamVjdDogUmU6IFtCbG9hdF0gc29tZSBt
aWtyb3RpayBjb21tZW50cwo+ID4gPgo+ID4gPiBjb3VsZCB5b3UgdHJ5IHRoZSBycnVsIHRlc3Qg
KHNoYXBlZC91bnNoYXBlZCkgYXQgdGhpcyBib3g/Ogo+ID4gPiBkYWxsYXMuc3RhcmxpbmsudGFo
dC5uZXQKPiA+ID4KPiA+ID4KPiA+ID4gT24gU3VuLCBPY3QgMTAsIDIwMjEgYXQgOToxOCBBTSBK
b3JkYW4gU3p1Y2ggPGpvcmRhbkBpbmFjb21wdGMuY29tPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+
IE9LLCBJJ2xsIGdpdmUgaXQgYSBzaG90ISBQbGVhc2UgZm9yZ2l2ZSBtZSBoZXJlIGFzIEkgaGF2
ZW4ndCByZWFsbHkgcnVuIGZsZW50IGJlZm9yZS4gV291bGQgcnVubmluZyBzb21ldGhpbmcgbGlr
ZSB3aGF0J3MgbGlzdGVkIGluIHRoZSBRdWljayBTdGFydCBoZXJlIChodHRwczovL2ZsZW50Lm9y
Zy9pbnRyby5odG1sI3F1aWNrLXN0YXJ0KSBiZSBzdWZmaWNpZW50Pwo+ID4gPiA+Cj4gPiA+ID4g
Sm9yZGFuCj4gPiA+ID4KPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gPiA+
IEZyb206IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4KPiA+ID4gPiBTZW50OiBTdW5k
YXksIE9jdG9iZXIgMTAsIDIwMjEgMTI6MTEgUE0KPiA+ID4gPiBUbzogSm9yZGFuIFN6dWNoIDxq
b3JkYW5AaW5hY29tcHRjLmNvbT4KPiA+ID4gPiBDYzogQ2FrZSBMaXN0IDxjYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldD47IGJsb2F0Cj4gPiA+ID4gPGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dD4KPiA+ID4gPiBTdWJqZWN0OiBSZTogW0Jsb2F0XSBzb21lIG1pa3JvdGlrIGNvbW1lbnRzCj4g
PiA+ID4KPiA+ID4gPiBJdCdzIGZsZW50Lm9yZyBycnVsIHRlc3Qgb3V0cHV0IHRoYXQgSSBsb3Zl
Lgo+ID4gPiA+Cj4gPiA+ID4gT24gU3VuLCBPY3QgMTAsIDIwMjEgYXQgOTowNSBBTSBKb3JkYW4g
U3p1Y2ggdmlhIEJsb2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+ID4g
PiA+ID4KPiA+ID4gPiA+IEhpIERhdmUsCj4gPiA+ID4gPgo+ID4gPiA+ID4gSW50ZXJlc3Rpbmcg
dGhhdCB5b3Ugc2hvdWxkIHNlbmQgdGhpcyBvdXQ7IEkgcmVjZW50bHkgcGlja2VkIHVwIGEgdW5p
dCAodGhpcyBvbmUgc3BlY2lmaWNhbGx5OiBodHRwczovL21pa3JvdGlrLmNvbS9wcm9kdWN0L2hh
cF9hYzIpIHRvIGRvIHNvbWUgdGVzdGluZyBvZiB0aGUgdjcgZmlybXdhcmUuIE5vdGhpbmcgc3Vw
ZXIgaGlnaCBlbmQgYnV0IGVub3VnaCB0byBkbyBhIGxpdHRsZSB0ZXN0aW5nLiBJIGhhdmUgQ0FL
RSBzZXQgdG8gZG8gc29tZSBzaGFwaW5nIGFuZCBzbyBmYXIgc2VlbXMgZnVuY3Rpb25hbC4gQXQg
bGVhc3QgdGhlIGJ1ZmZlcmJsb2F0IHNwZWVkIHRlc3RzIGZyb20gRFNMUmVwb3J0cyBhbmQgV2F2
ZUZvcm0gaW5kaWNhdGUgc29tZSBzaGFwaW5nIGlzIGhhcHBlbmluZy4gSWYgeW91J2QgbGlrZSBh
bnkgaW5mb3JtYXRpb24gYWJvdXQgdGhlIHVuaXQsIHRoZSB2NyBmaXJtd2FyZSwgb3IgcGFydGlj
dWxhciB0ZXN0cyBydW4gdGhlbiBJJ2QgYmUgaGFwcHkgdG8gaGVscCBvdXQuCj4gPiA+ID4gPgo+
ID4gPiA+ID4gSm9yZGFuCj4gPiA+ID4gPgo+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0KPiA+ID4gPiA+IEZyb206IEJsb2F0IDxibG9hdC1ib3VuY2VzQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldD4gT24gQmVoYWxmIE9mCj4gPiA+ID4gPiBEYXZlIFRhaHQKPiA+ID4gPiA+IFNlbnQ6
IFN1bmRheSwgT2N0b2JlciAxMCwgMjAyMSAxMTozOSBBTQo+ID4gPiA+ID4gVG86IENha2UgTGlz
dCA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+OyBibG9hdAo+ID4gPiA+ID4gPGJsb2F0QGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldD4KPiA+ID4gPiA+IFN1YmplY3Q6IFtCbG9hdF0gc29tZSBtaWty
b3RpayBjb21tZW50cwo+ID4gPiA+ID4KPiA+ID4gPiA+IHRoZSB2NyBiZXRhIGdhaW5lZCBkb2Mg
YW5kIG1vcmUgb3Mgc3VwcG9ydCBmb3IgZnFfY29kZWwgYW5kIGNha2UKPiA+ID4gPiA+IHJlY2Vu
dGx5Cj4gPiA+ID4gPgo+ID4gPiA+ID4gaHR0cHM6Ly9mb3J1bS5taWtyb3Rpay5jb20vdmlld3Rv
cGljLnBocD9wPTg4NTAwMCNwODg1MDAwCj4gPiA+ID4gPgo+ID4gPiA+ID4gYW55b25lIG91dCB0
aGVyZSBhY3RpdmVseSB0ZXN0aW5nIG1pa3JvdGlrPwo+ID4gPiA+ID4KPiA+ID4gPiA+IC0tCj4g
PiA+ID4gPiBGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6Cj4gPiA+ID4gPiBodHRwczovL3d3
dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3Cj4gPiA+ID4gPgo+ID4gPiA+ID4gRGF2
ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPiA+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4gPiBCbG9hdCBtYWlsaW5nIGxpc3QK
PiA+ID4gPiA+IEJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+ID4gPiA+ID4gaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vYmxvYXQKPiA+ID4gPiA+Cj4gPiA+ID4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+ID4g
QmxvYXQgbWFpbGluZyBsaXN0Cj4gPiA+ID4gPiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQK
PiA+ID4gPiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4g
PiA+ID4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gLS0KPiA+ID4gPiBGaXhpbmcgU3Rhcmxpbmsn
cyBMYXRlbmNpZXM6Cj4gPiA+ID4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdM
bzZYcndndwo+ID4gPiA+Cj4gPiA+ID4gRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPiA+
ID4gPgo+ID4gPgo+ID4gPgo+ID4gPiAtLQo+ID4gPiBGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNp
ZXM6Cj4gPiA+IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKPiA+
ID4KPiA+ID4gRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPiA+ID4KPiA+Cj4gPgo+ID4g
LS0KPiA+IEZpeGluZyBTdGFybGluaydzIExhdGVuY2llczoKPiA+IGh0dHBzOi8vd3d3LnlvdXR1
YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKPiA+Cj4gPiBEYXZlIFTDpGh0IENFTywgVGVrTGli
cmUsIExMQwo+Cj4KPgo+IC0tCj4gRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczov
L3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3Cj4KPiBEYXZlIFTDpGh0IENFTywg
VGVrTGlicmUsIExMQwo+CgoKLS0gCkZpeGluZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6
Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZYcndndwoKRGF2ZSBUw6RodCBDRU8sIFRl
a0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

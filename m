Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 267C94284C7
	for <lists+cake@lfdr.de>; Mon, 11 Oct 2021 03:32:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C79983CB68;
	Sun, 10 Oct 2021 21:32:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633915934;
	bh=lXjnA/6ApzbsksFqQL9K4QFYJAoLvyUG5kZVGr4IYQk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Td5jLo4gfwxQCgF1SJw/a/awTK2QouojjP0RH+07RzoN/VBVHDoOvEP2RZqHAXDSE
	 8gc6csBc7OyRS8ljyGIiYhXx1g/3DDLjCkfBVvBCSvsIsen0vX028EuZG/9p0zusX0
	 YSHjTtjgnDKDaV5UY6otwTVQEkQqXsScX1k7m0ZfLAoHKdKiuRtuJ9dZCH6VEKR5jk
	 tsVP0VCyO+2xxgsPVLUUXvJf6h1z6EAXBXgbbG4/LtqgaB2xkDjlpCIPjhDMbR8JAD
	 dPwoLr1zwGE/I6uwcwl2xk86A4pQlvoqdECMbrfSGp92UdV4AX1CEH4VqxoSKq2jHP
	 OsvViCLhduYaw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D73633B29D;
 Sun, 10 Oct 2021 21:32:12 -0400 (EDT)
Received: by mail-io1-xd2f.google.com with SMTP id b10so2944226iof.12;
 Sun, 10 Oct 2021 18:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=J8ZhY2suttvz+4NelJQEPLE1MVi9vvIv++cvzyQFKpU=;
 b=Nx4RPV6NHlAKS9lLE32vuPEMHXgNkUiyep0OqI1ZR/nsIjIGwuw+gAyFNnkMbdM44S
 GtjnolDXgNTxxM0MKz8sk8NA0Sv/Remmcu/tqAf4H8t6Svo+9wDZ/UBLz1/0E2MolK9R
 HROXt2wys6KIKGPdM2tYjb63LDmsE1NtdGf1KNzGJJx+cSP0fIIG2ZOykW5L1SSF++CZ
 MfuDJMa7J7RMpL4CurrJxZ7HBgPW2snPKALQsZZziY28FemE1kZGOAgCrkw9gVD4riSX
 wWlj92u+0xuI5k11187kR3vAE9c1Gc0TfcMYl6Y5xYAY/d3GGWG/7j0kH4uyNa1vAe9O
 8+RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=J8ZhY2suttvz+4NelJQEPLE1MVi9vvIv++cvzyQFKpU=;
 b=8A2ULgYfWuyCDbbjme1PysfUuKc3FcW1gXRe6W5Ld7G2PVCoPoIfv8CB+cZS18oZ31
 7Il7tZfSwtG/od1gekAMEMQuVEhjqjTbfpuVksZ06GfM3JRVJMPpjSIep0yS1Fu21Xvc
 KcCu1wT4Q63fWMuDgyegep2C+Ys4p09dJ+Soql8elhb/AYYmDO+66ZsmKJiD0b5nhbfC
 ffvfG6/Pki5baMC5ChCvSrc9PN6aQi4DwKwWB8C7Akep3lLFGHWdrS63r6PggDH1qiIe
 c4cDFeR9ZNkLAcI2Tpy0uPCXd0064ofRqcuJLsAJvVpiGgoz7N9xhti0O7NRStdtkf1Y
 2HrQ==
X-Gm-Message-State: AOAM531gD4f9r5+QozN9FFWsBm51n8sr0+3lZz9AhG5jnkzfDepASwKE
 IJ1RKhWoP59X9kYriZeNMZjpHOmE4QC5KLJLLQ2whBvvzCc=
X-Google-Smtp-Source: ABdhPJxaMSmiX6YXyD4w/zcE7g8tTG9ViDrKY3+I1qiBzpSqdk2IODSW1uzq7Ce0E4cN5y49lGKlSGICy5eqCeAmm5Q=
X-Received: by 2002:a05:6602:1504:: with SMTP id
 g4mr4315184iow.133.1633915932193; 
 Sun, 10 Oct 2021 18:32:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
 <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
 <CAA93jw5P+xoKH13fQiwvUM4BxPPsKTSZ+jg9xP0+9LPFH6tVkA@mail.gmail.com>
 <00ce01d7be3d$ed5bfc30$c813f490$@inacomptc.com>
 <CAA93jw7d0w_8NzzoB9yy8kuq0ZqKZZ-D4dbg+TU2S6m9dAahfA@mail.gmail.com>
In-Reply-To: <CAA93jw7d0w_8NzzoB9yy8kuq0ZqKZZ-D4dbg+TU2S6m9dAahfA@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 10 Oct 2021 18:31:59 -0700
Message-ID: <CAA93jw7pPpTUO3WgmtULcHy44Jbpvmkk4eymnB46UXGmn=3nJg@mail.gmail.com>
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

VGhpcywgYnR3LCBpcyBvbmUgb2YgbXkgZmF2b3JpdGUgc29uZ3MgYWJvdXQgd2hhdCBpdCB0YWtl
cyB0byBzaGlwCnF1YWxpdHkgc29mdHdhcmUuCgpodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRj
aD92PUtvd0FFcUhwZnRJCgphbHdheXMgYSBnb29kIGJhY2tncm91bmQgdHJhY2suCgpPbiBTdW4s
IE9jdCAxMCwgMjAyMSBhdCA2OjIzIFBNIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4g
d3JvdGU6Cj4KPiBzdGlsbCBhIGJpdCBwdXp6bGluZywgc2hvdWxkbid0IHNlZSB0aGF0IHN5bmNl
ZCBkcm9wIG9uIHRoZSBkb3duLiB0cnkKPiAxMDUgb24gdGhlIGRvd24/IE9yIGxlc3M/Cj4KPiBP
biBTdW4sIE9jdCAxMCwgMjAyMSBhdCA2OjE4IFBNIEpvcmRhbiBTenVjaCA8am9yZGFuQGluYWNv
bXB0Yy5jb20+IHdyb3RlOgo+ID4KPiA+IERvbmUhIFNob3VsZCBmaW5lIHRoZSByZXN1bHRzIGlu
IHRoZSBzYW1lIHNoYXJlZCBmb2xkZXJzIEkgcHJvdmlkZWQgZWFybGllciB1bmRlciAiUnVuICMz
Igo+ID4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBEYXZlIFRhaHQg
PGRhdmUudGFodEBnbWFpbC5jb20+Cj4gPiBTZW50OiBTdW5kYXksIE9jdG9iZXIgMTAsIDIwMjEg
OTowNSBQTQo+ID4gVG86IEpvcmRhbiBTenVjaCA8am9yZGFuQGluYWNvbXB0Yy5jb20+Cj4gPiBD
YzogQ2FrZSBMaXN0IDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0IDxibG9hdEBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4gPiBTdWJqZWN0OiBSZTogW0Jsb2F0XSBzb21lIG1pa3Jv
dGlrIGNvbW1lbnRzCj4gPgo+ID4gY291bGQgeW91IHRyeSB0aGUgcnJ1bCB0ZXN0IChzaGFwZWQv
dW5zaGFwZWQpIGF0IHRoaXMgYm94PzoKPiA+IGRhbGxhcy5zdGFybGluay50YWh0Lm5ldAo+ID4K
PiA+Cj4gPiBPbiBTdW4sIE9jdCAxMCwgMjAyMSBhdCA5OjE4IEFNIEpvcmRhbiBTenVjaCA8am9y
ZGFuQGluYWNvbXB0Yy5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBPSywgSSdsbCBnaXZlIGl0IGEg
c2hvdCEgUGxlYXNlIGZvcmdpdmUgbWUgaGVyZSBhcyBJIGhhdmVuJ3QgcmVhbGx5IHJ1biBmbGVu
dCBiZWZvcmUuIFdvdWxkIHJ1bm5pbmcgc29tZXRoaW5nIGxpa2Ugd2hhdCdzIGxpc3RlZCBpbiB0
aGUgUXVpY2sgU3RhcnQgaGVyZSAoaHR0cHM6Ly9mbGVudC5vcmcvaW50cm8uaHRtbCNxdWljay1z
dGFydCkgYmUgc3VmZmljaWVudD8KPiA+ID4KPiA+ID4gSm9yZGFuCj4gPiA+Cj4gPiA+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+IEZyb206IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdt
YWlsLmNvbT4KPiA+ID4gU2VudDogU3VuZGF5LCBPY3RvYmVyIDEwLCAyMDIxIDEyOjExIFBNCj4g
PiA+IFRvOiBKb3JkYW4gU3p1Y2ggPGpvcmRhbkBpbmFjb21wdGMuY29tPgo+ID4gPiBDYzogQ2Fr
ZSBMaXN0IDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0Cj4gPiA+IDxibG9hdEBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4gPiA+IFN1YmplY3Q6IFJlOiBbQmxvYXRdIHNvbWUgbWlr
cm90aWsgY29tbWVudHMKPiA+ID4KPiA+ID4gSXQncyBmbGVudC5vcmcgcnJ1bCB0ZXN0IG91dHB1
dCB0aGF0IEkgbG92ZS4KPiA+ID4KPiA+ID4gT24gU3VuLCBPY3QgMTAsIDIwMjEgYXQgOTowNSBB
TSBKb3JkYW4gU3p1Y2ggdmlhIEJsb2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdy
b3RlOgo+ID4gPiA+Cj4gPiA+ID4gSGkgRGF2ZSwKPiA+ID4gPgo+ID4gPiA+IEludGVyZXN0aW5n
IHRoYXQgeW91IHNob3VsZCBzZW5kIHRoaXMgb3V0OyBJIHJlY2VudGx5IHBpY2tlZCB1cCBhIHVu
aXQgKHRoaXMgb25lIHNwZWNpZmljYWxseTogaHR0cHM6Ly9taWtyb3Rpay5jb20vcHJvZHVjdC9o
YXBfYWMyKSB0byBkbyBzb21lIHRlc3Rpbmcgb2YgdGhlIHY3IGZpcm13YXJlLiBOb3RoaW5nIHN1
cGVyIGhpZ2ggZW5kIGJ1dCBlbm91Z2ggdG8gZG8gYSBsaXR0bGUgdGVzdGluZy4gSSBoYXZlIENB
S0Ugc2V0IHRvIGRvIHNvbWUgc2hhcGluZyBhbmQgc28gZmFyIHNlZW1zIGZ1bmN0aW9uYWwuIEF0
IGxlYXN0IHRoZSBidWZmZXJibG9hdCBzcGVlZCB0ZXN0cyBmcm9tIERTTFJlcG9ydHMgYW5kIFdh
dmVGb3JtIGluZGljYXRlIHNvbWUgc2hhcGluZyBpcyBoYXBwZW5pbmcuIElmIHlvdSdkIGxpa2Ug
YW55IGluZm9ybWF0aW9uIGFib3V0IHRoZSB1bml0LCB0aGUgdjcgZmlybXdhcmUsIG9yIHBhcnRp
Y3VsYXIgdGVzdHMgcnVuIHRoZW4gSSdkIGJlIGhhcHB5IHRvIGhlbHAgb3V0Lgo+ID4gPiA+Cj4g
PiA+ID4gSm9yZGFuCj4gPiA+ID4KPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
ID4gPiA+IEZyb206IEJsb2F0IDxibG9hdC1ib3VuY2VzQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4g
T24gQmVoYWxmIE9mIERhdmUKPiA+ID4gPiBUYWh0Cj4gPiA+ID4gU2VudDogU3VuZGF5LCBPY3Rv
YmVyIDEwLCAyMDIxIDExOjM5IEFNCj4gPiA+ID4gVG86IENha2UgTGlzdCA8Y2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQ+OyBibG9hdAo+ID4gPiA+IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5u
ZXQ+Cj4gPiA+ID4gU3ViamVjdDogW0Jsb2F0XSBzb21lIG1pa3JvdGlrIGNvbW1lbnRzCj4gPiA+
ID4KPiA+ID4gPiB0aGUgdjcgYmV0YSBnYWluZWQgZG9jIGFuZCBtb3JlIG9zIHN1cHBvcnQgZm9y
IGZxX2NvZGVsIGFuZCBjYWtlCj4gPiA+ID4gcmVjZW50bHkKPiA+ID4gPgo+ID4gPiA+IGh0dHBz
Oi8vZm9ydW0ubWlrcm90aWsuY29tL3ZpZXd0b3BpYy5waHA/cD04ODUwMDAjcDg4NTAwMAo+ID4g
PiA+Cj4gPiA+ID4gYW55b25lIG91dCB0aGVyZSBhY3RpdmVseSB0ZXN0aW5nIG1pa3JvdGlrPwo+
ID4gPiA+Cj4gPiA+ID4gLS0KPiA+ID4gPiBGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6Cj4g
PiA+ID4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZYcndndwo+ID4gPiA+
Cj4gPiA+ID4gRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPiA+ID4gPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+IEJsb2F0IG1haWxp
bmcgbGlzdAo+ID4gPiA+IEJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+ID4gPiA+IGh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4gPiA+ID4KPiA+ID4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+IEJs
b2F0IG1haWxpbmcgbGlzdAo+ID4gPiA+IEJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+ID4g
PiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4gPiA+Cj4g
PiA+Cj4gPiA+Cj4gPiA+IC0tCj4gPiA+IEZpeGluZyBTdGFybGluaydzIExhdGVuY2llczoKPiA+
ID4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZYcndndwo+ID4gPgo+ID4g
PiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwo+ID4gPgo+ID4KPiA+Cj4gPiAtLQo+ID4g
Rml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRj
aD92PWM5Z0xvNlhyd2d3Cj4gPgo+ID4gRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPiA+
Cj4KPgo+IC0tCj4gRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0
dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3Cj4KPiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUs
IExMQwoKCgotLSAKRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0
dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3CgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExM
QwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

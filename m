Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DD13C42846F
	for <lists+cake@lfdr.de>; Mon, 11 Oct 2021 03:05:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C13AB3CB61;
	Sun, 10 Oct 2021 21:05:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633914321;
	bh=dZ57mvBISfoEyjmmIbmCUI6QKCVzPePM/G1511/mqAc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RQeIULk2o3YxOq8+VjhiSmQfVC92EWwssmLQ00hNI+IcoJr2PXiNV3YZ9Lssyrr8Q
	 RolKg39467diX9XlRQe31eFhbY6PZAiV6r0GMNLwScx6Z1lWuz/bZniqPXH7qJ6rWS
	 YOHgMjRYlhmA/8WnBilqb2I7eRgMzaXxBXitw/G4KEjqHHZ5IkFhNSxV75qOzbHu2e
	 XSmYLtlwD1mMvp/cuS8uk37EeFluLzry6nC7eW6OCDC0ZLyno33jMGVEBfWa0uL+2H
	 bNbnJWJXFEpw206jwKi/kLCZN2zWcZ7Br/asUVlj5Iasr6G0qkpP0XDzqZD5e9DvOn
	 G+6h0iTxMuZ8Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 597D33B29D;
 Sun, 10 Oct 2021 21:05:20 -0400 (EDT)
Received: by mail-il1-x135.google.com with SMTP id k3so7873125ilu.2;
 Sun, 10 Oct 2021 18:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T+f6sKOI2lmWfRqAkLvJjGUmkVWutdgV/cC8xs5GFC4=;
 b=CyvWmc3KpNs8zMzRce5mOcIW0QnLOi6ORtu5rDuFf+0xazikZKexsKHNDZeIAD4WKx
 XG04Wh0BAIc1/U5lcr+W1z9OoViYzoHkW9H+rxEMAr631WmFBPxhToh6jbl9IprRKEyq
 NCKMQseqO5nKTjhOrHrQHmkwh7WKjBMDz/T9WeAoPC5aWZNNu0qm5Nfy/w+QHdw3+BBY
 H2OeXqjqp6TicdpPmgDMwHHtDz5S5xB1p5T6OtwQvYegfJVBHDppQboHe6xE5fWXucmg
 xIDimW+iy8bW/eQhYCl9cDEOtrI0YhXdEFtUnhyNDtPWnIxapEdDy9Lxq1aApxbJEy0R
 EEMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T+f6sKOI2lmWfRqAkLvJjGUmkVWutdgV/cC8xs5GFC4=;
 b=CC35TaYcGDESw7G/hCIdc9Jv9ts14InnwsM/xoqp3QARt0G0eDwKvUqbZU/A31GrrS
 GLVcdqTHs7ZZujQqTnWvH1K5wH+ZD1BQSkzYwQnPvdcD3EJJbyv/8S0NdCfpN3U/WW/5
 2iJJGp81QGyJIRCuyF79LDTWE2f/RuPj1C4OUZyc4fRSndyldonSlvOLiFUbd0PNSgyM
 TwI0tJeUe/0KpXGFt4m8cDcjoCypkutqrOVzzRIRTsV6c9xO9pR5pqrOYg8KGNfR955I
 TWwWrjmzR6o11CMs9/XZ5ZIHczhwtoNgPoTmgrL6VitZXhHDc8cRZFTHrmuWeXd8EMRh
 Myjg==
X-Gm-Message-State: AOAM530hSporDK9cRksqYD3fB2Yfr8H/daYwdnKDEtC4nCKqegPCHmZL
 oP9lu5zXljQWgh6qhsIRbuX0SWCoW6Csi0+aD/rRmQBTxvI=
X-Google-Smtp-Source: ABdhPJxDjbYt3May5wwX4BM0m1cAWzxS4f5bWIxqqwdVjhLQZKGdEKXMoiGbJ0f25BtTfmi345YyhC21KqfPkdjkb8k=
X-Received: by 2002:a05:6e02:1d9b:: with SMTP id
 h27mr13605419ila.274.1633914319654; 
 Sun, 10 Oct 2021 18:05:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
 <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
In-Reply-To: <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 10 Oct 2021 18:05:07 -0700
Message-ID: <CAA93jw5P+xoKH13fQiwvUM4BxPPsKTSZ+jg9xP0+9LPFH6tVkA@mail.gmail.com>
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

Y291bGQgeW91IHRyeSB0aGUgcnJ1bCB0ZXN0IChzaGFwZWQvdW5zaGFwZWQpIGF0IHRoaXMgYm94
PzoKZGFsbGFzLnN0YXJsaW5rLnRhaHQubmV0CgoKT24gU3VuLCBPY3QgMTAsIDIwMjEgYXQgOTox
OCBBTSBKb3JkYW4gU3p1Y2ggPGpvcmRhbkBpbmFjb21wdGMuY29tPiB3cm90ZToKPgo+IE9LLCBJ
J2xsIGdpdmUgaXQgYSBzaG90ISBQbGVhc2UgZm9yZ2l2ZSBtZSBoZXJlIGFzIEkgaGF2ZW4ndCBy
ZWFsbHkgcnVuIGZsZW50IGJlZm9yZS4gV291bGQgcnVubmluZyBzb21ldGhpbmcgbGlrZSB3aGF0
J3MgbGlzdGVkIGluIHRoZSBRdWljayBTdGFydCBoZXJlIChodHRwczovL2ZsZW50Lm9yZy9pbnRy
by5odG1sI3F1aWNrLXN0YXJ0KSBiZSBzdWZmaWNpZW50Pwo+Cj4gSm9yZGFuCj4KPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNv
bT4KPiBTZW50OiBTdW5kYXksIE9jdG9iZXIgMTAsIDIwMjEgMTI6MTEgUE0KPiBUbzogSm9yZGFu
IFN6dWNoIDxqb3JkYW5AaW5hY29tcHRjLmNvbT4KPiBDYzogQ2FrZSBMaXN0IDxjYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4g
U3ViamVjdDogUmU6IFtCbG9hdF0gc29tZSBtaWtyb3RpayBjb21tZW50cwo+Cj4gSXQncyBmbGVu
dC5vcmcgcnJ1bCB0ZXN0IG91dHB1dCB0aGF0IEkgbG92ZS4KPgo+IE9uIFN1biwgT2N0IDEwLCAy
MDIxIGF0IDk6MDUgQU0gSm9yZGFuIFN6dWNoIHZpYSBCbG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVy
YmxvYXQubmV0PiB3cm90ZToKPiA+Cj4gPiBIaSBEYXZlLAo+ID4KPiA+IEludGVyZXN0aW5nIHRo
YXQgeW91IHNob3VsZCBzZW5kIHRoaXMgb3V0OyBJIHJlY2VudGx5IHBpY2tlZCB1cCBhIHVuaXQg
KHRoaXMgb25lIHNwZWNpZmljYWxseTogaHR0cHM6Ly9taWtyb3Rpay5jb20vcHJvZHVjdC9oYXBf
YWMyKSB0byBkbyBzb21lIHRlc3Rpbmcgb2YgdGhlIHY3IGZpcm13YXJlLiBOb3RoaW5nIHN1cGVy
IGhpZ2ggZW5kIGJ1dCBlbm91Z2ggdG8gZG8gYSBsaXR0bGUgdGVzdGluZy4gSSBoYXZlIENBS0Ug
c2V0IHRvIGRvIHNvbWUgc2hhcGluZyBhbmQgc28gZmFyIHNlZW1zIGZ1bmN0aW9uYWwuIEF0IGxl
YXN0IHRoZSBidWZmZXJibG9hdCBzcGVlZCB0ZXN0cyBmcm9tIERTTFJlcG9ydHMgYW5kIFdhdmVG
b3JtIGluZGljYXRlIHNvbWUgc2hhcGluZyBpcyBoYXBwZW5pbmcuIElmIHlvdSdkIGxpa2UgYW55
IGluZm9ybWF0aW9uIGFib3V0IHRoZSB1bml0LCB0aGUgdjcgZmlybXdhcmUsIG9yIHBhcnRpY3Vs
YXIgdGVzdHMgcnVuIHRoZW4gSSdkIGJlIGhhcHB5IHRvIGhlbHAgb3V0Lgo+ID4KPiA+IEpvcmRh
bgo+ID4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBCbG9hdCA8Ymxv
YXQtYm91bmNlc0BsaXN0cy5idWZmZXJibG9hdC5uZXQ+IE9uIEJlaGFsZiBPZiBEYXZlCj4gPiBU
YWh0Cj4gPiBTZW50OiBTdW5kYXksIE9jdG9iZXIgMTAsIDIwMjEgMTE6MzkgQU0KPiA+IFRvOiBD
YWtlIExpc3QgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PjsgYmxvYXQKPiA+IDxibG9hdEBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4gPiBTdWJqZWN0OiBbQmxvYXRdIHNvbWUgbWlrcm90aWsg
Y29tbWVudHMKPiA+Cj4gPiB0aGUgdjcgYmV0YSBnYWluZWQgZG9jIGFuZCBtb3JlIG9zIHN1cHBv
cnQgZm9yIGZxX2NvZGVsIGFuZCBjYWtlCj4gPiByZWNlbnRseQo+ID4KPiA+IGh0dHBzOi8vZm9y
dW0ubWlrcm90aWsuY29tL3ZpZXd0b3BpYy5waHA/cD04ODUwMDAjcDg4NTAwMAo+ID4KPiA+IGFu
eW9uZSBvdXQgdGhlcmUgYWN0aXZlbHkgdGVzdGluZyBtaWtyb3Rpaz8KPiA+Cj4gPiAtLQo+ID4g
Rml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOgo+ID4gaHR0cHM6Ly93d3cueW91dHViZS5jb20v
d2F0Y2g/dj1jOWdMbzZYcndndwo+ID4KPiA+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExD
Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4g
QmxvYXQgbWFpbGluZyBsaXN0Cj4gPiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiA+IGh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4gPgo+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsb2F0IG1haWxp
bmcgbGlzdAo+ID4gQmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gPiBodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAo+Cj4KPgo+IC0tCj4gRml4aW5nIFN0YXJs
aW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhy
d2d3Cj4KPiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwo+CgoKLS0gCkZpeGluZyBTdGFy
bGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZY
cndndwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

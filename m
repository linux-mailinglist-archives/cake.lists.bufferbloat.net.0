Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CFF459CC7
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 08:32:25 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3E07D3CB39;
	Tue, 23 Nov 2021 02:32:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637652741;
	bh=4QihAuqQjLQpJJG10rL6YtbSHcUagdVjcZfSNrLPWyE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l2zlX7SH51IJKEb5tFKzKlHwygiHlSXB+18ckqSiHh2BFr0MtfIWiSOtHabMNt5VD
	 BTw9GeEIPT7GTvSQqbhG5zBpobG2M5m8K8pIhgpD0m+TSqFqYrIk+S0S6ogx2kC6lX
	 7CKAnWFCqPHpU2/j5KVhy6ULnH3BygwpuDyKGk/TPcDNy/69/DB/UoyV1+42mLg2ke
	 FdPSCi3BpPR3aSouZ2YWzXoSi53kBevk40JXBpiLnS1Q30FU3B3y6ZipWXrbK58vpd
	 MetdblB8uOruVPpWTYLLzfddXTctDiXN/rc1+325Z79cXegUnqxnMGn/ICDsoDIdvq
	 6P7sdu4ThHl9w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 39E8E3CB35
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 02:32:19 -0500 (EST)
Received: by mail-il1-x134.google.com with SMTP id s14so20746216ilv.10
 for <cake@lists.bufferbloat.net>; Mon, 22 Nov 2021 23:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DqFm5GaObgO0Yh5cXyrcq6EpYO33MF3wmqRzbNYokCQ=;
 b=NMACiHiAGylIR+faCR6CqkBelzGQELb0rfeCW57X0wKZ8DAA56xit+opgha4mNZZ8m
 wLTGeQYAo0dpBhcTL102ryufEnLUIk/NhKeBrA2cFkgxwcf9AWAoF1y3V3ci3x1/gwjs
 1w/7eupSlCNO6s4tPAo7AS25cJdKt0PcENe7SYbpVUstmmTRaKWPVxEoJbFTaSUdJfH/
 Yjsd7G0n07SlP63dbsUrRu3OaR92GE+lhM11On9qnoies3H95zTOrOLvLfKUlgTrLu9e
 mpj7C84td04yrIGdbIHvAqA4e7/RzmrwFReGhdb5vVzzlnXaY8XS4TK31jRgFxe07/hg
 kgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DqFm5GaObgO0Yh5cXyrcq6EpYO33MF3wmqRzbNYokCQ=;
 b=oqMa+dM3wfeCQxh7KFxbhQZozDagC1cHB9hFScpb5DsNKJA+eX35BiqrZrPcIdEzaR
 TuJq3g24fhVOTDSePHM3fFvAdImyW9AAOWAFxcS4XnWxitXj2ec4NsNhP3Wd+UwYm24R
 ykZ6hEDYc9K4wYtkbEEvkX3Ctdq352GaMS44IftsUdD3znY2TqXrpoen1tV4T/dz3ajB
 yXssNFJSWbbqlccBeICLjCi0b+ngVmVbIApZ7i+LqFYt5gqDBvpkbxAr3dQiakJqUhNT
 w1DDcExQBe/T9313VtNqSG1JOitkkMvAzBuBPV7ePM5QBs95HyZoGKrW0DTzynoz3p5H
 mrNA==
X-Gm-Message-State: AOAM533NKyJJqhegTu/0RsIZebF34vY9YbRu1oQplAE9WpSlLDJ823Lz
 YEn/p3fBcTZSIrtL06hKw3c9whLk2ty53P+4eqM=
X-Google-Smtp-Source: ABdhPJyZT9TYueqr2guUNR9Vw1gB0efVOZybKnC3a0vvKRWoH+2Aj7qh4zHoWHZWXyIEs8OugWldm18bndZTUpIr8g0=
X-Received: by 2002:a92:2009:: with SMTP id j9mr3280192ile.88.1637652738546;
 Mon, 22 Nov 2021 23:32:18 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
 <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
In-Reply-To: <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 22 Nov 2021 23:32:06 -0800
Message-ID: <CAA93jw6HbLjK8JRbq23cnmq5=Q2uQ6aUYRF81LjAiEx3HK5Dxg@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] tossing acks into the background queue
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlIGNvbnRleHQgb2YgbXkgcXVlc3Rpb24gaXMgYmFzaWNhbGx5IHRoaXM6CgpJcyBjYWtlIGJh
a2VkPyBJcyBpdCBkb25lPwoKSXMgdGhlcmUgYW55dGhpbmcgZnJvbSBsaWJyZVFvcyB0aGF0IHdv
dWxkIGJlIGJldHRlciBpbiBDPwoKT24gTW9uLCBOb3YgMjIsIDIwMjEgYXQgMTE6MTcgUE0gRGF2
ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIE1vbiwgTm92IDIyLCAy
MDIxIGF0IDExOjA3IFBNIFNlYmFzdGlhbiBNb2VsbGVyIDxtb2VsbGVyMEBnbXguZGU+IHdyb3Rl
Ogo+ID4KPiA+IEhpIERhdmUsCj4gPgo+ID4KPiA+IE9uIDIzIE5vdmVtYmVyIDIwMjEgMDY6MDM6
MDMgQ0VULCBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPmFnZXMg
YWdvIEknZCAod2UnZD8gSSByZWFsbHkgZG9uJ3QgcmVtZW1iZXIgLSBmb3JnaXZlIG1lIGlmIEkn
dmUKPiA+ID5mb3Jnb3R0ZW4gd2hvIGFjdHVhbGx5IGxlYW5lZCBpbiBvbiBpdCkgd3JpdHRlbiBh
IGJhc2ljIGFjay1maWx0ZXIgaW4KPiA+ID5lYnBmLiB0aGlzIHdhcyBiZWZvcmUgY2FrZSBnYWlu
ZWQgdGMgYWN0aW9ucyBhbmQgbXkgcHJpbWFyeSB1c2UgZm9yCj4gPiA+dGhlIHRlY2ggd2FzIGZv
ciBhc3ltbWV0cmljIGNvbm5lY3Rpb25zLCBhbmQgYmVmb3JlIHRoZSBnb29kCj4gPiA+YWNrLWZp
bHRlciBhcnJpdmVkLCBhbmQgSSB3YXMgKGFuZCByZW1haW4pIHVuZnJpZW5kbHkgdG8gdGhpcyBs
ZXZlbCBvZgo+ID4gPmRwaS4KPiA+ID4KPiA+ID5UaGF0IHNhaWQsIG9uIGEgc3ltbWV0cmljIGNv
bm5lY3Rpb24sIGRlcHJpb3JpdGl6aW5nIHB1cmUgYWNrcyB0byB0aGUKPiA+ID41JSBiYWNrZ3Jv
dW5kIHF1ZXVlIG5kIHRoZW4gdHVybmluZyB0aGUgY2FrZSBhY2stZmlsdGVyIGxvb3NlIG9uIGl0
Cj4gPiA+bWlnaHQgYWN0dWFsbHkgd29yay4KPiA+ID4KPiA+ID5BbSBJIG9uIGRydWdzL2lzIHRo
ZXJlIGFueSBwb2ludD8KPiA+Cj4gPiBJIHRoaW5rIGF0IGxlYXQgd2hlbiB1c2luZyBtdWx0aXBs
ZSBwcmlvcml0eSB0aW5zIGZvcndhcmQgYW5kIHJldmVyc2UgdHJhZmZpYyBzaG91bGQgYnkgZGVm
YXVsdCB1c2UgdGhlIHNhbWUgdGluIChJIGNhbiBzZWUgbm9uLXN0YW5kYXJkIHNpdHVhdGlvbnMg
dGhhdCB3YW50IGRpZmZlcmVudGlhbCB0cmVhdG1lbnQpLiBUaGUgYXJndW1lbnQgaXMgdGhhdCB1
bmxpa2UgZWFybGllciBhdHRlbXB0cyBhdCBpbmdyZXNzIHNoYXBpbmcgdGhhdCB0cmllZCB0byB0
aHJvdHRsZSByZXZlcnNlIEFDS3M/IGNha2UvY29kZWwgZG8gcHJvcGVyICdoaXQgdGhlIGJyYWtl
cycgc2lnbmFsbGluZyB2aWEgbWFya2luZy9kcm9wcGluZyBhbmQgd2Ugd2FudCB0aGF0IHNpZ25h
bCB0byByZWFjaCB0aGUgb3RoZXIgZW5kIGFzIHF1aWNrbHkgYXMgcG9zc2libGUsIG5vPwo+Cj4g
TXkgdGhvdWdodCB3YXMgYmFzaWNhbGx5IGFuIG9wdGlvbmFsIGZpbHRlciB0aGF0IHN0ZWVyZWQg
YWxsIHB1cmUgYWNrcwo+IChubyBtYXR0ZXIgdGhlIGNsYXNzaWZpY2F0aW9uKSBpbnRvIHRoZSBi
YWNrZ3JvdW5kIHF1ZXVlLgo+IE5vbi1wdXJlLWFja3MgKHNhY2tzKSBlc3NlbnRpYWxseSBqdW1w
IHRoZSBiYWNrZ3JvdW5kIHF1ZXVlIGFuZCBzaWduYWwKPiB0aGF0IGxvc3MgZWFybGllci4gVGhl
IGJhY2tsb2cgb2Ygb3RoZXIgYWNrcyBpbiBiYWNrZ3JvdW5kIGdldAo+IGRlbGl2ZXJlZCBvdXQg
b2Ygb3JkZXIsIGJ1dCBwdXJlbHkgb3V0IG9mIG9yZGVyIGFuZCBkaXNjYXJkZWQgYnkgdGhlCj4g
cmVjaWV2ZXIuCj4KPiA+IFJlZ2FyZHMKPiA+ICAgICAgICAgU2ViYXN0aWFuCj4gPgo+ID4KPiA+
ID4KPiA+ID4KPiA+ID4KPiA+ID4tLQo+ID4gPkkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0
dXJlLCBhIGZldyB0aW1lczoKPiA+ID5odHRwczovL3dheWZvcndhcmQuYXJjaGl2ZS5vcmcvP3Np
dGU9aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKPiA+ID4KPiA+ID5EYXZlIFTDpGh0IENFTywg
VGVrTGlicmUsIExMQwo+ID4gPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gPiA+Q2FrZSBtYWlsaW5nIGxpc3QKPiA+ID5DYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldAo+ID4gPmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
PiA+Cj4gPiAtLQo+ID4gU2VudCBmcm9tIG15IEFuZHJvaWQgZGV2aWNlIHdpdGggSy05IE1haWwu
IFBsZWFzZSBleGN1c2UgbXkgYnJldml0eS4KPgo+Cj4KPiAtLQo+IEkgdHJpZWQgdG8gYnVpbGQg
YSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKPiBodHRwczovL3dheWZvcndhcmQuYXJjaGl2
ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKPgo+IERhdmUgVMOkaHQgQ0VP
LCBUZWtMaWJyZSwgTExDCgoKCi0tIApJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwg
YSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUz
QSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=

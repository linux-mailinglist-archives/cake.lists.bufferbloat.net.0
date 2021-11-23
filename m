Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC85459CA7
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 08:17:55 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2513D3CB39;
	Tue, 23 Nov 2021 02:17:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637651874;
	bh=Ty+AIcOa5UNAoYIkYBu9xwLsKVESkf3qW6sA3oR3PhI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MxBK34qXfZiEdYosZe2brB78B/OC/Ndh0SPdrHF/jGWE1rDKVBoJ+8HFD0owqTy/f
	 PDhz5wjY6uDupw9zAP/Twm3K0kxpnxHikckQp/y8Kun6gHPuuOMMfsTF2qKFs1pXqX
	 UFov4GJI6DDAdcZG1PRHFVU291A+w0G6QM/jXgt0RGYPrGIz4nskO9gGlBxUTvsVwU
	 +k7hA/tQh61OCYdI1LMb5thDSXo3h6H2h5qmbJBnFkc+Gp4sKSigMPLrVfH0efw0m8
	 /70Wb0RVbYrP4sRwnPR5fJmc9cduFjf77xL81UM7VhkyIv08I5K6WV68V+JtFthEwT
	 IYegsaRDKSQRA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com
 [IPv6:2607:f8b0:4864:20::132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 413CF3CB35
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 02:17:52 -0500 (EST)
Received: by mail-il1-x132.google.com with SMTP id i9so15226364ilu.1
 for <cake@lists.bufferbloat.net>; Mon, 22 Nov 2021 23:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Id2iRG2Ny3GBDPXyRe/vFmhrY1+eNGl0BSvnLQMubQs=;
 b=Ck6yb33zTQ/5F12YdLi19Y1RrIgi11dY8bhmzkPWvL82i/YwWiZsYqalMsZGWRA8Nr
 MDZ6Azhk/47AcAOFFSk5snjkOjNUPC0ZnUqT1EDKh5LE28ICdO1LXavZ9K8MuH0/2APu
 duPiv3TeWrxeRIRGtmWPA5ckx1P+8iB618j52GnPDTgk4iynoj1A3oRqzAfTR1njF7GS
 dzYilxnuW5iq8QXOh2ePCv2AOlVqJ96mcdwZSGYUtDaBinE+4SU6blc8a05Ds4ehSw72
 GsyeOOsBjyKc38alUR+MwMwYeQs28aoaFRGD0x28u9Pzz0q0HQvBNp7Zjr44+lU1FbHf
 t1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Id2iRG2Ny3GBDPXyRe/vFmhrY1+eNGl0BSvnLQMubQs=;
 b=Ej5UnVZ37YJFq3XrQcbmYWDN6T6UaAPxkJoa36cDhvCefRjqsIcxfq8kS5h6sD0pGC
 aHlae88FZyFiUy77ljtYpTAcMMEtMRtDKyOTCLolF+8UrHGjOwYftzmoJS8mV4Y8Mycv
 C6VAwj7mOc0y4f715+uk1Swp+L8B4XubQx3ulIifyATlp+V5Se3J+l25lYWGOoI18SXD
 DuWVFAOZpz8A14hKbeYgk2G/kF9ovak1X/WO5TWRChlBnvr00hoJ2zMb/SNUnJz2q+bv
 DnZYaAJUTuq0ORVE400JhzUrTd24B9xfG4nuE5mAaxo2K0XJk8gimgW+QwJl4ooSbqOj
 Qw6g==
X-Gm-Message-State: AOAM530zaip9OgV7mrSLSm33TgVlBobd4TrftMhHQJfcUhIy64XXyWXD
 gV9ROZr4l4zhlpluiOGpVo3Xvo42D60EU4dtr4g=
X-Google-Smtp-Source: ABdhPJzI2YAC8udgeUjtBSQBK2hepNNgPsFaldBLUpKf89LqMMNg4BNeBtyhnqzR1A3Lu8PEbtNBvR0qYaL0m7pn2/4=
X-Received: by 2002:a05:6e02:16c9:: with SMTP id
 9mr3160121ilx.221.1637651871523; 
 Mon, 22 Nov 2021 23:17:51 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
In-Reply-To: <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 22 Nov 2021 23:17:38 -0800
Message-ID: <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
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

T24gTW9uLCBOb3YgMjIsIDIwMjEgYXQgMTE6MDcgUE0gU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxs
ZXIwQGdteC5kZT4gd3JvdGU6Cj4KPiBIaSBEYXZlLAo+Cj4KPiBPbiAyMyBOb3ZlbWJlciAyMDIx
IDA2OjAzOjAzIENFVCwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPiA+
YWdlcyBhZ28gSSdkICh3ZSdkPyBJIHJlYWxseSBkb24ndCByZW1lbWJlciAtIGZvcmdpdmUgbWUg
aWYgSSd2ZQo+ID5mb3Jnb3R0ZW4gd2hvIGFjdHVhbGx5IGxlYW5lZCBpbiBvbiBpdCkgd3JpdHRl
biBhIGJhc2ljIGFjay1maWx0ZXIgaW4KPiA+ZWJwZi4gdGhpcyB3YXMgYmVmb3JlIGNha2UgZ2Fp
bmVkIHRjIGFjdGlvbnMgYW5kIG15IHByaW1hcnkgdXNlIGZvcgo+ID50aGUgdGVjaCB3YXMgZm9y
IGFzeW1tZXRyaWMgY29ubmVjdGlvbnMsIGFuZCBiZWZvcmUgdGhlIGdvb2QKPiA+YWNrLWZpbHRl
ciBhcnJpdmVkLCBhbmQgSSB3YXMgKGFuZCByZW1haW4pIHVuZnJpZW5kbHkgdG8gdGhpcyBsZXZl
bCBvZgo+ID5kcGkuCj4gPgo+ID5UaGF0IHNhaWQsIG9uIGEgc3ltbWV0cmljIGNvbm5lY3Rpb24s
IGRlcHJpb3JpdGl6aW5nIHB1cmUgYWNrcyB0byB0aGUKPiA+NSUgYmFja2dyb3VuZCBxdWV1ZSBu
ZCB0aGVuIHR1cm5pbmcgdGhlIGNha2UgYWNrLWZpbHRlciBsb29zZSBvbiBpdAo+ID5taWdodCBh
Y3R1YWxseSB3b3JrLgo+ID4KPiA+QW0gSSBvbiBkcnVncy9pcyB0aGVyZSBhbnkgcG9pbnQ/Cj4K
PiBJIHRoaW5rIGF0IGxlYXQgd2hlbiB1c2luZyBtdWx0aXBsZSBwcmlvcml0eSB0aW5zIGZvcndh
cmQgYW5kIHJldmVyc2UgdHJhZmZpYyBzaG91bGQgYnkgZGVmYXVsdCB1c2UgdGhlIHNhbWUgdGlu
IChJIGNhbiBzZWUgbm9uLXN0YW5kYXJkIHNpdHVhdGlvbnMgdGhhdCB3YW50IGRpZmZlcmVudGlh
bCB0cmVhdG1lbnQpLiBUaGUgYXJndW1lbnQgaXMgdGhhdCB1bmxpa2UgZWFybGllciBhdHRlbXB0
cyBhdCBpbmdyZXNzIHNoYXBpbmcgdGhhdCB0cmllZCB0byB0aHJvdHRsZSByZXZlcnNlIEFDS3M/
IGNha2UvY29kZWwgZG8gcHJvcGVyICdoaXQgdGhlIGJyYWtlcycgc2lnbmFsbGluZyB2aWEgbWFy
a2luZy9kcm9wcGluZyBhbmQgd2Ugd2FudCB0aGF0IHNpZ25hbCB0byByZWFjaCB0aGUgb3RoZXIg
ZW5kIGFzIHF1aWNrbHkgYXMgcG9zc2libGUsIG5vPwoKTXkgdGhvdWdodCB3YXMgYmFzaWNhbGx5
IGFuIG9wdGlvbmFsIGZpbHRlciB0aGF0IHN0ZWVyZWQgYWxsIHB1cmUgYWNrcwoobm8gbWF0dGVy
IHRoZSBjbGFzc2lmaWNhdGlvbikgaW50byB0aGUgYmFja2dyb3VuZCBxdWV1ZS4KTm9uLXB1cmUt
YWNrcyAoc2Fja3MpIGVzc2VudGlhbGx5IGp1bXAgdGhlIGJhY2tncm91bmQgcXVldWUgYW5kIHNp
Z25hbAp0aGF0IGxvc3MgZWFybGllci4gVGhlIGJhY2tsb2cgb2Ygb3RoZXIgYWNrcyBpbiBiYWNr
Z3JvdW5kIGdldApkZWxpdmVyZWQgb3V0IG9mIG9yZGVyLCBidXQgcHVyZWx5IG91dCBvZiBvcmRl
ciBhbmQgZGlzY2FyZGVkIGJ5IHRoZQpyZWNpZXZlci4KCj4gUmVnYXJkcwo+ICAgICAgICAgU2Vi
YXN0aWFuCj4KPgo+ID4KPiA+Cj4gPgo+ID4tLQo+ID5JIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVy
IGZ1dHVyZSwgYSBmZXcgdGltZXM6Cj4gPmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/
c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9yZwo+ID4KPiA+RGF2ZSBUw6RodCBDRU8sIFRl
a0xpYnJlLCBMTEMKPiA+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+Q2FrZSBtYWlsaW5nIGxpc3QKPiA+Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
PiA+aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+Cj4gLS0KPiBT
ZW50IGZyb20gbXkgQW5kcm9pZCBkZXZpY2Ugd2l0aCBLLTkgTWFpbC4gUGxlYXNlIGV4Y3VzZSBt
eSBicmV2aXR5LgoKCgotLSAKSSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3
IHRpbWVzOgpodHRwczovL3dheWZvcndhcmQuYXJjaGl2ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYl
MkZ3d3cuaWNlaS5vcmcKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK

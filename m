Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEA5459CC8
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 08:33:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6CAE03CB39;
	Tue, 23 Nov 2021 02:33:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637652809;
	bh=M5AN0CKZj+lVxdWySnM+VNhIv5DFEZ78I/1MpPJpeuA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HcdHujztYE8A2IXXcxJW/aLIfLiZrohJRAxsmLpvUqt1DZYIsiU6b41BRIuWCvQSl
	 fqe2qxZGakPBCQ7OY6RGPzvUS2/jQQCGxd+C1+O4X6QesrolZa83eQ8dftf94SVGq5
	 7ftK5L0/JGwujq9GNmURgmLqB4cPvdGGbd+9F2/VJM57ltxGoQtBv3UiBPFNERAdAn
	 OX6Olxwf7j+Zpm7sljQ7hAp+WZL8Q0aLcOIPIvEFxOd51WsktWV5jnRHzQVjGsKffU
	 LHbrnyqhq5rivlrzDsQwt1FpvADFz3b7vLR0Evp6zI5GGGA29Bi6s5ciqXpqI9CZ7B
	 JcbM8T9sUIufA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2E8203CB35
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 02:33:28 -0500 (EST)
Received: by mail-io1-xd36.google.com with SMTP id x6so4975840iol.13
 for <cake@lists.bufferbloat.net>; Mon, 22 Nov 2021 23:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Z6u82dTQucvIVv6/UlofWT7na4KHEVUILTOX6Vq1vQI=;
 b=ixBkB9o0PS1WIfTf4EAd0EIkhABqsDg4fIS+CQCwnYXoB75MWOH6YrZ0dDdFo2AWFD
 1dzZ0WSc/8JPgHK56YeiQmzaLKDwuQFdyKKF1BpQofAZF5psXAwDOBDD+jxfrFkZUNne
 j08TI1z6Z8TrnzTl3HOdHiD8pRNMqR8hxeTwVEmnewxg3+dQQvMxHhmPn+pOyrJsXM68
 E8Rj84oR/HSCY6/B+fdgASqhXjLT+V1Tg9QF7xKHbXoaw38Exo76plAhJFxUfk/Poy41
 DH7WkvhJg+DP8XIa177oyf6BK1V4Kvd2UyFl0bXgV/UILRkXEYN4yh2CoKrLnPCF5xYI
 qjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Z6u82dTQucvIVv6/UlofWT7na4KHEVUILTOX6Vq1vQI=;
 b=IZmkDMphxpcJy7W/AYZ2r5/UWR6mOkqcwIh30N9aakcVOluWM7sThTF2WNnsDI9gx2
 KdlaLmR8fIW/0beypgV9SqM1I/JKxaWk1G1rjSYBvfxDVuGgfyG0Ery4A0b1n22m72uK
 fdPJ8PcykDqAg+yXcJf5hja149EcfwcA9D15e0x8OF3s3IA20KN10h4gGi6dw0ZKM1ab
 7vrd9uNm5vEzXRkRNrWT2liSBEJPNwWm51VPNJkf6IVaVVoVOjWcNc4yGGy2xYL/jVzX
 pISZUWY+WA2xWsq3xOJqCICPJUbiqVv7cDA4VLKE3RQC8wsbMlx5pC1G4UWfgjpTg2wo
 NCJg==
X-Gm-Message-State: AOAM531eCmm6WVXKoJkUoB+nXlSUReWHnHV4Ck+jFuXQuPygS+/+WDHw
 MwfXlax+ml89mCcKw0vwJfoPyI9JaoIt82JmJp6gW0wbaCI=
X-Google-Smtp-Source: ABdhPJwV0WldNNCQrxsEmCAf/mqEyjB7N/pwm0SdhNFDEu2qVRqyiCyJBjBBveqTZXLUn9Zqn2/TOJw531Ww9q0drxw=
X-Received: by 2002:a5d:850b:: with SMTP id q11mr3486193ion.204.1637652807505; 
 Mon, 22 Nov 2021 23:33:27 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
 <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
 <CAA93jw6HbLjK8JRbq23cnmq5=Q2uQ6aUYRF81LjAiEx3HK5Dxg@mail.gmail.com>
In-Reply-To: <CAA93jw6HbLjK8JRbq23cnmq5=Q2uQ6aUYRF81LjAiEx3HK5Dxg@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 22 Nov 2021 23:33:14 -0800
Message-ID: <CAA93jw6g1Pc6n-mss7swXsqQUL25rmVfeYCHwK6vfG=dro86uQ@mail.gmail.com>
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

aHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L21ha2luZy1jYWtlLW11bHRpY29yZS1vci1vdGhl
ci1uZXctZmVhdHVyZXMvMTEyNjIzCgpPbiBNb24sIE5vdiAyMiwgMjAyMSBhdCAxMTozMiBQTSBE
YXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gVGhlIGNvbnRleHQgb2Yg
bXkgcXVlc3Rpb24gaXMgYmFzaWNhbGx5IHRoaXM6Cj4KPiBJcyBjYWtlIGJha2VkPyBJcyBpdCBk
b25lPwo+Cj4gSXMgdGhlcmUgYW55dGhpbmcgZnJvbSBsaWJyZVFvcyB0aGF0IHdvdWxkIGJlIGJl
dHRlciBpbiBDPwo+Cj4gT24gTW9uLCBOb3YgMjIsIDIwMjEgYXQgMTE6MTcgUE0gRGF2ZSBUYWh0
IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBNb24sIE5vdiAyMiwgMjAy
MSBhdCAxMTowNyBQTSBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxlcjBAZ214LmRlPiB3cm90ZToK
PiA+ID4KPiA+ID4gSGkgRGF2ZSwKPiA+ID4KPiA+ID4KPiA+ID4gT24gMjMgTm92ZW1iZXIgMjAy
MSAwNjowMzowMyBDRVQsIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4g
PiA+ID5hZ2VzIGFnbyBJJ2QgKHdlJ2Q/IEkgcmVhbGx5IGRvbid0IHJlbWVtYmVyIC0gZm9yZ2l2
ZSBtZSBpZiBJJ3ZlCj4gPiA+ID5mb3Jnb3R0ZW4gd2hvIGFjdHVhbGx5IGxlYW5lZCBpbiBvbiBp
dCkgd3JpdHRlbiBhIGJhc2ljIGFjay1maWx0ZXIgaW4KPiA+ID4gPmVicGYuIHRoaXMgd2FzIGJl
Zm9yZSBjYWtlIGdhaW5lZCB0YyBhY3Rpb25zIGFuZCBteSBwcmltYXJ5IHVzZSBmb3IKPiA+ID4g
PnRoZSB0ZWNoIHdhcyBmb3IgYXN5bW1ldHJpYyBjb25uZWN0aW9ucywgYW5kIGJlZm9yZSB0aGUg
Z29vZAo+ID4gPiA+YWNrLWZpbHRlciBhcnJpdmVkLCBhbmQgSSB3YXMgKGFuZCByZW1haW4pIHVu
ZnJpZW5kbHkgdG8gdGhpcyBsZXZlbCBvZgo+ID4gPiA+ZHBpLgo+ID4gPiA+Cj4gPiA+ID5UaGF0
IHNhaWQsIG9uIGEgc3ltbWV0cmljIGNvbm5lY3Rpb24sIGRlcHJpb3JpdGl6aW5nIHB1cmUgYWNr
cyB0byB0aGUKPiA+ID4gPjUlIGJhY2tncm91bmQgcXVldWUgbmQgdGhlbiB0dXJuaW5nIHRoZSBj
YWtlIGFjay1maWx0ZXIgbG9vc2Ugb24gaXQKPiA+ID4gPm1pZ2h0IGFjdHVhbGx5IHdvcmsuCj4g
PiA+ID4KPiA+ID4gPkFtIEkgb24gZHJ1Z3MvaXMgdGhlcmUgYW55IHBvaW50Pwo+ID4gPgo+ID4g
PiBJIHRoaW5rIGF0IGxlYXQgd2hlbiB1c2luZyBtdWx0aXBsZSBwcmlvcml0eSB0aW5zIGZvcndh
cmQgYW5kIHJldmVyc2UgdHJhZmZpYyBzaG91bGQgYnkgZGVmYXVsdCB1c2UgdGhlIHNhbWUgdGlu
IChJIGNhbiBzZWUgbm9uLXN0YW5kYXJkIHNpdHVhdGlvbnMgdGhhdCB3YW50IGRpZmZlcmVudGlh
bCB0cmVhdG1lbnQpLiBUaGUgYXJndW1lbnQgaXMgdGhhdCB1bmxpa2UgZWFybGllciBhdHRlbXB0
cyBhdCBpbmdyZXNzIHNoYXBpbmcgdGhhdCB0cmllZCB0byB0aHJvdHRsZSByZXZlcnNlIEFDS3M/
IGNha2UvY29kZWwgZG8gcHJvcGVyICdoaXQgdGhlIGJyYWtlcycgc2lnbmFsbGluZyB2aWEgbWFy
a2luZy9kcm9wcGluZyBhbmQgd2Ugd2FudCB0aGF0IHNpZ25hbCB0byByZWFjaCB0aGUgb3RoZXIg
ZW5kIGFzIHF1aWNrbHkgYXMgcG9zc2libGUsIG5vPwo+ID4KPiA+IE15IHRob3VnaHQgd2FzIGJh
c2ljYWxseSBhbiBvcHRpb25hbCBmaWx0ZXIgdGhhdCBzdGVlcmVkIGFsbCBwdXJlIGFja3MKPiA+
IChubyBtYXR0ZXIgdGhlIGNsYXNzaWZpY2F0aW9uKSBpbnRvIHRoZSBiYWNrZ3JvdW5kIHF1ZXVl
Lgo+ID4gTm9uLXB1cmUtYWNrcyAoc2Fja3MpIGVzc2VudGlhbGx5IGp1bXAgdGhlIGJhY2tncm91
bmQgcXVldWUgYW5kIHNpZ25hbAo+ID4gdGhhdCBsb3NzIGVhcmxpZXIuIFRoZSBiYWNrbG9nIG9m
IG90aGVyIGFja3MgaW4gYmFja2dyb3VuZCBnZXQKPiA+IGRlbGl2ZXJlZCBvdXQgb2Ygb3JkZXIs
IGJ1dCBwdXJlbHkgb3V0IG9mIG9yZGVyIGFuZCBkaXNjYXJkZWQgYnkgdGhlCj4gPiByZWNpZXZl
ci4KPiA+Cj4gPiA+IFJlZ2FyZHMKPiA+ID4gICAgICAgICBTZWJhc3RpYW4KPiA+ID4KPiA+ID4K
PiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPi0tCj4gPiA+ID5JIHRyaWVkIHRvIGJ1aWxk
IGEgYmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cj4gPiA+ID5odHRwczovL3dheWZvcndhcmQu
YXJjaGl2ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKPiA+ID4gPgo+ID4g
PiA+RGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPiA+ID4gPl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID5DYWtlIG1haWxpbmcgbGlzdAo+
ID4gPiA+Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiA+ID4gPmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKPiA+ID4KPiA+ID4gLS0KPiA+ID4gU2VudCBmcm9t
IG15IEFuZHJvaWQgZGV2aWNlIHdpdGggSy05IE1haWwuIFBsZWFzZSBleGN1c2UgbXkgYnJldml0
eS4KPiA+Cj4gPgo+ID4KPiA+IC0tCj4gPiBJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVy
ZSwgYSBmZXcgdGltZXM6Cj4gPiBodHRwczovL3dheWZvcndhcmQuYXJjaGl2ZS5vcmcvP3NpdGU9
aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKPiA+Cj4gPiBEYXZlIFTDpGh0IENFTywgVGVrTGli
cmUsIExMQwo+Cj4KPgo+IC0tCj4gSSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEg
ZmV3IHRpbWVzOgo+IGh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUz
QSUyRiUyRnd3dy5pY2VpLm9yZwo+Cj4gRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKCgoK
LS0gCkkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKaHR0cHM6
Ly93YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3Jn
CgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

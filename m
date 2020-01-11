Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 104811383B9
	for <lists+cake@lfdr.de>; Sat, 11 Jan 2020 22:38:42 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8B3A13CB38;
	Sat, 11 Jan 2020 16:38:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578778720;
	bh=nL36b6lbzTkGH3aynB6Csw8VGuIJ7yZCBVbF9ovYDMI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bt7esTJvr/4KZdq4vfB89Imk3KwkJjppGqTQyk4/nQ/eTbEvKDjidhPVH1okSe64Q
	 vRXOJ2t+cM0LSuhHMJ635BLeHdVyQhltng5S6h4PlGpFtI11j45HydwZn/VM8pUWZp
	 /1iFWir/GY8JCmvD68EhLZtWkrG0PqKFFhcpeWfk6SEc2tI8cu5i5OKQiXAIqbnvUH
	 shNdy0GYwFdzGURxHkM0NguEZXRcp5K9M+OrBSsVf0tGy3qTu/CoWhv+MzaLPnTaHI
	 EPCe7dxNOG0BgPDM08FgY0ZocNtlQsrUavKl5xJwoHeHRQgpYHn+bVpF+LF6NjoOf1
	 MyLCTcBKulPHA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C3F583B29E
 for <cake@lists.bufferbloat.net>; Sat, 11 Jan 2020 16:38:38 -0500 (EST)
Received: by mail-io1-xd42.google.com with SMTP id i11so5736731ioi.12
 for <cake@lists.bufferbloat.net>; Sat, 11 Jan 2020 13:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ClH0A6CLXREvaVjXl9M8LLnQUh1+/K8DfwTZ4HEOQb4=;
 b=FS5NAk6oQXOpfCHMcLEQxbwnV18BcFM/vHrH5Aln7a+mvvcWNKYFnFhTZDuyxBDzCT
 imlnF6kNFkIvDrXcCIuUtfdyJWrJEUW2iw1N+qlN2zpOpcXarsZ7RggmrXSsZ0SrC4e1
 R4+P5Fup6yjXx3LmnLmAmRbsYnweqEgQImhRE9pEwV1P5ABTWPolAaTQdXHZD1lqlZjX
 vxXfX+AejVquUvAVnYcVaBEilQuu2SGCsCl0p8OI4uVuSdUx5lD+LPVIckh2Xf+9CcwY
 L+I8Ao7SuBDuOdm0b0NPYYCfc0Z5334cxE2IOTHPJ74TRE1c2+kTX/sTVl+zNT9Wrihb
 tFOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ClH0A6CLXREvaVjXl9M8LLnQUh1+/K8DfwTZ4HEOQb4=;
 b=sKTmiVTwQMDvc+6EP/RXN6l8Jrij7C2GVU57+qfr9pyCmB+bAq61Qq9TFj6X6XHjmw
 1fOE80/HHPk5oiZVGUFgKI9fO4ieLtBHvTVG9xqdpuovZxNtdqdUfl8mb2B/Sn8pqgaO
 yPnQywQqENKHGhffPOG0Rhakb84dzz9tLGl3wzrbcMUoYQVz6o7rp7Nvg3yk4HXhPT0v
 FOgugAS1FWg2yqJVmONnDbzWjWMO2hXeB7kydQLd6oFF0hkGCFY3EPjlvs+uiJg6g+WW
 B/AscoC1iGFDHIfM+fB4xzFeC7tTr8irNsqIkEr8KF/LpZ5/9LtavzNduusvg7Hr6VVh
 g19Q==
X-Gm-Message-State: APjAAAX3QprXcsmL2bsmgq65le1EW9IWdCfXW7zFuTl+a+0/cU9BmGX0
 bF7TI+fWpJx39aZf7B28SzeEOyiq6ITqrLBxpTWoLeZJUWE=
X-Google-Smtp-Source: APXvYqxciK+SvV5wpdECGuDIAuZupxp0HQwoY7Q6pC/h1uijQnAXKBjh5AEpbclnz7VLCs6uEGoTnyk/APbCTknelso=
X-Received: by 2002:a5d:9d10:: with SMTP id j16mr8019340ioj.0.1578778718225;
 Sat, 11 Jan 2020 13:38:38 -0800 (PST)
MIME-Version: 1.0
References: <1578730684729@kroah.com>
 <CAA93jw6Hb0fHbqOMfc_6WvjSu2=JQ1xx__NvuUQEM=s6XBTrGA@mail.gmail.com>
 <13E6E54B-BCF8-44C7-9E0F-55127DB9A42C@darbyshire-bryant.me.uk>
In-Reply-To: <13E6E54B-BCF8-44C7-9E0F-55127DB9A42C@darbyshire-bryant.me.uk>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 11 Jan 2020 13:38:27 -0800
Message-ID: <CAA93jw5FGuyFhkej_V7wQXgGx6+dwve7fVj6+X0OZcO68GEhYA@mail.gmail.com>
To: "Kevin 'ldir' Darbyshire-Bryant" <ldir@darbyshire-bryant.me.uk>
Subject: Re: [Cake] Patch "sch_cake: avoid possible divide by zero in
 cake_enqueue()" has been added to the 4.19-stable tree
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

VGhhbmsgeW91IGZvciBhbGwgdGhlIGd5bW5hc3RpY3MgdG8ga2VlcCBjYWtlIGFsaXZlIGluIG9w
ZW53cnQuCgpJIHdvdWxkIHN0aWxsIGxpa2UgdGhlcmUgdG8gYmUgYSBzY2UgYnJhbmNoIG9mIHRo
ZSBvdXQgb2YgdHJlZSB3b3JrCnRoYXQgSSBjb3VsZCBwb2ludCBwZW9wbGUgYXQKaW4gbXkgbGNh
IHRhbGsgdGhpcyB3ZWVrLCBidXQgSSB1bmRlcnN0YW5kIHRoYXQncyBpbmNyZWFzaW5nbHkgZGlm
ZmljdWx0LgoKT24gU2F0LCBKYW4gMTEsIDIwMjAgYXQgMToyMCBQTSBLZXZpbiAnbGRpcicgRGFy
YnlzaGlyZS1CcnlhbnQKPGxkaXJAZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOgo+Cj4K
Pgo+ID4gT24gMTEgSmFuIDIwMjAsIGF0IDIwOjQwLCBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFp
bC5jb20+IHdyb3RlOgo+ID4KPiA+IGRpZCB0aGlzIG1ha2UgaXQgaW50byBvcGVud3J0IGFscmVh
ZHk/Cj4KPiBJdOKAmXMgY29tcGxpY2F0ZWQgYW5kIGl0IGRlcGVuZHMgd2hhdCB5b3UgbWVhbiBi
eSBvcGVud3J0Lgo+Cj4gRmlyc3Qgb2ZmLCB0aGUgZml4IHJlbGF0ZXMgdG8gYXV0by1iYW5kd2l0
aCBtb2RlIG9yIHdoYXRldmVyIGl04oCZcyBjYWxsZWQgYW5kIEkgZG9u4oCZdCB0aGluayBtYW55
IHBlb3BsZSB1c2UgaXQuICBOb25ldGhlbGVzczoKPgo+IElzIHRoZSBmaXggaW4g4oCZbmV0LW5l
eHTigJk6IHllcwo+IElzIHRoZSBmaXggaW4gNC4xOSBzdGFibGU6IEluIHRoZSBxdWV1ZSBmb3Ig
NC4xOS45NQo+Cj4gSXMgb3BlbndydCBvbiA0LjE5Ljk1OiBObwo+IERvZXMgb3BlbndydCB1c2Ug
dGhlIGluLXRyZWUgdmVyc2lvbiBvZiBDYWtlPzogTm8KPgo+IElzIHRoZSBmaXggaW4gdGhlIE91
dC1PZi1UcmVlIGNha2UgZ2l0IHJlcG86IFllcwo+Cj4gSGFzIHRoZSBvcGVud3J0IENBS0UgcGFj
a2FnZSBiZWVuIGJ1bXBlZCB0byBmb2xsb3cgY2FrZSBnaXQgcmVwbz86IG1hc3RlciwgeWVzLCBh
cyBvZiAyMDIwLzAxLzExIChlYXJsaWVyIHRvZGF5KQo+Cj4gT3BlbldydCAxOS4wNyBoYXMganVz
dCBiZWVuIHJlbGVhc2VkLCBpdHMgY29uY2VwdCBvZiBjYWtlIHBhY2thZ2UgaGFzIG5vdCBiZWVu
IGJ1bXBlZC4gIE5laXRoZXIgaGFzIDE4LjA2Lgo+Cj4KPiBJdCBpcyB3b3J0aCBub3RpbmcgdGhh
dCB1bnRpbCB5ZXN0ZXJkYXkvcmVjZW50bHkgdGhlIG91dCBvZiB0cmVlIGNha2UgcmVwbyBoYWQg
cmVzaWR1ZSBpbiBpdCBmcm9tIHNvbWUgZXhwZXJpbWVudGFsIHN0dWZmIChTQ0UgJiB1cGRhdGlu
ZyBjb25udHJhY2sgbWFya3MpIGFuZCBkaWQgbm90IHJlcHJlc2VudCB1cHN0cmVhbSBpbi10cmVl
IENBS0UgYW55d2F5LiAgVGhhdCBzaXR1YXRpb24gd2FzIGNvcnJlY3RlZCBBRkFJSyBjb21wbGV0
ZWx5IHRoaXMgbW9ybmluZy4KPgo+IElkZWFsbHkgSSB3b3VsZCBsaWtlIG9wZW53cnQgdG8gdXNl
IHRoZSBpbi10cmVlIENBS0UsIHdpdGgg4oCYZmVhdHVyZSBiYWNrcG9ydHPigJkgZnJvbSBsYXRl
ciBrZXJuZWxzIGFzIGJhY2twb3J0IHBhdGNoZXMuICBVbmZvcnR1bmF0ZWx5IHNvbWUgdGFyZ2V0
cyBpbiBvcGVud3J0IGFyZSBzdGlsbCBvbiA0LjE0IGtlcm5lbHMgc28gdGhlcmUgaXMgbm8gaW4t
dHJlZSBDQUtFIHRvIHVzZS4gIERyb3BwaW5nIENBS0UgZnJvbSBwcmUgNC4xOSBrZXJuZWxzIGNh
dXNlZCBhIGJpdCBvZiBhbiBvdXRjcnkgd2hlbiBJIGRpZCBpdCwgc28gdGhlIG5leHQgaWRlYSB3
YXMgdG8gaGF2ZSBhIGNob2ljZSBvZiBjYWtlIGtlcm5lbCBtb2R1bGUgZm9yIEs0LjE5IHRhcmdl
dHMsIGluLXRyZWUgJiBvdXQtb2YtdHJlZSBDQUtFLiAgVW5mb3J0dW5hdGVseSB0aGF0IGV4cG9z
ZWQgYSB3ZWFrbmVzcyBpbiBwYWNrYWdlIGRlcGVuZGVuY3kgc2VsZWN0aW9uLCBzbyB0aGF0IGlk
ZWEgaGFzbuKAmXQgZmxvd24gZWl0aGVyLiAgSeKAmW0gYWZyYWlkIGVudGh1c2lhc20gbGV2ZWxz
IHRoZW4gZHJvcHBlZC4KPgo+CgoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIKCkRhdmUgVMOkaHQK
Q1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtNDM1
LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

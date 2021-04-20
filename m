Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 45402365C94
	for <lists+cake@lfdr.de>; Tue, 20 Apr 2021 17:48:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9574A3CB50;
	Tue, 20 Apr 2021 11:48:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1618933710;
	bh=kTkjACPsjYCx2zVDCnLhczAXQshymp4Ns2Kr1hXc5Xw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WLfmLWuilvo0bLdTtLsLld9kUiPUkfP5T+KfFkABBhAOLg9TssoIiHRGDNm+56Y8g
	 HGUczf1sBN8hA5xUFAXBstAPfKbiSNMJsOPvu9EwfgPNgSbP71qDM4ZgdIit0yjVs4
	 WtwuYEfB3bLIhdIf6uMMNyKm/57P5DWMMwroFFBxDpb+2Pj2CrSmiDqnAntdAEMOOi
	 OXmgbqb3V/FGLLOsne5gHyCMsJF9WCRTZsHPd+6uYNKNK5QNGsm53pWm0ahj+wNFh9
	 zaONNBGt6jPz39f9+6poCaDHoEBButiEpFgcel6sbxiSTTwSfb1GEWM+Dd4DqbTA0q
	 WwSKQaElLSB0w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com
 [IPv6:2607:f8b0:4864:20::d2e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1105B3B29D;
 Tue, 20 Apr 2021 11:48:28 -0400 (EDT)
Received: by mail-io1-xd2e.google.com with SMTP id b9so9188221iod.13;
 Tue, 20 Apr 2021 08:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NPhktYLxhKW/PLy1maXtHfTAbkKia8NHwIZN83GNJwg=;
 b=g2lDcPuqZvfIWaY4qa0eiuG6zH3zxLK6H13pIhJ3GOvVfmbDd3G5FhqcnwGHyM+ECd
 2Pc6bVplDFktmwfHYa9WVhyJXoR+OKRzzgwElUuY0GI4MqkgCZ2scURzrHlDr2iE+/BZ
 Ny/kr8Vlh33lnxkQ7n6y2yMlwok5GDmAE2dOFSzQAraa3YWACgJsg4SMfWKz8u8r6LPH
 tYpy8yf6X6WSL9Mg7fqwyWbaW8x4e3F56Yb4pW5m5cupolNQtP+PX7Ai2UelnKDUykU8
 QPmO+7G37tt5zu82P3Wxpm2DWRL3LtorRaQN4ueb5oR/ILbHwyHQKSr2SkJwXH55ehMI
 0WTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NPhktYLxhKW/PLy1maXtHfTAbkKia8NHwIZN83GNJwg=;
 b=pxatjvRAxlvBZn+wRg3NmCrIm48S+2rCrnQe0chX1aLdjbjSN6Z2qOUpAbxw1LLSro
 kG+5XMeCUk566Nk53NlttquMoYCXiZOiNQavnIFGv91ySF3WzL0JkGJg29/VOX5sIN7G
 ujF8bPCeRKcxlCayRozW+8BHAIEOzTHWI2i90hsRwGwQAff7ghNbU8qKGPbI4QHJudyQ
 7dxhNxTS9ojHYe3ty0m8qgivrWk4tDcDvv2NEWY9uNqfa1UMxgxNDQTnWTtg+BTQMEyA
 bajyB/WuiaZHP4vCRg8pKD0K1laO+o5FkYxAPGE4CfpUW6iMRqsuntXwW7YfY/6Uplxn
 oH7w==
X-Gm-Message-State: AOAM530QIVXvcA8hMskxAqlyNPdyZo08ELxdiUnkh4qjYGOL+isOIu1y
 VlNr9SCa+rbje6PKgVvjZcsHcOnnfd4iJlWuvW8=
X-Google-Smtp-Source: ABdhPJympY/K3cETQjVLbqD3DNmfXU6L1DfBEmcmxmjH7RdL/Vpr77NrFcnk46QnNYD1xOC43FjwFjxWIfsrq132JlY=
X-Received: by 2002:a6b:4e10:: with SMTP id c16mr19366223iob.123.1618933708377; 
 Tue, 20 Apr 2021 08:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5FEe90Dw3_tGubna=_Urzbq6dYMMrifGV7bMuhL2nXKg@mail.gmail.com>
 <nycvar.QRO.7.76.6.2104191057361.18176@qynat-yncgbc>
 <10241.1618866642@localhost>
 <nycvar.QRO.7.76.6.2104191439590.18176@qynat-yncgbc>
 <21914.1618927798@localhost>
In-Reply-To: <21914.1618927798@localhost>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 20 Apr 2021 08:48:17 -0700
Message-ID: <CAA93jw7=wV6hvgKTwVa6mTpLgJnHBuVX74-aSNSXzxHm-MPzaA@mail.gmail.com>
To: Michael Richardson <mcr@sandelman.ca>
Subject: Re: [Cake] [Bloat] starlink testing
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

SSdtIHN0aWxsIGJ1c3kgZG9pbmcgbW9yZSBhbmQgbW9yZSBzb3BoaXN0aWNhdGVkIHRlc3RzIGFu
ZCBwYWNrZXQKY2FwdHVyZXMuIEkgYW0gaW5jbGluZWQgdG8gImdvIGRhcmsiIGZvciBhIHdoaWxl
IHdoaWxzdCBJIGRvIHRoYXQsIGJ1dAppZiBhbnlvbmUgd291bGQgbGlrZSB0byBoZWxwIHJlLXdy
aXRlIHRoZSB1bHRpbWF0ZSBibG9nIGVudHJ5LCBvcgpoZWxwIG91dCBvbiBpbnN0cnVtZW50aW5n
IG1vcmUgdGVzdHMsIHBsZWFzZSBjb250YWN0IG1lIG9mZmxpc3QuCgpBcHBhcmVudGx5IHRoZXJl
IGlzIElQdjYgdW5kZXIgdGVzdC4uLiBzb21ld2hlcmUuLi4gYWNjb3JkaW5nIHRvCnJlZGRpdC4g
VHVubmVsbGluZyBteSBpcHY2IHZpYSB3aXJlZ3VhcmQgImp1c3Qgd29ya2VkIiwgc28gdGhlcmUn
cwp0aGF0LiBUaGVyZSBoYXZlIGJlZW4gYSBmZXcgb3RoZXIgc3VycHJpc2VzLCBvbmUgcmF0aGVy
IG1ham9yLgoKQXMgbXVjaCBhcyBJIGRpc2xpa2UgdGhlIGNnbmF0IEkgZG9uJ3Qgc2VlIGhvdyBz
dGFybGluayBoYWQgYW55IG90aGVyCmNob2ljZSwgYW5kIHRoZSBsYXllciBiZWxvdyB0aGF0IGlz
IGhvcGVmdWxseSBjYXBhYmxlIG9mIGNhcnJ5aW5nCmlwdjYgd2VsbC4KCk9uIFR1ZSwgQXByIDIw
LCAyMDIxIGF0IDc6MTAgQU0gTWljaGFlbCBSaWNoYXJkc29uIDxtY3JAc2FuZGVsbWFuLmNhPiB3
cm90ZToKPgo+IERhdmlkIExhbmcgPGRhdmlkQGxhbmcuaG0+IHdyb3RlOgo+ICAgICA+IEkgaGF2
ZW4ndCBzZWVuIGFueSBmb2xsb3ctdXBzIHdoZXJlIGFueW9uZSBoYXMgZ290dGVuIGEgbG9naW4g
dG8gdGhlIGRpc2ggb3IKPiAgICAgPiBoYXMgc25pZmZlZCB0aGUgdHJhZmZpYyBiZXR3ZWVuIHRo
ZSBkaXNoIGFuZCB0aGUgcm91dGVyLgo+Cj4gVHJ1ZSwgSSBoYXZlbid0IGhlYXJkLCBidXQgSSBo
YXZlbid0IGJlZW4gbG9va2luZy4KPgo+ICAgICA+IEkgaGF2ZW4ndCBzZWVuIGFueXRoaW5nIHRo
YXQgd291bGQgc2hvdyB0aGF0IHRoZSByb3V0ZXIgaGFzIChvciBkb2Vzbid0IGhhdmUpCj4gICAg
ID4gYW55IGF3YXJlbmVzcyBvZiB0aGUgc2F0ZWxsaXRlIG5ldHdvcmsuCj4KPiBXaXRoIG11bHRp
LWh1bmRyZWQgYW50ZW5uYSB0byBiZSBzdGVlcmVkLCBhbmQgYW4gQU1ENjQgQ1BVIG9uIGJvYXJk
LCBJIGNhbid0Cj4gaW1hZ2luZSB0aGF0IHRoYXQgQ1BVIGlzbid0IGRvaW5nIHNvbWUgc2lnbmlm
aWNhbnQgYW1vdW50IG9mIERTUC4KPiBJZiB0aGV5IGhhZCBvZmZib2FyZGVkIGFsbCB0aGUgYW5h
bG9nIHBhcnRzIHRvIGFub3RoZXIgRFNQIG9yIGRpc2NyZXRlIGxvZ2ljLAo+IHRoZW4gcHJvYmFi
bHkgdGhleSB3b3VsZG4ndCBuZWVkIGEgNjQtYml0IENQVSBvbmJvYXJkOiB0aGV5IGNvdWxkIGhh
dmUgdXNlZAo+IHNvbWV0aGluZyBzbG93ZXIvY2hlYXBlci4gIFdlbGwsIG1heWJlIHRoZXJlIGlz
IGZ1dHVyZSBwcm9vZmluZyBpbnZvbHZlZC4KPgo+IEknbSB2ZXJ5IGRpc2FwcG9pbnRlZCB0aGF0
ICJTb21ldGhpbmcgc2ltcGxlciB0aGFuIElQdjYiIHR1cm5lZCBvdXQgdG8gYmUgIkNHTiIuCj4K
PiAtLQo+IF0gICAgICAgICAgICAgICBOZXZlciB0ZWxsIG1lIHRoZSBvZGRzISAgICAgICAgICAg
ICAgICAgfCBpcHY2IG1lc2ggbmV0d29ya3MgWwo+IF0gICBNaWNoYWVsIFJpY2hhcmRzb24sIFNh
bmRlbG1hbiBTb2Z0d2FyZSBXb3JrcyAgICAgICAgfCAgICBJb1QgYXJjaGl0ZWN0ICAgWwo+IF0g
ICAgIG1jckBzYW5kZWxtYW4uY2EgIGh0dHA6Ly93d3cuc2FuZGVsbWFuLmNhLyAgICAgICAgfCAg
IHJ1Ynkgb24gcmFpbHMgICAgWwo+CgoKLS0gCiJGb3IgYSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ks
IHJlYWxpdHkgbXVzdCB0YWtlIHByZWNlZGVuY2Ugb3ZlciBwdWJsaWMKcmVsYXRpb25zLCBmb3Ig
TW90aGVyIE5hdHVyZSBjYW5ub3QgYmUgZm9vbGVkIiAtIFJpY2hhcmQgRmV5bm1hbgoKZGF2ZUB0
YWh0Lm5ldCA8RGF2ZSBUw6RodD4gQ1RPLCBUZWtMaWJyZSwgTExDIFRlbDogMS04MzEtNDM1LTA3
MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

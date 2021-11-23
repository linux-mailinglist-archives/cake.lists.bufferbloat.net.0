Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A8D459DFC
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 09:27:59 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AF9E33CB39;
	Tue, 23 Nov 2021 03:27:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637656077;
	bh=TYVLZsIeECbQpiNIY7851lon7djKl01ukBhQgd4IlPE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SohxJSpjKER5hXOqJZAog5trB8+uzWIWO8I0vw337rpYNo4mxOJ4rzmjt4cNFwofs
	 qQk7Z6CRTnEDXSEzGyMKRSRWGUZ8HC4961K3RUP97LU4R8e8iqUjFyQNWg/8n7A+oi
	 qPGPVN7zw9bQUzWyzVGDrQyRbNf0Izz3vhPw3F30ToslNcFfYoyNMF2nUa3dnRozm2
	 rwP3kxJ+/+z3V+WEUgDS/L/RGqmJeBt/uN8/RiB8Cfcsx4lr3ovBnXV9r1lpwdFUwW
	 kgNTCJZEesV37CQAQ9tkrTGdpwhSN7tH79/D1AiIDnZo1O0P8WtnRBkWpSK00vsPP3
	 OeWh3bs/r5lPg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ECF093CB35
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 03:27:56 -0500 (EST)
Received: by mail-io1-xd33.google.com with SMTP id x10so26884950ioj.9
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 00:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pRIQzGTTbLD7SzRjxwLud9H15BNsGd/tj7X37DqzFek=;
 b=qWRx40Nvx6z57FYalzZmNonW0VgjDMCJMibbuqZAeHrLFsQH0pfRKyfo5hCq43rCfz
 Gr5/2YdndatjBWoe2BojPuUhaqDyP/WMbKizz3Dm2tra3zHX0y9uogV/pMOnxAZgBl7/
 BOj8w3OztsiDsB6Ip6KAEhGljhJr1eQGtuQ9qKOsTNa6ccHGg3VpcgDirBV9ee1opNVx
 jc5AHykPwNRlJY8SKDsdNGPoG2cfuiLwavU/bhR1fwto3VKwu1XetfBPCpz4r0ZxjqOs
 FReQ5tIa2r8k7opD03W4vdVDnFpcLj23cpI5NSNzfr/1X+0WcvcaDyiRSXi2pZfIDchD
 KWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pRIQzGTTbLD7SzRjxwLud9H15BNsGd/tj7X37DqzFek=;
 b=Y1a9Ox6o/R+YHV9cX+f9c6Gba7NddTaGTk3E+ysHXjhn7yotGI3f56FzV7mdMrO8gh
 ar50eSh0ZP2plfa0e916jaJ8h8jXByndB0YX7TGyz5fKedXfmkbHcDIx6wwZLv7asXX3
 Kf7ayfw1nz0NIeDp0f1Lmf7DmMb2dylBwOUgQf9HwYgSzg1ODyl6jv/B9j6s4W87RRlj
 cGIEbL4irUQQmr9A8i2ygDvHrGUVP6ozme7btq/4FxMnDi0vdyjTfPhcVbTPb5pT3hzo
 wq2aQy3dvAJIZLgA67KZ91o+H5ZlgS4lGlXOVxpNRN+haPJ4dnYhMQuw8CycWe+t2tz8
 S3rQ==
X-Gm-Message-State: AOAM533y5WLNDDoVzi5mE/t9j8kQufVcScCdJmTXbt9cxLcgN8F8b6na
 P0+cPjBLS6O7t2N3hZmT5EZ+A+Tit1tfS9kJ2qT2xScJZ1M=
X-Google-Smtp-Source: ABdhPJyYrU9rk9NMhizheLKzcjOVnfzGNdciJu7Xkrpzrf6+KLF6daJtHjrpPL++aUbVn0ZL3dmWvl9rIwtaF0FsLzo=
X-Received: by 2002:a6b:e60e:: with SMTP id g14mr3805178ioh.28.1637656076219; 
 Tue, 23 Nov 2021 00:27:56 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
 <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
 <CAA93jw6HbLjK8JRbq23cnmq5=Q2uQ6aUYRF81LjAiEx3HK5Dxg@mail.gmail.com>
 <BFE5D61E-ED29-4AA3-816C-A8F0947EFDD7@gmx.de>
In-Reply-To: <BFE5D61E-ED29-4AA3-816C-A8F0947EFDD7@gmx.de>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 23 Nov 2021 00:27:42 -0800
Message-ID: <CAA93jw72hZ0S_gVZUzp1kOVK2wysMh5z1eNV1CqvfFcqoz4c6A@mail.gmail.com>
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

T24gVHVlLCBOb3YgMjMsIDIwMjEgYXQgMTI6MDYgQU0gU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxs
ZXIwQGdteC5kZT4gd3JvdGU6Cj4KPiBIaSBEYXZlLAo+Cj4gT24gMjMgTm92ZW1iZXIgMjAyMSAw
ODozMjowNiBDRVQsIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPlRo
ZSBjb250ZXh0IG9mIG15IHF1ZXN0aW9uIGlzIGJhc2ljYWxseSB0aGlzOgo+ID4KPiA+SXMgY2Fr
ZSBiYWtlZD8gSXMgaXQgZG9uZT8KPgo+IEhvdyBhYm91dCBwZXIgTUFDIGFkZHJlc3MgZmFpcm5l
c3MgKHVzZWZ1bCBmb3IgSVNQcyBhbmQgdG8gdHJlYXQgSVB2NC82IGVxdWFsbHkpPwo+Cj4gSG93
IGFib3V0IGNvbmZpZ3VyYWJsZSBudW1iZXIgb2YgcXVldWVzIChhZ2FpbiBoZWxwZnVsIGZvciBJ
U1BzKT8KCkhvdyBhYm91dCBNUExTPwoKaHR0cHM6Ly93d3cudGVjaHRhcmdldC5jb20vc2VhcmNo
bmV0d29ya2luZy9kZWZpbml0aW9uL011bHRpcHJvdG9jb2wtTGFiZWwtU3dpdGNoaW5nLU1QTFMK
Cj4KPiBJTUhPIGNha2Ugd29ya3MgcHJldHR5IHdlbGwsIHdpdGggdGhlIGJpZ2dlc3QgaXNzdWUg
YmVpbmcgaXRzIENQVSBkZW1hbmRzLiBBcyBmYXIgYXMgSSB1bmRlcnN0YW5kIGhvd2V2ZXIsIHRo
YXQgaXMgY2F1c2VkIGJ5IHRoZSBzaGFwZXIgY29tcG9uZW50IGFuZCB0aGVyZSBsb3cgbGF0ZW5j
eSBhbmQgdGhyb3VnaHB1dCBhcmUgaW4gZGlyZWN0IGNvbXBldGl0aW9uLCBpZiB3ZSB3YW50IHRv
IGxvd2VyIHRoZSBDUFUgbGF0ZW5jeSBkZW1hbmRzIHdlIG5lZWQgdG8gYWxsb3cgZm9yIGJpZ2dl
ciBidWZmZXJzIHRoYXQga2VlcCB0aGUgbGluayBidXN5IGV2ZW4gaWYgY2FrZSBpdHNlbGYgaXMg
bm90IHNjaGVkdWxlZCBhcyBwcmVjaXNlbHkgYXMgd2Ugd291bGQgZGVzaXJlIG9yIGFzIGUuZy4g
QlFMIHJlcXVpcmVzLgo+Cj4gUmVnYXJkcwo+ICAgICAgICAgIFNlYmFzdGlhbgo+Cj4gPgo+ID5J
cyB0aGVyZSBhbnl0aGluZyBmcm9tIGxpYnJlUW9zIHRoYXQgd291bGQgYmUgYmV0dGVyIGluIEM/
Cj4gPgo+ID5PbiBNb24sIE5vdiAyMiwgMjAyMSBhdCAxMToxNyBQTSBEYXZlIFRhaHQgPGRhdmUu
dGFodEBnbWFpbC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gT24gTW9uLCBOb3YgMjIsIDIwMjEgYXQg
MTE6MDcgUE0gU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JvdGU6Cj4gPj4g
Pgo+ID4+ID4gSGkgRGF2ZSwKPiA+PiA+Cj4gPj4gPgo+ID4+ID4gT24gMjMgTm92ZW1iZXIgMjAy
MSAwNjowMzowMyBDRVQsIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4g
Pj4gPiA+YWdlcyBhZ28gSSdkICh3ZSdkPyBJIHJlYWxseSBkb24ndCByZW1lbWJlciAtIGZvcmdp
dmUgbWUgaWYgSSd2ZQo+ID4+ID4gPmZvcmdvdHRlbiB3aG8gYWN0dWFsbHkgbGVhbmVkIGluIG9u
IGl0KSB3cml0dGVuIGEgYmFzaWMgYWNrLWZpbHRlciBpbgo+ID4+ID4gPmVicGYuIHRoaXMgd2Fz
IGJlZm9yZSBjYWtlIGdhaW5lZCB0YyBhY3Rpb25zIGFuZCBteSBwcmltYXJ5IHVzZSBmb3IKPiA+
PiA+ID50aGUgdGVjaCB3YXMgZm9yIGFzeW1tZXRyaWMgY29ubmVjdGlvbnMsIGFuZCBiZWZvcmUg
dGhlIGdvb2QKPiA+PiA+ID5hY2stZmlsdGVyIGFycml2ZWQsIGFuZCBJIHdhcyAoYW5kIHJlbWFp
bikgdW5mcmllbmRseSB0byB0aGlzIGxldmVsIG9mCj4gPj4gPiA+ZHBpLgo+ID4+ID4gPgo+ID4+
ID4gPlRoYXQgc2FpZCwgb24gYSBzeW1tZXRyaWMgY29ubmVjdGlvbiwgZGVwcmlvcml0aXppbmcg
cHVyZSBhY2tzIHRvIHRoZQo+ID4+ID4gPjUlIGJhY2tncm91bmQgcXVldWUgbmQgdGhlbiB0dXJu
aW5nIHRoZSBjYWtlIGFjay1maWx0ZXIgbG9vc2Ugb24gaXQKPiA+PiA+ID5taWdodCBhY3R1YWxs
eSB3b3JrLgo+ID4+ID4gPgo+ID4+ID4gPkFtIEkgb24gZHJ1Z3MvaXMgdGhlcmUgYW55IHBvaW50
Pwo+ID4+ID4KPiA+PiA+IEkgdGhpbmsgYXQgbGVhdCB3aGVuIHVzaW5nIG11bHRpcGxlIHByaW9y
aXR5IHRpbnMgZm9yd2FyZCBhbmQgcmV2ZXJzZSB0cmFmZmljIHNob3VsZCBieSBkZWZhdWx0IHVz
ZSB0aGUgc2FtZSB0aW4gKEkgY2FuIHNlZSBub24tc3RhbmRhcmQgc2l0dWF0aW9ucyB0aGF0IHdh
bnQgZGlmZmVyZW50aWFsIHRyZWF0bWVudCkuIFRoZSBhcmd1bWVudCBpcyB0aGF0IHVubGlrZSBl
YXJsaWVyIGF0dGVtcHRzIGF0IGluZ3Jlc3Mgc2hhcGluZyB0aGF0IHRyaWVkIHRvIHRocm90dGxl
IHJldmVyc2UgQUNLcz8gY2FrZS9jb2RlbCBkbyBwcm9wZXIgJ2hpdCB0aGUgYnJha2VzJyBzaWdu
YWxsaW5nIHZpYSBtYXJraW5nL2Ryb3BwaW5nIGFuZCB3ZSB3YW50IHRoYXQgc2lnbmFsIHRvIHJl
YWNoIHRoZSBvdGhlciBlbmQgYXMgcXVpY2tseSBhcyBwb3NzaWJsZSwgbm8/Cj4gPj4KPiA+PiBN
eSB0aG91Z2h0IHdhcyBiYXNpY2FsbHkgYW4gb3B0aW9uYWwgZmlsdGVyIHRoYXQgc3RlZXJlZCBh
bGwgcHVyZSBhY2tzCj4gPj4gKG5vIG1hdHRlciB0aGUgY2xhc3NpZmljYXRpb24pIGludG8gdGhl
IGJhY2tncm91bmQgcXVldWUuCj4gPj4gTm9uLXB1cmUtYWNrcyAoc2Fja3MpIGVzc2VudGlhbGx5
IGp1bXAgdGhlIGJhY2tncm91bmQgcXVldWUgYW5kIHNpZ25hbAo+ID4+IHRoYXQgbG9zcyBlYXJs
aWVyLiBUaGUgYmFja2xvZyBvZiBvdGhlciBhY2tzIGluIGJhY2tncm91bmQgZ2V0Cj4gPj4gZGVs
aXZlcmVkIG91dCBvZiBvcmRlciwgYnV0IHB1cmVseSBvdXQgb2Ygb3JkZXIgYW5kIGRpc2NhcmRl
ZCBieSB0aGUKPiA+PiByZWNpZXZlci4KPiA+Pgo+ID4+ID4gUmVnYXJkcwo+ID4+ID4gICAgICAg
ICBTZWJhc3RpYW4KPiA+PiA+Cj4gPj4gPgo+ID4+ID4gPgo+ID4+ID4gPgo+ID4+ID4gPgo+ID4+
ID4gPi0tCj4gPj4gPiA+SSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRp
bWVzOgo+ID4+ID4gPmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUz
QSUyRiUyRnd3dy5pY2VpLm9yZwo+ID4+ID4gPgo+ID4+ID4gPkRhdmUgVMOkaHQgQ0VPLCBUZWtM
aWJyZSwgTExDCj4gPj4gPiA+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiA+PiA+ID5DYWtlIG1haWxpbmcgbGlzdAo+ID4+ID4gPkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cj4gPj4gPiA+aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQo+ID4+ID4KPiA+PiA+IC0tCj4gPj4gPiBTZW50IGZyb20gbXkgQW5kcm9pZCBkZXZp
Y2Ugd2l0aCBLLTkgTWFpbC4gUGxlYXNlIGV4Y3VzZSBteSBicmV2aXR5Lgo+ID4+Cj4gPj4KPiA+
Pgo+ID4+IC0tCj4gPj4gSSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRp
bWVzOgo+ID4+IGh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUzQSUy
RiUyRnd3dy5pY2VpLm9yZwo+ID4+Cj4gPj4gRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMK
PiA+Cj4gPgo+ID4KPgo+IC0tCj4gU2VudCBmcm9tIG15IEFuZHJvaWQgZGV2aWNlIHdpdGggSy05
IE1haWwuIFBsZWFzZSBleGN1c2UgbXkgYnJldml0eS4KCgoKLS0gCkkgdHJpZWQgdG8gYnVpbGQg
YSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKaHR0cHM6Ly93YXlmb3J3YXJkLmFyY2hpdmUu
b3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3JnCgpEYXZlIFTDpGh0IENFTywgVGVr
TGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

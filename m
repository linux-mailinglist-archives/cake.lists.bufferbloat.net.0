Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DA95619EC52
	for <lists+cake@lfdr.de>; Sun,  5 Apr 2020 17:23:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4D51E3CB39;
	Sun,  5 Apr 2020 11:23:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586100182;
	bh=3VYrYHd17Pl12BG64c0cgoYJJBgF6bAz9vu/2E0WcgY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SBZqpnL0EIg7YjpacFpelGqAM/iyMtTzLI85Lw9QGdbXPZjm+DTSXF46bgGHsWyy8
	 0lcPCLMh/5FsnKlSp+EhrRvVb4Ispj3XuUgIBa1vqGrgByEn2bVMZs/cd73GKitBZ4
	 LkbZUhalUJxmPKrapGbjdS4EMHdIXWQ0B2h5eCGGrV2QoOL09tAdToAMbBsk25E3GS
	 nIUwIiGmXvD3yt8vH465so59caACh0Ujpa1ofb33/WbSEuhJk+QQ584HgPgISCugqT
	 1TOzs5Ueriax2/+XUMS5hbuMH51BZrR7cQmGxnonGiXx6m74GPuqyhcIM9LGNGabe7
	 btT4+0NEk5Tfg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com
 [IPv6:2607:f8b0:4864:20::d29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DB1FA3B29E
 for <cake@lists.bufferbloat.net>; Sun,  5 Apr 2020 11:23:00 -0400 (EDT)
Received: by mail-io1-xd29.google.com with SMTP id q9so12993143iod.4
 for <cake@lists.bufferbloat.net>; Sun, 05 Apr 2020 08:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=c6KFQ59p4wGdNJLCAVCTyz6N6TzQfGATBW14X2+rj+0=;
 b=fnuKCp1Wq+1C4JBzLXeg5L7rRWsQc9KxoIPoZY2dmLtt7AgOSXoQNTl8vfGi6CenVq
 Zo9BWE1HIodgnOj1TPaRMW4G0yNNwvi5uCM91lJho3gUr5msCticw67wgR7i3hQrEQcG
 t0k2hI/RX/c2daTnsAKXHoDSY9h+a83QJS6L3jjMZI0ESvI//DkmVlX44ovdxcUGP2d/
 qgxbtq6EelZCUewTNkDpcaNoX7sEvIWwAL+lBOAxciD/n+9LFjn2ebDOXrvTcixELmfd
 MivRgcwH/M2D+Dy23dCs7YI/tUrNCPCQRCIiZ6AtCxo5FLvfaxhIIBYJZ+LL0Q3S1W4E
 cF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=c6KFQ59p4wGdNJLCAVCTyz6N6TzQfGATBW14X2+rj+0=;
 b=YpsalO0FB1Wpna81pi1hZZN301i/vBAo0V7+20vz6b6VamZ+wj4SfMgLGSdD0nf7iR
 BDrLfdLRp7IOeqyDGS0tnxNU/22y3Ak9JcAdLNQF5DxmOHfbTUDiIlnCbkM1KjtUrVZ7
 lfwDIpnK/qUdF/awUNiRKFJxjsvWs4qAD1Y/G7GGzv+O5RFxhb5xAizu64pZHIfiaLAl
 WfqU7sf41C8ntWT2GarrPYwO/CCx3kZXA/EpIbJDYTDuBm8p3FODGuph0BHnUyVl7AMh
 GS4Vv9pOdBrNdexTyjJvlq7SksBYpaamRilWJsJvAEVuSUevnOAiKpay87NJu2UC01Qa
 fx1A==
X-Gm-Message-State: AGi0PuZP8Dt0EGzFcJOGEJAi6xlQV1fii3RaWozaMFYpDpzrgA/v/CYr
 P9U/K3cCQ7ZXRsQpR+yHKdjDblm4zTt1pY0UreA=
X-Google-Smtp-Source: APiQypI68fXBT/Rog5p4LWGPM7edBVCMguOMULiFQ9TxalyRBD6ZbVyJrF/ZyPMsvupTVjNBGW9OchyjacYqpFyvFcQ=
X-Received: by 2002:a02:a605:: with SMTP id c5mr16178524jam.82.1586100180210; 
 Sun, 05 Apr 2020 08:23:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw62J_psLswMnisU4c3j9J=Q-HTDRO5F2q_+YRFqV+MtKw@mail.gmail.com>
 <FFAECE22-C1E8-4CA8-8ACF-8C49BEBE3DA8@darbyshire-bryant.me.uk>
In-Reply-To: <FFAECE22-C1E8-4CA8-8ACF-8C49BEBE3DA8@darbyshire-bryant.me.uk>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 5 Apr 2020 08:22:48 -0700
Message-ID: <CAA93jw5qkWxsA__+69em0BRT32-Ze42NH7VorsCW1TE_JAio3Q@mail.gmail.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
Subject: Re: [Cake] cake and nat in openwrt... on by default?
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

T24gU3VuLCBBcHIgNSwgMjAyMCBhdCAxMjo1NyBBTSBLZXZpbiBEYXJieXNoaXJlLUJyeWFudAo8
a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOgo+Cj4KPgo+ID4gT24gNSBBcHIg
MjAyMCwgYXQgMDU6MTcsIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gSSBzZWUgY2FrZSBpcyBtb3ZpbmcgdG8gdGhlIHVwc3RyZWFtZWQgdmVyc2lvbi4gQXMg
YmVzdCBhcyBJIHJlY2FsbCwKPiA+IG5hdCBtb2RlIHdhcyBvbiBieSBkZWZhdWx0IGluIHRoZSBv
cGVud3J0IGNvZGUsIGJ1dCBub3QgdGhlIHVwc3RyZWFtZWQKPiA+IGNvZGUuCj4gPgo+ID4gUGVv
cGxlIG5vdCBzZXR0aW5nIG5hdCBtb2RlIG9uIHdvdWxkIGV4cGxhaW4gYSBmZXcgdGhpbmdzIGkn
dmUgc2Vlbgo+ID4gJ3JvdW5kIHRoZSBpbnRlcnR1YmVzIHRoaXMgd2Vlay4KPgo+IEZyb20gc2No
X2Nha2UgcmVwbyBhbmQgaGVuY2Ug4oCYb3V0IG9mIHRyZWXigJkgY2FrZQo+Cj4gICAgICAgICBp
ZiAodGJbVENBX0NBS0VfTkFUXSkgewo+ICNpZiBJU19SRUFDSEFCTEUoQ09ORklHX05GX0NPTk5U
UkFDSykKPiAgICAgICAgICAgICAgICAgcS0+Zmxvd19tb2RlICY9IH5DQUtFX0ZMT1dfTkFUX0ZM
QUc7Cj4gICAgICAgICAgICAgICAgIHEtPmZsb3dfbW9kZSB8PSBDQUtFX0ZMT1dfTkFUX0ZMQUcg
Kgo+ICAgICAgICAgICAgICAgICAgICAgICAgICEhbmxhX2dldF91MzIodGJbVENBX0NBS0VfTkFU
XSk7Cj4gI2Vsc2UKPiAjaWYgTElOVVhfVkVSU0lPTl9DT0RFID49IEtFUk5FTF9WRVJTSU9OKDQs
IDE2LCAwKQo+ICAgICAgICAgICAgICAgICBOTF9TRVRfRVJSX01TR19BVFRSKGV4dGFjaywgdGJb
VENBX0NBS0VfTkFUXSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiTm8g
Y29ubnRyYWNrIHN1cHBvcnQgaW4ga2VybmVsIik7Cj4gI2VuZGlmCj4gICAgICAgICAgICAgICAg
IHJldHVybiAtRU9QTk9UU1VQUDsKPiAjZW5kaWYKPiAgICAgICAgIH0KPgo+Cj4gRnJvbSBrZXJu
ZWwgNS40IGFzIGZvdW5kIGluIG9wZW53cnQgYnVpbGQgZGlyCj4KPiAgICAgICAgIGlmICh0YltU
Q0FfQ0FLRV9OQVRdKSB7Cj4gI2lmIElTX0VOQUJMRUQoQ09ORklHX05GX0NPTk5UUkFDSykKPiAg
ICAgICAgICAgICAgICAgcS0+Zmxvd19tb2RlICY9IH5DQUtFX0ZMT1dfTkFUX0ZMQUc7Cj4gICAg
ICAgICAgICAgICAgIHEtPmZsb3dfbW9kZSB8PSBDQUtFX0ZMT1dfTkFUX0ZMQUcgKgo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICEhbmxhX2dldF91MzIodGJbVENBX0NBS0VfTkFUXSk7Cj4gI2Vs
c2UKPiAgICAgICAgICAgICAgICAgTkxfU0VUX0VSUl9NU0dfQVRUUihleHRhY2ssIHRiW1RDQV9D
QUtFX05BVF0sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIk5vIGNvbm50
cmFjayBzdXBwb3J0IGluIGtlcm5lbCIpOwo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVPUE5P
VFNVUFA7Cj4gI2VuZGlmCj4KPgo+Cj4gY2FrZV9pbml0KOKApikgaW4gYm90aCBkb2VzOgo+Cj4g
cS0+Zmxvd19tb2RlICA9IENBS0VfRkxPV19UUklQTEU7Cj4KPgo+IFNvIG9wZW53cnQgZG9lc27i
gJl0LCBieSBkZWZhdWx0LCBlbmFibGUgTkFUIG1vZGUgaW4gY2FrZS4KPgo+IEkgaG9uZXN0bHkg
ZG9u4oCZdCB0aGluayB0aGF0IHRoZXJlIGFyZSBlbm91Z2ggaW5zdGFuY2VzIG9mIGNha2Ugb3V0
IHRoZXJlLCBsZXQgYWxvbmUgaW5zdGFuY2VzIG9mIGNha2UgZnJvbSBvcGVud3J0LCBsZXQgYWxv
bmUgaW5zdGFuY2VzIG9mIGNha2UgZnJvbSBtYXN0ZXIgd2hpY2ggc3dpdGNoZWQgdG8gdXBzdHJl
YW0gY2FrZSAyLTMgZGF5cyBhZ28sIHRvIG1ha2UgYW55IHNvcnQgb2YgZGlmZmVyZW5jZSBhbnl3
YXkuCgpJJ2Qgc3RpbGwgYmUgd2lsbGluZyB0byBiZXQsIHRoZW4sIHRoYXQgdGhlIG1ham9yaXR5
IG9mIGluc3RhbmNlcyB3ZXJlCm5vdCB0dXJuaW5nIG5hdCBtb2RlIG9uLCB3aGVuCnRoZXkgc2hv
dWxkIGhhdmUgYmVlbi4KCj4KPiA+Cj4gPiAtLQo+ID4gTWFrZSBNdXNpYywgTm90IFdhcgo+ID4K
PiA+IERhdmUgVMOkaHQKPiA+IENUTywgVGVrTGlicmUsIExMQwo+ID4gaHR0cDovL3d3dy50ZWts
aWJyZS5jb20KPiA+IFRlbDogMS04MzEtNDM1LTA3MjkKPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBDYWtlIG1haWxpbmcgbGlzdAo+ID4gQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UKPgo+Cj4gQ2hlZXJzLAo+Cj4gS2V2aW4gRC1CCj4KPiBncGc6IDAxMkMg
QUNCMiAyOEM2IEM1M0UgOTc3NSAgOTEyMyBCM0EyIDM4OUIgOURFMiAzMzRBCj4KCgotLSAKTWFr
ZSBNdXNpYywgTm90IFdhcgoKRGF2ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3
dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==

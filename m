Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id A009697A8F
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 15:20:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8FF493CB38;
	Wed, 21 Aug 2019 09:20:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566393638;
	bh=dgqoEffNLX2TMNiv9lk+v5U/9M6W31KPBelfIzw+ddY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZaMQREtl4eASf35yYF5JAENPT24ILs3xAf0H5zqraHJyQcSP8IN6KKC1hkx6gsswm
	 fizN9SCk1liWTYyxJPzWjx3brB2GsXt/w9hHTchZoj/QOxyvzId17BaVjlyXkIR6pF
	 3Z8RI+12Xfy3RU+B8Q+uhHoxTBM7CXq7c6sQEdyDgQA45fjC18vqv75xSnRKcDWswr
	 r8JIwMd2E4rquFFHbrpmPrjFPjSJ4k4yT1XpypLLafP/aqjGPvDpz4u98EyriZsNvc
	 nXx4iuChIRwJHjwYozrkX0jC1PIgw8FpAGHehVgN5k4iiINSqjMkQ152cN/JOx9B9y
	 ZJw27WfwqoKqg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D84C93CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 09:20:36 -0400 (EDT)
Received: by mail-io1-xd2c.google.com with SMTP id i22so4475581ioh.2
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 06:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=q7RckvtLxvEZ/GUnjWXfq2jULlz9nERz/FSMhCWN8As=;
 b=Bnj73Zo1cObUTCPWB2dqpjnJxMjfiZnnTiJxM4uTCaYE39NXn6k/0PZwSQ/LqTYCfM
 M1bx6orZMZdGCOtNknK/Bk8XXD4wKZEx7r/t82NPIWEZIFYG5Rc6uAlih6J3bCZEE8Vo
 iQCoHN3lponh0J66v34oiCijtlHwDaPUmoSEnNmPSgFOa6Igl7uHGn4275K6ITLkcVB6
 VpMebJlvDP30IN/ciAlenOy1wmrKyCFjgg0FWnpeUzJcrJA2+I8fpIn4jx3JbimSfqBT
 QtkH9P+t6ogbuhjqGT8RBnKOqApHp7Eo9vMfyrml3fpIHsmgBtb0AMBzIWt1KKUMBBe9
 L6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=q7RckvtLxvEZ/GUnjWXfq2jULlz9nERz/FSMhCWN8As=;
 b=D43Ei8rA5zjqCigWH7/Pvf8ZEYl9nltZHlGPL2XBHEed/D1neDDLR20Aq5NfCJibY8
 vUW2PkmGe6e33n58m+lmUTK1BpzHGPs5kZzCJWeH1jVYlRqujXpwcEDFbeVS7AlyEHBX
 +M/VcffZZI2E+gUuHXODxhgrW86V/ti6jAAvCHNECntZx7X5vV9IQ7ErI7tLCSbyzHux
 rOWSslJM5Lz3xw+iOllSdA9jrm9uczRvl3qqUSywRPBX910DvnGeikvr50xWic3fi5JC
 M8cPFz4gMMjla8RZbr3aABJAbuy2XRbkwsfeJVMHEcDeAuts+oXjesVXXT1GbnFF5BsN
 CUuQ==
X-Gm-Message-State: APjAAAW4A7GNdSIgYt9+xdn4z8cpcYQM1RvDKVQU10GTngJoidRb15ae
 rUI2ff4kjbS2xJzJBvOazG5/AV/YUDJh07zFcK8=
X-Google-Smtp-Source: APXvYqzfxOW3jqWdVt2zvawy1i4U0p/nZ1WiRpNy0Wc9Uahd9D8KPDPSPdMp22LTe0pAdsruHgCxWtrA+2meG85J6Rg=
X-Received: by 2002:a5e:9818:: with SMTP id s24mr7526567ioj.0.1566393636239;
 Wed, 21 Aug 2019 06:20:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <EDCD1D95-BEA1-45A8-B6A2-4FD4BE418450@gmx.de>
 <d9f3d04b-61e7-a77f-e242-b4b99c49fe9a@newmedia-net.de>
In-Reply-To: <d9f3d04b-61e7-a77f-e242-b4b99c49fe9a@newmedia-net.de>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 21 Aug 2019 06:20:24 -0700
Message-ID: <CAA93jw6G3ZHeYk3cx5EZTOyAiB=c3ZSyE0taGyD=1XqrkFiYnw@mail.gmail.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMTI6NTEgQU0gU2ViYXN0aWFuIEdvdHRzY2hhbGwKPHMu
Z290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+Cj4gPj4gaSBoYXZlIHNlZW4gdGhp
cyBhbHJlYWR5LiBvdXQgcGxhbiBoZXJlIGlzIHRoYXQgdGhlIHVzZXIgc3BlY2lmaWVzIHRoZSBp
bnRlcm5ldCBjb25uZWN0aW9uIHR5cGUgbGlrZSB2ZHNsMiwgY2FibGUsIHdoYXRldmVyIGluIGNh
c2Ugb2YgY2FrZSB3aGljaCB0aGVuIHdpbGwgYmUgdXNlZAo+ID4+IGFzIGFyZ3VtZW50Cj4gPiAg
ICAgICBHb29kIGdvYWwsIHRoYXQgYWxzbyBpcyB0aGVvcmV0aWNhbGx5IHdlbGwgc3VwcG9ydGVk
IGJ5IGNha2Ugd2l0aCBpdHMgbXVsdGl0dWRlIG9mIGVuY2Fwc3VsYXRpb24vb3ZlcmhlYWQgcmVh
bGF0ZWQga2V5d29yZHMuIFVuZm9ydHVuYXRlbHkgcmVhbGl0eSBpcyBub3QgYXMgbmljZSBhbmQg
dGlkeSBhcyB0aGlzIGNvbGxlY3Rpb24gb2Yga2V5d29yZHMgaW1wbGllcywgVGhlcmUgYXJlIDgg
a2V5d29yZHMgZm9yIEFUTS9BQUw1IGJhc2VkIGVuY2Fwc3VsYXRpb25zIChBRFNMLCBBRFNMMiwg
QURTTDIrLCAuLi4pLCAyIGZvciBWRFNMMiwgMSBmb3IgRE9DU0lTLCAxIGZvciBldGhlcm5ldCwg
Zm9yIGEgdG90YWwgb2YgMTIgdGhhdCBhbGwgY2FuIGJlIGNvbWJpbmVkIHdpdGggb25lIG9yIG1v
cmUgVkxBTi10YWcga2V5d29yZHMsIGZvciBhIHRvdGFsIG9mIDI0IHRvIDM2IGNvbWJpbmF0aW9u
cy4gKEFuZCB0aGVzZSBhcmUgbm90IGV2ZW4gZXhoYXVzdGl2ZSwgYXMgZS5nLiB0aGUgdXNlIG9m
IGRzLWxpdGUgY2FuIGluY3JlYXNlIHRoZSBwZXItcGFja2V0IG92ZXJoZWFkIGZvciBJUHY0IHBh
Y2tldHMgYnkgYW5vdGhlciAyMCBieXRlcykuCj4gPiAgICAgICBJZGVhbGx5IG9uZSB3b3VsZCBq
dXN0IGVtcGlyaWNhbGx5IG1lYXN1cmUgdGhlIGVmZmVjdGl2ZSBvdmVyaGVhZCBhbmQgdXNlIHRo
ZSAib3ZlcmhlYWQgTk4gbXB1IE5OIiBrZXl3b3JkcyBpbnN0ZWFkLCBidXQgdGhhdCBoYXMgaXNz
dWVzIGFzIG1lYXN1cmluZyBvdmVyaGVhZCBlbXBpcmljYWxseSBpcyBzaW1wbHkgaGFyZC4uLiBU
aGUgYmVzdCBiZXQgd291bGQgYmUgdG8gbGV2ZXJhZ2UgQkVSRUMgdG8gcmVxdWlyZSBJU1BzIHRv
IGV4cGxpY2l0bHkgaW5mb3JtIHRoZWlyIGN1c3RvbWVycyBvZiB0aGUgZWZmZWN0aXZlIGdyb3Nz
LXJhdGVzIGFuZCBhcHBsaWNhYmxlIG92ZXJoZWFkcyBmb3IgZWFjaCBsaW5rLCBidXQgSSBhbSBu
b3QgaG9sZGluZyBteSBicmVhdGguIE92ZXIgYXQgaHR0cHM6Ly9vcGVud3J0Lm9yZy9kb2NzL2d1
aWRlLXVzZXIvbmV0d29yay90cmFmZmljLXNoYXBpbmcvc3FtIHdlIHRyaWVkIHRvIGdpdmUgc2lt
cGxpZmllZCBpbnN0cnVjdGlvbnMgZm9yIHNldHRpbmcgdGhlIG92ZXJoZWFkcyBmb3IgZGlmZmVy
ZW50IGFjY2VzcyB0ZWNobm9sb2dpZXMsIGJ1dCB0aGVzZSBhcmUgbm90IGd1YXJhbnRlZWQgdG8g
Zml0IGV2ZXJ5Ym9keSAobm90IGV2ZW4gbW9zdCB1c2VycywgYXMgd2UgaGF2ZSBubyBudW1iZXJz
IGFib3V0IHRoZSByZWxhdGl2ZSBkaXN0cmlidXRpb25zIG9mIHRoZSBkaWZmZXJlbnQgZW5jYXBz
dWxhdGlvbiBvcHRpb25zKS4KPiA+Cj4gPiBCZXN0IFJlZ2FyZHMKPiA+ICAgICAgICJhbm90aGVy
IiBTZWJhc3RpYW4KPgo+IGFzIGkgc2FpZC4gaSBqdXN0IHN0YXJ0ZWQuIGxldHMgc2VlIGlmIGkg
Y2FuIGZpbmQgYSBiZXR0ZXIgc29sdXRpb24gb3IgYQo+IGNsZXZlciB3YXkgb2YgYXV0byBkZXRl
Y3RpbmcvbWVhc3VyaW5nIHRoZSBvdmVyaGVhZAoKKzEuIE9uZSBvZiBteSBmYXZvcml0ZSBmZXlu
bWFuIHNheWluZ3MgaXMgImRpc3JlZ2FyZCIgYW5kIHdlIG5lZWQgbmV3CnRoaW5raW5nIGhlcmUu
CgpJIG5vdGUgdGhhdCBJIG1haW50YWluIGFueXdoZXJlIGJldHdlZW4gNi0xNiBmbGVudCAobmV0
cGVyZiBhbmQgaXJ0dCkKc2VydmVycyBhcm91bmQgdGhlIHdvcmxkLAphbmQgdGhleSBhcmUgbW9z
dGx5IHVuZGVydXNlZC4uLi4KClNvbWV0aW1lcyBJJ3ZlIHRob3VnaHQgdGhhdCBhICJyaWdodCIg
YXBwcm9hY2ggd291bGQgYmUgdG8gc2VuZCBhIDEwCnNlYyBmdWxsIHVkcCBidXJzdCwKZWFjaCBw
YWNrZXQgcHJlLXRpbWVzdGFtcGVkIGludGVybmFsbHksIGF0LCBzYXksIDEwME1iaXQuLi4KYW5k
IHRoZW4gbWVhc3VyZSAic21vb3RobmVzcyIgYXQgdGhlIHJlY2VpdmVyIGFuZCBpZmNvbmZpZyBp
bnRlcmZhY2UKKGFjY291bnRpbmcgZm9yIGFueSBvdGhlcgp0cmFmZmljIGFsb25nIHRoZSB3YXkp
LgoKCj4KPiBTZWJhc3RpYW4KPgo+ID4KPiA+Cj4gPgoKCgotLSAKCkRhdmUgVMOkaHQKQ1RPLCBU
ZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtMjA1LTk3NDAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

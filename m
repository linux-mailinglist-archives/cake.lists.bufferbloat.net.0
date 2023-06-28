Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 380C2740812
	for <lists+cake@lfdr.de>; Wed, 28 Jun 2023 04:03:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6B4E03CB40;
	Tue, 27 Jun 2023 22:03:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687917833;
	bh=VAU2POpalvOJGkp4MXyPn6pm2/ARxUkOUglYxj7OjBA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=LDGvF6zgrIoSKaBfg1u1pybBRY/tvmLZMmeBJZcAepx4Ny1XL2Lgtsue1mXqtZPxr
	 cDbwJ/b07WkAFdYD44DW2aKXftZ41dI+9lR54fO9srTc8zpBV5aHm2AtAXFZX0eYs5
	 tfe1yScEXg5bUcsgH4DDM2kjcrn4xvPmin2N09g6lL0NaM9wvf6pZASAjkGUp+u1z0
	 PIfP6KTrZNL1yZT9UYVaRPenuQR7EfOAzakS6879sxE9nN1+KP8VhK/1hMe2cgFF1d
	 SoNf/6Ps15s55jBPP74a8yi8lBdLIvo3635O0NOER4u/RxZI4OTxtI0rMFTWkPcQdd
	 Ez7GbzWYx+bpg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DA9413CB37;
 Tue, 27 Jun 2023 22:03:52 -0400 (EDT)
Received: by mail-pg1-x52f.google.com with SMTP id
 41be03b00d2f7-55779047021so2478158a12.3; 
 Tue, 27 Jun 2023 19:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687917832; x=1690509832;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kcPyWEdBVDdM1crCCgU67cv6rrZy1EuPljBFQXj7YGs=;
 b=ELwxqOyNDIbTvX2RC3T6h4R5wQrtQO6Ejl9Ww37u4UvlFbKPoFL701EzBNXD1X8cSt
 cxmnsXll6oERYbyJe2rFtmPZUfsKoe5LA6TYZzsYnOnxj1ZvEn/DAzYY2Mo95TaLscI2
 S8QLMSuYdCZWHdx9Gn8/6fU0Mdr/HU1L/f7Zo/xpjCLGTmrHf2Rv6H0icxSuQck7ERWl
 i6C9Dif1CXr7edyG21h6gV0MGj3Wnqnrj3Eab+FwtqXaLMobXoSY2QAmieW6IF8D6gUx
 igSsk8jysaYGGbt5j1hqolSjUgdlwOQ8N2i6vX5G3gueG/aN9sd7AgxmnyEhk6IJI9a+
 Uuug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687917832; x=1690509832;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kcPyWEdBVDdM1crCCgU67cv6rrZy1EuPljBFQXj7YGs=;
 b=QezFU3g2xA8DuqASvOKPso0cbwyws1buD7amt35LWUv+eNtLwqLypon/gQJUPPAzwv
 eqePJlkHR40x8WPIY65txljMMvFnwuolDaceiy3FNxtEBfKGR8EXH38gNZ3+wooTCe3q
 XMfWpuR71kw/38a/XxevYmuocnlxqDMKeFSG8vvclydn/qPHVYKZbT/BcyIn0tneNpuU
 rFkuQAYrxSsDP6dKGQx7Tw5OyC9i9FXntZH88BZezCbP24s6q9wWutvpdDBaIbjg7gIx
 E35O0RJ4weEVCoMrmDdA0P6qotzxMRb4MfILtv0LfVjyB+P5X47rq3/ostlvs596FvcZ
 UrnA==
X-Gm-Message-State: AC+VfDwp7q2HvXN5Xw1KgTTHqwZAZJMT3AlFryahSleWaijn2fpTvA8B
 BpL1vzlC9R8AOndlV05KGDoYaEt/GBapvu4K2KAnA61EWmKUbmoO
X-Google-Smtp-Source: ACHHUZ7//djdC7BmLnFVpMN4hO/ipCYDva9y5RMrrbId4njiMi1Ukn3oGiQG62u5pmFClx3DwoblTZyAtvF/N010ImM=
X-Received: by 2002:a17:90b:4f8d:b0:263:a6a:49b8 with SMTP id
 qe13-20020a17090b4f8d00b002630a6a49b8mr3768734pjb.3.1687917831730; Tue, 27
 Jun 2023 19:03:51 -0700 (PDT)
MIME-Version: 1.0
References: <1687837319.447910185@mobile.rackspace.com>
 <4np8q9q1-on99-rn94-5s1p-55643oo11037@ynat.uz>
 <20230627154931.71aff7ca@hermes.local>
In-Reply-To: <20230627154931.71aff7ca@hermes.local>
Date: Tue, 27 Jun 2023 20:03:39 -0600
Message-ID: <CAA93jw4uBMw7xkAkiB8L16tPNpdj+tg430p5pUb96rMK06hMKA@mail.gmail.com>
To: Stephen Hemminger <stephen@networkplumber.org>
Subject: Re: [Cake] [Bloat] Two questions re high speed congestion
 management anddatagram protocols
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: cake@lists.bufferbloat.net, bloat@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

aHR0cHM6Ly9kYXRhdHJhY2tlci5pZXRmLm9yZy9kb2MvY2hhcnRlci1pZXRmLWNjd2cvCgppcyBh
IG5ldyB3ZyBpbnRlbmRlZCB0byBwb2tlIGludG8gdGhlc2UgaXNzdWVzCgpPbiBUdWUsIEp1biAy
NywgMjAyMyBhdCA0OjQ54oCvUE0gU3RlcGhlbiBIZW1taW5nZXIgdmlhIENha2UKPGNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+IE9uIFR1ZSwgMjcgSnVuIDIwMjMgMTI6NDc6
MDEgLTA3MDAgKFBEVCkKPiBEYXZpZCBMYW5nIDxkYXZpZEBsYW5nLmhtPiB3cm90ZToKPgo+ID4g
T24gTW9uLCAyNiBKdW4gMjAyMywgRGF2aWQgUC4gUmVlZCB2aWEgQmxvYXQgd3JvdGU6Cj4gPgo+
ID4gPiBTb3JyeSBmb3IgdG9wIHBvc3RpbmcsIGJ1dCAuLi4gQmlnZ2VyIHF1ZXN0aW9uOgo+ID4g
PiBXaHkgd291bGQgRENDUCBiZSBkZXByZWNhdGVkIGJ5IExpbnV4IGtlcm5lbD8KPiA+ID4gV2hv
IG1ha2VzIHRoYXQgZGVjaXNpb24/IFdobyBhcmd1ZXMgYWdhaW5zdCBpdD8KPiA+Cj4gPiBMaW51
cyBvciB0aGUgbmV0d29ya2luZyBtYWludGFuZXJzIG1ha2UgdGhlIGRlY2lzaW9uLgo+ID4KPiA+
IFVzdWFsbHkgdGhpbmdzIGdldCBwdWxsZWQgZnJvbSB0aGUga2VybmVsIGJlY2F1c2UgdGhlcmUg
YXJlIHVwZGF0ZXMgdGhhdCBuZWVkIHRvCj4gPiBiZSBtYWRlIHRvIHRoZSBjb2RlICh0byBtYXRj
aCBjaGFuZ2VzIGVsc2V3aGVyZSBpbiB0aGUga2VybmVsIG9yIGJlY2F1c2Ugb2YKPiA+IHNlY3Vy
aXR5IGlzc3VlcykgYW5kIHRoZXJlIGlzbid0IGEgbWFpbnRhaW5lciB3aG8gd29ya3Mgb24gdGhl
IGNvZGUgaW4gYQo+ID4gcmVzb25hYmxlIHRpbWUuIFRoaXMgbWVhbnMgdGhhdCB0aGUgbWFpbnRh
aW5lcnMgZm9yIHRoZSBnZW5lcmFsIGNvZGUgYXJlYSAoaW4KPiA+IHRoaXMgY2FzZSBuZXR3b3Jr
aW5nIG1haW50YWluZXJzKSB3aWxsIG5lZWQgdG8gZG8gZXh0cmEgd29yayBpbiBhbiBhcmVhIHRo
ZXkKPiA+IGFyZW4ndCB0aGF0IGludGVyZXN0ZWQgaW4gKGFuZCwgZXNwZWNpYWxseSBpbiB0aGUg
Y2FzZSBvZiBoYXJkd2FyZSwgbWF5IG5vdCBoYXZlCj4gPiB0aGUgYWJpbGl0eSB0byB0ZXN0KS4g
VGhleSBkbyBzb21lIG9mIGl0LCBlc3BlY2lhbGx5IGlmIGl0J3MgY29tbW9ubHkgdXNlZCwgYnV0
Cj4gPiBldmVudHVhbGx5IGVpdGhlciBhbm90aGVyIG1haW50YWluZXIgc3RlcHMgdXAsIG9yIGl0
IGdvZXMgYXdheQo+ID4KPiA+IERhdmlkIExhbmcKPgo+IFNlZSBodHRwczovL3BhdGNod29yay5r
ZXJuZWwub3JnL3Byb2plY3QvbmV0ZGV2YnBmL3BhdGNoLzIwMjMwNjE0MTk0NzA1LjkwNjczLTMt
a3VuaXl1QGFtYXpvbi5jb20vCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCgotLSAK
UG9kY2FzdDogaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rp
dml0eTo3MDU4NzkzOTEwMjI3MTExOTM3LwpEYXZlIFTDpGh0IENTTywgTGlicmVRb3MKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6735FBDDA
	for <lists+cake@lfdr.de>; Wed, 12 Oct 2022 00:24:32 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0D4653CB44;
	Tue, 11 Oct 2022 18:24:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665527066;
	bh=46gWRiN1gH39YIcPR9/ASZ2hHQPB8hna9g0CUhlhEU0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=lMeloPF3UB4qLKtOPAC/1ExkNaTVJrCOhtxcO4DShK9qkeCL5mmTzVFtmh4klk+Mm
	 qsxwvwqo0UJ/1ZgBKQkoqWdp62X1UoYyMHTqJ+++dP7lb5eZ/CNcouvszWYKGKbyn7
	 OP2VvlP4Q4X6ifnrFd64Xd6ltlDpsKGzeitpxl7IKGS88XhgPIQMRBwepL0xIx/BAf
	 vCo5HpdF0qs3F9LZio3oQ0O/ul5VTojtme6bVxnTarbTdW3cbniJGUtlpzNqKgedGO
	 wlbi3rHW7Z7kpscUR/CcWRW3yHoachCW+oGSzyeTTeZbNiP/1leOEEDfBRdOhq+AQ+
	 sDx8bHRnecp3g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1D32A3B2A4;
 Tue, 11 Oct 2022 18:24:24 -0400 (EDT)
Received: by mail-wr1-x42c.google.com with SMTP id w18so23663714wro.7;
 Tue, 11 Oct 2022 15:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5Eqxz3YTfm84zBpHTOJ/es4+bCbE0eIb/90OmVfA8U8=;
 b=RnH25axTX7cZL/MK/q7mLv2CVTPQ1mvhH04EMAlR3GC1w/9i8SNiougIPJUn3ALhEB
 U+g7IklBa8JLgfQ86GD7Ll4XEv06O2xAAirg0uEHBKVttFgedIX3lAGpQOhC+ic58cz4
 D3aBzspepE6u00u55uH4tbdLLn8R1zSuEcWUYsO1x07cN9B0gRjstIdW8d1X688hz6te
 JGWOoZscNhkTV00xtVCaG/F9BIZ7GnK1auWYAvRk2U2s6cmDKLjhLz20CyTluFx/fiSZ
 XmWf9eJ/gaw68IMjIBqCNgzjbNVMQJpliaNsib4FSw6DnFfatChlYjN4X2l1gWCzzjxf
 8V5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5Eqxz3YTfm84zBpHTOJ/es4+bCbE0eIb/90OmVfA8U8=;
 b=YZbzi1REX/pUHXm9O/41nE8r03DvJ02Sz9+sGfyWD9mqMQ39JUc7tALtOGtdp8hv5K
 bwWacp2qzsp2S2xl8Y160hoPfuLxtfJ7sKcmO03BFg6/1AhmFx7NyYZiAPtGFsB8eY60
 P/6tydaKwndnkHjhRPXXdH8uK0qHfTLMcG2x1Xxnm8c1xMkGC+k31pJygrWeaiXUNiOx
 jXgL+QOnVt+wZfcoa6I7oRws2ZmoeVAOiq5J68x9MpC4uu5aeXHIriR7j+2HBFSN46kQ
 ks/HUkc0Bsfqtp9poIC//+CmNfsaZi9DBAhHsDUzrOShPg2BE9DpwDbupnBrnf+rN61r
 +rBQ==
X-Gm-Message-State: ACrzQf38qNeCeoIsoef7eSd768DiJY3rcGzPXBdk9tBYfTvegizbJtur
 /EARyhexHguAXgXr6IhGDfjztAlX4Ztnfd3BczI=
X-Google-Smtp-Source: AMsMyM5GMo5U+WirvAPLwcKDG2Nhx197/DPMFKdxsvFFzlwqKvmP1/ZH2PtG1MdNBy171CipX/wnblaEGxIihBg6NWk=
X-Received: by 2002:a5d:5109:0:b0:22f:ed4:65da with SMTP id
 s9-20020a5d5109000000b0022f0ed465damr12942073wrt.688.1665527062737; Tue, 11
 Oct 2022 15:24:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
 <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
 <D0D4490C-061A-46DA-9592-51C3D210772F@gmail.com>
 <CAHb6Lvr-JST083ZAyyxCOS8GrhH5xoa_d+SkkB9aPEr1ijcjUQ@mail.gmail.com>
 <F5B10A7A-7722-442A-B58E-2D2C004D93FD@gmail.com>
In-Reply-To: <F5B10A7A-7722-442A-B58E-2D2C004D93FD@gmail.com>
Date: Tue, 11 Oct 2022 15:24:10 -0700
Message-ID: <CAA93jw5z2gfvRmsp7t1LFKBO_8Oe_dDYUDE58XRL0ga9parkhQ@mail.gmail.com>
To: Rich Brown <richb.hanover@gmail.com>
Subject: Re: [Cake] [Rpm] [Bloat] [Make-wifi-fast] The most wonderful video
 ever about bufferbloat
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
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

V2VsbCwgd2UndmUgYWxsIGJlZW4geWFtbWVyaW5nIGZvciBtYW55IHllYXJzLCBhbmQgdGhlIG1l
c3NhZ2UgaXMKZ2V0dGluZyB0aHJvdWdoLiBZZXMsIGF0IHRoaXMgcG9pbnQsIGNoYW5naW5nIHRo
ZSBtZXNzYWdlIHRvIGJlIG1vcmUKZGlyZWN0ZWQgYXQgZW5naW5lZXJzIHRoYW4gdXNlcnMgd291
bGQgaGVscCwgYW5kIHRvIHRoaXMgZGF5LCBJIGRvbid0Cmtub3cgaG93IHRvIGdldCB0byBhbnlv
bmUgaW4gdGhlCkMgc3VpdGUsIGV4Y2VwdCB0aHJvdWdoIHRoZSBjb21wbGFpbnRzIG9mIHRoZWly
IGtpZHMuIEppbSBnb3Qgb24gdGhpcwpwcm9ibGVtIGJlY2F1c2Ugb2YgaGlzIGtpZHMuIFRoZSBn
dXkgdGhhdCBkaWQgZHNscmVwb3J0cywgYWxzby4gIm15IgpraWRzIGFyZQoKQXQgdGhlIHJpc2sg
b2YgYnVyeWluZyB0aGUgbGVkZSwgb3VyIHZlcnkgb3duIGRhdmUgcmVlZCBqdXN0IGRpZCBhCnBv
ZGNhc3Qgb24gZGlmZmVyZW50IHN0dWZmOgpodHRwczovL3R3aXQudHYvc2hvd3MvZmxvc3Mtd2Vl
a2x5L2VwaXNvZGVzLzcwMT9hdXRvc3RhcnQ9ZmFsc2UKClNvbWV0aW1lcyBteSBvd24gKHNoYXJl
ZCB3aXRoIG1vc3Qgb2YgeW91KSBtb3RpdmF0aW9ucyB0ZW5kIHRvIGxlYWsKdGhyb3VnaC4gSSBy
ZWFsbHkgZW5jb3VyYWdlIHRoZSBpbmRlcGVuZGVudCBncm93dGggb2YgdXNlciBjcmVhdGVkIGFu
ZApvd25lZCBzb2Z0d2FyZSwgcnVubmluZyBvbiB0aGVpciBvd24gcm91dGVycywgYW5kIEknbSB2
ZXJ5IHBsZWFzZWQgdG8Kc2VlIHRoZSBsZXZlbCBvZiBhY3Rpdml0eSBvbiB0aGUgb3BlbndydCBm
b3J1bXMgc2hvd2luZyBob3cgaGVhbHRoeQp0aGF0IHBhcnQgb2Ygb3VyIGN1bHR1cmUgaXMuIEl0
IHdvdWxkIGJlIGEgdmVyeSBkaWZmZXJlbnQgd29ybGQgaWYKd2UnZCBkZWNpZGVkIHRvIHNldHRs
ZSBmb3Igd2hhdGV2ZXIgYW4gSVNQIHdhcyB3aWxsaW5nIHRvIGdpdmUgdXMsIGFuZApmb3IgdGhp
bmdzIGFzIHRoZXkgd2VyZSwgYW5kIEknbSBwcm9iYWJseSBkaWZmaWN1bHQgdG8gZW1wbG95IGJl
Y2F1c2UKb2YgbXkKZmVydmVudCBiZWxpZWZzIGluIGFudGktcGF0ZW50aW5nLCBmcmVlIGFuZCBv
cGVuIHNvdXJjZSwgYW5kIHRoZSByaWdodAp0byByZXBhaXIuLi4KCi4uLiBidXQgSSB3b3VsZG4n
dCBoYXZlIG15IHdvcmxkIGFueSBvdGhlciB3YXkuIEkgbWlnaHQgZGllIGJyb2tlLCBidXQKSSds
bCBkaWUgZnJlZS4KCk9uIFR1ZSwgT2N0IDExLCAyMDIyIGF0IDExOjQ0IEFNIFJpY2ggQnJvd24g
dmlhIFJwbQo8cnBtQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4KPgo+Cj4KPiBPbiBP
Y3QgMTEsIDIwMjIsIGF0IDE6MDUgUE0sIEJvYiBNY01haG9uIDxib2IubWNtYWhvbkBicm9hZGNv
bS5jb20+IHdyb3RlOgo+Cj4gSSBhZ3JlZSB0aGF0IGJ1ZmZlcmJsb2F0IGF3YXJlbmVzcyBpcyBh
IGdvb2QgdGhpbmcuIFRoZSBpc3N1ZSBJIGhhdmUgaXMgdGhlIGFwcHJvYWNoIC0gYXNrIGNvbnN1
bWVycyB0byAiZGV0ZWN0IGl0IiBhbmQgcmVwbGFjZSBhIGRldmljZSB3aXRoIGEgbmV3IG9uZSwg
dGhhdCBtYXkgb3IgbWF5IG5vdCwgbWVldCBhbGwgdGhlIG5lZWRzIG9mIHRoZSB1c2Vycy4KPgo+
Cj4gQmV0dGVyIGlzIHRoYXQgbmV0d29yayBlbmdpbmVlcnMgImRlc2lnbiBibG9hdCBvdXQiIGZy
b20gdGhlIGJlZ2lubmluZyBzdGFydGluZyBieSBwcm9wZXJseSBzaXppbmcgcXVldWVzIHRvIHNl
cnZpY2Ugaml0dGVyLCBhbmQgZm9yIFdpRmksIHRvIGFsc28gZW5hYmxlIGFnZ3JlZ2F0aW9uIHRl
Y2huaXF1ZXMgdGhhdCBtaW5pbWl6ZSBUWE9QIGNvbnN1bXB0aW9uLgo+Cj4KPiBUaGUgWWVzLCBi
dXQuLi4gcGFydCBvZiBteSBhbnN3ZXIgZW1waGFzaXplcyBhd2FyZW5lc3MuIEhvdyBhcmUgdGhl
IG5ldHdvcmsgZW5naW5lZXJzIGdvaW5nIHRvIGtub3cgaXQncyB3b3J0aCB0aGUgKG1pbm9yKSBl
ZmZvcnQgb2YgY3JlYXRpbmcgcHJvcGVybHktc2l6ZWQgcXVldWVzPwo+Cj4gVGhlcmUgYXJlIHR3
byBmcm9udHMgdG8gYXR0YWNrOgo+Cj4gLSBNYW51ZmFjdHVyZXJzIC0gVGhpcyB2aWRlbyBpcyBh
IHN0YXJ0IG9uIGdldHRpbmcgdGhlaXIgY3VzdG9tZXJzIHRvIHVzZSB0aGVzZSByZXNwb25zaXZl
bmVzcyB0ZXN0IHRvb2xzIGFuZCBjYWxsIHRoZSBzdXBwb3J0IGxpbmVzLgo+Cj4gLSBIYXJkd2Fy
ZSAoZXNwZWNpYWxseSByb3V0ZXIpIHJldmlld2VycyAtIEl0IGtpbGxzIG1lIHRoYXQgdGhlcmUg
aXMgcmFkaW8gc2lsZW5jZSB3aGVuZXZlciBJIGFzayBhIHJldmlld2VyIGlmIHRoZXkgaGF2ZSBl
dmVyIG1lYXN1cmVkIGxhdGVuY3kvcmVzcG9uc2l2ZW5lc3MuICAoQlRXOiBIYXMgYW55b25lIGhl
YXJkIGZyb20gQmVuIE1vc2tvd2l0eiBmcm9tIENvbnN1bWVyIFJlcG9ydHM/IFdlIGhhZCBhIHZl
cnkgZW5jb3VyYWdpbmcgcGhvbmUgY2FsbCBhYm91dCBhIHllYXIgYWdvLCBhbmQgdGhleSB3ZXJl
IGdvaW5nIHRvIGdldCBiYWNrIHRvIHVzLi4uKQo+Cj4gUmljaAo+Cj4KPiBCb2IKPgo+IE9uIFR1
ZSwgT2N0IDExLCAyMDIyIGF0IDY6NTcgQU0gUmljaCBCcm93biA8cmljaGIuaGFub3ZlckBnbWFp
bC5jb20+IHdyb3RlOgo+Pgo+Pgo+Pgo+PiBPbiBPY3QgMTAsIDIwMjIsIGF0IDg6MDUgUE0sIEJv
YiBNY01haG9uIHZpYSBScG0gPHJwbUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+Pgo+
PiA+IEkgdGhpbmsgY29uZmxhdGluZyBidWZmZXJibG9hdCB3aXRoIGxhdGVuY3kgbWlzc2VzIHRo
ZSBzdWJ0bGUgcG9pbnQgaW4gdGhhdAo+PiA+IGJ1ZmZlcmJsb2F0IGlzIGEgbWVhc3VyZW1lbnQg
aW4gbWVtb3J5IHVuaXRzIG1vcmUgdGhhbiBhIG1lYXN1cmVtZW50IGluCj4+ID4gdGltZSB1bml0
cy4KPj4KPj4KPj4gWWVzLCBidXQuLi4gSSBhbSBnb2luZyB0byBwcmFpc2UgdGhpcyB2aWRlbywg
ZXZlbiBhcyBJIGVuY291cmFnZSBhbGwgdGhlIHRlY2hpZXMgdG8gYmUgc3VyZSB0aGF0IHRoZXkg
aGF2ZSB0aGUgdW5pdHMgY29ycmVjdC4KPj4KPj4gSSd2ZSBiZWVuIHlhbW1lcmluZyBhYm91dCB0
aGUgZXZpbHMgb2YgbGF0ZW5jeS9leGNlc3MgcXVldWVpbmcgZm9yIDEwIHllYXJzIG9uIG15IGJs
b2csIGluIGZvcnVtcywgZXRjLiBJIGhhdmUgbm90IGFjaGlldmVkIGFueXdoZXJlIG5lYXIgdGhl
IG5vdG9yaWV0eSBvZiB0aGlzIHZpZGVvIChhbG1vc3QgYSB0aGlyZCBvZiBhIG1pbGxpb24gdmll
d3MpLgo+Pgo+PiBJIGFtIGRlbGlnaHRlZCB0aGF0IHRoZXJlJ3MgYW4gZW5nYWdpbmcsIG1hc3Mt
bWFya2V0IFlvdXR1YmUgdmlkZW8gdGhhdCBtYWtlcyB0aGUgY2FzZSB0aGF0IGJ1ZmZlcmJsb2F0
IGV2ZW4gZXhpc3RzLgo+Pgo+PiBSaWNoCj4KPgo+IFRoaXMgZWxlY3Ryb25pYyBjb21tdW5pY2F0
aW9uIGFuZCB0aGUgaW5mb3JtYXRpb24gYW5kIGFueSBmaWxlcyB0cmFuc21pdHRlZCB3aXRoIGl0
LCBvciBhdHRhY2hlZCB0byBpdCwgYXJlIGNvbmZpZGVudGlhbCBhbmQgYXJlIGludGVuZGVkIHNv
bGVseSBmb3IgdGhlIHVzZSBvZiB0aGUgaW5kaXZpZHVhbCBvciBlbnRpdHkgdG8gd2hvbSBpdCBp
cyBhZGRyZXNzZWQgYW5kIG1heSBjb250YWluIGluZm9ybWF0aW9uIHRoYXQgaXMgY29uZmlkZW50
aWFsLCBsZWdhbGx5IHByaXZpbGVnZWQsIHByb3RlY3RlZCBieSBwcml2YWN5IGxhd3MsIG9yIG90
aGVyd2lzZSByZXN0cmljdGVkIGZyb20gZGlzY2xvc3VyZSB0byBhbnlvbmUgZWxzZS4gSWYgeW91
IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCBvciB0aGUgcGVyc29uIHJlc3BvbnNpYmxl
IGZvciBkZWxpdmVyaW5nIHRoZSBlLW1haWwgdG8gdGhlIGludGVuZGVkIHJlY2lwaWVudCwgeW91
IGFyZSBoZXJlYnkgbm90aWZpZWQgdGhhdCBhbnkgdXNlLCBjb3B5aW5nLCBkaXN0cmlidXRpbmcs
IGRpc3NlbWluYXRpb24sIGZvcndhcmRpbmcsIHByaW50aW5nLCBvciBjb3B5aW5nIG9mIHRoaXMg
ZS1tYWlsIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSByZWNlaXZlZCB0aGlzIGUtbWFp
bCBpbiBlcnJvciwgcGxlYXNlIHJldHVybiB0aGUgZS1tYWlsIHRvIHRoZSBzZW5kZXIsIGRlbGV0
ZSBpdCBmcm9tIHlvdXIgY29tcHV0ZXIsIGFuZCBkZXN0cm95IGFueSBwcmludGVkIGNvcHkgb2Yg
aXQuCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gUnBtIG1haWxpbmcgbGlzdAo+IFJwbUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ycG0KCgoKLS0gClRoaXMgc29uZyBnb2Vz
IG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3b3VsZCB3b3JrOgpodHRw
czovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hyb29tLXNvbmctYWN0aXZp
dHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExD
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

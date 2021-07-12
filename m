Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F6C3C6216
	for <lists+cake@lfdr.de>; Mon, 12 Jul 2021 19:40:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C76D03CB40;
	Mon, 12 Jul 2021 13:40:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626111632;
	bh=kdiwBqh9wVNjeFuWsuMqfiFKKT9BZYHJ8kheZryU3XE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kuW6Z1UfBaf23g6hqHPpKVjhx4KFpACXi4ifrrffLy7UelRWkUj574lRw9vyzzGG8
	 WBh/4/aoBRH+PHfNvwvZSSOBRKITsSAk2YfB3XR8iem+lU5hzZyYzpAGrlfPpJRsdf
	 VJjU0SHFgaJWMrTM7KFf1ZjNCscatUPUf/Cs82THmbigbJK49m3OqpBGuVcaJaC9BW
	 pucIMTxkgS2Q2zYCYXlVKe+Kwk0qDNHd6D/twEM3Ngiy8AURg4bWZ4T4TLZGzfV2dT
	 F5BsZ8RP8FbuoD6kkTIhQxSF4Fh9UcQq+tCLYUUh8UL/4aCd5moy2TgtQ/iSVH/sQ7
	 hbx6VxzEcY6AQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp80.iad3a.emailsrvr.com (smtp80.iad3a.emailsrvr.com
 [173.203.187.80])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 46E593CB38
 for <cake@lists.bufferbloat.net>; Mon, 12 Jul 2021 13:40:31 -0400 (EDT)
Received: from app58.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp27.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id C16B324AAC;
 Mon, 12 Jul 2021 13:40:30 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app58.wa-webapps.iad3a (Postfix) with ESMTP id AAD752012A;
 Mon, 12 Jul 2021 13:40:30 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Mon, 12 Jul 2021 13:40:30 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Mon, 12 Jul 2021 13:40:30 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Livingood, Jason" <Jason_Livingood@comcast.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <EF8D7620-438A-4F65-94D9-B35FDB76FBBD@cable.comcast.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com> 
 <1625188609.32718319@apps.rackspace.com> 
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com> 
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com> 
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com> 
 <1625773080.94974089@apps.rackspace.com> 
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu> 
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com> 
 <1625859083.09751240@apps.rackspace.com> 
 <EF8D7620-438A-4F65-94D9-B35FDB76FBBD@cable.comcast.com>
X-Client-IP: 209.6.168.128
Message-ID: <1626111630.69692379@apps.rackspace.com>
X-Mailer: webmail/19.0.7-RC
X-Classification-ID: d3677fe1-b9b4-405e-b39e-5e3c47309c67-1-1
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
	but not invalidating my main point
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
Cc: "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 Cake List <cake@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

wqAKT24gTW9uZGF5LCBKdWx5IDEyLCAyMDIxIDk6NDZhbSwgIkxpdmluZ29vZCwgSmFzb24iIDxK
YXNvbl9MaXZpbmdvb2RAY29tY2FzdC5jb20+IHNhaWQ6Cgo+IEkgdGhpbmsgbGF0ZW5jeS9kZWxh
eSBpcyBiZWNvbWluZyBzZWVuIHRvIGJlIGFzIGltcG9ydGFudCBjZXJ0YWlubHksIGlmIG5vdCBh
IG1vcmUgZGlyZWN0IHByb3h5IGZvciBlbmQgdXNlciBRb0UuIFRoaXMgaXMgYWxsIHN0aWxsIGV2
b2x2aW5nIGFuZCBJIGhhdmUgdG8gc2F5IGlzIGEgc3VwZXIgaW50ZXJlc3RpbmcgJiBmdW4gdGhp
bmcgdG8gd29yayBvbi4gOi0pCsKgCklmIEkgY291bGQgbWFuYWdlIHRvIHNlbGwgb25lIGlkZWEg
dG8gdGhlIG1hbmFnZW1lbnQgaGllcmFyY2h5IG9mIGNvbW11bmljYXRpb25zIGluZHVzdHJ5IENF
T3MgKG9wZXJhdG9ycywgdmVuZG9ycywgLi4uKSBpdCBpcyB0aGlzIG9uZToKCiJJdCdzIHRoZSBl
bmQtdG8tZW5kIGxhdGVuY3ksIHN0dXBpZCEiCgpBbmQgSSBtZWFuLCBieSBlbmQtdG8tZW5kLCBs
YXRlbmN5IHRvIGNvbXBsZXRlIGEgdGFzayBhdCBhIHJlbGV2YW50IGxheWVyIG9mIGFic3RyYWN0
aW9uLgoKQXQgdGhlIGxpbmsgbGV2ZWwsIGl0J3MgcGFja2V0IHNlbmQgdG8gcGFja2V0IHJlY2Vp
dmUgY29tcGxldGlvbi4KCkJ1dCBhdCB0aGUgdHJhbnNwb3J0IGxldmVsIGluY2x1ZGluZyByZXRy
YW5zbWlzc2lvbiBidWZmZXJzLCBpdCdzIGRhdGFncmFtIChvciBtZXNzYWdlKSBvcmlnaW5hdGlv
biB1bnRpbCB0aGUgYWNrbm93bGVkZ2VtZW50IGFycml2ZXMgZm9yIHRoYXQgbWVzc2FnZSBiZWlu
ZyBkZWxpdmVyZWQgYWZ0ZXIgd2hhdGV2ZXIgbnVtYmVyIG9mIHJldHJhbnNtaXNzaW9ucywgZnJl
ZWluZyB0aGUgcmV0cmFuc21pc3Npb24gYnVmZmVyLgoKQXQgdGhlIFdXVyBsZXZlbCwgaXQncyBt
b3VzZSBjbGljayB0byBkaXNwbGF5IHVwZGF0ZSBjb3JyZXNwb25kaW5nIHRvIGNvbXBsZXRpb24g
b2YgdGhlIHJlcXVlc3QuCgpXaGF0IHNob3VsZCBiZSBub3RlZCBpcyB0aGF0IGxvd2VyIGxldmVs
IGxhdGVuY2llcyBkb24ndCBkaXJlY3RseSBwcmVkaWN0IHRoZSBtYWduaXR1ZGUgb2YgaGlnaGVy
LWxldmVsIGxhdGVuY2llcy4gQnV0IGxvbmdlciBsb3dlciBsZXZlbCBsYXRlbmNpZXMgYWxtb3N0
IGFsd2F5cyBhbXBsZmlmeSBoaWdoZXIgbGV2ZWwgbGF0ZW5jaWVzLiBPZnRlbiBub24tbGluZWFy
bHkuCgpUaHJvdWdocHV0IGlzIHZlcnksIHZlcnkgd2Vha2x5IHJlbGF0ZWQgdG8gdGhlc2UgbGF0
ZW5jaWVzLCBpbiBjb250cmFzdC4KClRoZSBhbXBsaWZpY2F0aW9uIHByb2Nlc3MgaGFzIHRvIGRv
IHdpdGggdGhlIHByZXNlbmNlIG9mIHF1ZXVlaW5nLiBRdWV1ZWluZyBpcyBBTFdBWVMgYmFkIGZv
ciBsYXRlbmN5LCBhbmQgdGhyb3VnaHB1dCBvbmx5IGhlbHBzIGlmIGl0IGlzIGluIGV4YWN0bHkg
dGhlIHJpZ2h0IHBsYWNlICh0aGUgc28tY2FsbGVkIGlucHV0IHF1ZXVlIG9mIHRoZSBib3R0bGVu
ZWNrIHByb2Nlc3MsIHdoaWNoIGlzIG9mdGVuIGEgbGluaywgYnV0IG5vdCBhbHdheXMpLgoKQ2Fu
IHdlIGdldCB0aGF0IHNsb2dhbiBpbnRvIEhhcnZhcmQgQnVzaW5lc3MgUmV2aWV3PyBDYW4gd2Ug
Z2V0IGl0IHRhdWdodCBpbiBNYW5hZ2VyaWFsIEFjY291bnRpbmcgYXQgSEJTPyAod2hpY2ggZG9l
cyBhZGRyZXNzIGxvZ2lzdGljcy9zdXBwbHkgY2hhaW4gcXVldWVpbmcpLgrCoArCoArCoArCoArC
oAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

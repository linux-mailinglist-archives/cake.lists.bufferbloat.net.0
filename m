Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF663A78AA3
	for <lists+cake@lfdr.de>; Wed,  2 Apr 2025 11:07:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B08463CB5A;
	Wed,  2 Apr 2025 05:07:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743584822;
	bh=EizhTudOlG4yzNGkK2SgE0jvuquVfXfVTrLfYJukJYc=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=bBlZimmftdAk82YX49J6NowgLtas7gLf842gQiUVCcQmPU6rQNDoyVCp/A1IU1zwc
	 XzDwknVX6nau4Ki8OOzE7EGhUqoX/HdBydwlhu89ee/DOEXIa66Qjk8eJu123YvKyJ
	 kuj5XUFJKnIbNDX866PeQ6n2XCDt5YOEbV8qnxNNA13iQ1dXgvpKhCOjhSC8dmfuCc
	 iGPAo8+w3WWfsMye12s5f7UqRTGHdphyTpDrtKpgMJdxM+22PzzSmXOTmhOzAP3Pis
	 Vdrfg4GsMSX5Zvc1eDd155HzqLaCEXgK0EwYV8DnETzJ1NccMNi+/+aDpJ4wTyvxj0
	 Df0iWP/zFLO7g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1C76C3B29D;
 Wed,  2 Apr 2025 05:07:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1743584819; bh=80PQcxzKVYRwHrWlUC65VNMVBzhPZphGA5PIJdB+o3k=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=UiA9t2t3Oj6nKlMsvQJXZkuckb1l5BzJW+rAA15I84xmOjGlejTx7Em4tEnFYFypj
 pGJZOkCvDXwwh3BpnlvGhZK7RocwHqUMLcatM2vtPvBcuZxi3uromyShITpM7yzafd
 GoUVu5+XBMn+Gfu+XFr6LFAahsi7DafUmdes9iw9YP6PRsSbNs2jZA4IEzzSkjkg8N
 ssnqqe8SBIxAVrJFGoWC9WgV/IrTUusuIaVKJg/OaK9BKph2ecRCOgBIDex/Ig6UTZ
 M8ejHi2iD/f5Yp9wmTnyGOT5+JyJweDMRpJQV9uG3HDnZND0gAtYySTCroAl67zPHK
 nAvseYTmDPg+A==
To: David Lang <david@lang.hm>, Frantisek Borsik <frantisek.borsik@gmail.com>
In-Reply-To: <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz>
Date: Wed, 02 Apr 2025 11:06:59 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87plhvlyoc.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake]
	=?utf-8?q?=5BBloat=5D_In_loving_memory_of_Dave_T=C3=A4ht_?=
	=?utf-8?q?=3C3?=
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: cerowrt-commits@lists.bufferbloat.net, bloat-ietf@lists.bufferbloat.net,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-users@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 Network Neutrality is back! =?utf-8?Q?Let=C2=B4s?= make the technical aspects
 heard this time! <nnagain@lists.bufferbloat.net>,
 codel-wireless@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Robert =?utf-8?Q?Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2aWQgTGFuZyB2aWEgQmxvYXQgPGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JpdGVz
OgoKPiBBcyBhIHByYWN0aWNhbCBxdWVzdGlvbiwgd2hhdCBpcyBnb2luZyB0byBoYXBwZW4gdG8g
YWxsIG9mIHRoZXNlCj4gbGlzdHMsIGV0YyB0aGF0IGhlIGhhcyBiZWVuIGhvc3Rpbmc/CgpXZSds
bCBmaW5kIGEgd2F5IHRvIGtlZXAgdGhlbSBnb2luZy4gRGF2ZSBhbHJlYWR5IHN0YXJ0ZWQgYSBk
aXNjdXNzaW9uCmFib3V0IHRoaXMgYSB5ZWFyIGFnbywgYnV0IGl0IGtpbmRhIGZpenpsZWQgb3V0
LiBXZSdsbCBnZXQgdGhhdCBlZmZvcnQKdXAgYW5kIHJ1bm5pbmcgYWdhaW47IHNldmVyYWwgcGVv
cGxlIGFscmVhZHkgb2ZmZXJlZCB0byBoZWxwICh0aGFua3MhKS4KCldpbGwgcG9zdCBtb3JlIGRl
dGFpbHMgb25jZSB3ZSBoYXZlIHRoZW0uCgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

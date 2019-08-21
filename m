Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B55976F0
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 12:21:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B48D73CB38;
	Wed, 21 Aug 2019 06:21:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566382907;
	bh=1hNE5F3RhlBILjYwt0d2imxO3WlQ2n9skqvzr9BH078=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GGcb8BV7gkIRjuKeSO2gzsIDsSJSdcX3JRRGi+WDS9TWS3XvlyIFao+F1GrbdmMvf
	 pMlNy2XCSXZihkVrCJQ1mDidNP+S3bzNhsBoJBSYBKgJA2Lt+SpxO632/OL5gz1R6T
	 PRYdfJpsnG7Z2aRv69nlA1gGkvdadEMMU4oIvyAW/JVepYgUzxRt096ID9lTHWgxbD
	 LxhTvVM8y/8Xwj7NM6LMad43caeW1wG9dwioqmLFtDouKlkNYlw5BQf1cF4XhB2Upj
	 zfDfMuaHGcHh1rwwJ1LWjcqdlnfWiz4A1K03dPMqejR7ot0T4Fyr334YmZpxFgXnA7
	 g6IXyIsTIniQw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 34ADB3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 06:21:46 -0400 (EDT)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5320E4E832
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 10:21:45 +0000 (UTC)
Received: by mail-ed1-f72.google.com with SMTP id e9so1107207edv.18
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 03:21:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=/fAvQFANKnjTaDxMRDP6fKy9+MFM3DlnNWEodOBotPA=;
 b=Y2FNNe5Pgf26VsHA1fuTz1036ZukJYArR0NQz2fAiNuNu5aoI09H4iSlYxLppf06E+
 U55BRkSbn+qUyMcxX3ObzHUbSjtCfsI5yqrZwopLuEza4iyulyzAU67LipZJa9Sk9Gc7
 KlIJGFOL74lErCmKQPsueqIK4jmWH1JScuJENDr//Ke6RncLGGbghncHJaKfX4K2cmpX
 gxbNJMlbFK/LIaJdBuylmPNZeJJPUv51uPeyRcjI4zUAbuZTS3N8pbcar6BkaMcWB7jU
 b+gSqDzfBmqOtj7Gj8XC1uzrzaPonNtQxQ/qGZqgU/zJvhFPVBcRhTs6pEFkAynsKNJr
 hQCg==
X-Gm-Message-State: APjAAAXocVrRWW6E7HMqUAtXaIHXeoPZ6E/06EsShUGTFsFs2gs77lar
 PrcBoAVr4dTxbGoC1SVsA5oeLm3uU5sE2xl/94w4ZY3Cxa9Fpc/yIjMUtZ5+vfjyV06GOiAv+UU
 +Hc8D8xKZXqF1Y1VjUbBdkA==
X-Received: by 2002:a17:906:9385:: with SMTP id
 l5mr29756858ejx.8.1566382904113; 
 Wed, 21 Aug 2019 03:21:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzuIrr1hRkF7v6nVarp2yyHGoQdFx+SqpmLjFopD6XO6xVrZ143PXA3wikpiYbyyuwwlZOMfg==
X-Received: by 2002:a17:906:9385:: with SMTP id
 l5mr29756845ejx.8.1566382903923; 
 Wed, 21 Aug 2019 03:21:43 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id g3sm4039032edv.9.2019.08.21.03.21.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 03:21:43 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B9D63181CEF; Wed, 21 Aug 2019 12:21:42 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dave Taht <dave@taht.net>, Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <87sgpvflo4.fsf@taht.net>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 21 Aug 2019 12:21:42 +0200
Message-ID: <87wof6rf7t.fsf@toke.dk>
MIME-Version: 1.0
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

RGF2ZSBUYWh0IDxkYXZlQHRhaHQubmV0PiB3cml0ZXM6Cgo+IEpvbmF0aGFuIE1vcnRvbiA8Y2hy
b21hdGl4OTlAZ21haWwuY29tPiB3cml0ZXM6Cj4KPj4+IE9uIDIwIEF1ZywgMjAxOSwgYXQgOToz
OSBwbSwgU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+
IHdyb3RlOgo+Pj4gCj4+PiDigKZhIGhlYXZ5IGJpdHRvcnJlbnQgZG93bmxvYWRlciB3aWxsIHN0
aWxsIHN0ZWFsIHRoZSBiYW5kd2lkdGggb2YgbXkgc2NwIHNlc3Npb24uCj4+Cj4+IElmIHlvdSBj
YW4gaWRlbnRpZnkgdGhlIEJpdHRvcnJlbnQgcGFja2V0cywgeW91IGNhbiBtYXJrIHRoZW0gQ1Mx
LCBhbmQKPj4gc3dpdGNoIG9uIENha2UncyAiZGlmZnNlcnYzIiBtb2RlIChhcyBpdCBpcyBieSBk
ZWZhdWx0KS4gIFRoZW4gdGhlCj4+IEJpdHRvcnJlbnQgcGFja2V0cyB3aWxsIHN0aWxsIGJlIGFi
bGUgdG8gdXNlIGZ1bGwgYmFuZHdpZHRoIGlmIGl0J3MKPj4gYXZhaWxhYmxlLCBidXQgd2lsbCBi
ZSBsaW1pdGVkIHRvIDEvMTZ0aCBvZiB0aGUgdG90YWwgaWYgdGhlcmUgaXMKPj4gY29udGVudGlv
bi4KPgo+IEkgcmVnYXJkIHRoZSB3aG9sZSBDUzEgdGhpbmcgYXMgaGF2aW5nIG5ldmVyIGJlZW4g
cGFydGljdWxhcmx5Cj4gc3VjY2Vzc2Z1bCBmb3IgYSB2YXJpZXR5IG9mIHJlYXNvbnMgLSBpbiBw
YXJ0aWN1bGFyIGJlY2F1c2UKPiB3ZSBzZWVtZWQgdG8gYmUgdGhlIG9ubHkgb25lcyBhdHRlbXB0
aW5nIHRvIHVzZSBpdCB3aXRoIHJpZ29yLgo+Cj4gSSB3b3VsZCBsaWtlIHRvIHBhdGNoIGluIGFu
ZCBzdWJtaXQgIkxFIiBzdXBwb3J0IHRvIG1haW5saW5lIGNha2UuCj4KPiBUaGUgUkZDIHJldGly
ZXMgQ1MxIC0gd2hpY2ggSSB3b3VsZG4ndCByZXRpcmUgLSBidXQgc2VlOgo+Cj4gaHR0cHM6Ly93
d3cucmZjLWVkaXRvci5vcmcvcmZjL3JmYzg2MjIuaHRtbAoKWWVhaCwgZ2V0dGluZyBzdXBwb3J0
IGZvciB0aGF0IHVwc3RyZWFtIG1pZ2h0IGJlIGEgZ29vZCBpZGVhIDopCgo+IEFsc28gaXQgc2Vl
bXMgbGlrZSBhIGdvb2QgaWRlYSB0byBhbHNvIHN1Ym1pdCB0aGUgTlMgYml0Cj4gZXhjbHVzaW9u
IGZyb20gdGhlIGFjayBmaWx0ZXIgdG8gbWFpbmxpbmUgYXMgd2VsbC4KCldoYXQncyB0aGF0PwoK
LVRva2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

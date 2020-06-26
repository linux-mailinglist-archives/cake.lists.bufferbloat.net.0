Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6993B20B5FC
	for <lists+cake@lfdr.de>; Fri, 26 Jun 2020 18:36:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 435A43CB38;
	Fri, 26 Jun 2020 12:36:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593189369;
	bh=OOFEqkOfssmyV6onOb5+tRcgLf54syY768O+1spap88=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L9hg19b5xISo7Vny0XA6B/MT0nsZpWpJRZ9X+9YSfWml6p9cjJcommsigBBb+703N
	 818Ts6yHsLQRxN4EAx3kubgUVyC+8IaFPe1VZtBDJ2xr6szxObqPkhhuIqdha8g5z3
	 X+Qy/AApr3uXIN0wDwHsvnUYKkpYN+qpgB4brGrvZPKmFCBWZWOwIK7c0PlbNajF8b
	 37ketDWFmii8PySZUffb/GKMOkL8PTyP5oNyZ6UutvQAz4aJzUAbz+OG3/kZH9fkGH
	 5TPTRLJzD2RP3M1jNdPsOzE2KXDpe290p+wSX+1fYNDO3yHkzSky9CgD+mYkWJXJCM
	 /BSuUyx8jpikw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1ADD83B29E
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 12:36:07 -0400 (EDT)
Received: by mail-lj1-x241.google.com with SMTP id s9so10955953ljm.11
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 09:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=eRYFGRArONWIgN9s4+mE71PGB0SsYn0z4yBVMo7WaWk=;
 b=fq8RTB6qu0u+jT78Z6xHjpMc4dmCCMHymat4fMFbJ9Lw19alDgwrKDre7dFAdUutpQ
 LfrBHbu7d0PX9wdl7sRsJT0kRoh4VZz+JZAl0JKALxzafmQoCAMfwqJNRlYrn2siZvFx
 bhYUPGPJmO5Ovlf3e1YHMzMalv0MQOHFLUveGdN7O6pqQLeQY4kRqCaI62Ur7sCsFYvG
 +Yj7mznXUnhCWkizf/mC4cDgtmx9gla9yy+7w1GJE1YsqcPlKCLHbzWAP97leQWakOV9
 itvd5chaejkRtqTwDvzmrynvPJszXqtzphWaiZuN9ovjd5aLe9d7wfUXM6SvamyLjBuH
 CEAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=eRYFGRArONWIgN9s4+mE71PGB0SsYn0z4yBVMo7WaWk=;
 b=tUUILTsJV8/RclPK3DwrCEBjyTxiwxMZG3TLo7M3k47OP4Ajn/14FrZdZFzB5gxXPD
 Q3zEfPTg7TzRYg7BGnyoFrwB2R/XiJoMpFgEoYERsE8NhWeeFmlUMQ1cesDjPXpgazpn
 XEfxHYHuCdpQ3EG0BkxWSypw1TQkkUyrBlOoJCEgvquxhBJ6xxznFIymPzuT6ypEEagw
 S16aXO2KjH4zpBY58vO+BOeKu/XQxE4UCstEVzgIZXXCUd3uqjbP0rVgzKReUp5p+/SK
 KrrmcHXirb4+1br68b0WyNCXjYoaUFUJuBrioUwULcsGYZfUqm+IMspRTCok5JBL0/sG
 ZEJA==
X-Gm-Message-State: AOAM531DYgY6TRkI7+IWyTVQfBcAeCCe5KsY5y7nOXF1Fxq8pGtjREgl
 wpWBIdY23V59vXcQxbzk7gE=
X-Google-Smtp-Source: ABdhPJx5RncUDm55ZcR/EXZdGj9koAhgl8X3fNLKO3388vYKSZU6DWK1cWesqIJX+FcGDE/ORdO7Xw==
X-Received: by 2002:a2e:85d2:: with SMTP id h18mr1981278ljj.367.1593189366034; 
 Fri, 26 Jun 2020 09:36:06 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-85-nat-p.elisa-mobile.fi.
 [83.245.237.85])
 by smtp.gmail.com with ESMTPSA id i22sm1298957ljg.31.2020.06.26.09.36.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jun 2020 09:36:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <E6DDAA1E-E7E9-47D2-8616-20B7AADF015A@gmx.de>
Date: Fri, 26 Jun 2020 19:36:04 +0300
Message-Id: <8BAD586F-43FB-4ED1-865E-45AFB9AE9D95@gmail.com>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
 <159308610390.190211.17831843954243284203.stgit@toke.dk>
 <20200625.122945.321093402617646704.davem@davemloft.net>
 <87k0zuj50u.fsf@toke.dk>
 <240fc14da96a6212a98dd9ef43b4777a9f28f250.camel@redhat.com>
 <78C16717-5EB2-49BF-A377-21A9B22662E1@gmail.com>
 <E6DDAA1E-E7E9-47D2-8616-20B7AADF015A@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3445.9.5)
Subject: Re: [Cake] [PATCH net-next 1/5] sch_cake: fix IP protocol handling
 in the presence of VLAN tags
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
Cc: Cake List <cake@lists.bufferbloat.net>, dcaratti@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyNiBKdW4sIDIwMjAsIGF0IDU6NTkgcG0sIFNlYmFzdGlhbiBNb2VsbGVyIDxtb2VsbGVy
MEBnbXguZGU+IHdyb3RlOgo+IAo+IHRoaW5raW5nIHRoaXMgb3ZlciwgSSB3b25kZXIgd2hldGhl
ciBhIGh5cG90aGV0aWNhbCBjYXJyaWVyIGdyYWRlIGNha2UsIG1pZ2h0IG5vdCBhY3R1YWxseSBn
cm93IGEgY2xhc3NpZnktYnktdmxhbi1wcmlvcml0eSBrZXl3b3JkIHRvIGFsbG93IHN3aXRjaGlu
ZyBvdmVyIHRvIHVzaW5nIFZMQU4gcHJpb3JpdHkgdGFncyBpbnN0ZWFkIG9mIGRzY3BzPyBUaGF0
IHdvdWxkIGF2b2lkIHRlbXB0aW5nIGNhcnJpZXJzIHRvIHJlLW1hcCBkZWVlcC1lbmNhcHN1bGF0
ZWQgZHNjcHMgaWYgdGhleSBjYW4ganVzdCBpZ25vcmUgdGhlbSBmb3IgZ29vZC4gQW5kIGl0IHNj
cmF0Y2hlcyBteSBwZXQgaXRjaCwgdGhhdCAzIGJpdHMgb2YgY2xhc3NpZmljYXRpb24gc2hvdWxk
IGJlIGVub3VnaCBmb3IgPjgwICUgb2YgdGhlIGNhc2VzIDspCj4gCj4gV2hhdCBkbyB5b3UgdGhp
bms/CgpJZiBjYXJyaWVycyBjb3VsZCB1c2UgRXRoZXJuZXQgVkxBTnMgZm9yIGludGVybmFsIHB1
cnBvc2VzIGluc3RlYWQgb2YgRFNDUHMsIEkgd291bGQgY291bnQgdGhhdCBhcyBwcm9ncmVzcyB0
b3dhcmRzIGFsbG93aW5nIERTQ1BzIHRvIGNhcnJ5IGVuZC10by1lbmQgaW5mb3JtYXRpb24uICBB
bmQgaWYgdGhlcmUncyBhIGRlc2lyZSBmb3IgYSBzb2Z0d2FyZSBxZGlzYyB3aGljaCBmaXRzIHRo
YXQgcGFyYWRpZ20sIHRoZW4gd2UgY2FuIGRvIGEgcmVxdWlyZW1lbnRzIGFuYWx5c2lzIHdoaWNo
IG1pZ2h0IHdlbGwgbGVhZCB0byBzb21ldGhpbmcgdXNlZnVsIGJlaW5nIGRldmVsb3BlZC4KCkJ1
dCB0aGF0IGlzbid0IGdvaW5nIHRvIGJlIENha2UuICBJdCdsbCBiZSBhIGRpZmZlcmVudCBxZGlz
YyB3aGljaCBtaWdodCBzaGFyZSBzb21lIGZlYXR1cmVzIGFuZCB0ZWNobm9sb2d5IHdpdGggQ2Fr
ZSwgYnV0IGRlZmluaXRlbHkgYXJyYW5nZWQgaW4gYSBkaWZmZXJlbnQgb3JkZXIgYW5kIHdpdGgg
YSBkaWZmZXJlbnQgZm9jdXMuCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

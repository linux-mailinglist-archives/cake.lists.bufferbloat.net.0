Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 462E1AD0091
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7A49B3D591;
	Fri,  6 Jun 2025 06:41:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206460;
	bh=AFYUO9M6DJX34KpnrUk3JxpuU7Er+mmAavDSsLlhorE=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=iM0s0lPRHmsWYl4ubBXtBXnqo5CUnt72EEUJp2wb1cugI1tb9xiXNILd/OIVhMYd4
	 kitdNO2AU+qgiumlVsrwlczc/SujemfC2B6IMHucBITg2jeHH4Bb/3ge9rIjBdT6vF
	 SmHQUotZURbZhjygDotVDNj5txQjs/sfiReUqQ5sV0Sd5T9p2meCokuNQs9Ki9T80o
	 mJVus0ew3wrl28n4aEsBaQ8dowyviX0J1YQIrhzUy0UiHiTCXqEgFkyK8NYWm9MNs1
	 +x7w9bZZStuRw2V/Aybg/pS8AE8T8yhFIaPZLh+J+dUFrfsmyRpMyXZYWnRHTzdZIF
	 Tqb5aGk/Sd6uQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ms.lwn.net (ms.lwn.net [IPv6:2600:3c01:e000:3a1::42])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 759AC3B2A4;
 Wed,  2 Apr 2025 12:18:41 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 2539F41062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1743610720; bh=rvbgCRE36gWJoyxsMSmM6uMl5aBrd65V9LZCN5VvyS4=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=S2q5En9m5ol7gxqXR4+bhwQl09ZYWaJZFokvJAZc4uGqlLA8KjmiIe4+K9LMv7FDL
 Gho6XecGKomoEfVVl5X22SaJzBca+iWFv4NtkHjznT8LOyVXVO7ec4fDx6wzTt7kxa
 M+OsUQcM6LNZQ2chTyhrARac3os5aDL56/3SsIWkTC1PG9ukB51GXllWDevGmXXMBV
 d/xTsIbSJECJwv+/4U6An0YXVMC9YiEW8DK5UX7DW1lM8Z5xs7MHqgTYqG0tqqv3vu
 4SJ1dvKaN/ictkcApVhV+V6GmM+ROamwUzSgk0OLv/yAxJgl4zwjwYVVX9VEp4gcYb
 DaZIz7eNt965A==
Received: from localhost (unknown [IPv6:2601:280:4600:2da9::1fe])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 2539F41062;
 Wed,  2 Apr 2025 16:18:40 +0000 (UTC)
To: Frantisek Borsik <frantisek.borsik@gmail.com>, libreqos
 <libreqos@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>, Jeremy Austin via
 Rpm <rpm@lists.bufferbloat.net>, bloat-ietf@lists.bufferbloat.net, Cake
 List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-commits@lists.bufferbloat.net,
 cerowrt-devel@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 codel-wireless@lists.bufferbloat.net, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>, Network Neutrality is back!
 =?utf-8?Q?Let=C2=B4s?= make the technical aspects heard this time!
 <nnagain@lists.bufferbloat.net>
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
Date: Wed, 02 Apr 2025 10:18:39 -0600
Message-ID: <87mscy5yg0.fsf@trenco.lwn.net>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
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
From: Jonathan Corbet via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Corbet <corbet@lwn.net>
Cc: Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Robert =?utf-8?Q?Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJhbnRpc2VrIEJvcnNpayB2aWEgQmxvYXQgPGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4g
d3JpdGVzOgoKPiBIZWxsbyB0byBhbGwsCj4KPiBXZeKAmXJlIGRldmFzdGF0ZWQgdG8gYW5ub3Vu
Y2UgdGhhdCBEYXZlIFTDpGh0IGhhcyBwYXNzZWQgYXdheS4KCkkndmUgYmVlbiBwb25kZXJpbmcg
dGhpcyBmb3IgdGhlIGxhc3QgZGF5LCBhdCBhIGxvc3MgZm9yIHdoYXQgSSBjb3VsZApzYXkgb3Ro
ZXIgdGhhbiAiSSdtIHNhZCB0b28iLiAgSSBoYXZlIG1hbnkgaGFwcHkgbWVtb3JpZXMgb2YgZGlz
Y3Vzc2lvbnMKd2l0aCBEYXZlLCB3aXRoIGJlZXJzIHNoYXJlZCBpbiBkaXN0YW50IHBsYWNlcywg
b2YgaGlzIGNvbnRpbnVhbCBnZW50bGUKZW5jb3VyYWdlbWVudCB0byBzdXBwb3J0IHRoZSBwZW9w
bGUgd2hvIGFyZSB3b3JraW5nIHRvIG1ha2UgdGhpbmdzCmJldHRlci4KCldlIGhhdmUgbG9zdCBz
b21lYm9keSBzcGVjaWFsLgoKTG9va2luZyB0aHJvdWdoIG15IGVtYWlsIGZyb20gaGltLCBvbmUg
Y29uc3RhbnQgdGhlbWUgd2FzIG5vdCBwb2ludGluZwpvdXQgaGlzIG93biB3b3JrICh0aG91Z2gg
aGUgd2FzIGNlcnRhaW5seSBwbGVhc2VkIHdoZW4gaXQgd2FzIGFkb3B0ZWQpLApidXQgdGhlIHdv
cmsgb2Ygb3RoZXJzLiAgSGUgd2FudGVkIGFsbCBvZiB0aGUgcGVvcGxlIGRvaW5nIGdvb2Qgd29y
ayB0bwpiZSByZWNvZ25pemVkLCBhbmQgaGFkIGEgYmlnIGVub3VnaCBoZWFydCB0byBzdXBwb3J0
IHRoZW0gYWxsLgoKSW4gYSBtZXNzYWdlIHNlbnQganVzdCBvdmVyIGEgeWVhciBhZ28sIGhlIGxl
ZnQgbWUgd2l0aCB0aGlzIHRob3VnaHQ6CgoJImlmIHdlIGRvIG5vdCBjZWxlYnJhdGUgb3Vyc2Vs
dmVzLCBuby1vbmUgd2lsbC4iCgpBcyBJIHJlbWVtYmVyIERhdmUsIEkgc2hhbGwgdHJ5IHRvIGZv
bGxvdyBoaXMgbGVhZCBhbmQgY2VsZWJyYXRlIHRob3NlCndobyBhcmUgY29udGludWluZyBoaXMg
d29yay4KCmpvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

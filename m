Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3CEB0322B
	for <lists+cake@lfdr.de>; Sun, 13 Jul 2025 18:48:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DE3A53CB48;
	Sun, 13 Jul 2025 12:47:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1752425276;
	bh=8C1I5XcW93Tr1Td2J+j5aS7iv+YvLiSxyrvcfJ7y/80=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=EEB++wtOar/GgCTDBybzZGGhOi1KmYKcewgHN4C+5bALwz6SoMAiOq3D4KTE5Lx6I
	 zIR13hdN0sSOnE1I+cwXEtwNfhHUX6EF83QGuBEvCKZBvoHR/Vn/wS0juum1rq8zEF
	 gK0uoMC4Ry2xDcMO0BhI7Vz1V0yZYQm06B3b3W0BNkKxiKzKe6bg2644+xhYH/f4cA
	 Nqnr1I0ixZgl7hk1TJkRCiSNUiH7DlyNdlcE7Al6Ir40PukVpHVGvUcpNKRSWIe4SD
	 lIsKiHMPMLpPP+n6AApzc8UaxrGPei9XkJfU2op0H+f0u6Z+aRj7D0zeBjZktAOIsQ
	 OLrOL8mWovOjQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk
 [IPv6:2a0c:4d80:42:443::2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4B6DF3B29D;
 Sun, 13 Jul 2025 12:47:54 -0400 (EDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5E4761B8A86D; Sun, 13 Jul 2025 18:47:49 +0200 (CEST)
To: bloat@lists.bufferbloat.net, cake@lists.bufferbloat.net,
 cerowrt-devel@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 ecn-sane@lists.bufferbloat.net, libreqos@lists.bufferbloat.net,
 make-wifi-fast@lists.bufferbloat.net, nnagain@lists.bufferbloat.net,
 rpm@lists.bufferbloat.net, starlink@lists.bufferbloat.net
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sun, 13 Jul 2025 18:47:49 +0200
Message-ID: <87ms9811hm.fsf@toke.dk>
MIME-Version: 1.0
Subject: [Cake] Migrating the Bufferbloat mailing lists
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgZm9sa3MKCkkgYW0gYWJvdXQgdG8gaW5pdGlhdGUgYSBtaWdyYXRpb24gb2YgdGhlIEJ1ZmZl
cmJsb2F0IG1haWxpbmcgbGlzdHMgb2ZmCm9mIERhdmUncyBvbGQgTGlub2RlIHNlcnZlciBhbiBv
bnRvIG15IG93biBtYWlsIHNlcnZlci4gSW4gdGhlIHByb2Nlc3MsCnRoZSBsaXN0IGJhY2tlbmQg
d2lsbCBiZSBzd2l0Y2hlZCBmcm9tIHRoZSBvbGQgTWFpbG1hbjIgaW5zdGFuY2UgdG8gYW4KdXAg
dG8gZGF0ZSBNYWlsbWFuMyBpbnN0YWxsYXRpb24sIGFuZCB0aGUgYXJjaGl2ZSBiYWNrZW5kIHdp
bGwgYmUKc3dpdGNoZWQgdG8gYSBwdWJsaWMtaW5ib3ggYmFzZWQgYXJjaGl2ZS4KClRoZSBtYWls
aW5nIGxpc3RzIGluIHRoZSBUbyBmaWVsZCBvZiB0aGlzIGVtYWlsIGFyZSB0aGUgYWN0aXZlIGxp
c3RzCndoaWNoIHdpbGwgYmUgbWlncmF0ZWQsIGFuZCBubyBhY3Rpb24gaXMgbmVjZXNzYXJ5IGZv
ciB5b3UgdG8gY29udGludWUKdG8gYmUgc3Vic2NyaWJlZC4gQWxsIG90aGVyIGxpc3RzIGN1cnJl
bnRseSBob3N0ZWQgYXQKbGlzdHMuYnVmZmVyYmxvYXQubmV0IHdpbGwgaGF2ZSB0aGVpciBhcmNo
aXZlcyBtaWdyYXRlZCBmb3IgcG9zdGVyaXR5LApidXQgd29uJ3QgYmUgc2V0dXAgdG8gcmVjZWl2
ZSBuZXcgZW1haWwuCgpJIGFtIHNlbmRpbmcgdGhpcyBlbWFpbCBiZWZvcmUgaW5pdGlhdGluZyB0
aGUgbWlncmF0aW9uLiBPbmNlIHRoZSBtYWlsCmhhcyBiZWVuIGZsdXNoZWQgZnJvbSB0aGUgbWFp
bGluZyBsaXN0IHF1ZXVlLCBJIHdpbGwgc2h1dCBkb3duIHRoZSBtYWlsCnNlcnZlciBkYWVtb24g
b24gdGhlIG9sZCBzZXJ2ZXIsIGFuZCBpbml0aWF0ZSB0aGUgYXJjaGl2ZSBhbmQgRE5TCm1pZ3Jh
dGlvbi4KCkFmdGVyIHRoZSBtaWdyYXRpb24gaXMgY29tcGxldGUsIEkgd2lsbCBzZW5kIGFub3Ro
ZXIgbm90aWZpY2F0aW9uIGVtYWlsCnRvIGxldCB5b3UgYWxsIGtub3cgdGhlIG1pZ3JhdGlvbiBo
YXMgYmVlbiBjb21wbGV0ZWQuIE1lYW5pbmcgdGhhdCBpZgp5b3UgcmVjZWl2ZSB0aGlzIGVtYWls
LCBidXQgbm90IHRoZSBmb2xsb3ctdXAgbm90aWZpY2F0aW9uLCB0aGF0IGNvdWxkCmluZGljYXRl
IGEgZGVsaXZlcnkgaXNzdWUuIEluIHdoaWNoIGNhc2UsIHBsZWFzZSBkbyBsZXQgbWUga25vdwoo
b2ZmLWxpc3QhKSwgYnV0IHBsZWFzZSBhbGxvdyBhIGRheSBvciBzbyBmb3IgZXZlcnl0aGluZyB0
byBmbHVzaCBvdXQuCgpTZWUgeW91IG9uIHRoZSBvdGhlciBzaWRlIQoKLVRva2UKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QK
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQo=

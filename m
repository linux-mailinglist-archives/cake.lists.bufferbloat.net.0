Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7409311F1AE
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 13:11:13 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 986973CB3D;
	Sat, 14 Dec 2019 07:11:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576325472;
	bh=0jQdDeEvD8+G2e2G5g5WQ07pdKf2gQxUDgOO6Uv3oNk=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EfViw3FsY+9xgsTkq7VkGAxQsQHF5GE+nFgktHPwZyl3UhYGMhcIEcWqOvzzdQp/5
	 oYwOf5gA6LchyRamxhlejXIcmcD1R+JbjvkWdHSMz0FL+s4Oq13h/pZ3vMB4HckZIo
	 IoZJuZqqFZ1NxyvEqGn7yA6zQq50cEZo0x8W9+JdTd3RDLnkULA5mH1P8DFwudIdRr
	 w1kjCMR8VqVfAsJ8hc9bqV6IlDNfXX2sMgXz6uef39GdcWidtkQOtNNrk3iSN1PyvS
	 grahlx4e4I8SAOQR6bjgX1vE8QAOtPNX5Yo/8p1b1cDGNPnN2P7MDvGYpFyzu9lyPJ
	 Lgj6IiIsV6ikA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5307F3B2A4
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 07:11:11 -0500 (EST)
Received: from tama.lan (unknown [37.165.135.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 2C2C1603EA;
 Sat, 14 Dec 2019 13:11:10 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 2C2C1603EA
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576325470; bh=8ZH4Vrp5a/fP/KasHsRo1Mn/y9UTJtleD6f4ScM9vvQ=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=kDqU+brijpyuIE9nf4wj0TbxparwpiGnV37T+XqbH3/P7jAQekQBwsUo6tBY28QjY
 cTLtfz3fJ6w2mUaCCu2cD2hZj2kUUhoVHUKxVHB3E38BpWPJrZ5J862x6g1FpNUgDH
 ZytvcArL9YMgHddpNPRRgcLCtyBLLYFXfsdvODlU=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <1632300D-56B8-4E9A-B4FD-C244D4F5AED6@gmail.com>
Date: Sat, 14 Dec 2019 13:11:09 +0100
Message-Id: <D6F8BB5F-EFA7-4275-84E6-48479356DD93@slashdirt.org>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
 <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
 <46DDBCAA-EC6C-492F-8448-DF85ABB4E1DB@slashdirt.org>
 <1507FAF0-8A13-48E1-8A36-0D352F4FDD00@gmail.com>
 <FD87F736-DF93-44F4-805C-6ABCE8D4E172@slashdirt.org>
 <A265EDE5-BDEE-4806-AB75-4BD70053EC0B@darbyshire-bryant.me.uk>
 <4E238145-37A2-45AC-B8BB-AD602C4D1044@darbyshire-bryant.me.uk>
 <55F31738-C935-4361-B11E-9E7CA657489F@slashdirt.org>
 <1632300D-56B8-4E9A-B4FD-C244D4F5AED6@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Cake] Trouble with CAKE
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
Cc: Erik Taraldsen via Cake <cake@lists.bufferbloat.net>,
 Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cgo+IE9uIDE0IERlYyAyMDE5LCBhdCAxMzowOSwgSm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5
OUBnbWFpbC5jb20+IHdyb3RlOgo+IAo+PiBPbiAxNCBEZWMsIDIwMTksIGF0IDE6NTkgcG0sIFRo
aWJhdXQgPGhhY2tzQHNsYXNoZGlydC5vcmc+IHdyb3RlOgo+PiAKPj4gSeKAmW0gd29uZGVyaW5n
IGlmIHRoaXMgY291bGQgYmUgYW4g4oCcdXNlIG9mIHVuaW5pdGlhbGl6ZWQgZGF0YeKAnSB0eXBl
IG9mIGJ1Zy4KPiAKPiBUaGlzIGlzIHdoeSBJIHdvdWxkbid0IGtlZXAgd29ya2luZyBvbiBhbiBv
bGQga2VybmVsIHRoYXQncyBmdWxsIG9mIHZlbmRvciBwYXRjaGVzLgoKRm9yZ2l2ZSBtZSBmb3Ig
dHJ5aW5nIHRvIHVzZSBjYWtlIG9uIGEgc3VwcG9ydGVkIHN0YWJsZSBkaXN0cm8uCgpBbGwgZGlz
dHJvcyBhcmUgZnVsbCBvZiB2ZW5kb3IgcGF0Y2hlcyAoT3BlbldSVCBpcyBubyBleGNlcHRpb24p
LiBUaGUgc3Vic2V0IG9mIGxpbnV4IG1hY2hpbmVzIHRoYXQgdXNlIHZhbmlsbGEgaXMg4oCYYmVs
b3cgbWVhc3VyYWJsZSB0aHJlc2hvbGTigJnigKYKCkNoZWVycywKVGhpYmF1dApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCg==

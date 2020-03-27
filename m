Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F94196262
	for <lists+cake@lfdr.de>; Sat, 28 Mar 2020 01:18:45 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C8FCC3CB3B;
	Fri, 27 Mar 2020 20:18:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1585354723;
	bh=C9oPKE1LBQD4HTd5mYTonbAAj6gjXr8GqjhW3t1FOLc=;
	h=To:From:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DZIj87iY/1svI+252mYnCQ02T0JVHBcNqYL20FlxeKPY0IetPLBJxm2baNHOh1lkc
	 2OhiOFAC+eYyTOW063C0hK2gOLO0hHgILh4FInDiDyZVKaluY34YNhdHD/W4GhPksP
	 Gsj3VYHkdIALre0lus7bgNYFh0+pGHNWcqZINdC4+2YnsHR3lcPuV/rbIjZYPGld4G
	 fgqllQRhgO7M/LdzQt0/PZn7RMmMduWNOWRCmwdRKgGfVRjaL4ids9Cd/tmCEemv7k
	 55UDQjZTcbKqRlNcPNWHjAh5/nsudv4p2b2+eH47I8S3kW9gSm/7JxhDfXvhYqZIbX
	 MbhFRUt72qDxQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail239c25.carrierzone.com (mail146c25.carrierzone.com
 [64.29.147.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 101973B2A4;
 Fri, 27 Mar 2020 17:34:25 -0400 (EDT)
X-POP-User: hmurray@megapathdsl.net
Feedback-ID: hmurray@megapat
Received: from ip-64-139-1-69.sjc.megapath.net
 (ip-64-139-1-69.sjc.megapath.net [64.139.1.69])
 by mail239c25.carrierzone.com (8.14.9/8.13.1) with ESMTP id 02RLYNFx027765;
 Fri, 27 Mar 2020 21:34:24 +0000
Received: from shuksan (localhost [127.0.0.1])
 by ip-64-139-1-69.sjc.megapath.net (Postfix) with ESMTP id B90CA40605C;
 Fri, 27 Mar 2020 14:34:22 -0700 (PDT)
X-Mailer: exmh version 2.7.2 01/07/2005 with nmh-1.3
To: "David P. Reed" <dpreed@deepplum.com>
From: Hal Murray <hmurray@megapathdsl.net>
Mime-Version: 1.0
Date: Fri, 27 Mar 2020 14:34:22 -0700
Message-Id: <20200327213422.B90CA40605C@ip-64-139-1-69.sjc.megapath.net>
X-CSC: 0
X-CHA: v=2.3 cv=KeCsTjQD c=1 sm=1 tr=0 a=OWgXOY7Tc8w5m7k7nGX6Zw==:117
 a=OWgXOY7Tc8w5m7k7nGX6Zw==:17 a=kj9zAlcOel0A:10 a=SS2py6AdgQ4A:10
 a=MOtRQ-d8iHuntgbCgrUA:9 a=CjuIK1q_8ugA:10
X-CTCH-RefID: str=0001.0A09020E.5E7E7161.0020, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-Origin-Country: US
X-Mailman-Approved-At: Fri, 27 Mar 2020 20:18:43 -0400
Subject: Re: [Cake] [Bloat] mo bettah open source
	multi-party	videoconferncing in an age of bloated uplinks
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
Cc: Hal Murray <hmurray@megapathdsl.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Anthony Minessale II <anthm@freeswitch.org>,
 Cake List <cake@lists.bufferbloat.net>, Ken Rice <krice@freeswitch.org>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cj4gSSBoYXRlIHB1dHRpbmcgdGhpbmdzIGluIHRoZSBrZXJuZWwhIEl0J3MgaW5zZWN1cmUuIEJ1
dCB3aGF0IHRoaXMgc2F5cyBpcwo+IHRoYXQgZm9yIHZlcnkgaGlzdG9yaWNhbCBhbmQgc3R1cGlk
IHJlYXNvbnMgKHJlbGF0ZWQgdG8gdGhlIGlkZWFzIG9mIGVhcmx5Cj4gdGltZXNoYXJpbmcgc3lz
dGVtcyBsaWtlIFVuaXggYW5kIE11bHRpY3MpIGZvbGtzIHRyeSB0byBtYWtlIHJlYWwtdGltZQo+
IGFsZ29yaXRobXMgbG9vayBsaWtlIG9yZGluYXJ5ICJwcm9jZXNzZXMiIHdob3NlIG5vdGlvbiBv
ZiBjb250cm9sbGluZwo+IHRlbXBvcmFsIGJlaGF2aW9yIGlzIGFic3RyYWN0ZWQgYXdheS4gCgpD
b3VsZCB5b3UgcGxlYXNlIHNheSBtb3JlLgoKV2h5IGRvZXNuJ3QgaXQgd29yayB0byBwdXQgdGhl
IHRpbWUgY3JpdGljYWwgc3R1ZmYgaW4gYSBzZXBhcmF0ZSBsaWdodCB3ZWlnaHQgCnRocmVhZCBh
bmQgZ2l2ZSBpdCBoaWdoZXIgcHJpb3JpdHkgdGhhbiB0aGUgc3R1ZmYgdGhhdCBuZWVkcyBsb3Rz
IG9mIENQVT8KCklzIHRoZSBwcm9ibGVtIGluIHRoZSBzY2hlZHVsZXI/ICBJcyBiYWNrZ3JvdW5k
IGp1bmsgb3ZlcmxvYWRpbmcgdGhlIHN5c3RlbT8KKEFyZSBwZW9wbGUgcmVidWlsZGluZyB0aGUg
a2VybmVsIHdoaWxlIHZpZGVvIGNvbnZlcmVuY2luZz8pCgpJcyBpdCB0b28gaGFyZCB0byBzcGxp
dCBvdXQgdGhlIGxvZ2ljIHRoYXQgd291bGQgZ28gaW4gdGhlIGxpZ2h0IHdlaWdodCAKdGhyZWFk
PyAoZ2V0IHRhbmdsZWQgb24gbG9ja3Mgb3Igc3VjaCkKCgotLSAKVGhlc2UgYXJlIG15IG9waW5p
b25zLiAgSSBoYXRlIHNwYW0uCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A02047A4FFC
	for <lists+cake@lfdr.de>; Mon, 18 Sep 2023 18:57:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B3B8C3CB42;
	Mon, 18 Sep 2023 12:57:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695056263;
	bh=h/jSVCEQqsrqvpuJn0yHXrrF/HNzRhjv/HW/+6/X49c=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=iiFZIhCyn44KYa+LNZ8Fogtv+tAUyijcZ0rOGdlZJ+IxewicKRViZxwDozS+yPoU1
	 G4oQVb1Z94uphIg3WucCh/pRY38EosekzfPOsX0hOOxOf0We8cYyOlKkw0JQDlFGJN
	 dy5Iaw9Q4j/cShvUn0enoxHFZsodIAxXd9hJ2msRK1U7YT7ob0dVl3j6jHrlKQlyVb
	 LolSan2XUafjw4sCm8rxi92iCWrcocJ71N8N8DFEN0eBKNBwc3D7kbH/YuX6KIR17U
	 TB41bBsb4/SJ6Szlbs6d5LaFvfhiIWWXhIdsblJmEW/FEHCx0txZuyGRsfIH10i04Q
	 zASL20CMbEUrw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp126.iad3a.emailsrvr.com (smtp126.iad3a.emailsrvr.com
 [173.203.187.126])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 742DD3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 18 Sep 2023 12:57:42 -0400 (EDT)
Received: from app37.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp8.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id C74841B91;
 Mon, 18 Sep 2023 12:57:41 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app37.wa-webapps.iad3a (Postfix) with ESMTP id C32AD612E8;
 Mon, 18 Sep 2023 12:57:41 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Mon, 18 Sep 2023 12:57:41 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Mon, 18 Sep 2023 12:57:41 -0400 (EDT)
To: "Dave Taht" <dave.taht@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1695056261.795419240@apps.rackspace.com>
X-Mailer: webmail/19.0.24-RC
X-Classification-ID: 1bdef6dc-ea6d-4ee5-aa65-ca79327139be-1-1
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
From: "David P. Reed via Cake" <cake@lists.bufferbloat.net>
Reply-To: "David P. Reed" <dpreed@deepplum.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBhcHByZWNpYXRlIHRoZSBlZmZvcnQgdGhhdCB3ZW50IGludG8gdGhpcyB0ZXN0aW5nLiBIb3dl
dmVyLCB0aGVyZSBhcmUgc29tZSBzaWduZmljYW50IGNvbmNlcm5zIHJlZ2FyZGluZyBzYXlpbmcg
dGhhdCB0aGlzIGlzIHR5cGljYWwgQVJNNjQgcGVyZm9ybWFuY2UuIChBUk02NCBlYXNpbHkgYmVh
dHMgbWFueSBJbnRlbCB4ODZfNjQgQ1BVcywgaWYgdGhlIG1vdGhlcmJvYXJkcyBhcmUgZGVzaWdu
ZWQgZm9yIHRoYXQgLSBJIGhhdmUgYSB2ZXJ5IG5pY2UgU29saWRSdW4gMTYgY29yZSBBUk02NCBi
b2FyZCBiYXNlZCBvbiB0aGUgTlhQIEFSTXMsIGFuZCB0aGUgQ2hpbmVzZSBtYWtlIGEgbG90IG9m
IHNlcnZlcnMpCgpJdCBzaG91bGQgYmUgbm90ZWQgdGhhdCBhbGwgdGhlIFBpJ3MgdGVzdGVkIGFy
ZSBjb25maWd1cmVkIHdpdGggdGhlICpsb3VzeSogRXRoZXJuZXQgaW50ZXJmYWNlIHRoYXQgaXMg
c3RhbmRhcmQgb24gUGkncyAoVVNCKS4gSSBkb24ndCBrbm93IGFib3V0IHRoZSBKZXRzb25zIChJ
IG93biBhIEpldHNvbiwgYnV0IGhhdmUgbmV2ZXIgdGVzdGVkIGl0cyBuZXR3b3JraW5nIG9yIGV2
ZW4gbG9va2VkIGF0IHRoZSBkZXNpZ24gb2YgdGhlIEkvTykuCgpOb3cgdGhlIFBpIENNNCAqbW9k
dWxlKiBpcyBjYXBhYmxlIG9mIGNvbm5lY3RpbmcgdG8gYSBQQ0llIEV0aGVybmV0IGFkYXB0ZXIg
KHVzaW5nIDEgbGFuZSBQQ0llIGdlbiAyIHgxLCB3aGljaCBzdXBwb3J0cyA0IEdiL3NlYyB0cmFu
c2ZlcnMsIGVub3VnaCBmb3IgR2lnRSB3aXJlc3BlZWQpLiBKZWZmIEdlZXJsaW5nIGhhcyBkZW1v
bnN0cmF0ZWQgdmFyaW91cyBjYXJkcyBnZXQgc3VwZXJpb3IgcGVyZm9ybWFuY2UuCmh0dHBzOi8v
d3d3LmhhY2tzdGVyLmlvL25ld3MvamVmZi1nZWVybGluZy1zcXVlZXplcy00LTE1Z2Itcy1mcm9t
LWEtcmFzcGJlcnJ5LXBpLWNvbXB1dGUtbW9kdWxlLTQtdXNpbmctYS1wY2llLW5ldHdvcmstY2Fy
ZC1iYjM3M2NhNTI5NjYKCmh0dHBzOi8vd3d3LnRvbXNoYXJkd2FyZS5jb20vbmV3cy9yYXNwYmVy
cnktcGktY29tcHV0ZS1tb2R1bGUtNC1mb3VyLXBjaWUtc2xvdHMgaXMgYSBuaWNlICJtb3RoZXJi
b2FyZCIgZm9yIHRoZSBDTTQgbW9kdWxlIHRoYXQgY2FycmllcyA0IFBDSWUgc2xvdHMuCgpTbyBl
dmVuIHRoZSBQaSBDTTQgc2hvdWxkIGJlIGFibGUgdG8gYmVhdCB1cCB0aGUgSW50ZWwgcHJvY2Vz
c29ycyBpbiBhIGZhaXIgZmlnaHQhCgpJIHNob3VsZCBhbHNvIG5vdGUgdGhhdCBBcm1iaWFuJ3Mg
a2VybmVsIGlzbid0IGEgcGFydGljdWxhcmx5IGhpZ2ggcGVyZm9ybWFuY2Uga2VybmVsIGJ1aWxk
LgoKQWdhaW4sIGdvb2Qgam9iIG9uIGdldHRpbmcgcmVzdWx0cywgYnV0IGFzIHNvbWVib2R5IHdo
byBoYXMgd29ya2VkIG9uIG1lYXN1cmluZyAgTGludXggT1MgcGVyZm9ybWFuY2Ugb24gdmFyaW91
cyBDUFUgYXJjaGl0ZWN0dXJlcywgSSdkIGJlIHZlcnksIHZlcnkgY2F1dGlvdXMgYWJvdXQgZHJh
d2luZyBjb25jbHVzaW9ucyBhYm91dCAqQVJNKiBmcm9tIHRoaXMuCgpJZiB5b3Ugd2FudCB0byB0
ZXN0IENha2Ugb24gQVJNNjQsIHlvdSBzaG91bGQgcGVyaGFwcyBzZXQgdXAgYW4gQVdTIEFSTTY0
IG1hY2hpbmUgKEdyYXZpdG9uIENQVXMsIGFuZCBnb29kIEV0aGVybmV0IGFkYXB0ZXJzKSB3aGlj
aCB3b24ndCBjb3N0IG11Y2ggbW9uZXkgd2hlbiB5b3UgYXJlIGNoYXJnZWQgYnkgdGhlIGhvdXIu
CgpUaGUgc2FtZSBjYXV0aW9uIGFwcGxpZXMgdG8gUklTQy1WIHN5c3RlbXMuIEl0J3MgTk9UIHRo
ZSBjcHUgYXJjaGl0ZWN0dXJlIHRoYXQgeW91IHdhbnQgdG8gbWVhc3VyZSAtIGl0J3MgdG5lIG5l
dHdvcmtpbmcgYXJjaGl0ZWN0dXJlcyB0aGF0IGFyZSBhbG1vc3QgYWx3YXlzIGNyaXBwbGVkIGlu
IHNvbWUgd2F5IG9uIHNtYWxsIGJvYXJkcy4KCkxldCdzIG5vdCByZWluZm9yY2UgdGhlIGRpc3Rv
cnRpb24gdGhhdCBJbnRlbCBpcyBzbyBncmVhdCEKCkJUVywgSSBkb24ndCBrbm93IGlmIGEgUGkg
Q000IHdpdGggYSBjb3VwbGUgb2YgR2lnRSBwb3J0cyB3b3VsZCBtYWtlIGEgZ29vZCBob21lIHJv
dXRlciBhdCBhIHJlYXNvbmFibGUgcHJpY2UgcG9pbnQuIEJ1dCBpdCBzZWVtcyB0byBtZSBpdCBj
b3VsZCBiZSBhIGdyZWF0IGNhbmRpZGF0ZS4gSXQncyBhIHByZXR0eSBmYXN0IG1hY2hpbmUgYW5k
IGl0cyBuZXR3b3JrIGNhbiBkZWZpbml0ZWx5IHN1cHBvcnQgdHdvIEdpZ0UgcG9ydHMuCgoKT24g
U3VuZGF5LCBTZXB0ZW1iZXIgMTcsIDIwMjMgOTowNXBtLCAiRGF2ZSBUYWh0IHZpYSBDYWtlIiA8
Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHNhaWQ6Cgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UKPiBBIGh1Z2UgdGhhbmtzIHRvIGRhdmUgc2VkZG9uIGZvciBidWNrbGluZyBkb3du
IGFuZCBkb2luZyBzb21lIGNvbXByZWhlbnNpdmUKPiB0ZXN0aW5nIG9mIGEgdmFyaWV0eSBvZiBh
cm02NCBnZWFyIQo+IAo+IGh0dHBzOi8vZG9jcy5nb29nbGUuY29tL2RvY3VtZW50L2QvMUh4SVVf
VEVCSTZ4RzlqUkhscjhyenl5eEZFTjQzek1jSlhVRmxSdWhpVUkvZWRpdCNoZWFkaW5nPWguYnB2
djN2cjUwMG53Cj4gCj4gLS0KPiBPY3QgMzA6IGh0dHBzOi8vbmV0ZGV2Y29uZi5pbmZvLzB4MTcv
bmV3cy90aGUtbWFlc3Ryby1hbmQtdGhlLW11c2ljLWJvZi5odG1sCj4gRGF2ZSBUw6RodCBDU08s
IExpYnJlUW9zCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

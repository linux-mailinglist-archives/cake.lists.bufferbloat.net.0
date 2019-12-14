Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA4611F1FF
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 15:04:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7E0FE3CB3D;
	Sat, 14 Dec 2019 09:04:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576332297;
	bh=+O8rcEQcMw1uBQAQU1Y/Zm8YWgLvRICybFxMv4rLOCE=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PfPYuBdjc4+CWXUuhQJZuIv9z3EbcJp/+jYItyxq1QbrZXj8o8+OXMHUmnIoWQMnS
	 3BEpOKheYe4NBUQFUafVU9sc1Qy+LCzIa9BVwIK54IqlNM8mt5Iqz7pkXehkVHCE8Q
	 VNyatgPD5w3kQuDIclF8kuNJxI3dv0kCK0lAtxD4SArhuRNpwfGSjcXWkxw7Xd3ew3
	 7FV4hWLTe/e6nYbZntUbde4+rAUc9cCNzI5BJMGTBzo01QtDqCSz77NAPcG0RLYKCb
	 6wmyRzu4GrVziPCbrAhwZMNH+wgrp+cp8mLxuLpFGjRmZdUywBkIbKYH562bwVqFHr
	 0WrROMaUMxo8w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1B5A23B2A4
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 09:04:56 -0500 (EST)
Received: from tama.lan (unknown [37.165.135.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 780F9600A9;
 Sat, 14 Dec 2019 15:04:54 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 780F9600A9
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576332295; bh=x08QX5JHz61PdYtMRCDRVdXLeVNr81pi/8/RpVNYNZI=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=tYneGR0QGnSfEUdnpAVmku5Cd71ydxxIIq9TvXWvvx7cSlhda+uJ9cPtrfxfkTGKt
 Kd6KXuW+cizKFjOgiNyUZLr5bWf18XEhpWlWHvbAQmdVlQ+Aw8mNTQOVsT6HnffhLc
 CRPkT1l4LDkiAGF/LhELpnbhXFbh1YXYMFBn2+hM=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <874ky3cbbc.fsf@toke.dk>
Date: Sat, 14 Dec 2019 15:04:53 +0100
Message-Id: <F469967F-F519-46BF-8C79-BA3D44BBE385@slashdirt.org>
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
 <D6F8BB5F-EFA7-4275-84E6-48479356DD93@slashdirt.org> <874ky3cbbc.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
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

SGkgVG9rZSwKCj4gT24gMTQgRGVjIDIwMTksIGF0IDEzOjU5LCBUb2tlIEjDuGlsYW5kLUrDuHJn
ZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gVGhpYmF1dCA8aGFja3NAc2xhc2hk
aXJ0Lm9yZz4gd3JpdGVzOgo+IAo+Pj4gT24gMTQgRGVjIDIwMTksIGF0IDEzOjA5LCBKb25hdGhh
biBNb3J0b24gPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4+PiAKPj4+PiBPbiAxNCBE
ZWMsIDIwMTksIGF0IDE6NTkgcG0sIFRoaWJhdXQgPGhhY2tzQHNsYXNoZGlydC5vcmc+IHdyb3Rl
Ogo+Pj4+IAo+Pj4+IEnigJltIHdvbmRlcmluZyBpZiB0aGlzIGNvdWxkIGJlIGFuIOKAnHVzZSBv
ZiB1bmluaXRpYWxpemVkIGRhdGHigJ0gdHlwZSBvZiBidWcuCj4+PiAKPj4+IFRoaXMgaXMgd2h5
IEkgd291bGRuJ3Qga2VlcCB3b3JraW5nIG9uIGFuIG9sZCBrZXJuZWwgdGhhdCdzIGZ1bGwgb2Yg
dmVuZG9yIHBhdGNoZXMuCj4+IAo+PiBGb3JnaXZlIG1lIGZvciB0cnlpbmcgdG8gdXNlIGNha2Ug
b24gYSBzdXBwb3J0ZWQgc3RhYmxlIGRpc3Ryby4KPj4gCj4+IEFsbCBkaXN0cm9zIGFyZSBmdWxs
IG9mIHZlbmRvciBwYXRjaGVzIChPcGVuV1JUIGlzIG5vIGV4Y2VwdGlvbikuIFRoZQo+PiBzdWJz
ZXQgb2YgbGludXggbWFjaGluZXMgdGhhdCB1c2UgdmFuaWxsYSBpcyDigJhiZWxvdyBtZWFzdXJh
YmxlCj4+IHRocmVzaG9sZOKAmS4uLgo+IAo+IFRoZSBMaW51eCBrZXJuZWwgZGV2ZWxvcG1lbnQg
bW92ZXMgYXQgYSBmYWlybHkgcmFwaWQgcGFjZSwgYW5kIHNhZGx5Cj4gaXQncyBub3QgcHJhY3Rp
Y2FsIHRvIGhhdmUgZnVsbHkgc3VwcG9ydGVkIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IGluIGEK
PiBjb21tdW5pdHkgZWZmb3J0IHN1Y2ggYXMgQ0FLRS4KPiAKPiBOb3csIHRoaXMgZG9lc24ndCBt
ZWFuIHRoYXQgd2Ugd29uJ3QgdGFrZSBwYXRjaGVzIHRvIGZpeCB0aGluZ3MgZm9yIG9sZAo+IGtl
cm5lbHM7IG9yIGV2ZW4gaGVscCB3aXRoIGRlYnVnZ2luZyBvbiBvbGQgdmVyc2lvbnMsIGFzIHlv
dSd2ZSBhbHJlYWR5Cj4gc2VlbiBpbiB0aGlzIHRocmVhZC4gQnV0IHRoZSByZWFsaXR5IGlzIHVu
Zm9ydHVuYXRlbHkgdGhhdCB0aGUgYnVsayBvZgo+IHRoaXMgZWZmb3J0IGlzIGdvaW5nIHRvIGhh
dmUgdG8gYmUgb24gdGhlIHVzZXJzIHJ1bm5pbmcgb24gdGhvc2UKPiBrZXJuZWxzLiBJLmUuLCB5
b3UgaW4gdGhpcyBjYXNlLiBTdWNoIGlzIG9wZW4gc291cmNlOiBldmVyeW9uZSBzY3JhdGNoZXMK
PiB0aGVpciBvd24gaXRjaCBhbmQgdGhlIGVuZCByZXN1bHQgaXMgc29tZXRoaW5nIHRoYXQgKG1v
c3RseSkgd29ya3MgZm9yCj4gZXZlcnlvbmUgOikKCkkgdW5kZXJzdGFuZCB0aGF0LCBJ4oCZbSBm
YW1pbGlhciB3aXRoIHRoZSBrZXJuZWwgZGV2ZWxvcG1lbnQgcGhpbG9zb3BoeSAoSSB1c2VkIHRv
IGJlIGEgY29udHJpYnV0b3IgaW4gYSBwcmV2aW91cyBsaWZlKS4KCknigJltIGFsc28gZmFtaWxp
YXIgd2l0aCB0aGUgZmFjdCB0aGF0IG1vc3Qga2VybmVsIGhhY2tlcnMgdGVuZCB0byBhc3N1bWUg
dGhhdCB0aGUgcGVvcGxlIHdobyB1c2UgdGhlaXIgY29kZSBhbmQgcmVwb3J0IGJ1Z3Mgd2lsbCBr
bm93IHNhaWQgY29kZSBsaWtlIHRoZSBiYWNrIG9mIHRoZWlyIGhhbmQgYW5kIHdpbGwgYmUgY2Fw
YWJsZSB0byBzcG90IHdoZXJlIHRvIGxvb2sgZm9yIHRoZSBjYXVzZSBvZiB0aGUgYmVoYXZpb3Ig
dGhleeKAmXJlIHNlaW5nIGFuZCBwcm92aWRlIGEgcGF0Y2ggd2l0aG91dCBmdXJ0aGVyIGFkby4K
CkkgaG9wZSB5b3UgY2FuIHNlZSB3aHkgdGhpcyBjYW5ub3QgYmUgdGhlIGNhc2UgZXNwZWNpYWxs
eSB3aXRoIHNvbWV0aGluZyBhcyBkZWxpY2F0ZSBhbmQgY29tcGxleCBhcyBhIHRyYWZmaWMgc2hh
cGVyIDopCgpUaGF04oCZcyB3aHkgSeKAmW0gaGFwcHkgdG8gZGVidWcgYXMgbXVjaCBhcyBwb3Nz
aWJsZSBhbmQgcG9zc2libHkgdHJ5IHRvIGNvb2sgYSBwYXRjaCBpZiBuZWVkZWQsIGJ1dCB3aXRo
b3V0IGEgYml0IG9mIGhlbHAvZmVlZGJhY2sgKGFuZCB0aHVzIGludGVyZXN0KSBmcm9tIHRoZSBh
dXRob3JzLCB0aGlzIGlzIGEgbG9zdCBjYXVzZS4KCk1lYW53aGlsZSwgSSBjYW4gYWRkIHRoYXQg
bm90IGFsbCB0cmFmZmljIGNyYXdscyB0byBhIGdyaW5kaW5nIGhhbHQ6IHNwZWVkdGVzdHMgYW5k
IGZsdWN0dWF0aW5nIHRyYWZmaWMgKHN1Y2ggYXMsIGluIHRoZSBjYXNlIG9mIHRoZSBidWlsZGJv
dHMsIHRoZSB1cHN0cmVhbWluZyBvZiB0aGUgYnVpbGQgc3RkaW8pIGFwcGVhciB0byBiZSBtb3N0
bHkgdW5hZmZlY3RlZCAoSSBzZWUgc3VzdGFpbmVkIHRyYWZmaWMgYXQgbGluZSBzcGVlZCBldmVy
eSBub3cgYW5kIHRoZW4sIGVzcGVjaWFsbHkgZHVyaW5nIHZlcnkgdmVyYm9zZSBidWlsZCBvdXRw
dXQpLgoKQnV0IGZvciBzb21lIHJlYXNvbiwgd2hlbiB0aGUgcnN5bmMgb2YgdGhlIGJ1aWxkIHJl
c3VsdHMgYmVnaW5zLCBjYWtlIGFwcGVhcnMgYWRhbWFudCAoYXQgbGVhc3Qgd2hlbiBpdCBleHBv
c2VzIHRoZSBvZmZlbmRpbmcgYmVoYXZpb3IpIHRoYXQgaXQgbXVzdCBiZSBraWxsZWQgd2l0aCBl
eHRyZW1lIHByZWp1ZGljZSA7UAoKV291bGQgdGhhdCByaW5nIGFueSBiZWxsPwoKQ2hlZXJzLApU
aGliYXV0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMu
YnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2965F11F446
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 22:35:21 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AB7BF3CB38;
	Sat, 14 Dec 2019 16:35:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576359319;
	bh=s8qOm/YHqwYYIUZR6gLfJ0kqGdO8MOHSnxRJwEIdGDk=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VIjT2VEvdaF2QbsiB3Myp1S1cqtOH73MH31umtK0gIAQMhqim0JuWWkd6AY/8ziNf
	 4IstTZh8Ra1VsZ0g03+4ZuhVj12Axw/64BDNiUtoiJtf3s0Dhp8YYd4FNjTnnx6/Rd
	 Pk3086W9coKJfIlz3g0trhFOx7zI5U41R7PgyYtHbF5C+65REeIB44wIYsQyw1OQUv
	 JK+lKe7hmjoRHE0GZ9pa92pB7SCg866zhj8olVUrtfcjotJUAuyIJJFTI2hk6cD2Z1
	 Dm3Pib01Pe4hOAnHL3T2rMG9b1Px4+IV2+lp6VH2VL88QYsZ7s02pb2iksgSqlrPT5
	 sDXwv9psQqhSg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DEC883B2A4
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 16:35:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576359317;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zclUt0k4jY3UC0Z3vrI0Yg1kUgMCXiMCmXq2exoD4mo=;
 b=MJWHb8hsqLP/4SSvZKGg/bHLYYYI6oUFJzWnEWP9+XbUYhwR6pRPwzuvme7Nz13ejavrae
 Yg7Gzi6Bscz6+ag2JpxqexGd424iy1QX9XlqUQqR/znDBnQC1ELO1kqzmWbnuJFovrRj/0
 x5Yk2f3w9Sa/mx0hwynGm5e5yavkkUI=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-gSXlSNC3Pcu0R0HlqMzK3g-1; Sat, 14 Dec 2019 16:35:15 -0500
Received: by mail-lj1-f199.google.com with SMTP id b12so808957ljo.11
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 13:35:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=zclUt0k4jY3UC0Z3vrI0Yg1kUgMCXiMCmXq2exoD4mo=;
 b=GDfBZuZvvDKzodDGbOhNeQ0MW+QE+W9MPhk/L2mYh+iQMJKI0gC8Li1WQTXGxoCxDq
 2lhY8xf8DTHLTYPQ5A+KGK8/alxpyd+v0UnpFE185GfM6xi+UJkU1F1s49FMnJbod/XR
 pqUf+lXHVvUi5/S4Y0myPy328p0P143cohh9bgMrjtnaricAkMeNlYtYf7EkpA+LPCQy
 lRg/NdQqGLgOssLS+vg5f5khCz06Z7l7ZJQJNwGz8LwyO2QfzzhS36Tft0R+6PKc/W/r
 18XM6VNmabkc0eJW5GDH4O71eIkU+RbiPJzEvgtiayGW+UAZA8k0ReFP6Z3L0AF2mf4X
 5H5A==
X-Gm-Message-State: APjAAAUZ7kPx9LdzjnEOfWLPVbeCXuKUcFRFmQjmDWHZz45hRNE3X9Lb
 1Lhh5cXiTbmmAbHRhRGhk8yDPLKmyUvgXqePgumo+A795R26Lidh4OAdHi0T1p7EIfnJaufXLDf
 CcT2UqUKtXcPSjduJmaI6gw==
X-Received: by 2002:a2e:80cc:: with SMTP id r12mr14061205ljg.154.1576359314531; 
 Sat, 14 Dec 2019 13:35:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqyTzbtF70wzJfbMJ8v9lorY/rfzWPklYkSv0Flb952tY0J4G0XwRN6gD4Cs+v71I4f2rfYqHQ==
X-Received: by 2002:a2e:80cc:: with SMTP id r12mr14061193ljg.154.1576359314344; 
 Sat, 14 Dec 2019 13:35:14 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id k25sm7228760lji.42.2019.12.14.13.35.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 13:35:13 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id CE03D181A44; Sat, 14 Dec 2019 22:35:12 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Thibaut <hacks@slashdirt.org>
In-Reply-To: <F469967F-F519-46BF-8C79-BA3D44BBE385@slashdirt.org>
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
 <F469967F-F519-46BF-8C79-BA3D44BBE385@slashdirt.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 14 Dec 2019 22:35:12 +0100
Message-ID: <871rt6d20f.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: gSXlSNC3Pcu0R0HlqMzK3g-1
X-Mimecast-Spam-Score: 0
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

VGhpYmF1dCA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4gd3JpdGVzOgoKPiBIaSBUb2tlLAo+Cj4+IE9u
IDE0IERlYyAyMDE5LCBhdCAxMzo1OSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJl
ZGhhdC5jb20+IHdyb3RlOgo+PiAKPj4gVGhpYmF1dCA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4gd3Jp
dGVzOgo+PiAKPj4+PiBPbiAxNCBEZWMgMjAxOSwgYXQgMTM6MDksIEpvbmF0aGFuIE1vcnRvbiA8
Y2hyb21hdGl4OTlAZ21haWwuY29tPiB3cm90ZToKPj4+PiAKPj4+Pj4gT24gMTQgRGVjLCAyMDE5
LCBhdCAxOjU5IHBtLCBUaGliYXV0IDxoYWNrc0BzbGFzaGRpcnQub3JnPiB3cm90ZToKPj4+Pj4g
Cj4+Pj4+IEnigJltIHdvbmRlcmluZyBpZiB0aGlzIGNvdWxkIGJlIGFuIOKAnHVzZSBvZiB1bmlu
aXRpYWxpemVkIGRhdGHigJ0gdHlwZSBvZiBidWcuCj4+Pj4gCj4+Pj4gVGhpcyBpcyB3aHkgSSB3
b3VsZG4ndCBrZWVwIHdvcmtpbmcgb24gYW4gb2xkIGtlcm5lbCB0aGF0J3MgZnVsbCBvZiB2ZW5k
b3IgcGF0Y2hlcy4KPj4+IAo+Pj4gRm9yZ2l2ZSBtZSBmb3IgdHJ5aW5nIHRvIHVzZSBjYWtlIG9u
IGEgc3VwcG9ydGVkIHN0YWJsZSBkaXN0cm8uCj4+PiAKPj4+IEFsbCBkaXN0cm9zIGFyZSBmdWxs
IG9mIHZlbmRvciBwYXRjaGVzIChPcGVuV1JUIGlzIG5vIGV4Y2VwdGlvbikuIFRoZQo+Pj4gc3Vi
c2V0IG9mIGxpbnV4IG1hY2hpbmVzIHRoYXQgdXNlIHZhbmlsbGEgaXMg4oCYYmVsb3cgbWVhc3Vy
YWJsZQo+Pj4gdGhyZXNob2xk4oCZLi4uCj4+IAo+PiBUaGUgTGludXgga2VybmVsIGRldmVsb3Bt
ZW50IG1vdmVzIGF0IGEgZmFpcmx5IHJhcGlkIHBhY2UsIGFuZCBzYWRseQo+PiBpdCdzIG5vdCBw
cmFjdGljYWwgdG8gaGF2ZSBmdWxseSBzdXBwb3J0ZWQgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkg
aW4gYQo+PiBjb21tdW5pdHkgZWZmb3J0IHN1Y2ggYXMgQ0FLRS4KPj4gCj4+IE5vdywgdGhpcyBk
b2Vzbid0IG1lYW4gdGhhdCB3ZSB3b24ndCB0YWtlIHBhdGNoZXMgdG8gZml4IHRoaW5ncyBmb3Ig
b2xkCj4+IGtlcm5lbHM7IG9yIGV2ZW4gaGVscCB3aXRoIGRlYnVnZ2luZyBvbiBvbGQgdmVyc2lv
bnMsIGFzIHlvdSd2ZSBhbHJlYWR5Cj4+IHNlZW4gaW4gdGhpcyB0aHJlYWQuIEJ1dCB0aGUgcmVh
bGl0eSBpcyB1bmZvcnR1bmF0ZWx5IHRoYXQgdGhlIGJ1bGsgb2YKPj4gdGhpcyBlZmZvcnQgaXMg
Z29pbmcgdG8gaGF2ZSB0byBiZSBvbiB0aGUgdXNlcnMgcnVubmluZyBvbiB0aG9zZQo+PiBrZXJu
ZWxzLiBJLmUuLCB5b3UgaW4gdGhpcyBjYXNlLiBTdWNoIGlzIG9wZW4gc291cmNlOiBldmVyeW9u
ZSBzY3JhdGNoZXMKPj4gdGhlaXIgb3duIGl0Y2ggYW5kIHRoZSBlbmQgcmVzdWx0IGlzIHNvbWV0
aGluZyB0aGF0IChtb3N0bHkpIHdvcmtzIGZvcgo+PiBldmVyeW9uZSA6KQo+Cj4gSSB1bmRlcnN0
YW5kIHRoYXQsIEnigJltIGZhbWlsaWFyIHdpdGggdGhlIGtlcm5lbCBkZXZlbG9wbWVudCBwaGls
b3NvcGh5Cj4gKEkgdXNlZCB0byBiZSBhIGNvbnRyaWJ1dG9yIGluIGEgcHJldmlvdXMgbGlmZSku
Cj4KPiBJ4oCZbSBhbHNvIGZhbWlsaWFyIHdpdGggdGhlIGZhY3QgdGhhdCBtb3N0IGtlcm5lbCBo
YWNrZXJzIHRlbmQgdG8KPiBhc3N1bWUgdGhhdCB0aGUgcGVvcGxlIHdobyB1c2UgdGhlaXIgY29k
ZSBhbmQgcmVwb3J0IGJ1Z3Mgd2lsbCBrbm93Cj4gc2FpZCBjb2RlIGxpa2UgdGhlIGJhY2sgb2Yg
dGhlaXIgaGFuZCBhbmQgd2lsbCBiZSBjYXBhYmxlIHRvIHNwb3QKPiB3aGVyZSB0byBsb29rIGZv
ciB0aGUgY2F1c2Ugb2YgdGhlIGJlaGF2aW9yIHRoZXnigJlyZSBzZWluZyBhbmQgcHJvdmlkZQo+
IGEgcGF0Y2ggd2l0aG91dCBmdXJ0aGVyIGFkby4KPgo+IEkgaG9wZSB5b3UgY2FuIHNlZSB3aHkg
dGhpcyBjYW5ub3QgYmUgdGhlIGNhc2UgZXNwZWNpYWxseSB3aXRoCj4gc29tZXRoaW5nIGFzIGRl
bGljYXRlIGFuZCBjb21wbGV4IGFzIGEgdHJhZmZpYyBzaGFwZXIgOikKPgo+IFRoYXTigJlzIHdo
eSBJ4oCZbSBoYXBweSB0byBkZWJ1ZyBhcyBtdWNoIGFzIHBvc3NpYmxlIGFuZCBwb3NzaWJseSB0
cnkgdG8KPiBjb29rIGEgcGF0Y2ggaWYgbmVlZGVkLCBidXQgd2l0aG91dCBhIGJpdCBvZiBoZWxw
L2ZlZWRiYWNrIChhbmQgdGh1cwo+IGludGVyZXN0KSBmcm9tIHRoZSBhdXRob3JzLCB0aGlzIGlz
IGEgbG9zdCBjYXVzZS4KPgo+IE1lYW53aGlsZSwgSSBjYW4gYWRkIHRoYXQgbm90IGFsbCB0cmFm
ZmljIGNyYXdscyB0byBhIGdyaW5kaW5nIGhhbHQ6Cj4gc3BlZWR0ZXN0cyBhbmQgZmx1Y3R1YXRp
bmcgdHJhZmZpYyAoc3VjaCBhcywgaW4gdGhlIGNhc2Ugb2YgdGhlCj4gYnVpbGRib3RzLCB0aGUg
dXBzdHJlYW1pbmcgb2YgdGhlIGJ1aWxkIHN0ZGlvKSBhcHBlYXIgdG8gYmUgbW9zdGx5Cj4gdW5h
ZmZlY3RlZCAoSSBzZWUgc3VzdGFpbmVkIHRyYWZmaWMgYXQgbGluZSBzcGVlZCBldmVyeSBub3cg
YW5kIHRoZW4sCj4gZXNwZWNpYWxseSBkdXJpbmcgdmVyeSB2ZXJib3NlIGJ1aWxkIG91dHB1dCku
Cj4KPiBCdXQgZm9yIHNvbWUgcmVhc29uLCB3aGVuIHRoZSByc3luYyBvZiB0aGUgYnVpbGQgcmVz
dWx0cyBiZWdpbnMsIGNha2UKPiBhcHBlYXJzIGFkYW1hbnQgKGF0IGxlYXN0IHdoZW4gaXQgZXhw
b3NlcyB0aGUgb2ZmZW5kaW5nIGJlaGF2aW9yKSB0aGF0Cj4gaXQgbXVzdCBiZSBraWxsZWQgd2l0
aCBleHRyZW1lIHByZWp1ZGljZSA7UAo+Cj4gV291bGQgdGhhdCByaW5nIGFueSBiZWxsPwoKTm90
IHJlYWxseS4gQSBmaXJzdCBzdGVwIHRvd2FyZHMgbWFraW5nIHByb2dyZXNzIHdpdGggdGhpcyBj
b3VsZCBiZSBhCnBhY2tldCBkdW1wIG9mIGEgVENQIHN0cmVhbSB0aGF0IGlzIGFmZmVjdGVkIGJ5
IHRoZSBzbG93ZG93biwgdnMgb25lCnRoYXQgaXNuJ3QuIFByZWZlcmFibHkgd2l0aCBiZWZvcmUv
YWZ0ZXIgc3RhdHMgb3V0cHV0IGZyb20gQ0FLRSBmcm9tCmVhY2ggb2YgdGhlbS4gVGhhdCB3YXks
IGhvcGVmdWxseSBpdCdsbCBiZSBwb3NzaWJsZSB0byBmaWd1cmUgb3V0ICp3aGF0KgppcyBoYXBw
ZW5pbmcgdG8gbWFrZSB0aGluZ3MgY3Jhd2wsIHdoaWNoIGNvdWxkIGVhc2UgdGhlIHN1Y2ggZm9y
IHRoZSB3aHkKb2YgaXQgYWZ0ZXJ3YXJkcyA6KQoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK

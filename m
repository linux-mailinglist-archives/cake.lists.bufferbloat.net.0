Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE9C11F1DD
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 13:59:42 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4CB6D3CB3E;
	Sat, 14 Dec 2019 07:59:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576328381;
	bh=9TteR4rDiIquXXGpnhn7BMzbDD55JRIRG/TzKX6fwCk=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=boOc/VofeLhDv5Rgtw0TXbzfE71sW5i3hOo2TIsQpOaU/UlFmzOsyQ8MoLV45zlu+
	 7nx2n7NwXIuXj/SC81PWRB3Voti8bYJvdXF60KufNmf3REexqMe7Ob7/AKR0sZyZVc
	 8mjivTlEtVur8ysUg2TYzqMOzu76w2gvqOPf6xo6OmlWb0YuDtMljeKJ26srMgvEQD
	 wC+qgf0j6lBrhl8Q0+RpC3t1EVzqz7bFw8aqjgdShn7vU9NzZTpmSf1HloQTDUOs2X
	 eiUTI7avAKG0Eq8t84TfbdkgNFJ0DK67N4f1JU6XauRljWuPhrUCTBm3HyURF/hD44
	 u3/rqMUjD90nQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E84DE3B2A4
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 07:59:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576328379;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9PB5mLrwbpNaec+CV7vkrPHAVK8hxgfSOG5Mes14Bd4=;
 b=Xgypl+2fQgDUYuKxvrRIxhmKAbrvg/bYPyjDoYFNMYkmk4Qg+04T4oi+WV70GZ9AscdQj8
 3s21H7oNdAPQpoIftI6WOz5Gf+nPwr8alxSX5fj1B9J1YjA+pwH82L+/8yEeCi+xNU2gm+
 4/BAUVuiDwbc93TuP0byRp0M0sUXJlQ=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-hH6EER2aOCuQHwfQ1MvTCw-1; Sat, 14 Dec 2019 07:59:38 -0500
Received: by mail-lj1-f200.google.com with SMTP id p90so568331ljp.23
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 04:59:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=9PB5mLrwbpNaec+CV7vkrPHAVK8hxgfSOG5Mes14Bd4=;
 b=V0lLQUXIfJJnOhmTSmxRhK+6vlfX3xgY3lHTq0yCxckBlxGT9ul5RhSa3d1FRcAFdb
 6+zZp8EyRrOMsJilibMaFQQlgBIw6IlxMLdIOWsd0TCe6/E+e7gUwqcYkll4s6lDVhMQ
 lB3aUPfV1Kn4RKY9SQeUIaXMakwtrZ1PY3ebfGM3M+BT4T56MN6AZ8cmlF8ZN23uQ9OR
 itHLspxKCT9bqyzmb3z0UYoz5oTwEeJvHJ5xv1w1F4/d1koTXaO1ogaZHHfQVeWdPhJr
 M3f0kYt0uk87Z97cjjYg6kP16TiewG7USCbX/yZTweD1CsREM4K4EbyYJuenXRx3IoeC
 MOoA==
X-Gm-Message-State: APjAAAUNqrvTydoCepkuZerpYKB4KYM5Vrhnm1leIWvCAk4c6m7hy5pR
 AFz8NESeGebdF/DACV962DJ1U60nYvwfoWYrp5G/mkOfxYxBtToA6+9JRpZ5LsuBBI67oSD9tIF
 rVm5pwX62p0zgU4/EiefO8w==
X-Received: by 2002:a2e:b4b5:: with SMTP id q21mr12732425ljm.17.1576328376790; 
 Sat, 14 Dec 2019 04:59:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqympwqkyl49dn4D5cYJVjeoe/Qt2WrrNEQjBlMNCaDxhDOkeGQWJK0Hd/ZzNXKjeR6zNx9zIg==
X-Received: by 2002:a2e:b4b5:: with SMTP id q21mr12732417ljm.17.1576328376658; 
 Sat, 14 Dec 2019 04:59:36 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id a24sm6568321ljp.97.2019.12.14.04.59.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 04:59:36 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5A385181A44; Sat, 14 Dec 2019 13:59:35 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Thibaut <hacks@slashdirt.org>, Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <D6F8BB5F-EFA7-4275-84E6-48479356DD93@slashdirt.org>
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
 <D6F8BB5F-EFA7-4275-84E6-48479356DD93@slashdirt.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 14 Dec 2019 13:59:35 +0100
Message-ID: <874ky3cbbc.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: hH6EER2aOCuQHwfQ1MvTCw-1
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

VGhpYmF1dCA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4gd3JpdGVzOgoKPj4gT24gMTQgRGVjIDIwMTks
IGF0IDEzOjA5LCBKb25hdGhhbiBNb3J0b24gPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6
Cj4+IAo+Pj4gT24gMTQgRGVjLCAyMDE5LCBhdCAxOjU5IHBtLCBUaGliYXV0IDxoYWNrc0BzbGFz
aGRpcnQub3JnPiB3cm90ZToKPj4+IAo+Pj4gSeKAmW0gd29uZGVyaW5nIGlmIHRoaXMgY291bGQg
YmUgYW4g4oCcdXNlIG9mIHVuaW5pdGlhbGl6ZWQgZGF0YeKAnSB0eXBlIG9mIGJ1Zy4KPj4gCj4+
IFRoaXMgaXMgd2h5IEkgd291bGRuJ3Qga2VlcCB3b3JraW5nIG9uIGFuIG9sZCBrZXJuZWwgdGhh
dCdzIGZ1bGwgb2YgdmVuZG9yIHBhdGNoZXMuCj4KPiBGb3JnaXZlIG1lIGZvciB0cnlpbmcgdG8g
dXNlIGNha2Ugb24gYSBzdXBwb3J0ZWQgc3RhYmxlIGRpc3Ryby4KPgo+IEFsbCBkaXN0cm9zIGFy
ZSBmdWxsIG9mIHZlbmRvciBwYXRjaGVzIChPcGVuV1JUIGlzIG5vIGV4Y2VwdGlvbikuIFRoZQo+
IHN1YnNldCBvZiBsaW51eCBtYWNoaW5lcyB0aGF0IHVzZSB2YW5pbGxhIGlzIOKAmGJlbG93IG1l
YXN1cmFibGUKPiB0aHJlc2hvbGTigJkuLi4KClRoZSBMaW51eCBrZXJuZWwgZGV2ZWxvcG1lbnQg
bW92ZXMgYXQgYSBmYWlybHkgcmFwaWQgcGFjZSwgYW5kIHNhZGx5Cml0J3Mgbm90IHByYWN0aWNh
bCB0byBoYXZlIGZ1bGx5IHN1cHBvcnRlZCBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSBpbiBhCmNv
bW11bml0eSBlZmZvcnQgc3VjaCBhcyBDQUtFLgoKTm93LCB0aGlzIGRvZXNuJ3QgbWVhbiB0aGF0
IHdlIHdvbid0IHRha2UgcGF0Y2hlcyB0byBmaXggdGhpbmdzIGZvciBvbGQKa2VybmVsczsgb3Ig
ZXZlbiBoZWxwIHdpdGggZGVidWdnaW5nIG9uIG9sZCB2ZXJzaW9ucywgYXMgeW91J3ZlIGFscmVh
ZHkKc2VlbiBpbiB0aGlzIHRocmVhZC4gQnV0IHRoZSByZWFsaXR5IGlzIHVuZm9ydHVuYXRlbHkg
dGhhdCB0aGUgYnVsayBvZgp0aGlzIGVmZm9ydCBpcyBnb2luZyB0byBoYXZlIHRvIGJlIG9uIHRo
ZSB1c2VycyBydW5uaW5nIG9uIHRob3NlCmtlcm5lbHMuIEkuZS4sIHlvdSBpbiB0aGlzIGNhc2Uu
IFN1Y2ggaXMgb3BlbiBzb3VyY2U6IGV2ZXJ5b25lIHNjcmF0Y2hlcwp0aGVpciBvd24gaXRjaCBh
bmQgdGhlIGVuZCByZXN1bHQgaXMgc29tZXRoaW5nIHRoYXQgKG1vc3RseSkgd29ya3MgZm9yCmV2
ZXJ5b25lIDopCgotVG9rZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

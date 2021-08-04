Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB3C3E0A97
	for <lists+cake@lfdr.de>; Thu,  5 Aug 2021 00:53:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7214B3CB41;
	Wed,  4 Aug 2021 18:53:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628117580;
	bh=inGPiGBmMJdu/+v+S/oxcQjMk6Rm2gvCWtXy6nlMO4I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hbDRJQCSb8nFk+8zqt6VV2I6P3GHQlh0Nr5JVo4e9gfM2wF7wfIvp4nvDAAGFexHE
	 Q/qyQITMl+HBsda2NO4CnWUMupNR11FNavoMyeprShsRmmrN0y2UbF8FBpHeE5MjlW
	 J0XaWmYmA1w4P6L3R6LIBXGKsSif/eA8w2bq+X5zXRCTMdlkrSm5YJkj39SeTT9JJv
	 dzOek9NM1E8vaEPrrmzDuQiaNrd02EToOhJheiGXBoLHTAvTf78ptg+4WXg7Qz2Kd9
	 IJ/uqmzewi4uaBj4YDJbJ5pOaJM5tsxxqdeuAttE4XVh+FM7CJ4mPVdzO6tOAPu45W
	 JIUUSoTWAcrOw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 73E733CB38
 for <cake@lists.bufferbloat.net>; Wed,  4 Aug 2021 18:52:58 -0400 (EDT)
Received: by mail-ej1-x62c.google.com with SMTP id qk33so6085212ejc.12
 for <cake@lists.bufferbloat.net>; Wed, 04 Aug 2021 15:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=bHqN7UK5Kxn+EGfLJlyvTF2mqrFLafKULgYtPDdA91g=;
 b=dP3dhdZ24WNE45GMVYzzU94G2dc2NkL9DQr4/HHeqY2gtU6uddd4ZRcz2Kyt8BUJaq
 n/qxrz6v5EVyAAXOPHP8DdhWK8V2UL83fM47mtCHuMfFadyW7fHpE2oPetwtMtcwhjkc
 1qZXO9b/yaydBPL/Xp7aWF3RLNMep47TCl40czvSfdencI6ZMjketGtKlewXEqa9VAgl
 mefK6/gtAJH+BqGq8pYNtrIQFIFSIPuzswcaiKS92oIXbkDn5SN2A5bmE0pp2yeOacQR
 qlFTEtRw6hzkpi0V1X34oKcNVGJ19nKJRbrPV+BTL+b0l7jkP5g+rCkWrxdgtnyah6cg
 U7KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=bHqN7UK5Kxn+EGfLJlyvTF2mqrFLafKULgYtPDdA91g=;
 b=QHFw0F9mQev87IDnMRnc/UydthgMgB1d/ef7wBgGtkV8HecjkmV59Xog203QkHL/RR
 ko7h8B7gN5q++is01rpjzkQtQxRuyq4n9/s1m2nz+na6yYpnzEe4oJFBzmFMTP2gT8KN
 WOzk5UYOZbGF/HMnTg1d7rDqcZZtaQzi8yFMttG7bn+aBgfzjX7PE60ZUSIwgK/3MWrJ
 LxRaMU9Fw7PlmdOz5lOsG1vGaszage+LVNMZ87D/dZq+5djif2/6IDNt0Lwt5BVP73y0
 xQYRYg/C+k7uFZ73D5PEZX6rr/xR5gFHeYTxWV8ujCp+jaz4R+c0EMtP3099HAaO9oLl
 JBag==
X-Gm-Message-State: AOAM531YOn3IBfhl32bzmqxRepBFra1DgQWA8eTUeRmkqI9/N5u2iAZN
 oU7haSt9HjXjtiCrET/07CovaQ==
X-Google-Smtp-Source: ABdhPJwdLz/tZkNwzGr7m4nBbTWk7rKXZpqe6LTFq6Jz+VL8zI3WaXvaNyFMt7jxI+zjY2geZUUDqA==
X-Received: by 2002:a17:906:9c84:: with SMTP id
 fj4mr1408874ejc.264.1628117577389; 
 Wed, 04 Aug 2021 15:52:57 -0700 (PDT)
Received: from [10.72.0.88] (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id v8sm1067570ejy.79.2021.08.04.15.52.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 15:52:57 -0700 (PDT)
Message-ID: <37822e2cebd977f2c5c0758b48a191f2644d7589.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Date: Thu, 05 Aug 2021 00:52:54 +0200
In-Reply-To: <5964374bee9979ee9f1b4b86d32b002722d628fc.camel@heistp.net>
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
 <87r1f95und.fsf@toke.dk>
 <5964374bee9979ee9f1b4b86d32b002722d628fc.camel@heistp.net>
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
Subject: Re: [Cake] cake srchost/dsthost stopped working?
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBlbmRlZCB1cCB0ZXN0aW5nIGVhY2ggb2YgdGhlIGtleXdvcmRzLCB3aXRoIHR3byBzcmMgSVBz
IHRoZW4gdHdvIGRzdApJUHMsIGFuZCBJIHRoaW5rIGV2ZXJ5dGhpbmcgbWFrZXMgc2Vuc2U6Cgpo
dHRwczovL3d3dy5oZWlzdHAubmV0L2Rvd25sb2Fkcy9jYWtlLWhvc3RmYWlyL2Nha2UtaG9zdGZh
aXItcGF0Y2hlZC50eHQKCkknbSBvbmx5IG5vdCBzdXJlIGlmIHdlIGNhbiB0ZWxsIGZyb20gdGhp
cyB0ZXN0IGlmIHRyaXBsZS1pc29sYXRlIGlzCmRvaW5nIHdoYXQgaXQgc2hvdWxkLi4uCgpQZXRl
CgpPbiBXZWQsIDIwMjEtMDgtMDQgYXQgMjI6NDkgKzAyMDAsIFBldGUgSGVpc3Qgd3JvdGU6Cj4g
R3JlYXQsIHRoYXQgc2VlbXMgdG8gZml4IGl0LiA6KSBGb3Igc2FuaXR5LCBJIGNvbmZpcm1lZCB0
aGF0IEkgY2FuCj4gYXBwbHkvdW5hcHBseSB0aGUgcGF0Y2ggdG8gZml4L2JyZWFrIGl0LCBzbyBh
bGwgc2VlbXMgd2VsbC4KPiAKPiBJcyB0aGVyZSBhbnl0aGluZyB0aGF0IHlvdSdkIHdhbnQgdG8g
bWFrZSBzdXJlIHN0aWxsIHdvcmtzIGFmdGVyIHRoZQo+IHBhdGNoPyBJIGRvbid0IGhhdmUgYW55
IG9mZmljaWFsIHJlZ3Jlc3Npb24gdGVzdHMgdG8gcnVuLCBidXQgd2l0aCB0aGlzCj4gc2V0dXAg
cmVhZHkgSSBzaG91bGQgYmUgYWJsZSB0byB0ZXN0IHNvbWV0aGluZyBlYXNpbHkgaWYgbmVlZGVk
Li4uCj4gCj4gUGV0ZQo+IAo+IE9uIFdlZCwgMjAyMS0wOC0wNCBhdCAxMzoxNCArMDIwMCwgVG9r
ZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+ID4gUGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAu
bmV0PiB3cml0ZXM6Cj4gPiAKPiA+ID4gT25lIG1vcmUgdGlwLCByZXZlcnRpbmcgdGhpcyBjb21t
aXQgc2VlbXMgdG8gZml4IGl0Ogo+ID4gPiAKPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZh
bGRzL2xpbnV4L2NvbW1pdC9iMGMxOWVkNjA4OGFiNDFkZDJhNzI3YjYwNTk0YjcyOTdjMTVkNmNl
Cj4gPiAKPiA+IEFoLCBJIHRoaW5rIEkgc2VlIHdoYXQgdGhlIHByb2JsZW0gaXM7IGNvdWxkIHlv
dSBwbGVhc2UgdHJ5IHRoZSBwYXRjaAo+ID4gYmVsb3c/Cj4gPiAKPiA+IC1Ub2tlCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5j
Cj4gPiBpbmRleCA5NTE1NDI4NDNjYWIuLmE4M2M0ZDQzMjZkYSAxMDA2NDQKPiA+IC0tLSBhL25l
dC9zY2hlZC9zY2hfY2FrZS5jCj4gPiArKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwo+ID4gQEAg
LTcyMCw3ICs3MjAsNyBAQCBzdGF0aWMgdTMyIGNha2VfaGFzaChzdHJ1Y3QgY2FrZV90aW5fZGF0
YSAqcSwKPiA+IGNvbnN0IHN0cnVjdCBza19idWZmICpza2IsCj4gPiDCoHNraXBfaGFzaDoKPiA+
IMKgwqDCoMKgwqDCoMKgIGlmIChmbG93X292ZXJyaWRlKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGZsb3dfaGFzaCA9IGZsb3dfb3ZlcnJpZGUgLSAxOwo+ID4gLcKgwqDCoMKg
wqDCoCBlbHNlIGlmICh1c2Vfc2tiaGFzaCkKPiA+ICvCoMKgwqDCoMKgwqAgZWxzZSBpZiAodXNl
X3NrYmhhc2ggJiYgZmxvd19tb2RlICYgQ0FLRV9GTE9XX0ZMT1dTKQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGZsb3dfaGFzaCA9IHNrYi0+aGFzaDsKPiA+IMKgwqDCoMKgwqDC
oMKgIGlmIChob3N0X292ZXJyaWRlKSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZHN0aG9zdF9oYXNoID0gaG9zdF9vdmVycmlkZSAtIDE7Cj4gCj4gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

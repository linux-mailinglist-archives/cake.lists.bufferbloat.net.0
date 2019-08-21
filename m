Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA1997E14
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 17:07:49 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D62C13CB3C;
	Wed, 21 Aug 2019 11:07:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566400067;
	bh=a6dFeFJD4yJVMKrIVjW/qn0UJpQZCo9sdW1A5C9QWT4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WrrFKtwY5VtW6eJfkslxZZ9OPhyFVSMi44Bc5WfuR6I/8GsRUEKjfsBiZYyP4GMKE
	 6FDkxMBIEoX8taDJAC53LmSZ0wrqlXoosBeKHLZflrR4OGwIK8qx61fwF1vDx+B72H
	 z7dJkDqSxRSjTnCsH9Um6Sij3K4cmT7PpPdybcZM1PyCgM6o1oen4AD8X9bzIW/dwX
	 KfqCbHoIKZZP1jWsW+4BNSdw/jyZeriIPBfrFTNguT/p21UPH8eLy/ed56mOnvIaCn
	 D8j+dDMiLJzFple5lfqFD4k16XcWV42B/nhWAix+7IDtkIp6XRv7Tnk8ehAy58YY8U
	 hhrth2Lo6Ao6w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E68C23CB35;
 Wed, 21 Aug 2019 11:07:45 -0400 (EDT)
Received: by mail-io1-xd43.google.com with SMTP id z3so5291680iog.0;
 Wed, 21 Aug 2019 08:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=f13IE7mNjQzQe/ikA9Rn2pGggMiUxPORHUHeMw7JgwY=;
 b=fI/GxODBYFR+qDQhPp0ZiYZu2XafuW6txn9691hMd/T5VZdhc69tXiaCs2Fnd98gRQ
 yI007KtegP7ffoGsITcmER+5Us9qm+hpYnzhKlB06tQ35HeQbvjnV3oO8scc3pJdOWYs
 96SnvaIdOssRtMjdsKV6fVz8QLdBEvD9dI6OL6Akgd123kfGKvSz3cfblsptDLZ1lE1f
 4P0kdaPD/F+wTou/kYtOKs/qqIlDGJ+xPUCCcwlvJudlcMwZc048Kwo5Fa8WSqOycTv+
 I/sqg2kL5z4/AiDZu2QRMnaA/46hgYbTH8BbemgX6Kt+4BsXQ2ZZ5q0ZShpaJY1AuRUI
 /FCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=f13IE7mNjQzQe/ikA9Rn2pGggMiUxPORHUHeMw7JgwY=;
 b=QhQMgNLEBmC0LkyjC6KQPACuLbh3W79LWBqVifdyX5cXPrFIapLglx/67jXfIu0IHx
 +D26mOLVsUwZwhUtw30rByS6yARKWAuxIzjuxi3U9eHEmkV9dK3R7BHUoBJ5V6lhHu5A
 7ksKWIXJEb93zCNgyITpEsZUohYRdwS4FEr/WVN3rTKV0WmHwBNT9HZRlML6rY0BqduM
 tbBngIN1kpMBWGvjnScTH6ziVKwEPpOhvs1Fi7ytOeHbs/r7O4Lb0vDZA+NcY+v0wOpa
 noa4cIBPlZt1bzJM4lYZH2tDhJebm4gkaprFCWbgGgxBqSHqkURhvC+RkLrdzjKICY9C
 jEpQ==
X-Gm-Message-State: APjAAAXD8P4D4dStNnqG0+fRtCrDTzCV8Ff3sagCrkUgYUS6yYatPYTz
 y3wCC/PvoDeY2Fv3dIoP+GCkNERKd6tNjM6ZKBHOQf7k
X-Google-Smtp-Source: APXvYqwNHN4cAVLMlpCl+3VVhfNC1E74xZB7MDBtCg9hlXGR9nK2xn7tzXgDVyu35ByJuqgEcvVjA9nH5SSvNPfJvKc=
X-Received: by 2002:a5e:8344:: with SMTP id y4mr1660702iom.213.1566400064969; 
 Wed, 21 Aug 2019 08:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw6Fe8x2s=W3Vp6h0WoN7Q8ia4CddL6e4kA+GQNn87LiUw@mail.gmail.com>
In-Reply-To: <CAA93jw6Fe8x2s=W3Vp6h0WoN7Q8ia4CddL6e4kA+GQNn87LiUw@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 21 Aug 2019 08:07:33 -0700
Message-ID: <CAA93jw5fW4XbgT_VFYJGep+qQ2WTYEF0my5_XQ-VADOBq8TMvA@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] https://tools.ietf.org/html/draft-ietf-tsvwg-le-phb-06
	is in last call
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SnVzdCByZXNzdXJyZWN0aW5nIHRoaXMgb2xkIHRocmVhZCBmb3IgcmV2aWV3IG5vdyB0aGF0IHRo
aXMgaXMgYW4Kb2ZmaWNpYWwgUkZDLiBJIG5vdGUgYWxzbyB0aGF0IHRoZSBOUUIgZGlmZnNlcnYg
Y29kZXBvaW50IGlzIGVudGVyaW5nCmxhc3QgY2FsbCBhbHNvLgoKaHR0cHM6Ly90b29scy5pZXRm
Lm9yZy9odG1sL2RyYWZ0LXdoaXRlLXRzdndnLW5xYi0wMgoKT24gU3VuLCBGZWIgMywgMjAxOSBh
dCAxMDozOSBBTSBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gQW5k
IHNlZW1zIGxpa2VseSB0byBiZSBhZG9wdGVkLgo+Cj4gVGhlcmUgc2VlbXMgdG8gYmUgYW4gdXJn
ZSB0byBtYWtlIHRoaXMgY29kZXBvaW50IHN0YXJ2YWJsZSwgd2hpY2gKPiBzaW5jZSBJIGFzY3Jp
YmUgdG8gbmFnbGUncyBkaWN0dW0gImV2ZXJ5IGFwcGxpY2F0aW9uIGhhcyBhIHJpZ2h0IHRvCj4g
b25lIHBhY2tldCBpbiB0aGUgbmV0d29yayIgLSBkb2Vzbid0IHdvcmsgZm9yIG1lIC0gYnV0IHRo
ZSBkcmFmdCBpcwo+IHZhZ3VlbHkgd29yZGVkIGVub3VnaCB0byBqdXN0IHN0YXJ0IGR1bXBpbmcg
dGhpcyBjb2RlcG9pbnQgaW50byB0aGUKPiBiYWNrZ3JvdW5kIHF1ZXVlIG9mIGJvdGggc3FtIGFu
ZCBjYWtlIGFuZCB3b3JyeSBhYm91dCBpdCBpbiBhIGRlY2FkZQo+IG9yIHRocmVlLgo+Cj4gaXQn
cyAwMDAwMDEgd2hpY2ggSSBndWVzcyBpczoKPgo+IGRpZmYgLS1naXQgYS9zY2hfY2FrZS5jIGIv
c2NoX2Nha2UuYwo+IGluZGV4IDNhMjZkYjAuLjY3MjYzYjMgMTAwNjQ0Cj4gLS0tIGEvc2NoX2Nh
a2UuYwo+ICsrKyBiL3NjaF9jYWtlLmMKPiBAQCAtMzQzLDcgKzM0Myw3IEBAIHN0YXRpYyBjb25z
dCB1OCBkaWZmc2VydjRbXSA9IHsKPiAgfTsKPgo+ICBzdGF0aWMgY29uc3QgdTggZGlmZnNlcnYz
W10gPSB7Cj4gLSAgICAgICAwLCAwLCAwLCAwLCAyLCAwLCAwLCAwLAo+ICsgICAgICAgMCwgMSwg
MCwgMCwgMiwgMCwgMCwgMCwKPiAgICAgICAgIDEsIDAsIDAsIDAsIDAsIDAsIDAsIDAsCj4gICAg
ICAgICAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLAo+ICAgICAgICAgMCwgMCwgMCwgMCwgMCwgMCwg
MCwgMCwKPgo+IChvciBpcyB0aGF0IHJldmVyc2VkPyBteSBiaWcgZW5kaWFuL2xpdHRsZSBlbmRp
YW4gY2hvcHMgc2N1a3MsIGFuZAo+IG5vYm9keSBtb2RpZmllZCB0aGUgZ2VuX2Nha2VfY29uc3Qg
dG9vbCB0byBtYXRjaCB3aGF0IGNha2UgZXhwZWN0cwo+IG5vdykKPgo+IG9uIG15IG9mZiBkYXlz
IEkga2luZCBvZiB3aXNoIHRoZSBkaWZmc2VydiBsb29rdXAgd2UgZG8gaW4gY2FrZSBoYWQKPiBt
YW5hZ2VkIHRvIG1ha2UgaXQgaW50byB0aGUgbGludXggbXFwcmlvL3ByaW8gc3R1ZmYgYnkgZGVm
YXVsdC4KPgo+IC0tCj4KPiBEYXZlIFTDpGh0Cj4gQ1RPLCBUZWtMaWJyZSwgTExDCj4gaHR0cDov
L3d3dy50ZWtsaWJyZS5jb20KPiBUZWw6IDEtODMxLTIwNS05NzQwCgoKCi0tIAoKRGF2ZSBUw6Ro
dApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS0y
MDUtOTc0MApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

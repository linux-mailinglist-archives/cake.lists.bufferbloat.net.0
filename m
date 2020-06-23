Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B256F2055B2
	for <lists+cake@lfdr.de>; Tue, 23 Jun 2020 17:21:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 87FF23CB38;
	Tue, 23 Jun 2020 11:21:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592925718;
	bh=1kNGd1Cv7vsqebIsLyxSQwRAOhUvLJwiGdFfBcsA6SU=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MDu6RwQ/ej28A+ikDhUozSVHkDSPEl/3T3vNrm8/8o0LQhJLkC+8Wqln4aQC//X1V
	 v0f+nxPLspKBlXGPKYvOblzKn1W/YriSnSXSlumNQ3Lyyy8YrpVZBOB/c+QhH303ei
	 ICCmA+gORexqNqXP1l4nkqa3bRJNK6MKZOiMbIfgJjDZ56DxPzLqkPnIuymxPqypp8
	 HQ/vYvE8n5zQnJ44kBZrV3TGh2HPZVQWXXAZMo4Bme1k4E3fzFj3UI9SPSsr3iUA6t
	 qfs1WghQsQOFFgmD2ZFa5hX651x6tgOYdhGaeM7JDQylOdr9qiUhW4nQ65B1OF5Mxl
	 afTljVE+g6Oxw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CDA313B29E
 for <cake@lists.bufferbloat.net>; Tue, 23 Jun 2020 11:21:57 -0400 (EDT)
Received: by mail-lj1-x244.google.com with SMTP id q19so23927328lji.2
 for <cake@lists.bufferbloat.net>; Tue, 23 Jun 2020 08:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=tr37O5uIjbbDZDAW0ms8mx/DAZjqwSvJvQcl7csuSN0=;
 b=byl3fJw5UyZ0rFdSS+Um9wdt7vdW2CetCx2ND7w6YNn2N/9G8YiW3kDAZPihyMEjBA
 ZpfTKqQJPZP1mASqoUlrLhH5x+b2PhhVGa5m8SB//epel55/fqHq4ykfxoSv+cg2zOsQ
 iKRD6PReMX+KqVw/koz5Pv+hpdwS554jvE4kfrWqGN5Nq7o6+q0qIXy19qQomjIeYL3r
 s5L6AXYO7b+Ukwwa5/rI1Ka73HS/f5JB/kzwcCwaIWYPCSE0cq0BJ4r5BcBl9vojsH1i
 NU1XkXRmUA6xl0CTVOebE+AQdgFMIEK8PtSr6rhx59GnfchnUBF6j8QgSKAlzqyNln4J
 MB3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=tr37O5uIjbbDZDAW0ms8mx/DAZjqwSvJvQcl7csuSN0=;
 b=ILle4NtwhI+thNM4yUofqwy69PYdodcIa+t2fCd1PN3NzT1/OiCrbAi0DCfCXuIZdQ
 wOh+G+2LsjuTvdWLEnVkE63MD4hdszANeubzTTt09i3QL2/2B4XFanjL907m6k4XBfmH
 DBdUSSulluie32Pa1aU1rpB7WESq6y63OvZlG49wnvUe9Z6J0q/jUUwME2FFtw+lDDg5
 KisZOIIpsJ+inNNGG0Iy5OgSSbG+ckCtJ3q7uSoLpscXgvKRO5hujbCEIH6REEn/TXpu
 ithpdBW7pGdPpjuguIrAQkWF4r3DguPTFMRBZ5dZWMzu1rkr5ERiOQWKc/te3U2QsuRb
 q6lA==
X-Gm-Message-State: AOAM5323h1j8ootTN1u885zntSVFGxd2PxaUOhz4afX3lPTJMkLPpKn0
 zf7i85BrXn0HTCmXo3vdurY=
X-Google-Smtp-Source: ABdhPJxu9foJbx15154ksP0Chm89NSDX6AAJ4cU5twIS3eHQ69/smmOQEJ957nU2peflNQqd4AB6NQ==
X-Received: by 2002:a2e:6c12:: with SMTP id h18mr12259814ljc.62.1592925716575; 
 Tue, 23 Jun 2020 08:21:56 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-85-nat-p.elisa-mobile.fi.
 [83.245.237.85])
 by smtp.gmail.com with ESMTPSA id l22sm3365885ljg.41.2020.06.23.08.21.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jun 2020 08:21:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <87lfkdrgip.fsf@toke.dk>
Date: Tue, 23 Jun 2020 18:21:54 +0300
Message-Id: <8959B7A6-0B20-4812-BC9D-812DD4F3BCC4@gmail.com>
References: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
 <877dvzt84w.fsf@toke.dk>
 <CAFC8iJ+LHkmQWYZomD6rFaoUs3Oo_-0=QV=JmvdtspZ4+=mqdA@mail.gmail.com>
 <87lfkdrgip.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3445.9.5)
Subject: Re: [Cake] [CAKE] Rate is much lower than expected - CPU load is
 higher than expected
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
Cc: cake@lists.bufferbloat.net, marco maniezzo <marco.maniezzo@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyMyBKdW4sIDIwMjAsIGF0IDU6NDEgcG0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBSaWdodCwgd2VsbCBpZiB5b3UncmUgbm90IHJ1
bm5pbmcgb3V0IG9mIENQVSBJIGd1ZXNzIGl0IGNvdWxkIGJlIGEKPiB0aW1pbmcgaXNzdWUuIFRo
ZSBDQUtFIHNoYXBlciByZWxpZXMgb24gYWNjdXJhdGUgdGltZXN0YW1wcyBhbmQgdGhlCj4gcWRp
c2Mgd2F0Y2hkb2cgdGltZXIgdG8gc2NoZWR1bGUgdGhlIHRyYW5zbWlzc2lvbiBvZiBwYWNrZXRz
LiBBIGxvYWRlZAo+IHN5c3RlbSBjYW4gc2ltcGx5IG1pc3MgZGVhZGxpbmVzLCB3aGljaCB3b3Vs
ZCBiZSBjb25zaXN0ZW50IHdpdGggdGhlCj4gYmVoYXZpb3VyIHlvdSdyZSBzZWVpbmcuCj4gCj4g
SW4gZmFjdCwgd2hlbiBsb29raW5nIGludG8gdGhpcyBhIGJpdCBtb3JlLCBJIGNhbWUgYWNyb3Nz
IHRoaXMgY29tbWl0Cj4gdGhhdCBzZWVtZWQgdG8gb2JzZXJ2ZSB0aGUgc2FtZSBiZWhhdmlvdXIg
aW4gc2NoX2ZxOgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvdG9ydmFsZHMvYy9mZWZhNTY5YTlk
NGIKPiAKPiBTbyBJIGd1ZXNzIHdlIGNvdWxkIHRyeSB0byBkbyBzb21ldGhpbmcgc2ltaWxhciBp
biBDQUtFLgoKQWN0dWFsbHksIHdlIGFscmVhZHkgZG8uICBUaGUgZmlyc3QgdmVyc2lvbiBvZiBD
YWtlJ3Mgc2hhcGVyIHdhcyBiYXNlZCBjbG9zZWx5IG9uIHRoZSBvbmUgaW4gc2NoX2ZxIGF0IHRo
ZSB0aW1lLCBhbmQgSSBtb2RpZmllZCBpdCBhZnRlciBub3RpY2luZyB0aGF0IGl0IGhhZCBhIHZl
cnkgbGltaXRlZCBtYXhpbXVtIHRocm91Z2hwdXQgd2hlbiB0aW1lciByZXNvbHV0aW9uIHdhcyBw
b29yIChlZy4gYXQgMWtIeiBvbiBhbiBvbGQgUEMgd2l0aG91dCBIUEVUIGhhcmR3YXJlLCB3ZSBj
b3VsZCBvbmx5IGdldCAxayBwcHMpLiAgTm93LCBhbnkgbGF0ZSB0aW1lciBldmVudCB3aWxsIHJl
c3VsdCBpbiBhIGJ1cnN0IGJlaW5nIGlzc3VlZCB0byBjYXRjaCB1cCB3aXRoIHRoZSBwcm9wZXIg
c2NoZWR1bGUuICBUaGUgb25seSB0aW1lIHRoYXQgd291bGRuJ3Qgd29yayBpcyBpZiB0aGUgcXVl
dWUgaXMgZW1wdHkuCgpJZiB0aGUgcGF0Y2hlcyBjdXJyZW50bHkgYmVpbmcgdHJpYWxsZWQgYXJl
IG5vdCBzdWZmaWNpZW50LCB0aGVuIHBlcmhhcHMgd2UgY291bGQgdHJ5IHNvbWV0aGluZyBjb3Vu
dGVyLWludHVpdGl2ZTogc3dpdGNoIG9uICJmbG93cyIgaW5zdGVhZCBvZiAiZmxvd2JsaW5kIiwg
YW5kIGVuYWJsZSB0aGUgYWNrLWZpbHRlci4gIFRoYXQgc2hvdWxkIHJlc3VsdCBpbiBmZXdlciBz
bWFsbCBwYWNrZXRzIHRvIHByb2Nlc3MsIGFzIHRoZSBhY2stZmlsdGVyIHdpbGwgY29hbGVzY2Ug
c29tZSBhY2tzLCBlc3BlY2lhbGx5IHVuZGVyIGxvYWQuICBJdCBtaWdodCBhbHNvIGhlbHAgdG8g
c2VsZWN0ICJzYXRlbGxpdGUiIEFRTSBwYXJhbWV0ZXJzLCByZWR1Y2luZyB0aGUgYW1vdW50IG9m
IHByb2Nlc3NpbmcgbmVlZGVkIGF0IHRoYXQgbGF5ZXIuCgogLSBKb25hdGhhbiBNb3J0b24KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK

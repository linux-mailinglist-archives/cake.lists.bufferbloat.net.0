Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 606DC430155
	for <lists+cake@lfdr.de>; Sat, 16 Oct 2021 10:55:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A4A583CB54;
	Sat, 16 Oct 2021 04:55:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634374503;
	bh=ppuacU6EBfG2TuSiI137hcZSna8xM59m+34slp9xo/U=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c6NJAnYxUIMetQbxi/p5jjQicDrkVfGrCmSQcC8nXAinh4cN+sauLcMoURmjVUKZU
	 wxERJ7/ydCLx369Z8U8ZvIDmLKlQ5Dhr4o72hEHeOUdH2cYBPA3e732sWWJhAQFrDS
	 qno9agwuU5atpyJQMO0dLM1mF+bobXjsQiNKwCehjnMVj/wiEE4QzittEk+OehQaT6
	 U7dYu55ruTDKzZDk+h0hF3H3EXsxVxou7wL1KfLFpsbk7mCIEVUlcWSasUFS80N4un
	 unvj5rM8w65M3ZE5FPFxuKXcTGqHVrwL4SxtANdnfSlEiLliJZk4KHaqTK4UZnzwvm
	 QtsbncBzCqXcQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D008B3B2A4;
 Sat, 16 Oct 2021 04:55:02 -0400 (EDT)
Received: by mail-lf1-x135.google.com with SMTP id x27so51938026lfa.9;
 Sat, 16 Oct 2021 01:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Epr45dOI2YECXa73+j3rmGAHuIz0+GPPxtA1TmvQWsc=;
 b=bqj7WAkEk1IFIN/hatGK29WQRtm5TPs0QepVCpTuRhN5FI3QeefDGeb0XcaHct9KrN
 UlZqOThHXu16XAHYdB3bpXzg4t/4OIKunV5pWG5to7C4b0EYRdF0dVbLq2s9UaPZLtkF
 9pziHEu2d88sA7mHnYJW6kybuRGgCfsyhqf8DXs0sv3O0ezI57+/SDFUC0Pp8s6jqmH6
 qD+eaZ2LP1WQTtWEN5J0cQtxlzGTbjmu6Bb1SXNINt2Js34GWKVsOLqMeo9sTbQrNUwL
 IcEmDeDNH8t+GoxZE3NmSTlciqGW/M7U014DGDnxkv8voyOFELpnnGeq9AscWdzWjqva
 fHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Epr45dOI2YECXa73+j3rmGAHuIz0+GPPxtA1TmvQWsc=;
 b=7ruZholBI+KuZnaRTZ/xrjzcJD4/MJ8nDlB7xs5T7v/XBWaZGbm2n3GFzTLBU6B57y
 jPcihZD3RgkQQVCqRQWCSn1YMBcL2SxhsOWt1AE/vmqeyGT6FrPenkb8LTwixh3Nb8N/
 bEXWSc09KqJPXX6bWc9Roqul7198dnBC+LHfQHbDfs6i4zAIGtzX4v4RANamcciil8V3
 MChX7HrZteh+bVXtNZxCtHYtyKYJQmGwCyg8WpDHsP5YLqb1JcuYq8B4o7AsqcQjXVAk
 GYBVs/n6txHOJ6HRjxw821s2Fu0EBrOFxtXh+979Rt6ZCzR9elyZtCua0th3gu6a/3tL
 bDiA==
X-Gm-Message-State: AOAM532DwHIZq719hkCEvBwzWubJ3aw+wAWB0KALyMkgiCVOfGTUXkWn
 9AX7bx9sszYx7Pud9LUdZgs=
X-Google-Smtp-Source: ABdhPJz0xbgDvQ0od89E6JJ39G+AlYiTf/mG/Q2TmWiTbsTPLqrgI8t9SXKYf9MANpGnAvCxg0vKGg==
X-Received: by 2002:a2e:8799:: with SMTP id n25mr19227832lji.174.1634374501005; 
 Sat, 16 Oct 2021 01:55:01 -0700 (PDT)
Received: from smtpclient.apple (176-93-88-52.bb.dnainternet.fi.
 [176.93.88.52])
 by smtp.gmail.com with ESMTPSA id o24sm786496lfb.97.2021.10.16.01.55.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Oct 2021 01:55:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <1F8C74DF-1384-4F72-904A-8293369DE95D@gmx.de>
Date: Sat, 16 Oct 2021 11:54:59 +0300
Message-Id: <C6AC65FB-9BBB-4FCE-8C9F-A270680617C1@gmail.com>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <95231AF9-DCCA-4D41-9BF4-8F55307F45F6@gmail.com>
 <1F8C74DF-1384-4F72-904A-8293369DE95D@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxNiBPY3QsIDIwMjEsIGF0IDExOjM4IGFtLCBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxl
cjBAZ214LmRlPiB3cm90ZToKPiAKPiBJIGFsc28gdGhpbmsgdGhhdCBzb21lIG9uZSBzdWJzY3Jp
YmVkIHNob3VsZCB3ZWlnaHQgaW4gb24gdGhlIGV4ZW1wdCBvbmUgcGFja2V0IGZyb20gbWFya2lu
ZywgZXNwZWNpYWxseSBpbiB0aGUgbGlnaHQgb2YgR1JPL0dTTy4KCkkgZG8gaGF2ZSBzb21lIGV4
cGVyaWVuY2Ugd2l0aCB0aGlzIGZyb20gQ2FrZSwgYnV0IENha2UgaGFzIHRoZSBkaXN0aW5jdCBi
ZW5lZml0IG9mICh1c3VhbGx5KSBrbm93aW5nIHdoYXQgdGhlIGRlcXVldWUgcmF0ZSBpcywgd2l0
aG91dCBoYXZpbmcgdG8gZXN0aW1hdGUgaXQuICBXaXRob3V0IHRoYXQga25vd2xlZGdlLCBJJ20g
bm90IHN1cmUgaXQncyBwcm9maXRhYmxlIHRvIGd1ZXNzIC0gZXhjZXB0IHRvIHNwZWNpZmljYWxs
eSBhdm9pZCB0YWlsICpsb3NzKiwgd2hpY2ggaXMgbm90IGF0IGFsbCB0aGUgc2FtZSBhcyAqbWFy
a2luZyogdGhlIGxhc3QgcGFja2V0LgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK

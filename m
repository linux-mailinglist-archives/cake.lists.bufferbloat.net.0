Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D1C2E0F33
	for <lists+cake@lfdr.de>; Tue, 22 Dec 2020 21:15:26 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E9BDE3CB44;
	Tue, 22 Dec 2020 15:15:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1608668124;
	bh=b+ezuhrgfI1TGfqFHKVvki2nUhQ/t9OPjYP1FnuGMf8=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BQOIZFBRk18j4Hq9N4ma1T1q/GqMpPN7nUb1vOGoyG7L9C5uMDggDPBk8Ia8VPIFY
	 So4+s+QXHiEud0rUVg0kQqEu+MH9ciob5g9MljAx0aAYw671XWn9gmZZ7nEEnq7PGK
	 x0rC+aCCJ7fZIlvEbB3VDoudpwvmWJ7OOjgcQ9eCtNX4jQDZ9X3iC+dln1eqbBPDAV
	 PWfQsAt6/BvOk4FetoRevWNThjVXp93Qq2K4vuqoUcG3/YZho5L0iz5+jF4lkSTYdC
	 DYt4nGVsB9y3EPC5aYfgJV12dyCTR0lxTjd38Gm66lO32caypaI0knbnEZFuPFh/Uk
	 8bnec9uTgjUDQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A3D763B2A4
 for <cake@lists.bufferbloat.net>; Tue, 22 Dec 2020 15:15:22 -0500 (EST)
Received: by mail-lf1-x136.google.com with SMTP id y19so34733914lfa.13
 for <cake@lists.bufferbloat.net>; Tue, 22 Dec 2020 12:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hxWN+l9zlAYdOar+CdZXEQfsGLElEVYnEMLhMtxiRMU=;
 b=jv2n9RU43kUIoYyBqfu7zYIh3r55V57tAAx7g1EUdealfDnq6P7S4W+yOKDljYtBUw
 W+qIIerqzHz5DHLg084bCblaRLam193ABNcjguMuzVpc8Y/DMxFYviI+kOrIif9M80US
 iEQe/RSWYO2d5qjEIxpIVDXIoWBIV+sDKhoAfTlYunkw1npUVYC+/EaKWM1hzoHK2833
 OXYcX+TWFtXzt+/ZkiD4IDcCNpFIqFWMBEejv1vAdWpFsXJptNxvWkWzXkGEl0u3hWs6
 sHBBCVg6VLkPVjl/AANtv2/hLm/1Bn0+sgRYgyvHhFTyV+GQNp8t3fmWo+RtvoyGVbFk
 yQiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hxWN+l9zlAYdOar+CdZXEQfsGLElEVYnEMLhMtxiRMU=;
 b=JhFQJss/1xdMQ88kQzkoCEf7FjVMeNGthHR73bWBabIYNwJTAqow5/Sjzz/4UTttZO
 CxwEy0ZVxa0loKUv2nxUuM3VO0+e5eKU0P5JZx9hDqf/MvhF9qOc5IruLP27boQgM6Rp
 ETSHHuVd/bHYfsJ4Qzvx4gpepn9uvo/HmDEoLdeRTifVde3BwjqHn2F4pxeeXrDXlk2B
 0nvLhvHrXjPAYKEDkKTeUkn7yyMyZL3pwYYcJUUtXAN9BDfOykpmoi+ABWJs+riBFfOF
 5n5HrDA/T4odgQHh1iMNh8kHh0QLlUeAfy0+TUl+gppZA0TYTHz01WQlfmBoEG/6ry+v
 cfSA==
X-Gm-Message-State: AOAM531yRlrNW0UVQIyvp9SDAqjhszLxoo2Oj09tCoJENmd2ijlbk5/5
 HaWTGUoKPnwpXJ20Cutbn6Q=
X-Google-Smtp-Source: ABdhPJzlORYf6jDNU6XRFYGEOEmFUPgc8Q2rtJbfVTCctPrHQgTj5h9D6YXMUrb9g61eQVtFJDfJaA==
X-Received: by 2002:ac2:43d6:: with SMTP id u22mr8850432lfl.596.1608668121580; 
 Tue, 22 Dec 2020 12:15:21 -0800 (PST)
Received: from jonathartonsmbp.lan (178-55-231-236.bb.dnainternet.fi.
 [178.55.231.236])
 by smtp.gmail.com with ESMTPSA id t17sm2144598lfr.5.2020.12.22.12.15.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Dec 2020 12:15:20 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <421ffd89-0c2c-1187-380c-03a0968f4095@gmail.com>
Date: Tue, 22 Dec 2020 22:15:19 +0200
Message-Id: <DDC33147-4B1D-45A0-B73B-0641A4050A68@gmail.com>
References: <421ffd89-0c2c-1187-380c-03a0968f4095@gmail.com>
To: xnor <xnoreq@gmail.com>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] ECN not working?
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyMiBEZWMsIDIwMjAsIGF0IDEwOjA2IHBtLCB4bm9yIDx4bm9yZXFAZ21haWwuY29tPiB3
cm90ZToKPiAKPiBUaGUgY2xpZW50IGluaXRpYXRlcyB0aGUgSVB2NCBUQ1AgY29ubmVjdGlvbiB3
aXRoOgo+IElQIERpZmZlcmVudGlhdGVkIFNlcnZpY2VzIEZpZWxkOiAweDAyIChEU0NQOiBDUzAs
IEVDTjogRUNUKDApKQo+IFRDUCBGbGFnczogMHgwYzIgKFNZTiwgRUNOLCBDV1IpCj4gU2VxPTAg
V2luPTY0MjQwIExlbj0wIE1TUz0xNDYwIFdTPTI1NiBTQUNLX1BFUk09MQo+IAo+IFRoZSBzZXJ2
ZXIgcmVzcG9uZHM6Cj4gRGlmZmVyZW50aWF0ZWQgU2VydmljZXMgRmllbGQ6IDB4MDAgKERTQ1A6
IENTMCwgRUNOOiBOb3QtRUNUKQo+IEZsYWdzOiAweDAxMiAoU1lOLCBBQ0spCj4gU2VxPTAgQWNr
PTEgV2luPTY0MjQwIExlbj0wIE1TUz0xNDYwIFNBQ0tfUEVSTT0xIFdTPTEyOAo+IAo+IFNob3Vs
ZG4ndCB0aGUgc2VydmVyIHJlc3BvbmQgd2l0aCBFQ1Qgc2V0IGluIHRoZSBTWU4gQUNLIHBhY2tl
dAo+IGFuZCBwb3NzaWJseSBhbHNvIGhhdmUgRUNOLXJlbGF0ZWQgZmxhZ3Mgc2V0IGluIHRoZSBU
Q1AgaGVhZGVyPwoKTm90IGFsbCBzZXJ2ZXJzIGhhdmUgRUNOIHN1cHBvcnQgZW5hYmxlZC4gIEEg
U1lOLUFDSyB3aXRob3V0IHRoZSBFQ0UgYml0IHNldCBpbmRpY2F0ZXMgaXQgZG9lcyBub3QuICBU
aGUgY29ubmVjdGlvbiB0aGVuIHByb2NlZWRzIGFzIE5vdC1FQ1QuCgpJJ20gcmVhc29uYWJseSBz
dXJlIEFrYW1haSBoYXMgc3BlY2lmaWNhbGx5IGVuYWJsZWQgRUNOIHN1cHBvcnQuICBBIGxvdCBv
ZiBzbWFsbGVyIHdlYnNlcnZlcnMgYXJlIHByb2JhYmx5IHJ1bm5pbmcgd2l0aCB0aGUgZGVmYXVs
dCBwYXNzaXZlLW1vZGUgRUNOIHN1cHBvcnQgYXMgd2VsbCAoaWUuIHdpbGwgbmVnb3RpYXRlIGlu
Ym91bmQgYnV0IG5vdCBpbml0aWF0ZSBvdXRib3VuZCkuCgogLSBKb25hdGhhbiBNb3J0b24KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

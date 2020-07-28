Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A01D8231024
	for <lists+cake@lfdr.de>; Tue, 28 Jul 2020 18:54:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 86D893CB38;
	Tue, 28 Jul 2020 12:54:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595955245;
	bh=SvpVHXW4IdZgduqhjksF6s9/t4sBT31VyEVZbpnnoaw=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y27ycd7dmVRtBKm1Em0LyXAm8knwijpRfJ1aBKv6RDRlEAsz/v7Ii/LWG4aSgS9sb
	 6SNkU23LUvozMJmEFg/Ch7hw9g8AsgLpYc6vEqqHDiTrX940yhdn842DRm6jrpwO73
	 D4lBz+OeE2hVzfh8w+Iw4X5MkLDwN7F4uZv1WTvAXwkCZ2JbmotU7b9qtHNxoJNoBV
	 rdbJtgvUFITljMBi+xe7nYTUelKG0fdwL+NEr8ic5ySdaXt7ojzG9ouB6Y6cjdNR5b
	 jLts4Yz+C2nVyE521aMgImVjDcK3zCcbHgTxDtYr5ixr9bisqf5/8AV23DHWZ2JUM9
	 W9Z1OWDlb/mrg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C4D7D3B29E
 for <cake@lists.bufferbloat.net>; Tue, 28 Jul 2020 12:54:04 -0400 (EDT)
Received: by mail-lf1-x134.google.com with SMTP id b11so11387280lfe.10
 for <cake@lists.bufferbloat.net>; Tue, 28 Jul 2020 09:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=6jEvOUblS0CMmmE8LpOerFX5Hj3g4mMP7UAdLJPjCE8=;
 b=p+BOXgpQfpqhx5r3xbqxi2qp4/CKNxl1baj2u9qUuE9jALuG99O9wo5bBPe35IN4zR
 MQX4K3PtEWc2xje2Qk0MabvlJEXpGAz2yxXhmsqGgBE1P6E3NC1sctAVKKgPOkavDKb5
 yoWkd/G8TrTHFJWP/XbIVIVvboxt/mSHPoPMgxwd0KX3woN8ksJIx4AI2iPsH9+lInr0
 c1+QdZa2K7f5XewWYyAJDgR1pST/7hx2NOejbnxUUc0sUbf6xGc9kGicOLmd3Bx8bZf1
 aupuZlVH18ArLbOarDdomA6Z5+4fQFgaI6Wpa0PKiQVK6pdfdI1ddc3kYrVEpnCIo4ev
 tVtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=6jEvOUblS0CMmmE8LpOerFX5Hj3g4mMP7UAdLJPjCE8=;
 b=R0QZwFYv8tizxkpKX9kDc56sK3WMne2cr4XSTgRNIFpwqyx5jSvp0rzkr/9SrlRzZ2
 +upKeo91i8v+zn2N396XdBweIPROR3fosjLgjnOTr301cV8zPX95l3U2fyRfXI8OEvRi
 bXkWZ6ZyEzGagWJKxIQkWZnhiZaI54XcQq6hmFY0zuNQqBHkNDCW2KFrnUNVFaNoQoPG
 qqh2UOfolHiPaPqfkYovAYVkM3bDrUas+eVL1qh4AxMP5fEm2z+JV4c6HFKNW9eHt/ca
 wMGnZk6Jniy/qaIzrG/j6gZZrt5sCVpy905jWSbiZim1+Lk/7l2twzEMyuIMHAfOohFu
 hcHg==
X-Gm-Message-State: AOAM532GaqnoDKTgVM4pB/5EKxIR17c6h9tM+q/Luy3aGMpcXfZxHKC0
 qzYXN8LGLQJUZyYdsZ1YqHk=
X-Google-Smtp-Source: ABdhPJwK6DMqtc52emIGFVdaqWBy+ZrTaR6jDiBlD+0pZGmC6ibVWejIqrD4waUvtN7ni+ID/DMkbQ==
X-Received: by 2002:a19:6d1e:: with SMTP id i30mr15081159lfc.104.1595955243688; 
 Tue, 28 Jul 2020 09:54:03 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-252-162-nat-p.elisa-mobile.fi.
 [83.245.252.162])
 by smtp.gmail.com with ESMTPSA id v16sm206989ljd.1.2020.07.28.09.54.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Jul 2020 09:54:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.6\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAD9MmSeeEYgcaQ6K1Y=mNrJ2yGDCNiL=X-Z21ZOg5SJLgSiwvQ@mail.gmail.com>
Date: Tue, 28 Jul 2020 19:54:01 +0300
Message-Id: <C0E64041-D9C3-403F-B759-92528FFC443B@gmail.com>
References: <CAD9MmSc54e2NaVnqAVSw8Nk2MbdFr0OFXtT4RC2TUKuDcg0_PA@mail.gmail.com>
 <6B18F76E-A466-42A7-ACF7-52D5E6CD3572@gmail.com>
 <CAD9MmSeeEYgcaQ6K1Y=mNrJ2yGDCNiL=X-Z21ZOg5SJLgSiwvQ@mail.gmail.com>
To: Jim Geo <dim.geo@gmail.com>
X-Mailer: Apple Mail (2.3445.9.6)
Subject: Re: [Cake] Cake, low speed ADSL & fwmark
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

PiBPbiAyOCBKdWwsIDIwMjAsIGF0IDc6NTEgcG0sIEppbSBHZW8gPGRpbS5nZW9AZ21haWwuY29t
PiB3cm90ZToKPiAKPiBUaGFua3MgZm9yIHRoZSBpbmZvISBJJ3ZlIG5vdGljZWQgdGhhdCBieSB1
c2luZyAweEYsIG1hcmtzIDEtNCBiZWNvbWUKPiB0aW5zIDAtMy4gVGluIDAgaXMgc3BlY2lhbD8g
SSBhc3N1bWVkIGl0J3MgZm9yIGJ1bGsgdHJhZmZpYy4gSSB1c2UKPiBkaWZmc2VydjguCgpNYXJr
IDAgKG5vdCB0aW4gMCkgaXMgc3BlY2lhbCBiZWNhdXNlIGl0IGNvcnJlc3BvbmRzIHRvICJubyBt
YXJrIHNldCIuICBPdGhlcndpc2UsIHdoYXQgeW91IHNlZSBpcyB3aGF0IHlvdSBnZXQsIGFuZCBt
YXJrIE4gZ29lcyBpbnRvIHRpbiBOLTEuCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

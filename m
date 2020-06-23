Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D195D205726
	for <lists+cake@lfdr.de>; Tue, 23 Jun 2020 18:26:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B345D3CB40;
	Tue, 23 Jun 2020 12:26:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592929562;
	bh=fpBjfZsOFlN3F656ybjjV4wV9KhlLET3hSdFPkbzsaE=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gVqW6p84BuIrwYQPtQ0qPjAGXlU6yl0Yb9AC8ASCa7xxpbBlOTMx8jvvFbe74kv+r
	 rkGZ0ML6z+fpdY+wLZly+vWOpzVzchsQGH+XXqwLyr4j3fxugIFI8v8NmkrMnmQXNF
	 FbWD8eQ4s1XRnWJOOcl3bdGTZxSrpjRU4HnQElZ25JUA+oHTRxnTrs9Wk/MJtFosdj
	 bd5j5D046NpIuAeT9cIsp5OJ7i129pLXsdZSbWiJQq5egyVobjtWP/3I+2+NVTDl4g
	 wFstxM9pRhKtcsbQENhWIrybYpkvLuWz/fdN0YYhXndu7RPeT6zQFxLDTgC4Tac97W
	 H+sjNUyTLvioA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5167D3B29E
 for <cake@lists.bufferbloat.net>; Tue, 23 Jun 2020 12:26:01 -0400 (EDT)
Received: by mail-lf1-x12e.google.com with SMTP id d21so9924552lfb.6
 for <cake@lists.bufferbloat.net>; Tue, 23 Jun 2020 09:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0v75LGX4KwTzvBUUFEySbxUPa/CHDMhvvhG3oQaR+uM=;
 b=Mg6s691JPPnAEFUgvHcw1rGT0hb76crDFLazZoJHmi0TBx4mh2UWJ6K6mJpy1LqM3g
 rJu4VD2Aum1wng7I373S2Pd/t7NBmcjM+BgpiNO8qVOIR67ZDGquXvDkjsJ4ylxEJXXb
 qSqe1qe3aIjPzFJ9l5lwRCDYYogMM/ckeCK2jM428bQS0D9QXSCnk1sbODvGIdV+TYLw
 xOHPGzEvLaUEOvDnd2tbDU3Ucov7VKT0J0wstDCD4t6pNRlLWb46oz1a+MmA1JlAj5Y8
 dnTilDTHyJxEu6usGqmOgDJrvIvmU+a9FT4SUitu/RKtxp+cI5xFKYCKL57D2CrUWmby
 T8DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0v75LGX4KwTzvBUUFEySbxUPa/CHDMhvvhG3oQaR+uM=;
 b=igr+4nDotAy28yNwZNndQ/4gva8oguzV6HWbzXIlsBmnBC2MPrm3U2bpD8S0botCI2
 WmQ+VplRBJryeQFzpr5piPCr7ACVJZuUFreFm+tBzLBv9T/s2TkvN6dfFTVgjzWMmcB9
 PDVihH7Ubp6VQe5JUuCINn/dn1jpcjcZBIN6BlfG/3MK5U9cvZZv1HiQAuL54qJmLK+X
 C1jmvnuAWr1K/BfujcWJurtY5trxzv1FdZgfRE/RS6rkWxbhwFcECTPZvBotnsk4PeNd
 t1BKqd8r1Yy4XIwvMxMsrO+KPAHW6R6m9BR+EpPDJozmVYvrYVPPHNec5EYAcRYFhW5U
 vMCA==
X-Gm-Message-State: AOAM530NGhlhYSb7KTEU7UIjLQcH2QfljkqwHGf56GaL/K8hOfGaGYb0
 QfZjMSVu+r2DQZqAKrOvESw=
X-Google-Smtp-Source: ABdhPJz+smG7WRFsImBa6Rm/aOSOFexvCpMDBgNDilIeX0QtKX1cUbb8VMWlJbPIXpWoBbWbwT6RBw==
X-Received: by 2002:a19:ac03:: with SMTP id g3mr4182445lfc.164.1592929560200; 
 Tue, 23 Jun 2020 09:26:00 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-85-nat-p.elisa-mobile.fi.
 [83.245.237.85])
 by smtp.gmail.com with ESMTPSA id u26sm5025001lfq.72.2020.06.23.09.25.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jun 2020 09:25:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <0D78908A-07BB-4398-BFD2-78858AB2B8E2@gmx.de>
Date: Tue, 23 Jun 2020 19:25:57 +0300
Message-Id: <5EB6FFEF-7206-40BE-BCDB-74E99DD316E1@gmail.com>
References: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
 <877dvzt84w.fsf@toke.dk>
 <CAFC8iJ+LHkmQWYZomD6rFaoUs3Oo_-0=QV=JmvdtspZ4+=mqdA@mail.gmail.com>
 <87lfkdrgip.fsf@toke.dk> <8959B7A6-0B20-4812-BC9D-812DD4F3BCC4@gmail.com>
 <0D78908A-07BB-4398-BFD2-78858AB2B8E2@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
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

PiBPbiAyMyBKdW4sIDIwMjAsIGF0IDc6MDggcG0sIFNlYmFzdGlhbiBNb2VsbGVyIDxtb2VsbGVy
MEBnbXguZGU+IHdyb3RlOgo+IAo+IEJ1dCBJIGFzc3VtZSB0aGF0IHlvdSBib3VuZCB0aGUgYnVy
c3RzIHNvbWVob3csIGRvIHlvdSByZW1lbWJlciB5b3VyIGJ1c3Qgc2l6aW5nIG1ldGhvZCBieSBj
aGFuY2U/CgpJdCBidXJzdHMgZXhhY3RseSBlbm91Z2ggdG8gY2F0Y2ggdXAgdG8gdGhlIHNjaGVk
dWxlLiAgTm8gbW9yZSwgbm8gbGVzcyAtIHVubGVzcyB0aGUgcXVldWUgaXMgZW1wdGllZCBpbiB0
aGUgcHJvY2Vzcy4KCiAtIEpvbmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

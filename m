Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DC67D7B1C83
	for <lists+cake@lfdr.de>; Thu, 28 Sep 2023 14:33:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0424C3CB39;
	Thu, 28 Sep 2023 08:33:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695904396;
	bh=v5bCkBKVYHhZVf0WuVgfjTKpaPOSSt1mo1J7NzS3H1U=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=QJEd8SyzIjZwNZnxrMXlWBuEd7p/V3pp7MtEV2UD4lKJOKgzM4P2VY/Y5u+uaVOlm
	 dNHm2XFu9Muy81kX7sbEmpOlQbQ/1vhIqUKVPkfU3vybobMPq2yla6hx+JHcSwBIo1
	 Ee5qmBeARAMjViU615b4FZIMHZzII3bryr9AkzheseLnV74rEhoVh6Fzz97fMz9i44
	 IaWvd9STCGod5FLiXFQwvedfxp2wMibOsIy1QUgrzc2heQxJ3cQe0TvokYAnZ0rAth
	 GzLbKaSbfWtfr2c2g8aAcu997OGyQOtY2nrNA2FXPdfqt8Gux//YZQOxzIMJKbrEJq
	 vjJKB94ZoJKJg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 94D503B29D
 for <cake@lists.bufferbloat.net>; Thu, 28 Sep 2023 08:33:14 -0400 (EDT)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-50482ba2b20so3231771e87.1
 for <cake@lists.bufferbloat.net>; Thu, 28 Sep 2023 05:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695904393; x=1696509193; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZwzaEuvBXPUeUoST3PsAgdusrHEd/YH4V+UaijAUfes=;
 b=lcINKv1royizHtRpvzSjXd9KZSMEBQ7nUdrlxe2Pr+woXrcMCPN2AGEVd/P6YgibAK
 hevlmxtktjtMr/chYWkAGa9WAnfJAfwDfuXAWq0Bh9wdINBUpG+PaTfyUk2wvK7RrqBz
 up+dDzVfgsbYZ4TqbWHAHq3tX6DFi+s4Tp/qYNgFtUeV2w09+SpbAj4PculuTbBeiYDh
 r2/Jgq+dMvVwIHhvD0kIwWtezC1pM2EE4ZCXhbwDd4XO2GBcATafI6G+mFOVuwWohWg3
 APpjabvZJt39ExXDfiR0+iyc4Izvso1op1+N+ekFKMwA9YBynq9AgyJ1h/gE0sXc0DNJ
 48rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695904393; x=1696509193;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZwzaEuvBXPUeUoST3PsAgdusrHEd/YH4V+UaijAUfes=;
 b=r/p7iNePTU9l+YWzZTXFK/R54zC6OUpKTuxJ2W3wGMF+Nhip591ZXlwAJLYs3flJz3
 Gvl43rnMbssGCjW+Ty+BhPDTBMeoD9lMVgNnO6hkBK0Pu96ZsrQjFpPevE8prxXEE1YX
 OyEfVHQzFDSM+FvbVjBeIqk3lEmOZhE8Uxeh/K1hL7Air7e8o55y6XV78AnKGdHmJdNK
 CyXBLBP081UaAGJKT7n4nlONclMOhtD55eVinFi2Pp0f54Q4bmu4dG/Hl4X2hqIDC4q0
 Cbr5jld5AxUb5qb6VZOY+XPEwn/yQhJA7q1ihIgYXBul3MqHBBnHcqxS0alMztGJoVoT
 0V1A==
X-Gm-Message-State: AOJu0YxaMzoad3FGq1Bo+v5vlrsX73IGdap3IdLBXwuSLC9jpyt3FPoB
 W48a1u+0pEDvdzCMf6OKW1w=
X-Google-Smtp-Source: AGHT+IFA3YVMgNJuaUNZdeNjpkbOtk9J+viH/4QaCz3YXMrF1kgzEelIw1ZhTl2p1BVuq96V258rng==
X-Received: by 2002:a05:6512:280b:b0:4fe:3291:6b50 with SMTP id
 cf11-20020a056512280b00b004fe32916b50mr791828lfb.7.1695904392902; 
 Thu, 28 Sep 2023 05:33:12 -0700 (PDT)
Received: from smtpclient.apple (188-67-146-233.bb.dnainternet.fi.
 [188.67.146.233]) by smtp.gmail.com with ESMTPSA id
 q6-20020a19a406000000b004fbad341442sm3090846lfc.97.2023.09.28.05.33.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Sep 2023 05:33:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
X-Priority: 3 (Normal)
In-Reply-To: <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
Date: Thu, 28 Sep 2023 15:33:11 +0300
Message-Id: <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
From: Jonathan Morton via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Morton <chromatix99@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyOCBTZXAsIDIwMjMsIGF0IDM6MTUgcG0sIFNlYmFzdGlhbiBNb2VsbGVyIDxtb2VsbGVy
MEBnbXguZGU+IHdyb3RlOgo+IAo+IFRoaXMgcHJvbWlzZXMgZXZlbiBiZXR0ZXIgcGVyZm9ybWFu
Y2UgZm9yIGxvYWRzIGxpa2UgY2FrZSB0aGFuIHRoZSBhbHJlYWR5IHByZXR0eSBuaWZ0eSBwaTRC
CgpXZWxsLCBpbmNyZWFzZWQgY29tcHV0aW5nIHBlcmZvcm1hbmNlIGlzIGFsd2F5cyB3ZWxjb21l
IC0gYnV0IGFzIEkndmUgc2FpZCBiZWZvcmUsIGluIG1vc3QgY2FzZXMgSSBkb24ndCB0aGluayBD
UFUgcGVyZm9ybWFuY2UgaXMgdGhlIGxpbWl0aW5nIGZhY3RvciBmb3IgQ0FLRS4KCldoZW4gdGhl
IENQVSBsb2FkIGdvZXMgdXAgYXMgbmV0d29ya2luZyB0aHJvdWdocHV0IHJlYWNoZXMgdGhlIHBo
eXNpY2FsIGxpbWl0IG9mIHRoZSBpbnRlcmZhY2UgKG9yIHRoZSBJL08gc3Vic3lzdGVtKSwgd2hh
dCB5b3UncmUgc2VlaW5nIGlzIHRoZSBDUFUganVzdCBzcGlubmluZyBpdHMgd2hlZWxzIHdoaWxl
IHdhaXRpbmcgZm9yIGEgbXV0ZXggdG8gdW5ibG9jay4gIFNwaW5uaW5nIGZhc3RlciBkb2Vzbid0
IG1ha2UgdGhlIG11dGV4IHVuYmxvY2sgc29vbmVyIQoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 251C25267E2
	for <lists+cake@lfdr.de>; Fri, 13 May 2022 19:07:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 09FAB3CB38;
	Fri, 13 May 2022 13:07:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1652461627;
	bh=9XzQzbDyZlJczd4lxqcBM7QKwHz99gviVTPoSyjvobY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MfVjwYokordIE5DR7Py7UB2Fw6k22nTGCB7c4Rup7PYh21O+jKSiuq1FENVjAZHl2
	 6JXhgayG3myZCdaPjPCdH1O4HrZmp3cA0mvvxkTXaE7MmaeQJfsZrmFYLwCsvue6wk
	 3hADTVpea0b3QbTvcIJJlEje5BBTlaixTe2lreWh/RpDn6bo6BLxu4g6bOK08JeJ6O
	 AavgR6XlZa0osfLdSkmKolwVC5X1YnP+w3wDchJbNnAImDWNZiz+YeUtLwrSBEWKqQ
	 +ftW7b/IWzm0whrEI+T47aQRSKpTBMHBB35BeTt34ghu+kEnWCCv3Y7L2fxO6samce
	 5Bg9kHg2QK64A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E190F3B29E
 for <cake@lists.bufferbloat.net>; Fri, 13 May 2022 13:07:05 -0400 (EDT)
Received: by mail-ed1-x52e.google.com with SMTP id a21so10724323edb.1
 for <cake@lists.bufferbloat.net>; Fri, 13 May 2022 10:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1THAl1D7Gc7zyj8ie/kKFkUKsmtcTutpvKtHgbNWbXk=;
 b=TDqJf8jj0kZPRGhGuYMeSPfChiZtj37RQX0Bme2thBLA1hJjRFIRH8h2bjHAPdTdMi
 8eW+T+EnvnTEyIiSNmI+K7icAZB/XIgzZXdcaP0RAR6HWxXYsP76YNgHqVad0Z7+Iohy
 i5tTLlW+sK6iwgLHC20njfPoldaeGyxFBJyzVN1mAkRV5uvYbwnUkYMlKYP2IXwRQiB4
 RYa8JFUWJg9OGb1CpMb8Ha0csAy1Hn0kXnC5S70UoNZkueIDUdT6S+nZvJDn1yKMyC/o
 EL7Nc93c5i0PoedsAEwRjoQMV3mbNfLVTDaX+ywimEOdKVrylvuERTdItFpq1hsIbCCa
 GRSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1THAl1D7Gc7zyj8ie/kKFkUKsmtcTutpvKtHgbNWbXk=;
 b=wv7/v6xiUqTkaeRymaryVtL3Bqpe+/BXwZuTm8lnG4ksF3MrEzkJBS2cJKps8i2O0+
 it8otUXJxCC/5WsBOVQJXBzIk+7/3xtBaNKitmdRWuP92eC6hilqftJtrotiMIUp29Q7
 0472lhf0vrc+PTWlEq4VnAEBmMzfzSyuht1txfQ4tSQhO4eaJ0QD9w3uiZhbLg8QDBTx
 iO14frHKoBOjs6aD2No/0jRUWaim8LhXL6/m++pRn0DQwUwlSTqD4u5NvAjmYjqZj+wm
 xQpHJy6DjU/M6cn9A1TNsJzvfLueR3LUQ+ylzelDEZa1s6TyeefsBPJ6ZWXvgHlJe8O1
 Z/kg==
X-Gm-Message-State: AOAM531F1BJdXYcO1i90edbhhWtM/dLj5o3MMotxd12OKNVelVbhti6g
 DXetNFOtZooWmW03SDFdMHPOB+lgORK/S/V/phQ31yPm
X-Google-Smtp-Source: ABdhPJyReQWVMQQWYcKFicJPj6eZZXHqHIgFDB9WTmZpKZREZLLSYk2thM4v1akgclH+drNimTgyZGY8JBveBQgy3TA=
X-Received: by 2002:a05:6402:51d2:b0:428:48d0:5d05 with SMTP id
 r18-20020a05640251d200b0042848d05d05mr41859498edd.28.1652461624825; Fri, 13
 May 2022 10:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <1FEEA029-B564-4C46-99A7-50B5F747F619@gmail.com>
In-Reply-To: <1FEEA029-B564-4C46-99A7-50B5F747F619@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 13 May 2022 10:06:51 -0700
Message-ID: <CAA93jw4S2wfp4hrPoZQEZ-bZ0m2HiWfqmseyLoVhhgBTQruOjA@mail.gmail.com>
To: Jarad Olson <brotherdust@gmail.com>
Subject: Re: [Cake] Latency Testing Using iOAM
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

SSdkIGJlZW4gdHJhY2tpbmcgdGhhdCB3b3JrLCBidXQgaGFkIG1pc3NlZCBpdCBhY3R1YWxseSBl
bnRlcmluZyB0aGUKa2VybmVsLiBpdCB3b3VsZCBiZSBjb29sIGlmIG9wZW53cnQgZ290IG9uIGl0
LCBidXQgaXQgaXMgcHJlc2VudGx5CjUuMTAgYmFzZWQuCgpPbiBGcmksIE1heSAxMywgMjAyMiBh
dCAxMDowNCBBTSBKYXJhZCBPbHNvbiA8YnJvdGhlcmR1c3RAZ21haWwuY29tPiB3cm90ZToKPgo+
IEhlbGxvIQo+IEhhcyBhbnlvbmUgZXZlciB0cmllZCB1c2luZyBpbi1zaXR1IE9BTSBmb3IgdGVz
dGluZyBsYXRlbmN5PyBJdCB3b3VsZCBzZWVtIHRvIG1lIHRoYXQgdGhlIHByb3RvY29sIGlzIGlk
ZWFsIGZvciB0aGlzIHB1cnBvc2U6IGl0IGFkZHMgbWV0YWRhdGEgdG8gYWN0dWFsIHVzZXIgcGFj
a2V0cy4gVGhlIExpbnV4IGtlcm5lbCBoYXMgc3VwcG9ydCBmb3IgaXQgYXMgb2YgNS4xNSwgQ2lz
Y28gYW5kIEp1bmlwZXIgaGF2ZSBpbXBsZW1lbnRlZCBpdCBhcyB3ZWxsLgo+Cj4gSGVyZeKAmXMg
YW4gYXJ0aWNsZSBvbiB0aGUgTGludXgga2VybmVsIGltcGxlbWVudGF0aW9uOiBodHRwczovL2xl
Z2FjeS5uZXRkZXZjb25mLmluZm8vMHgxNC9wdWIvcGFwZXJzLzMyLzB4MTQtcGFwZXIzMi10YWxr
LXBhcGVyLnBkZgo+Cj4gSWYgYW55b25lIGhhcyB0cmllZCB0aGlzLCBob3cgZGlkIGl0IHR1cm4g
b3V0Pwo+Cj4gVGhhbmtzIG11Y2ghCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCgot
LSAKRlEgV29ybGQgRG9taW5hdGlvbiBwZW5kaW5nOiBodHRwczovL2Jsb2cuY2Vyb3dydC5vcmcv
cG9zdC9zdGF0ZV9vZl9mcV9jb2RlbC8KRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8751082242B
	for <lists+cake@lfdr.de>; Tue,  2 Jan 2024 22:57:35 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 889513CB49;
	Tue,  2 Jan 2024 16:57:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704232654;
	bh=tmpJFp0vjrDerHr1YORac6fOE/+r4PeIoE7+exet6Mg=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=DUrpuA/pVBiqqKtAzHYeKsEt7/a4sQCaPZXw7KHLDwU/nW/LAVCzHhqeczSEEBaBD
	 UQWwVHBuawUJ7CF35Xh88CsODydtbpkYvACCTkTC+cVy+LDmvJ+Biwv72s2W+VaQSn
	 sU9lUqbd37uodPTumv/aeYOMS1R9mFBoHag+Ggsys0hH0kY00WgaJBDRelpwaDYiY+
	 ckSR6K0Jv4ywyIPHi0P5Vn1OhieXb/rBbPB2LYZiAgFNSjFHS5k2Sk830HZB3SiU1d
	 itS/t7Mq+3dLLLoe3VHvLbUFOh964dFdaBnsobgcm/sJLUlq4hpLYA80u3UBO2hvOk
	 DXZGpQ3w/Oz9w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2F9DB3CB40
 for <cake@lists.bufferbloat.net>; Tue,  2 Jan 2024 16:57:33 -0500 (EST)
Received: by mail-lj1-x230.google.com with SMTP id
 38308e7fff4ca-2ccc5fca3f6so73777081fa.1
 for <cake@lists.bufferbloat.net>; Tue, 02 Jan 2024 13:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704232652; x=1704837452; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qf9qvILAQTQOFz0tnoZUbu+wZSa22/kGSBfUvOMgXOI=;
 b=fc9RhWdMuIeRmvgqIv53HEEbCG4VCsVuC4WmymgFlDmPKsNUyW/Ba/I5B6Q1B4/bXn
 nWzMf1/Afhjy47WfNRl27EHSpaIYgoGP+G4+h1kjpWIjcaoftadYW8qkh3180gg0oJEM
 2aj6zvnQGKx1tvlEcm23D98NZmj+FVKTyPk8JHPIQEVa/1sFVR59FeQzg415+paQM71h
 PJ0u2Zg+n7ZCC5y8Ik5sMVdMKerHxgRZk5VvDHN+j0TUwx4GBQqNw1xDzJLrcSjCYa7R
 s5DZdTo7nr4uZ3OesHTeBC9U/VMJg0o9pumDdO3Oc/xWpCvaGMcHS9O9NGM6SPyuXtld
 zMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704232652; x=1704837452;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qf9qvILAQTQOFz0tnoZUbu+wZSa22/kGSBfUvOMgXOI=;
 b=o42uaulN24SyslzkK7JmCydUz1ilsSrWmBb2lv36TBBW2gqloW4SDlSxZ90g81MXP7
 2UYY5e023QqKDIpLCJxb1PKIF1QXRLKxHSKZYn2alDKY2AJCEC+gZAyFEmU5SJT1iZwa
 8KeGSjKs4QkCY5JnehDUPs0I0bu+KFMg+2UbKLImrdm7NPQITeQItlakfPRPHRL7VCYc
 XnXsfarQewAOfwrPo+rjKlV5EtynWb9jjb2uJckv0Kp5Eyg4xqUi6V3MzFokNpQqHnGX
 zyufM3aDlponyQNFoRUUknIRM5LOdOKuYbNRtKOtaynFDvPRaJbg+KAcL6lGX9A8go2l
 LL+A==
X-Gm-Message-State: AOJu0YwmpmJ/jXTXfBNzKxYAwtl+4xOS5bFJe/96o++yqUAfquVw5fab
 kcvIInxcIoVgd+sodaRx8sk=
X-Google-Smtp-Source: AGHT+IFe+x4eo2nU5X8ZiEcei3EQVSsgDsA9eKwNbXVAgV5S0hqNFNRMIZJzh5+85431YGll8G1pUA==
X-Received: by 2002:a2e:8606:0:b0:2cc:6bbf:ea95 with SMTP id
 a6-20020a2e8606000000b002cc6bbfea95mr7328830lji.62.1704232651453; 
 Tue, 02 Jan 2024 13:57:31 -0800 (PST)
Received: from smtpclient.apple (37-219-218-208.nat.bb.dnainternet.fi.
 [37.219.218.208]) by smtp.gmail.com with ESMTPSA id
 h5-20020a2ebc85000000b002ccd49fa5a9sm3436245ljf.19.2024.01.02.13.57.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jan 2024 13:57:31 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
Date: Tue, 2 Jan 2024 23:57:29 +0200
Message-Id: <18F24CCC-76E3-4FB0-AE62-BAAAFDEDB2EC@gmail.com>
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
To: dave seddon <dave.seddon.ca@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] Ubiquity (Unifi ) Smart Queues
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

PiBPbiAyIEphbiwgMjAyNCwgYXQgODo1OSBwbSwgZGF2ZSBzZWRkb24gdmlhIENha2UgPGNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPiAKPiAJ4oCiIEknbSBub3QgcmVhbGx5IHN1
cmUgd2hhdCAib3ZlcmxpbWl0cyIgbWVhbnMgb3Igd2hhdCB0aGF0IGRvZXMsIGFuZCB0cmllZCBs
b29raW5nIHRoaXMgdXAsIGJ1dCBJIGd1ZXNzIHRoZSBrZXJuZWwgc291cmNlIGlzIGxpa2VseSB0
aGUgImJlc3QiIGRvY3VtZW50YXRpb24gZm9yIHRoaXMuICBNYXliZSB0aGlzIG1lYW5zIGl0J3Mg
ZHJvcHBpbmc/ICBPciBpcyBpdCBFQ04/CgpPdmVybGltaXQganVzdCBtZWFucyB0aGUgc2hhcGVy
IGluIEhUQiBpcyByZXN0cmljdGluZyB0aGUgZmxvdywgdGh1cyBkb2luZyBzb21ldGhpbmcgdXNl
ZnVsLiAgRHJvcCBtZWFucyB0aGUgQVFNIGlzIHdvcmtpbmcgdG8gcHJvdmlkZSBjb25nZXN0aW9u
IGluZm9ybWF0aW9uIHRvIGEgTm90LUVDVCBmbG93LiAgVGhvc2UgbnVtYmVycyBsb29rIG5vcm1h
bCAoYWJvdXQgMC4yJSBkcm9wIHJhdGUsIGFuZCBtb3N0IHBhY2tldHMgaGl0dGluZyAib3Zlcmxp
bWl0IiB3aGVuIHRoZSBsaW5rIGlzIHNhdHVyYXRlZCkuCgpVc2luZyBmcV9jb2RlbCdzIGRlZmF1
bHQgcGFyYW1ldGVycyBpcyBub3QgYSBiYWQgdGhpbmcgYXQgYWxsLiAgSSdkIG11Y2ggcmF0aGVy
IHRoZXkgZGlkIHRoYXQsIHRoZXJlYnkgdXNpbmcgbnVtYmVycyB0aGF0IGFyZSB0dW5lZCBmb3Ig
Z2VuZXJhbCBJbnRlcm5ldCBjb25kaXRpb25zLCB0aGFuIHRyeSB0byBjaGFuZ2UgdGhhdCB0dW5p
bmcgaW4gaWdub3JhbmNlIG9mIHRoZSBlbmQtdXNlcidzIGFjdHVhbCBuZXR3b3JrIGVudmlyb25t
ZW50LiAgTW9zdCBlbmQtdXNlcnMgaGF2ZSB0aGVpciBXQU4gcG9ydCBmYWNpbmcgImdlbmVyYWwg
SW50ZXJuZXQgY29uZGl0aW9ucyIgYW55d2F5LgoKPiBBcHBhcmVudGx5IHJhdGhlciB0aGFuIGFw
cGx5aW5nIHRoZSB0YyBxZHNpYyBvbiB0aGUgb3V0Ym91bmQgcGF0aCBvbiB0aGUgTEFOIHNpZGUg
KCBldGgwICksIHRoZXkgYXJlIGFwcGx5aW5nIGl0IGluYm91bmQgb24gdGhlIHRoZSBldGgyIHZp
YSBpZmJfZXRoMi4KClRoYXQncyB0aGUgY29ycmVjdCBwbGFjZSB0byBkbyBpdCwgc28gdGhhdCB0
aGUgcWRpc2MgYXBwbGllcyBzcGVjaWZpY2FsbHkgdG8gdHJhZmZpYyBjb21pbmcgZnJvbSB0aGUg
V0FOLiAgSWYgeW91IGFwcGx5IGl0IHRvIHRoZSBMQU4gZWdyZXNzLCBpdCB0ZW5kcyB0byBhZmZl
Y3QgdHJhZmZpYyBjb21pbmcgdGhyb3VnaCB0aGUgcm91dGVyIGZyb20gdGhlIFdpRmkgb3IgaXRz
IGludGVybmFsIHNlcnZlcnMsIHdoaWNoIGlzIG5vdCBkZXNpcmFibGUuCgpUaGVzZSBhcmUgYWxs
IHF1ZXN0aW9ucyB3ZSd2ZSBjb25zaWRlcmVkIGF0IGxlbmd0aCBpbiB0aGUgcHJvY2VzcyBvZiBk
ZXZlbG9waW5nIGFuZCBkZXBsb3lpbmcgQ2FrZSBhbmQgb3RoZXIgU1FNIHNvbHV0aW9ucy4KCiAt
IEpvbmF0aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

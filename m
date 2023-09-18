Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3C77A3F34
	for <lists+cake@lfdr.de>; Mon, 18 Sep 2023 03:25:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3F9CC3CB39;
	Sun, 17 Sep 2023 21:25:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695000316;
	bh=HsEkgk7SEM78BQXm0CEE1neFoYc3HQaiNsOItjihMGk=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Tsf7DLa1XXQs7M2BBcxZUdXxGHUtUuNpKZ9CQpuRMyG+zJ61E4xhqVo4QRgvhbtK0
	 E+cNntIynSPOfSVh5koXbJokqHpmbRCO/BKISXMrkZYkC6CnXzfCLzD24MivNME104
	 c0bXnm4U0gkneYDsbjPQMJ2svdsBHmmAjiiISKOYVbjMPAl+5NnXA7Xkah6StiDKY9
	 h337CguZIi7mbkW3ZDKmTzjvxeXGQxMhLatkZmgevyYw4ZZG4Wl8CYyWU7PtnNnXO4
	 R8iSyn5kwp4FXyiVESuptXcYiP2mcxQ38v6i/U4xzAvkinvQZIfzXq9lw9LCj46yQ4
	 vfEEkxm8W1/zw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 644383B29E
 for <cake@lists.bufferbloat.net>; Sun, 17 Sep 2023 21:25:15 -0400 (EDT)
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-502fdfeb1d9so2502635e87.2
 for <cake@lists.bufferbloat.net>; Sun, 17 Sep 2023 18:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695000314; x=1695605114; darn=lists.bufferbloat.net;
 h=mime-version:message-id:date:content-transfer-encoding:references
 :in-reply-to:subject:from:to:from:to:cc:subject:date:message-id
 :reply-to; bh=9UuAY/f8CXT1U8GrF86fci0uhXvrreqcdW2jbLYRO3Q=;
 b=OYli00FOmLzr+fev07fhYfAPJ6W0jrIfwDlDq9pOOJSrvWn0AwcYDmJV0prmzH8FQY
 zcc0APech9PT71nVSDatiWoHbxp9o+pTwyYDXkEEi/afrBumHFJqhhauItU16L3Kf1hn
 Pv1paYuHix5YMciv/zimsl9Vs2e/Jmp35D51VEJUU/oD54oqLftkqBMv435QLGWdtDy0
 AoizONpUt7470ZqsZXWvECKW/nv5huP9G1R+iYKND8TOFcPJlKjkXt4IeaUBSv7s/zQM
 lWPlz1Ka0kQwa2MC6wgJRE3Vcq8mOLNBtH0LqzkaL+E88kl2Q3FtQAVC2TiVUbqo36ZX
 JE2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695000314; x=1695605114;
 h=mime-version:message-id:date:content-transfer-encoding:references
 :in-reply-to:subject:from:to:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=9UuAY/f8CXT1U8GrF86fci0uhXvrreqcdW2jbLYRO3Q=;
 b=qfbCo4NQfC+kjvLt9+YAsoziWOwSMyqvRcpXj/nGH5cyOvbbdwT0ApNrUsa6AgPdL7
 DA5MMyfVGmSvazYFkQHeQZY2Wei1L+iNHn9SC++tWFN8MDe74D7RurKaZf+iDJQ6xS+p
 zwnTpeOudRIvKWza5QKndalHPxl5REaSIFJCTjo3KcVcnHcKciYIFlfSEpuCxd0zfT1X
 mtEvrJFNg2Q33wEv6h31bPkWlyQ/t6MPQcBl8UZK4ShdSj/QnRwyfvNv386nfI0tQTKi
 BASH3u3nsq4yk22g7mGVtWkyD5sQk+XNKQl074Z8oRO8RJJKDWv1V4Gdvd7jCWrJC1Hs
 EdwA==
X-Gm-Message-State: AOJu0Yw2M7EFWptDqoCi8CVgEjW3NPCmZ13IKDsGKnS39oqE8t1xaLOD
 KKxT1pjMtZzBpstKH0cXCjY=
X-Google-Smtp-Source: AGHT+IEkJgsOV0uhSoAU0beMgeHz8BvHNuAPwQwX2zt2UGlY/nHkKCdboHqMu5KwEQwdn2q8LtzY3g==
X-Received: by 2002:a19:5043:0:b0:503:1ca6:c590 with SMTP id
 z3-20020a195043000000b005031ca6c590mr327310lfj.22.1695000313402; 
 Sun, 17 Sep 2023 18:25:13 -0700 (PDT)
Received: from ?IPv6:2001:14bb:677:1481:df97:6d19:5b29:e99e?
 (dy57vlyr-w92vw25l9hsy-4.rev.dnainternet.fi.
 [2001:14bb:677:1481:df97:6d19:5b29:e99e])
 by smtp.gmail.com with ESMTPSA id
 v3-20020ac25583000000b00500b3157eb9sm1589617lfg.158.2023.09.17.18.25.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Sep 2023 18:25:12 -0700 (PDT)
X-Priority: 3
To: dave.taht@gmail.com,cake@lists.bufferbloat.net
In-Reply-To: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
Date: Mon, 18 Sep 2023 01:25:09 +0000
Message-ID: <ly9dlv.s15qm0.0-qmf@smtp.gmail.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uZGF5LCAxOCBTZXB0ZW1iZXIgMjAyMywgRGF2ZSBUYWh0IHZpYSBDYWtlIHdyb3RlOg0K
PiBBIGh1Z2UgdGhhbmtzIHRvIGRhdmUgc2VkZG9uIGZvciBidWNrbGluZyBkb3duIGFuZCBkb2lu
ZyBzb21lIGNvbXByZWhlbnNpdmUNCj4gdGVzdGluZyBvZiBhIHZhcmlldHkgb2YgYXJtNjQgZ2Vh
ciENCj4gDQo+IGh0dHBzOi8vZG9jcy5nb29nbGUuY29tL2RvY3VtZW50L2QvMUh4SVVfVEVCSTZ4
RzlqUkhscjhyenl5eEZFTjQzek1jSlhVRmxSdWhpVUkvZWRpdCNoZWFkaW5nPWguYnB2djN2cjUw
MG53DQoNCkknbSByZWFsbHkgbm90IHN1cmUgaXQncyB2YWxpZCB0byBjb21wYXJlIGZxX2NvZGVs
IG9uIGRlZmF1bHQgc2V0dGluZ3MgKGVxdWl2YWxlbnQgdG8gcnR0IDEwMG1zKSB0byBDYWtlIG9u
IDFtcyBhbmQgM21zIHJ0dCBzZXR0aW5ncy4gIEF0IHN1Y2ggdGlnaHQgc2V0dGluZ3MgeW91J3Jl
IGFza2luZyBDYWtlIHRvIGhvbGQgdGhlIHF1ZXVlIGRvd24gdG8gYSBmaWZ0aCBvZiBhIG1pbGxp
c2Vjb25kLCBhbmQgd2UgYWxyZWFkeSBrbm93IGZyb20gTDRTIHRoYXQncyBhIGZvb2wncyBlcnJh
bmQuICBUaGUgaW50ZXJuYWwgb3ZlcmhlYWRzIG9mIHRoZSBMaW51eCBrZXJuZWwgd2lsbCBnaXZl
IHlvdSBkZWxheXMgb2YgdGhhdCBvcmRlciBhbHJlYWR5Lg0KDQpBdCBsZWFzdCBpbmNsdWRlIGEg
cnVuIHdpdGggQ2FrZSBzaW1pbGFybHkgb24gcnR0IDEwMG1zLCB3aGljaCBpcyB0aGUgZGVmYXVs
dCBhbmQgd2hhdCBtb3N0IEludGVybmV0IGZhY2luZyBDUEUgd291bGQgcnVuLiAgWW91IG1heSB3
ZWxsIGZpbmQgdGhhdCB0aHJvdWdocHV0IGltcHJvdmVzIHNpZ25pZmljYW50bHkuIA0KDQogIC0g
IEpvbmF0aGFuIE1vcnRvbg0KU2VudCBmcm9tIG15IFNhaWxmaXNoIGRldmljZQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCg==

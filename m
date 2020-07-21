Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 94936228BEB
	for <lists+cake@lfdr.de>; Wed, 22 Jul 2020 00:29:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2132B3CB38;
	Tue, 21 Jul 2020 18:29:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595370551;
	bh=ul8akE2A68ubtYPgmkGqhaA2qdsfYuSc83uBxb3Nza0=;
	h=To:References:Date:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=egBUG3PJcaZAqJySw18Y9UcrSrvV/HEF6kG/01MnCru1BZy3QLCo3h/XYOJioD1vW
	 WjC5f4+ArNxAkHdeTvXojGZuEZVCHeKt07nTXOjXN0LjH5GK3gk62SIRqeSWC+BGdy
	 5vvL+68c0Rb8+s+wDkA+ogVYf7o/MDoTAbI7VhPiPTfYEYLLQsH/p2CqxZBY+ZeXhO
	 W3LIgm9loKZPp8IivcQeQq+uyHywAT8H6vo3rGASyG1Y8wD1LSLiN9y2DN/FxqVF7d
	 p9cXcQZf89q+LaHrCWKDYYyHpAIlV/lTw4KExuLP94yljdnI4ZmApnY3eEsZVie4BT
	 6Ngi66hV/9rJA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sonic303-3.consmr.mail.bf2.yahoo.com
 (sonic303-3.consmr.mail.bf2.yahoo.com [74.6.131.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 082863B2A4
 for <cake@lists.bufferbloat.net>; Tue, 21 Jul 2020 18:29:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048;
 t=1595370548; bh=ljkUsGiL5tMh136NFvbTb2xRERxqLY4vpNl/yU5mw7A=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject;
 b=DyjRv2QjXCN5nKg9iCCRjdjNaFHku9hNLDOePkKRmXEByJeSX2g1XFJ1Gl1piqimMYDZYa34zOr7qGWUJ/L5YRft7sz8xEcdAKMfl2rhS7dQA8jdJ3GjMlmbAy6CGAdj9DQV1tA+ZAUNaKtvl5TSbiYCTsolLtqo4pDZXcf0q1swnQKIdpYE1SR9i4sFno8gURjlJAIPmgdGkrwJxxcZjZSJ5NOimfEnlftl2vPZr80PRc86x+p+NPB/2hyL9BaF0WSAThhKhU7ZltM05zt868Dn15QPWfLc2ZDQZTuvhiLD4cHtA+cbminy1HKxiiGw5yxmkYnz70PCUpddHksCIQ==
X-YMail-OSG: BbCVTZEVM1m8nAT_eipYh28P0arZF_ZgBA0OIOnW2hwOVUitzFXV430vkIaueEI
 n6orqrvLCCcFn8Z.L0yQlbJQn0p5noSaAjVj5DoeL.aMu3Ace8cGzPrGglac1GJzSLTbqDqR.3qa
 1VjUvnfMnF8wSvQ5c0DDDE9MU12pjHwYgBKUzX21fNLOak1c_UkfxGTofayGAJSa7Q8lBdh2UXIt
 XZtwkMDv0l8aLZAxI4yP8zygEuJoN7Y6r4AQJnfXI3BpRVmV8tb5hKWTBP6rLu2F737lA89f5Ien
 K2ZxXv1A6ZzhxyDfpuRQm9IdxBzYhm3JYFbzN6HO2lkQL4rG8TOPeJ2.vVkGPwhvA5ivdd.9uqht
 eiz0E8Zm8_7jr9wMAoC9bpq.x_tokOHiizXmm4cjR81YtmUJX3x7ZPA0salfeHAqpnEGk0a1QHBl
 P3dpSf4sDM2dVE7hCHPs7NX0qMRq1ej9XkKQd2nnmJ1salMNuKhd7A6YdNi839aqw.PsxxT0Yc0i
 x0g8J7dAsMjhqBTGHiH_y6PIeRGsVPUMoO_hSqUqcybrh.oo2_.Z6tH7dF1KfU2EU7SbE0GtUR9F
 ZuPVif1tY64mwlQ8eW_Tmc5hsFbG18CTCaWdvkPmJa8iNgEDtaNlEll_7muUrCjnWsEcO4fd3VlD
 rhbheOTO9XoVr9BNTplMgtjBQgMQUrHvOhzVzpGRE4xgAL9g3YSzWaEWXrer8iymChiVGpNOHFO2
 65EUlKJH0ztB.YZq1nI7BCgD_Y8Da.I3v5C3wA3IVy2lTIygkUiPmn_icNS6HbWNeBIR_vaW7c9R
 MJ85Is.rLJrAFL8ngjTZsx0uwYVLlfknTfGiOXOX3EI6HBiD6Dm8QntGO9cVHg8yulaGm4i30ryd
 mE.49o9_1BvoO6_8idDZ5EFc0zFYgCulmtAQDIP4I9gh1Ybpnix5rXcL2z2.rkrZKtCJDbxrFAhV
 fY_VXelyCIUEb4lDGXhCKG3hYrXg3SeMv1BdDtF_.Iq_0HVxeilWgQbF.WnBIT_Yjkn6xuSRMDLv
 FS2WeNN_pTybXpY6LigGQnh2VD0M2G3euwHe05pGmJn3R.feXAhZJcMxn.L8NZw0RcfcyMI04YGy
 fdVZ7ct5mXdJyHF5p4_f3PxSKy94BkwxDQphuHSE2OCetPDLzs_Hil832bAdG1IjgocAChJf1_4c
 nI5fpfm2shfgp5miS8lad6Zfsx0TOa8Xd.Rfv0lBUztZW36vAd_vDHNUX72skFQfuSPjkUM4PKUV
 iemB8tyIZHez.Kcri.LiDWav6JH8YK9zHldG2UN.rwi9iggIbs1nIOYpO8Giz7IBuqXiY_UYAek3
 266EF3cE3M.kXtk1DFrc03f0rEmXu.2DdEuQJRUsW.vliYiZQZvTCdjlfbEWHi8Yn6DUVcAq5
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.bf2.yahoo.com with HTTP; Tue, 21 Jul 2020 22:29:08 +0000
Received: by smtp430.mail.sg3.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID e7f7f34e36dcd509445715f437c5dcc5; 
 Tue, 21 Jul 2020 22:29:05 +0000 (UTC)
To: cake@lists.bufferbloat.net
References: <CAH8sseTbx=f4EsAw1cF7JiJNWytM+1_DRS98W=fAQtOyPYG1XQ@mail.gmail.com>
Message-ID: <cab4018f-88b8-b7cc-93c1-8b3230e21079@yahoo.fr>
Date: Wed, 22 Jul 2020 07:29:02 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAH8sseTbx=f4EsAw1cF7JiJNWytM+1_DRS98W=fAQtOyPYG1XQ@mail.gmail.com>
Content-Language: en-US
X-Mailer: WebService/1.1.16271 hermes_yahoo Apache-HttpAsyncClient/4.1.4
 (Java/11.0.7)
Subject: Re: [Cake] quantum configuration
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
From: Y via Cake <cake@lists.bufferbloat.net>
Reply-To: Y <intruder_tkyf@yahoo.fr>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkuCgp0YyAtcyBxZGlzYyBzaG93IGRldiBldGgwCgpzaG93cyBzZXR0bGVkIHF1YW50dW0uCgpP
biAyMDIwLzA3LzIyIDA6MzIsIEx1Y2EgTXVzY2FyaWVsbG8gd3JvdGU6Cj4gSXMgdGhlcmUgYSBy
ZWFzb24gd2h5IGluIGNha2UgdGhlIHF1YW50dW0gY2Fubm90IGJlIGNvbmZpZ3VyZWQgdG8gYSAK
PiBkaWZmZXJlbnQgdmFsdWUgbGlrZSBpbiBmcV9jb2RlbD8KPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4gQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

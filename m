Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 138F6BAD40
	for <lists+cake@lfdr.de>; Mon, 23 Sep 2019 06:26:43 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0059E3CB3B;
	Mon, 23 Sep 2019 00:26:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1569212802;
	bh=U8Xvf3XOpwncT31+UzSa1JULtlbYWJjpxBeXMDls6Yw=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XMrlbqU3NrUd5wqFrBHzapykzzae811tiSeGAa8kASG18bvM476n/0nOFtZ3R1DaD
	 gP/f2O35pmuVXECEZkuJPtctvJj7vOsDOBftLZS/1pimaPIUlL2kDFb37risE18Oty
	 8r7WwHKv9XUbwOK4sH23v9Y6J7c+oOlAoz79h0xGTh3PvULHa92HXr6jk66nrvigOa
	 NsrzKhgkIoy4vOA1eO8RCAjLEMaO4G3DHsBpmBa70Agr4Ey8UpSgd+qKCJk55BBMYo
	 mEeedW3o8LBxpmu8tZahpIp/ioahw165W9ogbmsAnf/CnycZ0LnEHJC+AWSrllbKKi
	 HyeYoWxjTuKCQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6BA3F3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 23 Sep 2019 00:26:40 -0400 (EDT)
Received: by mail-lf1-x131.google.com with SMTP id w67so9008022lff.4
 for <cake@lists.bufferbloat.net>; Sun, 22 Sep 2019 21:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Df3pEO3cNCft4LJ3fkAjxOiiXfNtrJGSEIB9oaRBThI=;
 b=OZMPGeBooOdHPfI1w5XwG3ajvvFCqmduAubx9lwDo8p6ELLbyyc/57oiQUdf1R7Smf
 pAeEr89nZJaLQDm1KFcxIP494pzCBd7aTI7DX0gmrKFa2V37rXr5ah1MU9EHkDMb3oXK
 2hE1JRfVn5w2ixy2IE5zO3JrFdT8smljhupnsezA1tH6DmRThnSsw4evmCAC7wTm/lzZ
 v+EpXJR348Xm1Cu1yn23ngKlwepVJB4KM2hIi1aKVkS69eFW6euG6ex/bsZigGRpCq1i
 BSmme3XHsX4BuKUwVsUwehbx1D+WesFG9/m0tDDJUSXT50UBQ0qomaVOEYL7GsCibrTM
 B0kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Df3pEO3cNCft4LJ3fkAjxOiiXfNtrJGSEIB9oaRBThI=;
 b=YRnNC/xBitTr+RKsMS43bN4GUrjykGbCHnfVEgkxCunzamYI4+vFt8LQnSsS7uzaNl
 W+Y3RahRZjtaLU2wOF6GwZao7os9Jlrz0zX6s3E3VXZLUHAZTskjKuyHF4o0a3OIM2Id
 axOtdMahlSkJtV7AjBAbYGgOuPeYvPeYgdLfmqwd10XGDfokmCfNJa0KDBGtJEu8BYQJ
 XcU2VZ1amDfdegSiOiOpc2In9vtldM79RN0db9MEkwqKqvtl4L4rO+AEGQHubLBD2UDD
 KOJHM594uPfpRRphzpaReV2xalkDmmQRKfNNiwo6TJHHIpktS58gZh6PpD8UVeWa/GwQ
 uJ0w==
X-Gm-Message-State: APjAAAVkAePUbkeOM+YTI+TAYTlFoL4rc3/0JAmxaPF3c0ROIKIfioeE
 Ljal9Pfh8aub0mAtf9fc1eUddWMA
X-Google-Smtp-Source: APXvYqwhv4nml/3/3G3H1oc+UcZ0bOA0l68wCXpjxdtvd9niQgBpSWHDYPT8nBBge1dssloEi5nRug==
X-Received: by 2002:ac2:5965:: with SMTP id h5mr15377101lfp.129.1569212798880; 
 Sun, 22 Sep 2019 21:26:38 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-236-164-nat-p.elisa-mobile.fi.
 [83.245.236.164])
 by smtp.gmail.com with ESMTPSA id 28sm1958959lfy.47.2019.09.22.21.26.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Sep 2019 21:26:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <e3d4558a-1d56-a77c-5336-51bb3e6427ea@heavenlysanctuary.com>
Date: Mon, 23 Sep 2019 07:26:36 +0300
Message-Id: <F35FA667-3AE9-487E-9747-2EFCB6627556@gmail.com>
References: <e3d4558a-1d56-a77c-5336-51bb3e6427ea@heavenlysanctuary.com>
To: marco@heavenlysanctuary.com
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Frontier FIOS Framing
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

PiBJIGhhdmUgc2VhcmNoZWQgZXZlcnkgbm9vayBhbmQgY3Jhbm55IG9mIHRoZSBibG9hdGVkIGlu
dGVybmV0IGxvb2tpbmcgZm9yIGFueSBpbmZvcm1hdGlvbiBJIGNhbiBmaW5kIG9uIHdoZXRoZXIg
RnJvbnRpZXIvVmVyaXpvbiBGSU9TIChhc3N1bWluZyB0aGUgb25seSBkaWZmZXJlbmNlIGJldHdl
ZW4gdGhlIHNlcnZpY2Ugb2ZmZXJlZCBieSBib3RoIEZyb250aWVyIGFuZCBWZXJpem9uIGlzIGlu
IG5hbWUgb25seSkgcmVxdWlyZXMgYW55IHNwZWNpYWwgZnJhbWluZyBwYXJhbWV0ZXJzIHBhc3Nl
ZCBvbiB0byBzY2hfY2FrZSdzIG92ZXJoZWFkIHNldHRpbmdzLiBNb3N0IG1lbnRpb25zIG9mIGNh
a2UvZnEvc2NtL2V0YyBhbmQgRklPUyBhcmUgZXRoZXIgdmVyeSBkYXRlZCBhbmQgaW5jb25jbHVz
aXZlIG9yIEkgZmluZCBtZXNzYWdlcyBhbmQgZm9ydW0gcG9zdHMgYXNraW5nIHF1ZXN0aW9ucyBh
IGxvdCBsaWtlIHRoaXMgb25lLgoKSSBkb24ndCBrbm93IHByZWNpc2VseSB3aGF0IGZyYW1pbmcg
RklPUyB1c2VzLiAgSG93ZXZlciwgbW9zdCBwcm92aXNpb25pbmcgc2hhcGVycyB1c2VkIGJ5IGNh
YmxlL2ZpYnJlIElTUHMgb3BlcmF0ZSBvbiBFdGhlcm5ldCBmcmFtZXMsIHNvIGlmIHlvdSB1c2Ug
dGhlICJldGhlcm5ldCIga2V5d29yZCB5b3Ugc2hvdWxkIG1hdGNoIHdoYXQgdGhlIHNoYXBlciBp
cyBkb2luZy4gIFRoZSBwcm9vZiBvZiB0aGUgcHVkZGluZyBpcyBpbiB0aGUgZWF0aW5nLCBvZiBj
b3Vyc2UuCgo+IEN1cnJlbnRseSB0aGlzIGlzIHdoYXQgSSBoYXZlIGFuZCBhbSBhbHNvIGN1cmlv
dXMgaWYgSSBzaG91bGQgYmUgdXNpbmcgdGhlICJuYXQiIGtleXdvcmQgZm9yIGJvdGggaW5ncmVz
cyBhbmQgZWdyZXNzPyBJJ20gbm90IGVudGlyZWx5IHN1cmUgLSBzZWUgYmVsb3c6CgpJZiB5b3Vy
IGJveCBpcyBkb2luZyBOQVQgKmFuZCogeW91IGFyZSB1c2luZyBhIGZsb3ctbW9kZSB0aGF0IGRl
cGVuZHMgb24gYWNjdXJhdGUgaW50ZXJuYWwgaG9zdCBpbmZvcm1hdGlvbiwgdGhlbiB5b3Ugc2hv
dWxkIGhhdmUgdGhlICJuYXQiIGtleWJvYXJkIG9uIGluIGJvdGggZGlyZWN0aW9ucy4gIE90aGVy
d2lzZSBpdCdzIG1vcmUgZWZmaWNpZW50IHRvIHN3aXRjaCBpdCBvZmYsIHRob3VnaCBsZWF2aW5n
IGl0IG9uIGRvZXMgbm8gaGFybSBvdGhlcndpc2UuCgpUaGUgZGVmYXVsdCBmbG93LW1vZGUgaXMg
InRyaXBsZS1pc29sYXRlIiwgd2hpY2ggZG9lcyB1c2UgaW50ZXJuYWwgaG9zdCBpbmZvcm1hdGlv
bi4gIFNvIGRvIHRoZSAiZHVhbC1zcmNob3N0IiBhbmQgImR1YWwtZHN0aG9zdCIgbW9kZXMsIHdo
aWNoIGFyZSBtb3JlIHByZWNpc2UgYnV0IG5lZWQgeW91IHRvIHNwZWNpZnkgd2hpY2ggZGlyZWN0
aW9uIHRoZSB0cmFmZmljIGlzIGZsb3dpbmcuICBUaGUgImJlc3RlZmZvcnQiIGFuZCAiZmxvd3Mi
IG1vZGVzIGRvIG5vdCwgYnV0IHlvdSBzaG91bGQgb25seSB1c2UgdGhvc2UgaWYgeW91J3JlIGRl
bGliZXJhdGVseSBleHBlcmltZW50aW5nIHdpdGggc29tZXRoaW5nLgoKPiBJbiBhYnNlbmNlIG9m
IGZyYW1pbmcgY29tcGVuc2F0aW9uIEkgZmlndXJlZCBJIHNob3VsZCBqdXN0IGdvIGV4dHJlbWUg
YnkgcmVzZXJ2aW5nIG1vcmUgYmFuZHdpZHRoIHRoYW4gdGhlIHFkaXNjIG5lZWRzIGJlY2F1c2Ug
SSBhbHNvIHJlYWQgc29tZXdoZXJlIEkgdGhpbmsgdGhhdCBtZW50aW9uZWQgdGhhdCBpZiB5b3Ug
ZG9uJ3QgY29tcGVuc2F0ZSBhbmQgYXJlIGluY29ycmVjdCBldmVyeXRoaW5nIHN0b3BzIHdvcmtp
bmcgYXMgb3Bwb3NlZCB0byBpZiB5b3Ugb3ZlciBjb21wZW5zYXRlIHlvdSBtaWdodCBsb3NlIG91
dCBvbiBiYW5kd2lkdGggYnV0IHlvdSdsbCBzdGlsbCB3aW4gaW4gdGhlIGxhdGVuY3kgZGVwYXJ0
bWVudC4KClRoYXQncyBhcHByb3hpbWF0ZWx5IGNvcnJlY3QsIGNsb3NlIGVub3VnaCBmb3IgYWN0
dWFsIHByYWN0aWNlLiAgSXQncyBhbHNvIHdoeSB3ZSBpbmNsdWRlZCB0aGUgImNvbnNlcnZhdGl2
ZSIga2V5d29yZCwgd2hpY2ggYXBwbGllcyB0aGUgbWF4aW11bSBhbW91bnQgb2YgZnJhbWluZyBj
b21wZW5zYXRpb24gdGhhdCBpcyBldmVyIGxpa2VseSB0byBiZSBzZWVuIGluIHRoZSB3aWxkIC0g
bXVjaCBtb3JlIHRoYW4geW91J2QgZXhwZWN0IHRvIHNlZSBvbiBhIGNhYmxlL2ZpYnJlIGxpbmss
IGJ1dCBvbmx5IHNsaWdodGx5IG1vcmUgdGhhbiBvbiBtb3N0IEFEU0wgbGluZXMuCgpUaGUgb3Zl
cmhlYWQgY29tcGVuc2F0aW9uIG1hdHRlcnMgbW9yZSB3aXRoIHNtYWxsIHBhY2tldHMgdGhhbiB3
aXRoIHRoZSBsYXJnZXIgb25lcyB1c2VkIGZvciBidWxrIHRyYW5zZmVyczsgZm9yIHRoZSBsYXR0
ZXIsIHJlc2VydmluZyBhIGxpdHRsZSBtb3JlIGJhbmR3aWR0aCB3aWxsIGFwcGVhciB0byBtYWtl
IGV2ZXJ5dGhpbmcgd29yay4gIEZvciBmaWJyZSBJIHdvdWxkIHRyeSAiZXRoZXJuZXQiIGFuZCBy
ZXNlcnZlIGFib3V0IDElIGJhbmR3aWR0aCBlYWNoIHdheSwgdGhlbiBpZiBwb3NzaWJsZSB0ZXN0
IHRvIHNlZSB3aGV0aGVyIHRoZXJlIGlzIGFueSBibG9hdC4KCiAtIEpvbmF0aGFuIE1vcnRvbgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

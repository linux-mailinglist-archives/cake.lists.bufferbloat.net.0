Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E85F3DF208
	for <lists+cake@lfdr.de>; Tue,  3 Aug 2021 18:03:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D79363CB40;
	Tue,  3 Aug 2021 12:03:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628006608;
	bh=vustJUfWVKBWR/3gXKyT7fLVrOBG4w4XGYZz7zzE6uQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=o1XnCdiVgGIv1tg4eIrIOvk1rt8gmG/pXCU5dvC1QqaRsipZTasaAETAVHfudwDRQ
	 HBWs1l239Ve3cQRVERViHUMhWEBfNFXs7QG+O6swQ5uh7pWxaZFLe9FRShEBsVxPiw
	 b2ra/aNPltw9NE8B5fqNgLwEvwBrJqXngtanC4ty/6016aSf+/bRnfIb86bVa7LB5/
	 WYROx4L6kFzNA9IsksKch2PKC+UxpVFNyd2KUmV9LnSvg9A2hN4PpJzS06cEc38CsR
	 xX60L3yDM7njJw9e7NN6cK66JW5D7v3EUdbO7UK9MWWUMJiU1d/PKrL11hmyhMVM2u
	 Ph7d7ZkYx00HA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 25FA93B2A4
 for <cake@lists.bufferbloat.net>; Tue,  3 Aug 2021 12:03:27 -0400 (EDT)
Received: by mail-ed1-x530.google.com with SMTP id x90so29598186ede.8
 for <cake@lists.bufferbloat.net>; Tue, 03 Aug 2021 09:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=rAX09lRWxY+EJKRcyfoTPRzhwoa0nhSElR3AEuwygKA=;
 b=GYVP50vJHyJOS2HONv0eP6hp/B1cBl3s4sB+/1I9hZ8D8ihNbWZOCasLCYqAq9Qu2C
 dMWZh2+lEU906IyyYHeN+WHwPidhvhLonJkvpgrLeJp3bvLcBhXlUo42/1aAoKuvY1J6
 AV53XBxzsw5CgWUHbmfXvyG6rykRtRuUrADVZdWEwZNM4irNa0vf3x31OsrxDr85hT7Z
 Wy4pD7KVn+UmRETj8/oZp3CNxp4MV9My241I2IWCsE/ri51bm2+m8H6jyLNWJ1Thto6+
 Bb+IMMbxYvSrcDtaEhu+8yIt9s7N/lxQqRAjyzs07ABV0qYM9Vrx/nJRo63rEicqxSxl
 N/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=rAX09lRWxY+EJKRcyfoTPRzhwoa0nhSElR3AEuwygKA=;
 b=UCe8ZPn1WdGeNw168RQFnq0k6utpJmkXFB14U7aaBNd3H90MsDNzvbZRrJunYQu29O
 w3S0LUHqcNbXE5FRzJnmidByqvcKiFQyfp0vf1xz50TiB4DghLWVxZETAJHugzo2fhwy
 wzoePU3J2wYWKJT6m1ynyBugvUaxSxR31jc66YsJoQfep8T1YV3LM5v3Ybd2MxcyxNS/
 JQo1AURyiyBCh5/Um9hD852QTAUV8tbPpgbilG8NFeN1tUGtqz7m68fI12iBdfK36u92
 2vl1JU4cG5lOl9nsF+ySYFZllluzhUZkGHBOC/meWAE3WxVLoYkoQFyuzxyFbgK2cwq8
 EJcw==
X-Gm-Message-State: AOAM531e1BbxRPgFUP3UJx7GPq9lPqOJUhgAakiSWtE1BpnoN+DjZ1Ak
 6JORx67DnWnN1V3dhx1qMoARSDjdCO9GmA==
X-Google-Smtp-Source: ABdhPJwd1baJEoeZ2+ktiDX1DeS69HN6RkHhq7o/mSKZJFNYiO+A+bmhbVa/MFW16buRxkTiAZQBIA==
X-Received: by 2002:aa7:c489:: with SMTP id m9mr26617294edq.256.1628006605681; 
 Tue, 03 Aug 2021 09:03:25 -0700 (PDT)
Received: from [10.72.0.88] (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id c13sm8234269edv.93.2021.08.03.09.03.24
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Aug 2021 09:03:25 -0700 (PDT)
Message-ID: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: Cake List <cake@lists.bufferbloat.net>
Date: Tue, 03 Aug 2021 18:03:24 +0200
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
Subject: [Cake] cake srchost/dsthost stopped working?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SXQgc2VlbXMgbGlrZSBDYWtlJ3Mgc3JjaG9zdCBhbmQgZHN0aG9zdCBrZXl3b3JkcyBtYXkgaGF2
ZSBzdG9wcGVkCndvcmtpbmcgc29tZSB0aW1lIGJldHdlZW4ga2VybmVsIDUuNCBhbmQgNS4xMC4K
CldoZW4gdGhlIGJ1ZyBvY2N1cnMsIHRoZXJlIHNlZW1zIHRvIG5vdCBiZSBmYWlybmVzcyBiZXR3
ZWVuIGhvc3RzLCBidXQKcmF0aGVyIGZhaXJuZXNzIGJldHdlZW4gZmxvd3MuIEl0IHJlcHJvZHVj
ZXMgb24gYW55IDUuMTAgc2VyaWVzIGtlcm5lbApJJ3ZlIHRyaWVkLCBhbmQgZG9lcyBub3QgcmVw
cm9kdWNlIG9uIGFueSA1LjQgc2VyaWVzIG9yIGxvd2VyLiBIZXJlJ3MgYQpzdGFuZGFsb25lIHNj
cmlwdCB0byByZXByb2R1Y2UgaXQgd2l0aCBuZXRucywgYW5kIHNvbWUgc2FtcGxlIG91dHB1dDoK
Cmh0dHBzOi8vd3d3LmhlaXN0cC5uZXQvZG93bmxvYWRzL2Nha2UtaG9zdGZhaXIvCgpJdCBjcmVh
dGVzIGNvbXBldGl0aW9uIGZyb20gb25lIElQIHRvIHR3byBJUHMsIGFuZCBmcm9tIHR3byBJUHMg
dG8gb25lCklQLCB1c2luZyB0aGUgc3JjL2RzdGhvc3Qga2V5d29yZHMgYXMgYXBwcm9wcmlhdGUu
IEl0IGFsc28gdGVzdHMKZnFfY29kZWwgd2l0aCBhIHRjLWZsb3cgZmlsdGVyLCBhbmQgY2FrZSAq
ZHVhbCotKHNyY3xkc3QpaG9zdCwgd2hpY2gKYXJlIGJvdGggdW5hZmZlY3RlZCBieSB0aGlzLgoK
QW55IGlkZWFzPwoKUGV0ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

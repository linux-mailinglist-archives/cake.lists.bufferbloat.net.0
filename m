Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8710111F1AB
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 13:09:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6138A3CB3C;
	Sat, 14 Dec 2019 07:09:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576325373;
	bh=FJkqEqG7mmgCx/vlW0K7dvyEm9Q5cCBqFhoS/NtH+tM=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ibw3oVKYhpEVlqUtD7t2xPzWV3w6KEXanZwiYammTXQbRLD4Sc+rX5EJxMDVUdYP2
	 xJKRcVEut2SaTrdlry2CnXA6dzaHM2dvxxB1Dhto305noGP4EUL4DdnXLEvQ3xeAYo
	 k3PbqFtHvQghGN7C5ILN3SduJetoFNLoo45rzqBKU2TvJT+WcKbDXGLZp6Pq5PZ1js
	 cE/z9J3qqY2WSQF2dkiinc9KScHYZBb5Kh6o9H5WgXMYxatnuChVkNmkzv0ZwGlaZO
	 0FZ4Ksn4vxWFm/v1u4HU28YhXgl4yreYWCbaAGSfXR5e0DK+6QNfO0XLEEklTgoBKe
	 2sHtQ0iG5eNyg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C38F13B2A4
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 07:09:32 -0500 (EST)
Received: by mail-lj1-x231.google.com with SMTP id s22so1656087ljs.7
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 04:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=r3Hcj8aC8UvETx+Euf74nSDiL0hzx6jAhi1IHwDybbs=;
 b=a23Go+Joad7MAM7EGP/4nqrSvW/wCUsEGK0hNcijkU1PtfTn47Uk46c9QtVnjrVU+x
 eMndT60rMSLqoZHBjITwdt6RRI+tXKD5dWKYS1WWc5WjQfgYb1WAh3zKS/dAj2PVZq7w
 seoa/FJe84CKGlhjKAypPdoRRlFhMqmi3ya+39NL9u/gM4IZVGpjJB4bKDJ8uSi+NK0p
 q42XcDII+FAAQnLWkhaRbsO/qi5BbHxYmsk+vjV92+4wu1lLGp2Op25woZmorPfvEh/f
 XTQKVyx4FaL2SiZshHRdoOgRh97Upy7tzk8XAeCQ5wiMtLOmTfaQOe4ubevt6ts00noi
 McJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=r3Hcj8aC8UvETx+Euf74nSDiL0hzx6jAhi1IHwDybbs=;
 b=suwkZNxWRqgEjoZqGK30Ax3uG2Bx9LKR1dYdfRkwHlZGmcjr1dcPUti5WVjX3eLxqh
 pRndIwgVS5c+Fi11yIRNdAqueFfPxKX2nDDx6Q9C9At/V/vUNnk8JIF1d2Y6JLiUiVso
 QCsFUh4SdbZEzsdqpghkHqRASrEv4OZ5xPr+9uTSRkXx2erk0bkhZ05z3u1SFa5JO+Sr
 Du2faFAEhUk82KmYcX0HWuFB0hyxR/JvaBHxZ49BBVKMReMTYijSl+Mqm2F7a2qghAyM
 Wq7tllTp5NVER6MgL4Kk2tsbJ504Wl6CCNc6caS4Lbzz4r7RL4iyMwfbeEgZiIkd7TyT
 wZ6w==
X-Gm-Message-State: APjAAAX3q73WsWHe9vW7WznqddUt8ivlDa+IuhUHt0ILT67X1TLg4TBk
 0ouUnizUKJj+LeeNRmvAvGU=
X-Google-Smtp-Source: APXvYqyaBU29mL/rHu7Nz4Gcmen/D5iFJcu1hiB2066DvuFC/q45aDHh1Z0VWzrm37OxeALZywFHFQ==
X-Received: by 2002:a2e:9b95:: with SMTP id z21mr11050485lji.112.1576325371738; 
 Sat, 14 Dec 2019 04:09:31 -0800 (PST)
Received: from jonathartonsmbp.lan (83-245-229-102-nat-p.elisa-mobile.fi.
 [83.245.229.102])
 by smtp.gmail.com with ESMTPSA id j10sm6533213ljc.76.2019.12.14.04.09.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Dec 2019 04:09:31 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <55F31738-C935-4361-B11E-9E7CA657489F@slashdirt.org>
Date: Sat, 14 Dec 2019 14:09:29 +0200
Message-Id: <1632300D-56B8-4E9A-B4FD-C244D4F5AED6@gmail.com>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
 <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
 <46DDBCAA-EC6C-492F-8448-DF85ABB4E1DB@slashdirt.org>
 <1507FAF0-8A13-48E1-8A36-0D352F4FDD00@gmail.com>
 <FD87F736-DF93-44F4-805C-6ABCE8D4E172@slashdirt.org>
 <A265EDE5-BDEE-4806-AB75-4BD70053EC0B@darbyshire-bryant.me.uk>
 <4E238145-37A2-45AC-B8BB-AD602C4D1044@darbyshire-bryant.me.uk>
 <55F31738-C935-4361-B11E-9E7CA657489F@slashdirt.org>
To: Thibaut <hacks@slashdirt.org>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Trouble with CAKE
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
Cc: Erik Taraldsen via Cake <cake@lists.bufferbloat.net>,
 Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxNCBEZWMsIDIwMTksIGF0IDE6NTkgcG0sIFRoaWJhdXQgPGhhY2tzQHNsYXNoZGlydC5v
cmc+IHdyb3RlOgo+IAo+IEnigJltIHdvbmRlcmluZyBpZiB0aGlzIGNvdWxkIGJlIGFuIOKAnHVz
ZSBvZiB1bmluaXRpYWxpemVkIGRhdGHigJ0gdHlwZSBvZiBidWcuCgpUaGlzIGlzIHdoeSBJIHdv
dWxkbid0IGtlZXAgd29ya2luZyBvbiBhbiBvbGQga2VybmVsIHRoYXQncyBmdWxsIG9mIHZlbmRv
ciBwYXRjaGVzLgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C416D74DF64
	for <lists+cake@lfdr.de>; Mon, 10 Jul 2023 22:35:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 22DEF3CB39;
	Mon, 10 Jul 2023 16:35:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1689021345;
	bh=vkIaHU2rTaBHbuNLGOB2vxwb4eY6ZTWTbbXi7gg1rMM=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=F+1dx32tlu65hK7v/6Lz/bpuYxmxI2z0rUf3Arb5/rkGkQP/z8W1twGjI46abRS1H
	 y9FzYDlYucsZji6mz602EI8oFLZXJnjYqwOdAhMGGhBkr4knAZb1GThtgZjuWDsrZU
	 3ZsOfPzwHbmYZmihy2gr2LOu9gAnpv6/CvH6pHSolcf7ktBYKDkV3Z/Vkq7WlyHeT5
	 3XkKM24t1MGn8YhIF1iM+6ESh6tpiUB/p0jkWG5qT4pk3TinaQiVg5xmwzt8IDDF07
	 LXm4CAT3Gg/mVt4OZgfDWFrZJmPQrVKVQle1TvkrVPJcZ1zr5Vrb5bg7vA90UwFcSP
	 bYKKdCvwHL2Ug==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C4D533B29E
 for <cake@lists.bufferbloat.net>; Mon, 10 Jul 2023 16:35:43 -0400 (EDT)
Received: by mail-pg1-x532.google.com with SMTP id
 41be03b00d2f7-55b66ce047cso2448169a12.0
 for <cake@lists.bufferbloat.net>; Mon, 10 Jul 2023 13:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1689021343;
 x=1691613343; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v/iJn/xslKmBgOHecN/WnDsMGYo7IVX0x2bBQjNx2Kg=;
 b=CPTAf2Ja6ypgW9926UoFVwGbmgOzltI0W7CPpu5aTzM8gSDdJsWfOeXxrFaSMUSCWG
 r7CcMiq1F/uv4M7TMDjeGAjT0tnlS6AwDIxBg5Uq7XzhNov+4vWr5UJqrZpEMHpeQ+K2
 KoivaO7Qgkww6LIAwATE46Y4ewFpXyt2RVndUA2EdlYho3aPSorJ63fLIKJPRIA8tH9T
 xzy2yRGPTMowIn/3kGe8i/GcCevt429dgA34zDjk4h1z9492jG+v2Vk6bcPtSL/Ncc8T
 nkz4KrVBXj5T6dEnVVXWzRjaflsXY+dGBtDiPd48KAVawj23s/oN5rEBMvSIid0BNQRd
 116g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689021343; x=1691613343;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=v/iJn/xslKmBgOHecN/WnDsMGYo7IVX0x2bBQjNx2Kg=;
 b=Zn2OjhOnfdiiBt2ngViCNQDJqtve6w3cvjd916hLlyFzOLgBm2Xmb1/sfiBbIohmyO
 U3p2dd3vgbLAojGaFVKj+fEXab/KK51hwmFNKAb/NFvnBjoBTmhINmJC79IU5vHpuClM
 z77Ylt9H77EwVLZlsbGxY+VQsueBowjt5CWdteYFRYvM9qodMb13cv2WIlhwcsz1plMJ
 +6FPjTW3545KvUnXRgeiIXrigrceAaRHE6dvUiXN+FgaNaXnPTKLeyRG5/UslxkGTOGI
 ep6KBtoQH2ZZoz09ydhWKY/1RD4PIL8+6y2AuM4pc58eoQwwexHa9+jjV8vxdy9kfK5m
 EYzA==
X-Gm-Message-State: ABy/qLabO1Z+UDQnAsPxk+CUjwqgLigsdMB8taTPDN0oqqVUD6uIc/oL
 RL0oqO9yuJY9OC0Z96joF4eYJA==
X-Google-Smtp-Source: APBJJlH2k1Ll77Iv21VaHpZJ/T21gFiV9IhAd4fmby3C7CRjnRL+/0EU667Er1Z/RGiDwMCwnOqwfg==
X-Received: by 2002:a17:902:e5c1:b0:1b1:76c2:296a with SMTP id
 u1-20020a170902e5c100b001b176c2296amr12757204plf.60.1689021342773; 
 Mon, 10 Jul 2023 13:35:42 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 t3-20020a170902bc4300b001b7fb1a8200sm287408plz.258.2023.07.10.13.35.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Jul 2023 13:35:42 -0700 (PDT)
Date: Mon, 10 Jul 2023 13:35:40 -0700
To: "David P. Reed" <dpreed@deepplum.com>
Message-ID: <20230710133540.1cbe20bd@hermes.local>
In-Reply-To: <1687962752.39077378@mobile.rackspace.com>
References: <1687962752.39077378@mobile.rackspace.com>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Two questions re high speed congestionmanagement
 anddatagram protocols
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
From: Stephen Hemminger via Cake <cake@lists.bufferbloat.net>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Cc: Dave Taht via Cake <cake@lists.bufferbloat.net>,
 bloat@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCAyOCBKdW4gMjAyMyAxMDozMjozMiAtMDQwMCAoRURUKQoiRGF2aWQgUC4gUmVlZCIg
PGRwcmVlZEBkZWVwcGx1bS5jb20+IHdyb3RlOgoKPiBIb3cgdG8gZmluZCBhIGtlcm5lbCBtYWlu
dGFpbmVyIHRvIGNhcmUgYWJvdXQgRENDUCwgc2VlbXMgdG8gYmUgdGhlIHF1ZXN0aW9uIGZvciBM
aW51eC4KPiBJIGFtIHRlbXB0ZWQuLi4gTm90IHRvIGdldCBpbnZvbHZlZCB3aXRoIElFVEYgImJh
cnJpZXJzIiAod2hhdCBhIG1lc3MsIGdpdmVuIHRoZSBmb2xrcyBpbiBJRVRGIHdobyByZXNpc3Rl
ZCBpbiBBUU0sIEkgd291bGRuJ3QgbGFzdCBhIG1pbnV0ZSksIGJ1dCB0byBrZWVwIERDQ1Agc3Vw
cG9ydCBhbGl2ZS4KPiBUaGUgYmFycmllciBoZXJlIGlzIGdldHRpbmcgYWNjZXB0ZWQgYXMgYSBM
aW51eCBtYWludGFpbmVyLCB3aGljaCBpcyBhIGRpZmZlcmVudCBpc3N1ZSBlbnRpcmVseSwgbG9v
a2luZyBhdCBteSBsYXN0IHR3byBleHBlcmllbmNlcyB3aXRoIHN1Ym1pdHRpbmcgc2ltcGxlIGJ1
ZyBmaXhlcyB0byB0aGUga2VybmVsLCB3aGljaCB3ZXJlIG5pZ2h0bWFyZXMuIEkgZG9uJ3QgaGF2
ZSB0aGUgY29tbWl0bWVudCB0byBiZWNvbWUgYWNjZXB0ZWQgYXMgYSBtYWludGFpbmVyLgo+IEJ1
dCBpdCBzZWVtcyBnb29kIHRvIG1haW50YWluIERDQ1AsIGRlc3BpdGUgaXRzIGxhY2sgb2YgcG9w
dWxhcml0eSBhcyBhbiBJRVRGIHN0YW5kYXJkLiBJdCBkb2VzIGRlYWwgd2l0aCBDQyBpbiBhIHdh
eSB0aGF0IHNpbXBsaWZpZXMgdXNlIG9mIFVEUCBmb3Igc2VyaW91cyB3b3JrLgoKSW50ZXJlc3Rp
bmcgdGhhdCB0aGVyZSBpcyBhbiBvdXQgb2YgdHJlZSBEQ0NQLCBjb21wbGV0ZSB3aXRoIGxpa2Vs
eSBHUEwgbGljZW5zZSB2aW9sYXRpb24uCmh0dHBzOi8vZ2l0aHViLmNvbS90ZWxla29tL21wLWRj
Y3AKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C22A083AB24
	for <lists+cake@lfdr.de>; Wed, 24 Jan 2024 14:50:11 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 799063CB40;
	Wed, 24 Jan 2024 08:50:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1706104210;
	bh=JCkK+Cd20/lofV1gC4HNpM5pYdY/iSW41+gOvGaOTxE=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=ZxuZeQCTTcq2kRmdTA+oPYmbzjApgiTilzXUKDGG+w2KaBP6EsTZQelnwprgyakZ+
	 N1uOJyISeyI/T7IjNqAl9ujOUJAAhYDlXruo53+L0vUDIiCKSTYYZvQQU1NskxAfC2
	 3EpBcWZZ/18MZmdfn6iIpFwaEd9vFoaFEylZI1aXJP9xIrxyWtOI9DF+TKzE0AmCe1
	 GH7rBoaEr+dc2fHidu8aUuO0ClpVubjTBPWN8e+R2BacF2wfR4AAcIBDqizWCyaRNo
	 1q4FiSImNReLjZgUvmF3V15Zbs4b5hBmMsY6IErcm21xmgAVwSUH6W67RmoyolR29B
	 V7ae1IEVzzaMg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 529C53B29D
 for <cake@lists.bufferbloat.net>; Wed, 24 Jan 2024 08:50:09 -0500 (EST)
Received: by mail-pj1-x1036.google.com with SMTP id
 98e67ed59e1d1-2903498ae21so3052216a91.1
 for <cake@lists.bufferbloat.net>; Wed, 24 Jan 2024 05:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706104208; x=1706709008; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Voh8RIHh+/avlGhgbjuDXKyABfxpD9n9L1zeGM+oAQ4=;
 b=SUxg3N3vwniPHckVYh1PRWZy2hXbf53G2rVN5LHN1yJ4HAakSWbeF0z6ETKNivgnUN
 myH9xyRwSK4iQ1rdYmYCD7zJVpkWIppMaH64u/I7zc2B/70mydyLw22pgjPV05aPXRIK
 y2hMO/zvk0gphnr8nL2diDYlWaxLqiAY++vxn0PaIfv7AJYZ0p1XDq+IVI0OkUxoAs43
 vUe3UZJP7dbKivNWtK5QNiL3vhNrVpQTGtnZQv4BooxnRDeqsfz02c1MRwTe+rqx4jjY
 bi85mmwMHq9u4tngWUYemf1qujLbfmKgHYsaRbNJHKU9hZx2W+uNhZpw7sxLWuyZy62u
 3rUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706104208; x=1706709008;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Voh8RIHh+/avlGhgbjuDXKyABfxpD9n9L1zeGM+oAQ4=;
 b=Urr4XCGAp1x6q4PB8RbFirrLoi5ptkj554YFUeC2+mlCKq0ynDU+YtCTDC7nV5ATjb
 I6/MqgMBWTxuSX+Oh+RoVRSbDv2241O5S2WpQRFRqkXDW7noDxYQCxpkCeGQc8nazR4k
 9ZE+bJEnLwwVPL/KzDJEmuysTo+4hd7O4uQH4GP8EpaPjGPBqFgL7guQG7JBsZhdpZuI
 IJ4jkGuoXbfMPwABuYRsc2cc1OP3GInwQOEhvypa1Z8cceMN1zfYqZDEH7s/ya0FVNiw
 wqlFw3egvHZmOsvixB4xs1cMSRRbYijFJ9XBF3U1OtxR0pjfIDW5wcQPPn89FO/5F6y1
 qNIw==
X-Gm-Message-State: AOJu0YwMtw+rCHL6tWsS/vVEVUR+QTEHu5+auQYd3Q+QdyndPBmHzpvQ
 cpWO12K0wSM09Ihpc2GlZmNAufHS8GiolNGJFO/H0Rs/X9oyrlkUjwLqVf5ncAt+TqfFhAiszsA
 lVXKP2BisOTqrJSrxFR8klWgb2ZeQEOR5gGA=
X-Google-Smtp-Source: AGHT+IEBhkr9X30n4h0KzzLzmyPkGyylnyfQPuOXy+L9Y/jaOOLqxwila9aFpTXfqJx9KKu9jAtgz4f1tL2c8aWtB+g=
X-Received: by 2002:a17:90a:cb82:b0:290:9243:8988 with SMTP id
 a2-20020a17090acb8200b0029092438988mr2820244pju.63.1706104208008; Wed, 24 Jan
 2024 05:50:08 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 24 Jan 2024 08:49:56 -0500
Message-ID: <CAA93jw6Xowh13SioOPCZbH-1rmj3DC3GFB=F1DBaRaOa1M0ucw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake on vyos
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnVuIFBPU1QgYW5kIGRpc2N1c3Npb24gaGVyZToKCmh0dHBzOi8vbmV3cy55Y29tYmluYXRvci5j
b20vaXRlbT9pZD0zOTEwMTU2NAoKCi0tIAo0MCB5ZWFycyBvZiBuZXQgaGlzdG9yeSwgYSBjb3Vw
bGUgc29uZ3M6Cmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9RDlSR1g2UUZtNUUKRGF2
ZSBUw6RodCBDU08sIExpYnJlUW9zCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

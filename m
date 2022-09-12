Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B456F5B5D9C
	for <lists+cake@lfdr.de>; Mon, 12 Sep 2022 17:48:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 20B9D3CB43;
	Mon, 12 Sep 2022 11:48:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1662997708;
	bh=IRyxunL5WXNQcayxg7VUOpaUXQfIRcezmsgkmqlxxIw=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=FfTuhxT/uYaiA/zDOMQsDpP9j9mzidxxAH6fFDQJIHc62Vcokoq478i6cUXrgYFZv
	 n5Pb4HBT8Z4ZerpUx2Z7z4kPvsNqF6+5XX5KQq3zWPuom2mKke2Eb1BSD7wl1V5VTk
	 luKikULRPPpp3dkW7Xb/PDle9+5tqFDqEOxMkW3iNI9eBOnmH62T/LzSzcyXiDgrYD
	 xHRa2htyybm055xU3oN6wquS6KZ1rUhtQpKd6AwEOZh/0wsf24Y8VSWEHDSIM9BK00
	 WIGjTrVCDGLV0cxniI8KJrE4TneIDwX3cQ7RrhT9Cl3JFRdi7JHBVKgaIxzZlyWvrI
	 /RuVCj+p/0Trw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AA4A93B2A4;
 Mon, 12 Sep 2022 11:48:26 -0400 (EDT)
Received: by mail-wm1-x32b.google.com with SMTP id
 d12-20020a05600c34cc00b003a83d20812fso7495716wmq.1; 
 Mon, 12 Sep 2022 08:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date;
 bh=x1f5gcR5/ThKcIIqU8om2Gs0rokiucQZ/jOUoq8oDok=;
 b=BkTBjjuwwvehHfdM1/kW4ZzAvjSXfZdQRN+iXuZ3tklaRu2yAzREfxTy67VPpaNQbl
 uaUCfwJU0SUttLfGOvpn3R5QVlDwSKgCGYoe2GkQ6ySya41pOuRMDg4W/MnzNPMGj1/M
 hpkqJtS40MS4PphQf/SxLtOJhgiAjRNbQK8oEQ2zzBDRiyJjK13DlXW4bnRumbby31Xb
 ZDBns01rFJwJZr1TEBQTvNYqkv4sR89NO3rUMxSke0hvTh6AwrNHAy/S0yvNy+jq93C2
 QKq0nxR0OnP688ZeK4GvPD44yuTLvpFU9fzq2C2KiKvbh9t56udVbUq8RTNG80mjbYcB
 0GmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=x1f5gcR5/ThKcIIqU8om2Gs0rokiucQZ/jOUoq8oDok=;
 b=Sn1Hc/TqHoBC0B6wOV0hjfy1Kw2oiiomeq+fe/mIVjpMLA/uUbTbR4c4h2P2CERTAY
 wrqDfVTm6Clifiko6wihvGjNquCuumvrbzR0Nl5IasJWJyutVXcSJXWP8CBHQnRVpk09
 ysTkJqeBhukrNbI5XZF7iL+wQbrOWMglD6ncYNMRW3J2fhk1ca0UGQTiTwBqqeITvNqq
 XfHRR00nf8GhplK0Wf1uqJZqfpw4RLDDSV/7yfcKsIEZCSOsVzq9ZP0alUizXJTC5+uq
 owWvD4ILlYeORpQ/ijcpbD6uaJZ0AySaYxb95HmGHcd5r3tPbbMePWw+/7oB7GCUwbXN
 OGeQ==
X-Gm-Message-State: ACgBeo2s+bdhx1u79Bd5NWjTXiB/z0GklmsHKBzS5Qkx03uEn55aGm8W
 9ygatH39teftsTPraQ3WJV6YfKnRrW/+Ix4WK7HANO9QxBU=
X-Google-Smtp-Source: AA6agR5VdWJun913iLDi8w2iXifCwwOCqI5ZcnlBzbwTEHYnr5HqxEwz2Uy/2KrAXIWuBNwCG3D9N919m7+eyRdLRoM=
X-Received: by 2002:a05:600c:4256:b0:3b4:7cfc:a626 with SMTP id
 r22-20020a05600c425600b003b47cfca626mr5490930wmm.187.1662997705306; Mon, 12
 Sep 2022 08:48:25 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 12 Sep 2022 08:48:14 -0700
Message-ID: <CAA93jw4H+_mwJ-Y-Ls_g2ZkFBcAM33g2mVibr7-AqOegMbeBbg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Subject: [Cake] libreqos consultants wanted
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

SSBoYXZlIGJlZW4gZG9pbmcgYSBiaXQgb2YgKHlheSEgcGFpZCEpIHdvcmssIGhlcmUgb3IgdGhl
cmUsIG9uCmxpYnJlcW9zLCBhbmQgSSdtIHJlYWxseSBlbmNvdXJhZ2VkIGJ5IGhvdyB3ZWxsIGNh
a2UgYW5kIHRoZSB4ZHAgc3R1ZmYKYXJlIHdvcmtpbmcgYXQgc2NhbGUuIFNlZSBodHRwczovL2xp
YnJlcW9zLmlvLyBvciB0aGUgZ2l0aHViOgpodHRwczovL2dpdGh1Yi5jb20vcmNoYWMvTGlicmVR
b1MKCklkZWFsbHkgc29tZXRoaW5nIGxpa2UgdGhpcyBjb3VsZCBiZSBydW5uaW5nIGF0IGEgbG90
IG9mIChlc3BlY2lhbGx5CnNtYWxsZXIgYW5kIG91dHNpZGUgdGhlIGZpcnN0IHdvcmxkKSBJU1Bz
LiBTbyBpZiB0aGVyZSdzIGFueW9uZSBvdXQKdGhlcmUgdGhhdCBpcyBpbnRlcmVzdGVkIGluIGNv
bnN1bHRpbmcgb24gaXQsIHBsZWFzZSBsZXQgbWUga25vdyB5b3VyCmNvbnRhY3QgZGV0YWlscyBh
bmQgd2UgY2FuIGFkZCB5b3UgdG8gdGhpcyBwYWdlLgoKaHR0cHM6Ly9saWJyZXFvcy5pby9jb25z
dWx0YW50cy8KCkxvbmcgdGVybSBJIGNhbiBzZWUgaWRlYXMgaW4gdGhpcyBtaWdyYXRpbmcgYmFj
ayBpbnRvIG9wZW53cnQsIGFuZAppbnRvIHRoZSBjb21tZXJjaWFsIHN0dWZmIGxpa2UgcHJlc2Vl
bSwgZXRjIC0gIGFuZCBhbHJlYWR5IEkndmUgZ290CnNvbWUgaWRlYXMgZm9yIGEgbmV3IGNha2Ug
ZmVhdHVyZSBvciB0d28uIEl0IHNlZW1zIHRvIGJlIGEgd2F5IHRvIGhlbHAKYSBsb3Qgb2YgcGVv
cGxlIHJlYWxseSBmYXN0LgoKLS0gCkZRIFdvcmxkIERvbWluYXRpb24gcGVuZGluZzogaHR0cHM6
Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29kZWwvCkRhdmUgVMOkaHQgQ0VP
LCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

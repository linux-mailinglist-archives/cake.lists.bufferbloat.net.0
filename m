Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBDD4A4762
	for <lists+cake@lfdr.de>; Mon, 31 Jan 2022 13:40:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1CBCD3CB40;
	Mon, 31 Jan 2022 07:40:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643632843;
	bh=l8CD78HB9C83QcOhgZ6L1xHb7K7cd+lC5h1+d/O83iQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=D2pU/7eg092KJrw3YIyL4//7+8EXxvhOfi8DVFRA3lkqBITFnxoQzArbguxqFusa9
	 Y0QehGV/Z7/gPu6diEaTghWJavU2VRJ3Ry/AfGpQ7SxkNhn7O76RReJr2s7pCsARqu
	 6huZ5Wn6FogRghin17m9zgOZxAJm7PZE0+WBCsxItJpRAkF97r84nlrjQ3Q4m1Lwbd
	 dOr8eiB5u80YKW5i3n9fAFkdfc4EmqjNg15HEtMeUUBDrxIk4zmf0SbwscwrYf1fOS
	 YFbBXxb35cwZ03ZNf2cXENMRrVV/G/6nubnDC9RwRHABz6s+76/23zJ/agdKEkG+b0
	 48bpqbrGQ9qIg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 52CD63CB35;
 Mon, 31 Jan 2022 07:40:41 -0500 (EST)
Received: by mail-ej1-x631.google.com with SMTP id m4so42750544ejb.9;
 Mon, 31 Jan 2022 04:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KmDqUJahuFM2DlLENYLdbyxeZsQsYKp2EbEd2IfdxrY=;
 b=ISlvDRi3Zdanor92QQ2Mq6Vk45D+TRz2PvpwyXwKjL88hBmwiDa5qPCfZQMqKbhUq/
 PqUza+CGfyA/oLQrgTWUTawCezJE7zsMSlXxYptTlynOPtqNZBBI56xtUu/j0GzFcdd0
 AMR/eQzzJJPvR0zlbhXxcD2zlatb7Ywt/dSNLWCE0supNGSf9m299nZevYyVfWGFMD6G
 v4vNcagpBxVWV78sOYnDYLkfS79yy5mIoP8wu8EJy+4hfA94ZAtXR6Fe3io1goed8Hxr
 Ip5lCPHS3JiQLes3gDK3C1bRezRns0Is8qijQPxarTNF1v+Qd8sf9FBb8QhCQhfx8DJZ
 7Ezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KmDqUJahuFM2DlLENYLdbyxeZsQsYKp2EbEd2IfdxrY=;
 b=k+tdCw8ZdrdW0G4WEjfmipnhbiXKNPN4CI7t7rnA+TQQTnptOWNhLkkilRuKEbDB06
 E6QLUHx1nTBJF9TodM+c+3ThOMaFp5mzyUi/xmMe/4j1dKOKn7oDg4nOpECUwOZ/ZzUh
 TCprgHuMPGfSt1ePJfvw/Al1UGzHsLt7IPopYDmTLT5NyGIIVOJu/Juu5vfrZrjfiQ28
 5eysr+T92dBIjZjNZrRNpr1hSn1ZpuLzlGg5AjNyi/Kv62XeSf83+6ElzoAJJ65tyfPY
 jwONOXzkulNxsIM5gKn6uW8WExMtNTag4318W14Xh2N8gxWMRgHfU/4jY/gsX3nVWxk1
 gnOg==
X-Gm-Message-State: AOAM530iKGwFlKgPifQ3r27eRglaxj5onuNUkipV+K2jdVjEdPLz2kBM
 sVE8SRoGfYs/HxxMzzciVX5ApD3ILMhWZCXHS9X+ivjHGfM=
X-Google-Smtp-Source: ABdhPJz9GBZma1uKpva+mmoa64xZOF1eyZcjW0yeh01YvPWzaCv7RjLOh7JKOwv0tRy9La0OSoRLvb/qJBE8gK7NLjs=
X-Received: by 2002:a17:907:86a8:: with SMTP id
 qa40mr14756046ejc.645.1643632840133; 
 Mon, 31 Jan 2022 04:40:40 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 31 Jan 2022 04:40:28 -0800
Message-ID: <CAA93jw4VU4jyjM463B6yYD_y-Nik9WMVjpD1QWs_=dcU1sj97A@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Subject: [Cake] starlink lede
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

T2YgY291cnNlIEkgbm8gbG9uZ2VyIHJlbWVtYmVyIHdoYXQgdGhlIHN0YXRlIG9mIGNha2Ugd2Fz
IGF0IHRoaXMKcG9pbnQsIG5vciB0aGUgbXQ3NiB3aWZpIGNvZGUsIGFuZCBoYXZlIG5vIGlkZWEg
aG93IHdlbGwgbWVkaWF0ZWsncwpkZXZraXQga2VlcHMgdXAuLi4KCmh0dHBzOi8vZm9ydW0ub3Bl
bndydC5vcmcvdC9zdGFybGluay13aWZpLXJvdXRlci0yLXJ1bnMtbGVkZS8xMTg4NDQKCi0tIApJ
IHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5
Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2
ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

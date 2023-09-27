Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D05227B0D6A
	for <lists+cake@lfdr.de>; Wed, 27 Sep 2023 22:27:37 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A011E3CB39;
	Wed, 27 Sep 2023 16:27:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695846456;
	bh=fT5Qo5isk5nDps720j5IJunumx8IN8tbiy29kKy3gWA=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=m+ZG2Pui5BfbbC4b27pZdTFFPOvaAxtJGaN00bk6LVwhyDUsPiZTFkUnzDmW6ZIKq
	 SlE917cYLCXdPTgQGEgmNE5rM0SSBnH7bnB/wYLFoIN1OLDHNHbNYu0YkYo0oR4eRM
	 6E61hs8BKEUDX4AHC9ZdE6UmqaKm5O7U/RQJtuZ+GFWxjnLYFpodW6GemCSIAPnbBI
	 zzfOGH2qih6P1QqmWpS0jesYm7yOkyQ9RjrdB2kG9OB/VBymEPI9h4jtTll7oAhTF4
	 javS7KA9xZaJ3p1WD/bg/3Qy4OW38DxgjnWpdyeP+3ZtI/DNBYWJC2RZ03Ej57snpb
	 2Jfbrvy7Xch5Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D43003B2A4
 for <cake@lists.bufferbloat.net>; Wed, 27 Sep 2023 16:27:35 -0400 (EDT)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-68bed2c786eso9649992b3a.0
 for <cake@lists.bufferbloat.net>; Wed, 27 Sep 2023 13:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1695846454;
 x=1696451254; darn=lists.bufferbloat.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PlBu5/FMSs4RxSjR1w5ejb+i7cz0cdZ+OH5A1t6R28Y=;
 b=Li8x2ny1UdUROqiFkrYjH90xxAtPypVBX/3dGptr8LxtD2e6CtmngsWtwyL5HrGeaZ
 bvW4Exp3SJkgESRJnBjpSXsH09d7wEHP83CYE/+XX/IVLVKt1m2cSVQ8Je6aRpJRXpNf
 KWQyiCmYJyXkx9tO0dfDw2Y+2w21/5UL89Uph1bjApMrxkIdi1BhjV8hMEwDC2ppQEls
 WXTJoD9yC4amrkSCQFyTVEvJsOUUXrioMCFmjWJNa1v85BUtS93Va7bAU+95JavoBXVR
 9QzNk/3AzFwzYgTeXKdaLu8AuMlmYllXC0RviDfdtT96FBRBWckRs2e26aH2z+xuM8ux
 SLmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695846454; x=1696451254;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PlBu5/FMSs4RxSjR1w5ejb+i7cz0cdZ+OH5A1t6R28Y=;
 b=QulWZP0bk2yXAhnCiSK1IjDgkIcwpOKZuX9zuExvDDWvpWKMl99myDPvu6lSyEOOEQ
 VCYjCJrOw31cT6QYc/pAcBZnuCSYXnZYZW4sC8hENwNYhcfPV6QccZY0v7XHGNpPb33s
 ZBC9xlg6lo3nqHe7DGx04SUs+Q3qIZ8fV0QyG8cubQp0jwU3MTILRxVIZur122XavihI
 ZiUjMvdS3wMhppk6M5ytmQv8F0exdrNFs/YrLo4oPJtztAofO1kt29JlX4nPeApn3+aT
 SpYuZ+z4ZHMSFKXG20XDbNA0atS3n0+T/MBcKRik2fM190rtkxfM0feXHDMvF4ofpTuh
 fC6g==
X-Gm-Message-State: AOJu0YzNVxTmvlgR0N9zXrYlfeVV+j5c85V5dElsRNI0izywYCTxzq8o
 gMzmNOSCM00FzX8GWfaYkMPv4Zr9Y2wv6ge8Yv/Iaw==
X-Google-Smtp-Source: AGHT+IE1pRBEDvH/HkikHfPWnkv+Z07IVMAzpYo5KQVetYLH48qgOAQtTLAZgDmf5nudIHj9c80kIA==
X-Received: by 2002:a05:6a20:258e:b0:153:8754:8a7f with SMTP id
 k14-20020a056a20258e00b0015387548a7fmr3120903pzd.4.1695846454476; 
 Wed, 27 Sep 2023 13:27:34 -0700 (PDT)
Received: from hermes.local (204-195-112-131.wavecable.com. [204.195.112.131])
 by smtp.gmail.com with ESMTPSA id
 u10-20020aa7848a000000b0069343e474bcsm574362pfn.104.2023.09.27.13.27.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Sep 2023 13:27:34 -0700 (PDT)
Date: Wed, 27 Sep 2023 13:27:32 -0700
To: Jan Rovner via Cake <cake@lists.bufferbloat.net>
Message-ID: <20230927132732.6585172a@hermes.local>
In-Reply-To: <e6464f0d9e7e4c91b26f2d08d72b1a0c@diadema.cz>
References: <e6464f0d9e7e4c91b26f2d08d72b1a0c@diadema.cz>
MIME-Version: 1.0
Subject: Re: [Cake] Cake - flow (or host) weight request - how to implement
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCAyNyBTZXAgMjAyMyAxNzo0ODowNiArMDAwMApKYW4gUm92bmVyIHZpYSBDYWtlIDxj
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cgo+IEhlbGxvLAo+IAo+IEkgYW0gdHJ5
aW5nIHRvIGV4cGVyaW1lbnQgd2l0aCBzY2hfY2FrZS5jLCBteSBnb2FsIGlzIHRvIGFkLWhvYyBw
cmlvcml0aXplIC8gZGVwcmlvcml0aXplIHRyYWZmaWMgc2VydmVkIHRvIHNwZWNpZmllZCBhIGhv
c3QocykuIFRoZSBwcmlvcml0aXphdGlvbiB3b3VsZCBiZSBjb250cm9sbGVkIGJ5IGFuIGV4dGVy
bmFsIHN5c3RlbSBhbmQgaXQgc2hvdWxkIGhhbmRsZSB3ZWxsIHRoZSBzaXR1YXRpb24gd2hlcmUg
YSBob3N0IGhhcyBhY3RpdmUgZmxvdyhzKS4KCklzIGl0IHBvc3NpYmxlIHRvIHVzZSBvbmUgb3Ig
bW9yZSBleGlzdGluZyBCUEYgaG9va3MgdG8gY2hhbmdlIERDU1AgYml0cyBmb3IgdGhhdCBwYXRo
cyB5b3Ugd2lzaCB0byBhZGp1c3QuClRoZSBwb2ludCBpcyB0aGF0IGNoYW5nZXMgdG8gdXBzdHJl
YW0gYmFzZSBjb2RlIGFyZSBoYXJkIHRvIG1haW50YWluLCBhbmQgdGhhdCBpcyB3aGF0IEJQRiBp
bml0aWFsIGhvb2tzCndlcmUgbWVhbnQgdG8gcHJvdmlkZS4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B169EA244
	for <lists+cake@lfdr.de>; Tue, 10 Dec 2024 00:01:00 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F3FF83CB43;
	Mon,  9 Dec 2024 18:00:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1733785258;
	bh=qLjAazSPVd56ws1pynwRvcH7EfuwwACk9FxaC1Uy3nE=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=isTa7xJTjfF9I20/knj9B3aflktm8pKqTvhmryl3UNWCFhdu3BOeIQYckVL2QaIVo
	 Hd62crrQx5WIGn7cGRPgf06MqxoRJTOB77XKVSPtPZHH4aKDIj3LwuT6QgSwns/00d
	 9pMtFzVmDhR11KymEZu4bYukb61qYX6YOmCJdu4z5sRevDz/v5EcrMdvMaMr474SJS
	 iIoWaawwu02JuYfm96yZ2s7chFd+kyCxSSb7JD20QAf4AIABl4frV61ueNTULttT6e
	 xzZieQ39m2sfiG2Bru/Qc2XwVnyx0Z+x/Pi/nyDfOpugUok2OTtcTzKNdKOwOKl4Bb
	 ywyd8A3E2B94g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F07583CB38
 for <cake@lists.bufferbloat.net>; Mon,  9 Dec 2024 18:00:55 -0500 (EST)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-728e1799d95so3200b3a.2
 for <cake@lists.bufferbloat.net>; Mon, 09 Dec 2024 15:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20230601.gappssmtp.com; s=20230601; t=1733785255; x=1734390055;
 darn=lists.bufferbloat.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8rdqTpO2uA1Ykp81jesT1emUsHbdy9YgUbLnxTQ984U=;
 b=Ltc3KaPoEB7sDS9BbpfF+6K3a0oDaNmP7G/xjdhlvuQ+3dEy/WSmk6sPAnVUiMxiQa
 6kKuEiF4syFfIFP+uk/uLS0LxAxf0Bsonp+yHN2MGalrI2vPC7IcfuWxwhr529SjOUFd
 FUa+IPS6xHHqlbrftg8CF8tK0JgLOS7u3vhUbYpFRcsVvvrq7GC8Y81CPD6dDroE1mGJ
 7Phx5XPAxlaS1Km0wZ1hGMchPw33839ZRmIBo1zw2ytAHGQxl7LdbMwmxz87Xstf2EgX
 6ntIzanQxNCWCK3p4N8V4kDhIGIyVR+S0Ls2mcZF0XdzLcAzgX0eUmx7Sn1qot/rOPJD
 4YNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733785255; x=1734390055;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8rdqTpO2uA1Ykp81jesT1emUsHbdy9YgUbLnxTQ984U=;
 b=r/ft8aQjZ3M2wj8aFZEAgOgaHvQhwrgn0W3Ej4dEYz8rgSYgbEuz7Nl6XTyKz52QF5
 zEeg8bD0lS9XtH4/ccuJs1KoYsEGDNetslDSKMalF6kypU8ZZnHE72Ae+55JKpV/NgqC
 vF11Stm/jlE7qUCgZ/UeJ6WPodRH+t+jxaAQikhfruz86KlK38E7VWD2pKRuUQpwIvV1
 qVREvt0lh0CxKpyORCWzat90msMUJIrTC3nDyvieWdKJ0xy7mT0BWHEu4O4S5G7L0qkR
 A78gRJ28uCh620inLYdt+KwopZCNGwT5B1qHiSdx7/2yr5e7YgItwN9DwRO439xqltR7
 AE4A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWnxh3F6S+iz7dZ77wsmMDC7ye9g0LsqrdGgC9QnM5SIeo7ZgebJoXk14ZVvCDdDP9Lkg5B@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxTlqFNU1rw86py6mY3M7/Yl0RJs3X029tZ7jHJ4gsPyriyH9fi
 rgBPBTIZMZ0pghmraOOcqxqu8+0s8VWiSARLsdlJaya+MxCf1hIz1aP3vaSIptST391mv9+OW8m
 IwO+NF3Q88/yHjmqtj0fRGf7iqzr4QencwbVe
X-Gm-Gg: ASbGncutIVNnihhEwlNp9pNvIxmd4Cd6UD1IIPNY8JHXVfOFRPPwJBg8UWzMYODXwRq
 Hz5aH2SSxdtqsWAAHffjubQP5iLHobZniDg==
X-Google-Smtp-Source: AGHT+IG6WKU6sgAkakV11JKiqBBUmy5CZr+tK6ahkhudY9xN8p7Xb63u2DWQaS54pYrmBuUuBf0pO1kzC5tBKMzAJx4=
X-Received: by 2002:a05:6a00:885:b0:726:41e:b32a with SMTP id
 d2e1a72fcca58-7273c8f1d15mr3403673b3a.4.1733785255122; Mon, 09 Dec 2024
 15:00:55 -0800 (PST)
MIME-Version: 1.0
References: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
In-Reply-To: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
Date: Mon, 9 Dec 2024 18:00:44 -0500
Message-ID: <CAM0EoM=KWpQMcFrHiDPH=FM1raL47McVkCYBMGHBcScXGY_z3Q@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] [PATCH net-next] net_sched: sch_cake: Add drop reasons
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
From: Jamal Hadi Salim via Cake <cake@lists.bufferbloat.net>
Reply-To: Jamal Hadi Salim <jhs@mojatatu.com>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 cake@lists.bufferbloat.net, Eric Dumazet <edumazet@google.com>,
 Simon Horman <horms@kernel.org>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCBEZWMgOSwgMjAyNCBhdCA3OjAy4oCvQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gQWRkIHRocmVlIHFkaXNjLXNwZWNpZmljIGRy
b3AgcmVhc29ucyBmb3Igc2NoX2Nha2U6Cj4KPiAgMSkgU0tCX0RST1BfUkVBU09OX0NBS0VfQ09O
R0VTVEVECj4gICAgIFdoZW5ldmVyIGEgcGFja2V0IGlzIGRyb3BwZWQgYnkgdGhlIENBS0UgQVFN
IGFsZ29yaXRobSBiZWNhdXNlCj4gICAgIGNvbmdlc3Rpb24gaXMgZGV0ZWN0ZWQuCj4KPiAgMikg
U0tCX0RST1BfUkVBU09OX0NBS0VfRkxPT0QKPiAgICAgV2hlbmV2ZXIgYSBwYWNrZXQgaXMgZHJv
cHBlZCBieSB0aGUgZmxvb2QgcHJvdGVjdGlvbiBwYXJ0IG9mIHRoZQo+ICAgICBDQUtFIEFRTSBh
bGdvcml0aG0gKEJMVUUpLgo+Cj4gIDMpIFNLQl9EUk9QX1JFQVNPTl9DQUtFX09WRVJMSU1JVAo+
ICAgICBXaGVuZXZlciB0aGUgdG90YWwgcXVldWUgbGltaXQgZm9yIGEgQ0FLRSBpbnN0YW5jZSBp
cyBleGNlZWRlZCBhbmQgYQo+ICAgICBwYWNrZXQgaXMgZHJvcHBlZCB0byBtYWtlIHJvb20uCj4K
PiBBbHNvIHVzZSB0aGUgZXhpc3RpbmcgU0tCX0RST1BfUkVBU09OX1FVRVVFX1BVUkdFIGluIGNh
a2VfY2xlYXJfdGluKCkuCj4KPiBSZWFzb25zIHNob3cgdXAgYXM6Cj4KPiBwZXJmIHJlY29yZCAt
YSAtZSBza2I6a2ZyZWVfc2tiIHNsZWVwIDE7IHBlcmYgc2NyaXB0Cj4KPiAgICAgICAgICAgaXBl
cmYzICAgICA2NjUgWzAwNV0gICA4NDguNjU2OTY0OiBza2I6a2ZyZWVfc2tiOiBza2JhZGRyPTB4
ZmZmZjk4MTY4YTMzMzUwMCByeF9zaz0obmlsKSBwcm90b2NvbD0zNDUyNSBsb2NhdGlvbj1fX2Rl
dl9xdWV1ZV94bWl0KzB4MTBmMCByZWFzb246IENBS0VfT1ZFUkxJTUlUCj4gICAgICAgICAgc3dh
cHBlciAgICAgICAwIFswMDFdICAgOTA5LjE2NjA1NTogc2tiOmtmcmVlX3NrYjogc2tiYWRkcj0w
eGZmZmY5ODE2ODI4MGNlZTAgcnhfc2s9KG5pbCkgcHJvdG9jb2w9MzQ1MjUgbG9jYXRpb249Y2Fr
ZV9kZXF1ZXVlKzB4NWVmIHJlYXNvbjogQ0FLRV9DT05HRVNURUQKPgo+IFNpZ25lZC1vZmYtYnk6
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgoKUmV2aWV3ZWQtYnk6
IEphbWFsIEhhZGkgU2FsaW0gPGpoc0Btb2phdGF0dS5jb20+CgpjaGVlcnMsCmphbWFsCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK

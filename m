Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B016C32CABC
	for <lists+cake@lfdr.de>; Thu,  4 Mar 2021 04:14:45 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 937023CB38;
	Wed,  3 Mar 2021 22:14:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614827684;
	bh=wcWwg/lxcqS6qI5le+Om+eaS0DBahkneAvPoHA/FAJE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AQ4lzpvVjIaVTwlvEKa+mX/JqJZm8WD+5QBd8gBidSjik3GFpA2gt1bRZqzBqqO+p
	 gjRfPCL9NtC6LgIciYi1KxooNTauE64MiViIzF7qzuFl0JAdZ4FkEmtwSaZsSn93t4
	 svdrMN4QoPriDZ4zYKLTZMII8XxFQGb9eujShY4FRHb9XbKm7H80l1T05iaNo0BP9L
	 AyInuaEDW9SLJtOqCtlqqoNHJnfO4HztnyfL4aOZ9lRb/qTzhHUmvo3IAOqUZNjy2K
	 Ts+fAfsV7wbTgrvkmKSA26yhwLZOTluYCQNCIqXxv13WOdG4iWGGx4t7zRvqP2jJaw
	 u7OOW+qAdRApw==
X-Original-To: Cake@lists.bufferbloat.net
Delivered-To: Cake@lists.bufferbloat.net
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 832493B2A4
 for <Cake@lists.bufferbloat.net>; Wed,  3 Mar 2021 22:14:43 -0500 (EST)
Received: by mail-il1-x12c.google.com with SMTP id v8so19847732ilh.12
 for <Cake@lists.bufferbloat.net>; Wed, 03 Mar 2021 19:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9vxJS+opeBu4NRNhmj1c0ANd6kJj3p0YVgwW9yMm4Gc=;
 b=NIO2keBMdMgTAWEilFjfXpZiPRfCCh2QWFXAgNMt8Q31GH1Ndf5zY4IXsBTmMWbGjX
 0zQyU45d8NtyMTkklMsvgIjDpT8s4XxiGa2sT1lbkkFWnJgglKaeDiIX6Dk56FgPbZoM
 +h+TmqRKoHIROqfppntmXr/xEgRstfHa8L2RpKVu6kpIBVHSsTIsSQ7B+wl6Rm7UYwyX
 ghUs+3amPR2vmns5jSGoQum+4kwONoYXbSBqzIergXqcUwXXKhrC0ENp9dgpOPC0AJa8
 MIL5d1XCvGhFFV44OaOAbQ5250gZULCo8yjbondfasAQRTk5LLjSGTDVAZ8JR9Dl6fwb
 37tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9vxJS+opeBu4NRNhmj1c0ANd6kJj3p0YVgwW9yMm4Gc=;
 b=Rd4R1XUUkViRxQVpYnNjpXDDdMBgt0/ivCI8i18DfnmVip0cQL833UXmbBzxNrjniR
 ZHTHyMwa9rAlL6cvkT/r/1+U+tXz9I+0Z3PWhnNjo5WmUxu6Z6wjSa5YzyZWHpCffgTY
 gGdaOFfVkc/fqfcEtIyIDuYzRgOxaPmC3/Q7IEJSA0QamRTTGAIjygiQLJBRqMaJ5RAj
 Zig9HYsdr6vYg4gEhSd+EEZsFkJn8Y255AjHWQcdlewPrQuCtaHEtAPD69/aIR3SZFVv
 2xxNb606dwZVR58peLBbx3uO9tUJX7c4zXH03bKlnKdtVyVFa1zgBq4sk//xBakN1zFN
 MXRQ==
X-Gm-Message-State: AOAM5311sCeFU2aw7MY0W7bvcZoI0hfenh2Js1dfRTL4iNSg/akKqEOE
 K4gRj6Vr7msVt+zlc0rWbVlIio7NOI07bYDwOcw=
X-Google-Smtp-Source: ABdhPJy4DqJLhYcbNko5JG4qTO5nc/TnBkBma8F0z+KJyMuaDWGZXd0y2e1G2rmjjBb1BwGFS7OM+larJswOYz6bobI=
X-Received: by 2002:a05:6e02:f06:: with SMTP id
 x6mr2080299ilj.287.1614827682914; 
 Wed, 03 Mar 2021 19:14:42 -0800 (PST)
MIME-Version: 1.0
References: <CADmwGqvtAg9p_+RHN2bGms=8XLNU698irJ_VVoXjYpZ2v7=Vyw@mail.gmail.com>
 <9C791D21-7FC9-425E-9167-EC7660BF38F9@gmail.com>
 <CAA93jw7RP_xLJetKJqiEBH_bgG6_P=AGExZF9VTYs=3hoJH1vQ@mail.gmail.com>
 <FB137C01-AE54-4E90-A32C-CC0D8DE0F405@gmail.com>
In-Reply-To: <FB137C01-AE54-4E90-A32C-CC0D8DE0F405@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 3 Mar 2021 19:14:31 -0800
Message-ID: <CAA93jw59J7+6t-Gm_Q4+mo42BtkaqUct8SdWB1WKiD91akJMxQ@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] ISP Implementation
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
Cc: Cake List <Cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

eWVzLCB0aGF0LiBjYW4gaXQgYmUgbWFkZSB0byB3b3JrIHdpdGggY2FrZT8KCk9uIFdlZCwgTWFy
IDMsIDIwMjEgYXQgNjo1NSBQTSBKb25hdGhhbiBNb3J0b24gPGNocm9tYXRpeDk5QGdtYWlsLmNv
bT4gd3JvdGU6Cj4KPiA+IE9uIDQgTWFyLCAyMDIxLCBhdCA0OjUxIGFtLCBEYXZlIFRhaHQgPGRh
dmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IHJlY2VudGx5IHRoZXJlIHdhcyBhIHRo
cmVhZCBvbiBhbm90aGVyIGJ1ZmZlcmJsb2F0IGxpc3QgYWJvdXQgYSB2ZXJ5Cj4gPiBpbnRlcmVz
dGluZyBJU1AgYXBwcm9hY2ggdXNpbmcgbWFzc2l2ZWx5IGhhc2hlZCB0YyBmaWx0ZXJzICsgZnFf
Y29kZWwKPiA+IG9yIGNha2UgdGhhdCBoYXMgY29kZSBpbiBnaXRodWIuIEkgY2Fubm90IGZvciB0
aGUgbGlmZSBvZiBtZSByZW1lbWJlcgo+ID4gdGhlIG5hbWUgb2YgdGhlIHRocmVhZCBvciB0aGUg
Z2l0aHViIHJpZ2h0Lgo+Cj4gVGhpcywgc3VyZWx5Pwo+Cj4gICAgICAgICBodHRwczovL2dpdGh1
Yi5jb20vcmNoYWMvTGlicmVRb1MvCj4KPiAgLSBKb25hdGhhbiBNb3J0b24KCgoKLS0gCiJGb3Ig
YSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxpdHkgbXVzdCB0YWtlIHByZWNlZGVuY2Ugb3Zl
ciBwdWJsaWMKcmVsYXRpb25zLCBmb3IgTW90aGVyIE5hdHVyZSBjYW5ub3QgYmUgZm9vbGVkIiAt
IFJpY2hhcmQgRmV5bm1hbgoKZGF2ZUB0YWh0Lm5ldCA8RGF2ZSBUw6RodD4gQ1RPLCBUZWtMaWJy
ZSwgTExDIFRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

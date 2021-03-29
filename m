Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 965E434D963
	for <lists+cake@lfdr.de>; Mon, 29 Mar 2021 23:03:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 104243CB62;
	Mon, 29 Mar 2021 17:03:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1617051780;
	bh=tS9xXDbFxpmdkjozv1jWIfPGkiwShXTViCjEFmi2yzI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mh7gPWqdsleqzpAHoGbv5KxI/kZRbAyI6tWq4NKc4AKlv7snKQGWE3fUYzq7dfGBc
	 y8Mc0pUJSbJbGf1wpP0th8KcWS1WKu/YFolbQJHys1PGrk0j8h/+bRRToiIg/lUuws
	 2S2+Cc6RqZnneRuWWv4NKWAWCarlN7gIMGwH+A9ape70+XHpjtZJnF7TxOR8GO8I+8
	 oaNXsPG61D1eCujr7u35jKGa9hVDY9z+Oq4nKFrbu9fLTszyteQ0DQqyp02bwllqlE
	 k0Pz1+qiueUU99pMgBHcylLvKh/7GgqLmm8nOc/evwt079D6A+CBFQ6LSA32OKkmb+
	 lAtcYrAFT4f3Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DF6EE3B2A4;
 Mon, 29 Mar 2021 17:02:58 -0400 (EDT)
Received: by mail-io1-xd2f.google.com with SMTP id x16so14208583iob.1;
 Mon, 29 Mar 2021 14:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g7zlsXp+LBcOZaGJXSu8DaMd25DNVzHDaWLfrJyOcFY=;
 b=utlm6EUDh3Jk8CL4SKbKOiz0smP8JCLjk84NNcxOnK/XwfktH5Z7GegcSRZxOmfN5A
 M2telXD8eNZ96eRZE9Ct4pkLXyAXcAAkxkcB0xFC68yx7YBH4UaU5GyiETmlwtN2rUP9
 a0gxjBFmR4eTDLoqf5B4u6akPPoVBXKkWEKMZbiHvQMYkWdH/xyZfmp3vmx8uUhasE8n
 BDB9s038feiFZaS8G8SGLHLhbMVOJutzsToriX75MvcWaVRJMXzk2RNMHuxyBpPuOZzv
 4gR58chDICIqrTVPVPMFMZDQLmt9YUbZeh4rzjIRx1dTJQv9sQxZ0bB6Zj2f+7mdBmYV
 uziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g7zlsXp+LBcOZaGJXSu8DaMd25DNVzHDaWLfrJyOcFY=;
 b=d1CwJz6n1eX85FsmdWqfvviGOMYEcMhxrM0ERw0uvA5/k2MxYO1LkTdEkIKyp1sc4y
 eA9bantZ7Ha4B6z/n4mIHSz5zu2+Ku6wanIREEsnNzE3WojHPYc/l0wy35+Nf7Eq9okT
 FHKNgZM6tgizompWqRUqZoFu16rEXQ6mwd1w2hjOsGHHhP4ZuZN9s6q0NTu8qEvjewGa
 dZCvuM/lWgp0t6L0QwsPPgSv5kVTYgb8fzcC0MWYL1k6jN1a67/M+xHaDHwQkDLZJhm5
 KUyzjWVNz1u0iS9q8BW+UA0gIjNAaxwR/ECpSiCzutXc3rpID8KE4rEjDK3OT3IM3T1t
 qNjw==
X-Gm-Message-State: AOAM532EpyscizA2of9XiGBowMmSmAMhIIOQbdTiL6dYTf/zAxc1qq9h
 GgEe1/y3jwFXwmWzNmfLw8mi5Sd7upYjEoYEfLtEP2/O6x0=
X-Google-Smtp-Source: ABdhPJyLekAz6ya/KZ7+n3I8kEXI7mx4Duw5HaUm6UQrvkqVfWCp/KlrRi/BKeInOBaZd7gUWhiMg+/YWQvg9/sZ2tE=
X-Received: by 2002:a05:6638:635:: with SMTP id
 h21mr24923965jar.97.1617051778260; 
 Mon, 29 Mar 2021 14:02:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5+_vW3b85ZOxpOn5_LoiPgxuj4XzH3=gkq8qYM2xunSA@mail.gmail.com>
 <1617049691.187521510@apps.rackspace.com>
In-Reply-To: <1617049691.187521510@apps.rackspace.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 29 Mar 2021 14:02:47 -0700
Message-ID: <CAA93jw566ZikuydRaDxCN5h9xPCfp3G4=eC3v-tE75RcxgfqGw@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: Re: [Cake] [Cerowrt-devel] wireguard almost takes a bullet
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSd2ZSBoYWQgc2V2ZXJhbCBnb29kIGNvbnZlcnNhdGlvbnMgd2l0aCBsaW51cy5IZSBjYXJlcyB0
aGF0IGhpcwphdGgxMGsgd29ya3MgYmV0dGVyIG5vdy4KCkFzIGZvciB0aGUgcmVzdCwgd2VsbCwg
SSd2ZSBhbHdheXMgZmVsdCBtb3JlIG91dHJlYWNoIHdvdWxkIGhlbHAuIEluCnBhcnRpY3VsYXIs
IGdldHRpbmcgc29tZXRoaW5nIGJxbC1saWtlIGludG8gZnJlZWJzZCB3b3VsZCBiZSBhIHN0YXJ0
LgphIGNha2UgcG9ydCwgYmV0dGVyLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

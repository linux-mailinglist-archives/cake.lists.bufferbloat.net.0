Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2F8107409
	for <lists+cake@lfdr.de>; Fri, 22 Nov 2019 15:26:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CC3DB3CB3E;
	Fri, 22 Nov 2019 09:26:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1574432817;
	bh=mOzsPCbMi2nVQacTjhjT3VDWOclzxNC1RSAJT5H8dT4=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mFF4Iv9BDK7+86AuuKBONAqs5VJQ9xt1q6wYbsym0ljzVB0N9f9m/DyDBqHT5Xem3
	 VQv+EFL6Yuip/51QGMGv+L3hl21CZj4Yi1wkBHGdjhOnyOOF1YNnCJrozFzSrSEfvT
	 rFPo4O7BO0Kqcj3sKMbiR5Zmai9IoW5QR4juNXcX1yGHYdu9nywscH+KxK27KtDf0i
	 G0o3Z9KZTjxTR4ch/VgQ2dBomAWnV3ceBPvGS6y8919wvCLi7foIX/yKEgh1Q1Zar8
	 +5hVNBow3YtAvEmDRH4OfwbTNNZy2s3RJnBIYujUWJnOliANicc7YoHeAipQZdx5mD
	 oy1mGiMz8p2wQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 079BB3B29D
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 09:26:55 -0500 (EST)
Received: by mail-pg1-x536.google.com with SMTP id z188so3436572pgb.1
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 06:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Ucqsb33HOw3p47aiGbaE6XHx7mGGFVjpDOb5x7YtQ10=;
 b=tPCXX8N4BjnomwtqpnYeCinuoYxjrZ7NfQrScfOn8bkDpPhtNc2X26p0OU3hV6B3lw
 CfXahHkpYLY1SP3r/3TQCMzyHRY0I6ihdniEya2AzGB8TutZ9yLoJ3SihwzJjy1jBL4h
 8FH0uGwt8zJ2gxuHhPKBs2/BRSi/ZNbACw7QA/06igGY8uxKbl0JPvs4d3FNld/+gKWq
 g2zoky6hZ4nvuhbXPCzy6BtuKJxCKPkDIqTfC++te0VMHnq8tCuAjeU54aRXVkiVQVqj
 3dkhQRb7efHF5qjkGifnIlRLhHvBVpVzM0D6Ms9QsNcVGJQG/ANMwJZlwlytdHwefyk2
 hnMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Ucqsb33HOw3p47aiGbaE6XHx7mGGFVjpDOb5x7YtQ10=;
 b=iSzYo0kBrWnJ+uIfj1J4HTRwJwgTiy3oBW5hJT6UIve+N0VH0812pBFG36reVIZ9P8
 SKRQqlUMrXqkKzyQpsieJ1uR23ecJGpnwZmci2NW8Po55qHskOgovgahJppg5S/5IjLd
 AQhEdriBoZSM0AwO4cQ87qqkDmhkvZ/stF4vDQugD59WBT6F5MkyFk75Lmq4CtcJw+03
 37fUA+RJBr6gq3V/B0nsvKOnF6FZ5PsHCGMEvV+3i7HpSn4og/AZIgPf2tlwAWtW+Iw3
 OxpCud/OfKP8Ha679FU0p6TnhtSbnssi7srmOW9ljT8jCWsz3/LyuvFMRFbe0qDZ8HRN
 ySLw==
X-Gm-Message-State: APjAAAX4dQv46XMA0uCqjuPG6eUkQqNlFuZu7e3Lg4AeOdUxxc22Wj9u
 adbGgb5r45slg84bvHuXh4kUkMzP
X-Google-Smtp-Source: APXvYqyb11KHbzIpLPC+y0bsIAhWRSSxJE5likZ2sQnFUrNR4bQvThDb4ZMFZaECBznhpqm0xheJfQ==
X-Received: by 2002:a62:2c10:: with SMTP id s16mr17999152pfs.235.1574432815246; 
 Fri, 22 Nov 2019 06:26:55 -0800 (PST)
Received: from jonathartonsmbp.lan ([182.55.197.52])
 by smtp.gmail.com with ESMTPSA id 186sm8202452pfb.99.2019.11.22.06.26.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 06:26:54 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <em281f0a9b-a12d-4f64-8eab-6e13f4c7804f@adam-pc>
Date: Fri, 22 Nov 2019 22:26:52 +0800
Message-Id: <E47AFE75-0706-4B69-A067-DE14B27DAF72@gmail.com>
References: <em287ad38a-b2b3-4e82-9836-99fab879ad14@adam-pc>
 <CAA93jw4N_-5bui532Ad5QwGn=GH2CnqWYm=BRn75Fgo93R6aJw@mail.gmail.com>
 <em348223d0-543c-4b79-ba6b-93f2244326c1@adam-pc> <878so85e2d.fsf@toke.dk>
 <em281f0a9b-a12d-4f64-8eab-6e13f4c7804f@adam-pc>
To: Adam Moffett <adam@plexicomm.net>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Cake implementations
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyMiBOb3YsIDIwMTksIGF0IDk6MzMgcG0sIEFkYW0gTW9mZmV0dCA8YWRhbUBwbGV4aWNv
bW0ubmV0PiB3cm90ZToKPiAKPiBJcyB0aGUgc29mdHdhcmUgbW9yZSBvciBsZXNzIENQVSBpbmRl
cGVuZGVudD8gIFdvdWxkIHdlIHJ1biBpbnRvIGFueSBrbm93biBwcm9ibGVtcyB3aXRoIGEgNzIt
Y29yZSBUaWxlcmEgcGxhdGZvcm0/IAoKSSBkb24ndCBrbm93IGhvdyB3ZWxsIGl0IHNjYWxlcyB0
byBtYW55IGNvcmVzICh0aG91Z2ggdGhhdCBwYXRjaCBUb2tlIG1lbnRpb25lZCB3aWxsIGNlcnRh
aW5seSBoZWxwKSwgYnV0IGl0IHNob3VsZCBjb21waWxlIGZvciBqdXN0IGFib3V0IGFueSBMaW51
eC1zdXBwb3J0ZWQgQ1BVLiAgV2Uga25vdyBpdCB3b3JrcyBvbiBBUk0sIE1JUFMsIFBvd2VyUEMs
IEFNRDY04oCmCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

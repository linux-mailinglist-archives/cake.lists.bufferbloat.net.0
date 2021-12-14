Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FFA473FF7
	for <lists+cake@lfdr.de>; Tue, 14 Dec 2021 10:57:10 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 909BC3CB38;
	Tue, 14 Dec 2021 04:57:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639475829;
	bh=yI+B6o/Q0feInZmEo0GmFplb4orvLaYzEtN0DPUJUJI=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YAGqd7r7eJMZ1GP988N6Gk2vR28pg7OnkzUuAHswgw0pwzKPyVfGAJybTvt495P0o
	 TFw78kZ5DnZOrRhEKhLNXOrsa5mTfFZGVS6QrHb2CBwF8u1UQTnsCU9xLiKZMiR8y0
	 P0R37PLLZc/987MvdVVQeHoGc3eZBEtve4KcJxyt4rplXNCO6+0T43GJQTT5ZvbkPy
	 WS7vRn39B9+qyJh4TLnst55kGkPcqZFqFnhLhzTnbbD+l/jcG5trG/txNS/78iIlqK
	 ZkJgrg6pIxEJEzOuO1LUybyAgs2zSPqbnbQ3agPfsdQiBOZbjoHBBBrdHfcxDdc9w6
	 poQIT4VRRM/JA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1AC403B29D
 for <cake@lists.bufferbloat.net>; Tue, 14 Dec 2021 04:57:08 -0500 (EST)
Received: by mail-lj1-x22f.google.com with SMTP id k23so27549254lje.1
 for <cake@lists.bufferbloat.net>; Tue, 14 Dec 2021 01:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=8O0349+wlmdQOfd3ZrAsb8PUCCkaWVko3V0DEfNg7ZM=;
 b=kJdEmoq3GwQCv/l+HgHJsnQr65/htr0LazPqyFWcHsubehILlRphx6qlAMrFaMmZdR
 G2aCupzdrL35bujrtZibXq93PUzeD6bZoul5cAeeF8ELsWm8Uh3PxbYUqIpOdGnsMJja
 S4Bx8KS3vRNIBoOdZ60SIdM/XW8U05hJcHkmnJceSXcLBmHThOqFxpn4YL14SPUJm5cw
 KpAjzYhEUrdEWUIvH/JM6c/Msm29qI4W1cR3heIUCqOCAQWKP2ls3pFubZjuh1VWLVoQ
 PM+nPr9BZjZm9WKgsED81Vep1WVs5ZMEysnlHwPkLc2vK+cZJeLAnFNgAqF26DMGFqOZ
 Xjhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=8O0349+wlmdQOfd3ZrAsb8PUCCkaWVko3V0DEfNg7ZM=;
 b=aGam3txb0TNF9Kb9Cn3NKqO/9Xt5aNKzQ+y1dO0gRBAojnb+nRPTojoBsX8mUyKYDh
 b4bmXAaDYwX0bNohku3LgLOP1NvdjWuP22fnAUDaPEYgbKJ2PgeZh6EFCuUiYHIKELit
 kjf6mhCZ3xQZv/TS4shfmaimiHlg8FqYqZHjpe6l31psaWzf16QOPJfPrcE4rZ5J6FYY
 ym9bdsY7InLDASe/LFPuNF2i2gG09zITNjLx0fPI58sDW1BwE5am4yBB1suSzqRkcH/F
 trfWpWY+CvAzwR0eFiOfLa/os4OCknY2Wwkiqf0B58fg20MzNJCBG6bUHilRZerq4LLm
 eWJg==
X-Gm-Message-State: AOAM5306LNaw3Q8gBH19OJXknEjuTUZHLcApthpdZdemyYZNKlOHvhBv
 B9KTDPga08c3qdDyaMU8MNk=
X-Google-Smtp-Source: ABdhPJytP0h9rMU2hUbyMKeWa5K8z9IQdJmO2LNDcTQpzh47qou0m92ous04UJT30umwhNk/H1LfaA==
X-Received: by 2002:a05:651c:4c6:: with SMTP id
 e6mr3920795lji.411.1639475826314; 
 Tue, 14 Dec 2021 01:57:06 -0800 (PST)
Received: from smtpclient.apple (188-67-240-81.bb.dnainternet.fi.
 [188.67.240.81])
 by smtp.gmail.com with ESMTPSA id i26sm1773540lfl.208.2021.12.14.01.57.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Dec 2021 01:57:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw4Zm558c5hLQWmP+HAt-qAJogcT7HdEyiYyB50iL+y4Sw@mail.gmail.com>
Date: Tue, 14 Dec 2021 11:57:04 +0200
Message-Id: <89ECAB12-74A3-40B6-8C0F-D1AA22E40C71@gmail.com>
References: <CAA93jw5WQ_sXPZSiSyMrBvwu=QZUsXiZxSuR0jJV9iLjqebiYA@mail.gmail.com>
 <18098E06-CB62-4967-B604-268063392C35@gmail.com>
 <CAA93jw5kdaV=T58SnF2gP0wGHunbTRT7y8ZWjvgiYdn4q_rMEg@mail.gmail.com>
 <CAA93jw4Zm558c5hLQWmP+HAt-qAJogcT7HdEyiYyB50iL+y4Sw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] sometimes I worry about cobalt's effectiveness
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxNCBEZWMsIDIwMjEsIGF0IDg6MDYgYW0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWls
LmNvbT4gd3JvdGU6Cj4gCj4gb2ssIGl0IGxvb2tzIGxpa2UgZWNuIGFuZCBwZXJoYXBzIGRzY3Ag
aXMgYnVzdGVkIG9uIHRoaXMgbWlrcm90aWsKPiByZWxlYXNlLiBUb24gbW9yZSBwbG90cywgZmFs
c2Ugc3RhcnRzLCBhbmQgcGFja2V0IGNhcHR1cmVzIGhlcmUuCj4gCj4gaHR0cHM6Ly9mb3J1bS5t
aWtyb3Rpay5jb20vdmlld3RvcGljLnBocD9wPTg5Nzg5MiNwODk3ODkyCj4gCj4gQWxzbyB3ZWxs
LCBjb2RlbCBpcyBkb2luZyBiZXR0ZXIgdGhhbiBjb2JhbHQsIGFuZCBTRlEgYXQgbGVhc3QgYXQK
PiB0aGVzZSBSVFRzIGlzIGRvaW5nIHJlYWxseSwgcmVhbGx5IHdlbGwuCgpDb2RlbCAqd2l0aCBF
Q04gZGlzYWJsZWQqIGlzIGRvaW5nIGJldHRlciB1bmRlciB0aGVzZSBjb25kaXRpb25zLCBiYXNl
ZCBvbiB3aGF0IEkgY2FuIHNlZSB2aWEgdGhlIEdvb2dsZSBEcml2ZSBsaW5rcy4gIFRoaXMgbWFr
ZXMgc29tZSBzZW5zZSBpZiB0aGUgRUNOIENFIG1hcmtzIGFyZSBiZWluZyBzaWxlbnRseSBlcmFz
ZWQgKHdoaWNoIGlzICp2ZXJ5KiBiYWQgYmVoYXZpb3VyKSwgcmF0aGVyIHRoYW4gdGhlIHBhY2tl
dHMgY2FycnlpbmcgdGhlbSBiZWluZyB0cmVhdGVkIGFzIGRyb3BwZWQgKGFzIEknZCBleHBlY3Qg
ZnJvbSBhIHdyb25nIGNoZWNrc3VtKS4KClVuZGVyIHRoaXMgcGFydGljdWxhciBwYXRob2xvZ3ks
IENPQkFMVCBpcyBzdGlsbCBhYmxlIHRvIGFjdCB2aWEgdGhlIEJMVUUgYWxnb3JpdGhtLCBidXQg
aW4gQ2FrZSB0aGlzIGtpY2tzIGluIG9ubHkgd2hlbiB0aGUgcXVldWUgZmlyc3QgcmVhZHMgYXMg
ZnVsbC4gIEluIG90aGVyIGltcGxlbWVudGF0aW9ucyBvZiBDT0JBTFQsIGl0IGFsc28gdHJpZ2dl
cnMgd2hlbiB0aGUgc29qb3VybiB0aW1lIHJlYWNoZXMgNDAwbXMgKGJ5IGRlZmF1bHQpLgoKTWlr
cm90aWsgLSBvciB3aG9ldmVyIGlzIHJlc3BvbnNpYmxlIGZvciB0aGlzIC0gbmVlZHMgdG8gZml4
IHRoZWlyIGNyYXAgc28gdGhhdCB0aGUgRUNOIGZpZWxkIGlzIHByb2Nlc3NlZCBjb3JyZWN0bHku
ICBFbmQgb2YgZGlzY3Vzc2lvbi4KCiAtIEpvbmF0aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5m
by9jYWtlCg==

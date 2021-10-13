Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D45C42C561
	for <lists+cake@lfdr.de>; Wed, 13 Oct 2021 17:56:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 986AE3CB40;
	Wed, 13 Oct 2021 11:56:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634140587;
	bh=JbwMZhSshdLRiSk2HEqyiLpixGyYyWYACqtVrznaJ+Y=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YLbOIxbSDEHte5o0sYw9TzrY+iGWCqS7b4wU9H06t6L/MK/m1BogkNeycsYcWqR5o
	 S+qas+14D+I0Z/3LekNeKd3amnC74JCcfKm9fknwMwKLKaMmKVwtbRP3iCgQMAkS6s
	 IAd9BSFe1LC+82Kf7i1YhvN0+yvu2EgyVcsEt0EFRWcVHPGPqs9Li0hm2y/+wACUwU
	 Ibj0Jh3GL+A4D4fiq4HJMICYfIhhI1zwDNjh1aeWfvAmZKDtnhwYta6pj4XasN0OVo
	 iWBaWYh7QbUkQnwO6Fl6mSHtbgsD5B7CllQx0dcPZr2dhOmEAMe1cD5GpLh6SzmI4f
	 P4E7M3z54bZIg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C072A3B29D;
 Wed, 13 Oct 2021 11:56:26 -0400 (EDT)
Received: by mail-ed1-f45.google.com with SMTP id r18so12003060edv.12;
 Wed, 13 Oct 2021 08:56:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GGT3fgs5e32uNSHeWmubQyT+6kmkwDB8y6/CEgRHPvQ=;
 b=AJOimJQbEyJf9lL1CmZnbwRUDYML89jJb9r3QdGh8qJ66NNjBkUrwbMN+4b3Cux1Nh
 4IfdkYAAilBufXHzy0tC25hXyMjiIWEwHViA24oHMjYyunhN/IDjjrCygdtB7EH6DozS
 WlnXroaiHLN7mRW4EzspojDvrXLq533INO21l5D+vmZWNE9chIsLdMxujTNmhU/5yoJy
 VcA43dY7bjzIVSidmaZEh4PjJqUmTlRjB9p+Ye5Pfyo5zOd/10m8QGkpSgB3Ogo3zbrB
 zrIHqzcnJPnusPIF2Llgrx9J4u3dmqy6dP5b2v/1DeElAJVd29/3+lxOybPSy/6XemE2
 cS6g==
X-Gm-Message-State: AOAM531Y8oOvY6pk+uF3XR1/ErfOwKW+vyr2AWEAnQCBabpNknXq30oi
 ANuDF1oW3CsdjU475BolkVU2v4CuI2M8s/4iob4=
X-Google-Smtp-Source: ABdhPJx4u7K9qy/o2K/GByaPQ5mMGeUMogrQKzoQ9BdIvBbCGx5lNTb6m5lbyDNa5bPcWJ5uz4ERztiFFYi32278jLY=
X-Received: by 2002:a17:906:4fc7:: with SMTP id i7mr107340ejw.14.1634140585372; 
 Wed, 13 Oct 2021 08:56:25 -0700 (PDT)
MIME-Version: 1.0
References: <1634137216941.ae398a38-f121-4190-bc20-a53a30e13458@bf06x.hubspotemail.net>
 <CAA93jw6jtBMhE57wqdJHVZnESUEqx6hFqrWXzq_M=SXtcuB4BQ@mail.gmail.com>
In-Reply-To: <CAA93jw6jtBMhE57wqdJHVZnESUEqx6hFqrWXzq_M=SXtcuB4BQ@mail.gmail.com>
From: John Yates <john@yates-sheets.org>
Date: Wed, 13 Oct 2021 11:56:13 -0400
Message-ID: <CAJnXXoiTFZk4HPzNH5gOvO+NkOexZkSKOPTgaWa9TYExv4c9Ww@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Make-wifi-fast] Fwd: Call for Papers: KNIT Winter '21
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBJIGFjdHVhbGx5IGhhdmUgbm8gaWRlYSB3aGF0IGZhYnJpYyBpcy4KCmh0dHBzOi8vZmFicmlj
LXRlc3RiZWQubmV0LwoKL2pvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

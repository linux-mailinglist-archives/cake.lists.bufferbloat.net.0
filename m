Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C267C598B
	for <lists+cake@lfdr.de>; Wed, 11 Oct 2023 18:50:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1886A3CB40;
	Wed, 11 Oct 2023 12:50:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697043004;
	bh=xixHehslM+zKRnm3+QgJl/lqLV0fO4Czd+x5DhI6vAs=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BpHOfT2LZc0CZ79LFgrOQfyJh14z/+p3szWa2C128bmtEa22mgNZZidEKvG4Tsz7o
	 R46i80fMTZ4T0ZvwzDp5BBipl4EIkg5TN3pJmsJkbVM0CRZ2ezsd2BlL99/jHflbyg
	 KLqrkApEH6pLDOHW5/nSct+C6HeGlHgq2KCb2gfRvCIdHw2T9YUoP8SpuuAcXWuTY9
	 C59Oi/7xu6Jn25C+2VYPuiaekUXJGsEHtGjLWqhqoTniPVS+LBvvlwHkJdvVC6S3Ng
	 q1bdSC0IYjGXdNzhsm4rnWtRm2JB0KOV3bdW1PA/IYn2e61Bwla9A+Od3gi7k8QhYF
	 A6NQkioFhyG3w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 54CC63CB37
 for <cake@lists.bufferbloat.net>; Wed, 11 Oct 2023 12:50:03 -0400 (EDT)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-1c7373cff01so9455815ad.1
 for <cake@lists.bufferbloat.net>; Wed, 11 Oct 2023 09:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1697043002;
 x=1697647802; darn=lists.bufferbloat.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vToHm67tTCcORndNvxfoLTgIajEFl/j+/DPZOwcTFVw=;
 b=MagDRa718Y18d2sSY2/sLbUi22Xf0iwbSPvTR63oRIaCvk7HYWr2fM0ht1GQvv5Nct
 89zT3NVgfGF3crSMzPnA8asnGRU7ZIUw77OCNBzuHQ4lb0+e+qPJfb8zFWGWXjneYsvk
 hVZooQg/TGXWHKpaQqhMTzbezznbbmLU3VGIbBYdbT2JAQS96dniYMPRkK/OprtF4iR/
 I1eHX80uv6xd1zgZKW36FXduws0lc3yCPxtlIZq8hinpzUrTQ5ufloHZWQldPxKEViTU
 KFu3GRzU/q3Mejsojx+uggrw8GI6OioUAUW3eEJ3itKnAHpPsR6ZkE4JhuxwtoZ38QaI
 mUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697043002; x=1697647802;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vToHm67tTCcORndNvxfoLTgIajEFl/j+/DPZOwcTFVw=;
 b=iUjz1cy/nXjWKO1xr3OSW6u2zdXcLax+zRyb5yih2dGEXtbQhRqVO4AIadXF2MNyxb
 WVL99+VWdkZN8BXv6uE/Nh6EylD/z6NPJRYe/bbgLJtJvtMOcptZFvask/AtDSyCy7Qk
 Bcw9hUMB9r4TRYTca2uBecWyHilwtIFszQwdlJ6DirPBRpjTOMMkVY2DT5rJlLcFMbIi
 CUl81OcY3PWfGnC7CfxytrnbpwI6BvY7bOQf6vz7riaIpAw7UCe8KlzAv8ycBcXQwSjF
 hz6FqOWITwkI3AN7kUQ9hdl/OXaTywKVD8q3/l5QC1rKbdRFUC8EQFSIKU4jF0HlEX9u
 UFGw==
X-Gm-Message-State: AOJu0YxYAciPp2yBOgDE48lShR5KUgNVV5Yiah0aQnuTR26+BA5pif6G
 PgW+zTtJt+5WJbh1fGzfgRCrwA==
X-Google-Smtp-Source: AGHT+IHRhoJzIPPv8g/l302oCZnwbVQBSubeYWjoYeCqndyCQ60AfUrHmmymurOJJqbFCbzOJXF0iA==
X-Received: by 2002:a17:902:c946:b0:1c8:7bb8:321a with SMTP id
 i6-20020a170902c94600b001c87bb8321amr25306270pla.27.1697043002072; 
 Wed, 11 Oct 2023 09:50:02 -0700 (PDT)
Received: from hermes.local (204-195-126-68.wavecable.com. [204.195.126.68])
 by smtp.gmail.com with ESMTPSA id
 l20-20020a639854000000b0058c1383fa8bsm112304pgo.0.2023.10.11.09.50.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Oct 2023 09:50:01 -0700 (PDT)
Date: Wed, 11 Oct 2023 09:49:59 -0700
To: Dave Taht <dave.taht@gmail.com>
Message-ID: <20231011094959.59b6d9e0@hermes.local>
In-Reply-To: <CAA93jw4YrKZJR7JDGg8hCRHO+t4KU4Txd0phWsu+v_5cCwFXKQ@mail.gmail.com>
References: <CAA93jw4YrKZJR7JDGg8hCRHO+t4KU4Txd0phWsu+v_5cCwFXKQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Cake] vyos w/fq_codel and cake
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 "Richard E. Brown" <richb.hanover@gmail.com>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCAxMSBPY3QgMjAyMyAwODoyNjoxNyAtMDcwMApEYXZlIFRhaHQgPGRhdmUudGFodEBn
bWFpbC5jb20+IHdyb3RlOgoKPiBBZnRlciBzdWNjZXNzZnVsbHkgaGF2aW5nIGdvdCB0aGVtIHRv
IHN3aXRjaCB0aGUgZGVmYXVsdCBvdmVyIHRvCj4gZnFfY29kZWwgbGFzdCB3ZWVrLAo+IEkgc3Rh
cnRlZCBsb29raW5nIG92ZXIgdGhlaXIgdmVyeSBvbGQgc2tvb2wgdHJhZmZpYyBzaGFwaW5nIHBv
bGljaWVzLgo+IERvZXMgYW55b25lIGhlcmUgdXNlIHZ5b3M/IEkgdXNlZCB0byByZWFsbHkgbGlr
ZSBpdCwgYnV0IGtpbmQgb2Ygd2VudAo+IHB1cmUgb3BlbndydCwgYW5kIG5vdyB2ZXJ5IGxpdHRs
ZSBhdCBhbGwuCj4gCj4gaHR0cHM6Ly9mb3J1bS52eW9zLmlvL3QvcW9zLXFvZS1zdXBwb3J0LWlu
LXZ5b3MvMTIzNzYvMgo+IAo+IGh0dHBzOi8vZG9jcy52eW9zLmlvL2VuL2xhdGVzdC9jb25maWd1
cmF0aW9uL3RyYWZmaWNwb2xpY3kvaW5kZXguaHRtbAo+IAo+IAoKVGhleSBmb3JrZWQgZnJvbSBv
bGQgVnlhdHRhIGxvbmcgYWdvLCBhbmQgaGF2ZSBiZWVuIG1ha2luZyBnb29kIHByb2dyZXNzLgpU
aGVyZSB3ZXJlIHRoaW5ncyB0aGF0IHdlIGhhZCB0byBkbyBpbnRlcm5hbGx5OiByZXBsYWNlIENM
SSBwcm9jZXNzb3IsCnN3aXRjaCByb3V0aW5nIHByb3RvY29sIGJhY2tlbmQsIGFuZCBzdG9wIHVz
aW5nIGtlcm5lbCBmb3IgZGF0YXBsYW5lLgpWeU9zIGdyYWR1YWxseSBoYXMgZG9uZSBhbGwgb2Yg
dGhvc2UuICBMYXN0IEkgc2F3IHRoZXkgd2VyZSBzd2l0Y2hpbmcKb3ZlciB0byBGRC5pby9WUFAg
Zm9yIGRhdGFwbGFuZS4gVlBQIGlzIGFuIGFsbCB1c2Vyc3BhY2UgZGF0YXBsYW5lIHRoYXQKYm9y
cm93cyBmcm9tIERQREsuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

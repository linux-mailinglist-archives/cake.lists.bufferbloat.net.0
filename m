Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFD173D311
	for <lists+cake@lfdr.de>; Sun, 25 Jun 2023 20:51:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B6EB03CB39;
	Sun, 25 Jun 2023 14:51:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687719078;
	bh=4fzUZBOZywoapV0gJA8r2h2GecxyqNOoYRcU+kXi2vg=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Ht614x/90LR2c02p6b5Nr5BerFBwZBMOXgZ2tlujRry13Y1TXsDM+VkedJvBcXoKp
	 pmgWCWNXWJY1JHClThJLuljW5xeQ0gUTK3HiLrBZnabTQn6yjn6shCga/FD0zrBtTm
	 NeZXxOz/iq/nDuztM1iwRcZEUdgGIDKFPz+Jj9ydJo9kMsRf260LcXZQSBwN8tcFuc
	 NHx6BVPgxIFfnF9S7Ppatrqjy/OEWcXNt1R+L/EMYDehZiP8tC7virzq8gT9/Z8qgD
	 CnrvKRqGt6aPAT4VaMdF23Rf48Rzlmv2BtX3R8lCFCpfRHl1JpO6z1fV9xS30AquhS
	 bUxrdmj2Xduvw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3C8163B29E
 for <cake@lists.bufferbloat.net>; Sun, 25 Jun 2023 14:51:17 -0400 (EDT)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-6687446eaccso2392662b3a.3
 for <cake@lists.bufferbloat.net>; Sun, 25 Jun 2023 11:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1687719076;
 x=1690311076; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eDqs/Pz5ctzgHShurE8704vyV2DAetgY0Abxfma/X6Y=;
 b=NcxAZGBBcfpq3jLxSk5DJgNXKUIBRBxYn//227XaSL4WEz8VOsg06X9HRFVI0txFhe
 DgTyJKQBolNS8hjJCgw8Vks2adzAGApA+mFry3UO0ywr1Mo6RxN5vVY5o6Jg07ny7cHs
 IxuMiCp7CRgNmwEhqUGZBkCgEkDiIYFVbD/K376XUpdEWQnOnlNSUEv7Z54kr6G9YgDJ
 zoIaAhObyX79zdJ8j77nStM+wYf2etklb+cR5yMsnngT40wYgNbcxCxiYVxwm1K6kwn7
 t8nvMWw/IgvB6ayemnhcBAeX0u0EfR/u8pr33MYxvskmXS+v3USt9QdrW72CNBFMA/z6
 Ge9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687719076; x=1690311076;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eDqs/Pz5ctzgHShurE8704vyV2DAetgY0Abxfma/X6Y=;
 b=C7Dhtgz9dii18khX/nqm9RY0dRZd2NIw7MJrWiyAolTXcZmKgIhhrh1igOpFhrNZWu
 q4AR7zo8MQIZrdy2/Dx2UO9qsUnLC6Zf2IIz0Za8nLbeFTxf+AUyddRcJbwU/SIq1JRs
 1siRd9H7wVPyvW2e7Fcb7n65FZNR3Nr5X7DwHZFZnD1HSmTAFs8U9rNHBywiZuT+Zz2X
 DU0k0y5HE2OK+jB/8frd3WAmnUTXTvP24wbxZNw2PPKUXNkkCsNDcjgmYVRFoHGSoiEm
 xL6PGO7PS+CrZ+cfMR7qjfr84JaLT6iqrVPnGX0ASJ0MsMhC9a5Rf3wF54ls1qPeoWD3
 MELg==
X-Gm-Message-State: AC+VfDyXx0ihkNFQ0t9YfE3NtG3BW4m5YbubHyGNif3JpWS0nu/cpAJA
 KuccK0N/AHbhNox6bEao/MqF8wXgU5y6BEY1Iwokig==
X-Google-Smtp-Source: ACHHUZ6VOKtNoD4F+PHTofKIrVqlBsRlDN+1JgbIAfc55zmWIPine4GlGtiUbPpxFvjxS3yXVB8Now==
X-Received: by 2002:a05:6a21:6d86:b0:124:413a:56d2 with SMTP id
 wl6-20020a056a216d8600b00124413a56d2mr13602979pzb.43.1687719076041; 
 Sun, 25 Jun 2023 11:51:16 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 n189-20020a6327c6000000b0055387ffef10sm2795136pgn.24.2023.06.25.11.51.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Jun 2023 11:51:15 -0700 (PDT)
Date: Sun, 25 Jun 2023 11:51:13 -0700
To: "David P. Reed via Bloat" <bloat@lists.bufferbloat.net>
Message-ID: <20230625115113.2291f7d6@hermes.local>
In-Reply-To: <1687632112.01524513@apps.rackspace.com>
References: <1687632112.01524513@apps.rackspace.com>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Two questions re high speed congestion
 management and datagram protocols
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
Cc: Cake  List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gU2F0LCAyNCBKdW4gMjAyMyAxNDo0MTo1MiAtMDQwMCAoRURUKQoiRGF2aWQgUC4gUmVlZCB2
aWEgQmxvYXQiIDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgoKPiBJIGFsc28g
d2FzIGxvb2tpbmcgYmFjayB0byBEQ0NQIGFzIGEgdXNlZnVsIHdheSB0byBnZXQgYSBVRFAgdGhh
dCBoYW5kbGVkIGNvbmdlc3Rpb24gd2l0aG91dCBlbmdhZ2luZyB0aGUgaGlnaGVyIGxheWVycywg
YW5kIHByZXNlcnZpbmcgdGhlIG90aGVyIGZsZXhpYmlsaXR5IG9mIFVEUC4KCkRDQ1AgbmV2ZXIg
Z290IHdpZGVseSB1c2VkLCBhbmQgTGludXggaXMgb24gdGhlIHBhdGggb2YgZGVwcmVjYXRpbmcg
aXQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

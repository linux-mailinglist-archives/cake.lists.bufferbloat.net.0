Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F5573CD5F
	for <lists+cake@lfdr.de>; Sun, 25 Jun 2023 01:04:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4FBB13CB40;
	Sat, 24 Jun 2023 19:04:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687647845;
	bh=ULuvBqiiJFhSPxhQm+11SFjE9sKVXufR2rx3XSg7d7g=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Hoo1HXJHNWnlIY9SnBxnfJ9+hrThd2ry79utN2d4Tqrha6NDzMWwFLi9eYH8PLNdU
	 mUKKKTZmT0wf3mtjPGbjy79WKUr+YojlCmKcwjzHpzLJlxMuAiUX8gntJSu1fhBz7p
	 KVzSgBR0mtUo8d/VpkyMc2rdAYXKL1uEcTypv6JaSk5HSIoU8FRopuVGE//5PGA/sH
	 I3bJ8vz6RlS2D76T7mubPsBa8/6Losf2eSKQlBLbUVP367q82NJyauJ+mJiFD0zd6+
	 yy95KAucXz9a7xQVW+bsM+el714t60bNurV5dICt/3bhBI8GFOhNc27BKkWz1DqK28
	 46rLjVoF3391g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 354CE3B29D;
 Sat, 24 Jun 2023 19:04:04 -0400 (EDT)
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-4f76a0a19d4so2636741e87.2; 
 Sat, 24 Jun 2023 16:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687647842; x=1690239842;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EtOwEEvQ6wz0X40Hlx7wj8uuN+kJhmG1bLPL4UyA+eY=;
 b=CGhTHwYf71fSMdo76G776ec22TX7VL3/oIs4jENUhTqgcgNJp/QonqBndKuGclV8Lv
 AH4NiYPKLh9k1I5YW+w1SHkbu1KFzcb8uEh01U3ntCzHcMIakgugKr9wv8fQi2Oz0DsU
 +4mwFJzIvU0HimkXCzOmmVuN1oe73ZQca3KIQIcdy3tAlSinWBwHlf/8UVBqcORaDR0s
 RtTPHrEwInCDpqI5jBiQkS5fTdTFpl5UDSbIMOJKtE+v5lGr1CZGWV0LhU2/kgfhrj4A
 FypsxGZLMOb2gUwjldqE2pt4TS7tByQJmFbVUUIiC6DeKB2NOd2urkv+gf72rc5N6xcr
 Innw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687647842; x=1690239842;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EtOwEEvQ6wz0X40Hlx7wj8uuN+kJhmG1bLPL4UyA+eY=;
 b=Y3bCGAExXPQWk8ZlWlaAO3ejbloI7TwRhywT9L39+H2r1/+oHXR4xn2GbkQF8Wu4Ks
 UAX7k0IDvXcgKjHqcfnHrMiVBjFOPU8lwE+PmC4P19YFtdV2c3wDlJNzj4CdFiWGXhxU
 ADcpTSAvqaZzP0qblziXTBErjLaR5eBqIGs6O+iFDlHmYi3PaDsVXZkTnqdQDdymfkfG
 OZtBwTadTehOMDVQs5glrOTqNn4fEikbf74ZvxheLhXWvqh/FMqoxfIsf3EnCeSpRrY7
 4jNxDsZnVd1UBTryeWxPl4i+koVW9JxwZtJg2WMAFWqT/5V9+VKY2my8wWWcMzPe+btc
 mtZw==
X-Gm-Message-State: AC+VfDwfrDrLDfUsGSOZLmjHO+q6N6q019BmOjv1N4Ar9wJhnkMU5zHm
 18gnjoW5XXMj88YzEjV1oWtRBRE6vTQ=
X-Google-Smtp-Source: ACHHUZ6TbvjfIVw9fWs9WOwg5zZ1gT2GMnmCEgMe0yKD+yEql629JucnaRGs9itUwdW/lkpD6EC+DQ==
X-Received: by 2002:a05:6512:1319:b0:4f8:6625:f2ca with SMTP id
 x25-20020a056512131900b004f86625f2camr6329823lfu.61.1687647841823; 
 Sat, 24 Jun 2023 16:04:01 -0700 (PDT)
Received: from smtpclient.apple (176-93-91-3.bb.dnainternet.fi. [176.93.91.3])
 by smtp.gmail.com with ESMTPSA id
 w25-20020a19c519000000b004f85885cff1sm416130lfe.134.2023.06.24.16.04.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 24 Jun 2023 16:04:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <24D1A566-DFE9-4FDF-86A2-CFB30F20FCB2@gmx.de>
Date: Sun, 25 Jun 2023 02:04:00 +0300
Message-Id: <46B3DF93-48F1-429C-B9E0-41683CBBE1E8@gmail.com>
References: <24D1A566-DFE9-4FDF-86A2-CFB30F20FCB2@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] Anybody has contacts at Dropbox?
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
From: Jonathan Morton via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Morton <chromatix99@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 Jonathan Morton via Bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyNSBKdW4sIDIwMjMsIGF0IDEyOjAwIGFtLCBTZWJhc3RpYW4gTW9lbGxlciB2aWEgQ2Fr
ZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IElzIGRyb3Bib3ggc2ls
ZW50bHkgYWxyZWFkeSB1c2luZyBhbiBMNFMtc3R5bGUgQ0MgZm9yIHRoZWlyIFRDUD8KCkl0IHNo
b3VsZCBiZSBwb3NzaWJsZSB0byBkaXN0aW5ndWlzaCB0aGlzIGJ5IGxvb2tpbmcgYXQgdGhlIHRo
cmVlLXdheSBoYW5kc2hha2UgYXQgdGhlIHN0YXJ0IG9mIHRoZSBjb25uZWN0aW9uLiAgVGhpcyB3
aWxsIHNob3cgYSBkaWZmZXJlbnQgc2V0IG9mIFRDUCBmbGFncyBhbmQgRUNOIGZpZWxkIHZhbHVl
cyBkZXBlbmRpbmcgb24gd2hldGhlciBSRkMtMzE2OCBvciBBY2NFQ04gaXMgYmVpbmcgYXR0ZW1w
dGVkLiAgV2l0aG91dCBBY2NFQ04sIHlvdSB3b24ndCBoYXZlIGZ1bmN0aW9uaW5nIEw0UyBvbiBh
IFRDUCBzdHJlYW0uCgpCdXQgSSB0aGluayBpdCBpcyBtb3JlIGxpa2VseSB0aGF0IGl0J3MgYSBt
aXNhcHBsaWVkIERTQ1AuCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

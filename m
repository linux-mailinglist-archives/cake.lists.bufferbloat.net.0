Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D2E32B9FC
	for <lists+cake@lfdr.de>; Wed,  3 Mar 2021 19:44:33 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B86963CB42;
	Wed,  3 Mar 2021 13:44:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614797071;
	bh=YSiABX8IuxUs+r2787jZmhxPMYdvPcpwb6eWsHO90cs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lXqezH0To+rmCM2GOqdErncoprAqoo7mdRYwh6ZhyjfDMc2wlTwHgGlmZdKnY5op+
	 NUCSiE6Qh8ePiFqAj+n58ypHfPFFjVJIMH1Ci9Ifb+TevtgW1qUwfDD3CjRV9haDDQ
	 cwuL/GKnY+HVq8uWwqXxwc0x90bIp60+NOW/A6LbSAa8fhymBGR9AsYUXkEpq/32Ok
	 y+sQiHcfXkMTIPPRmpLteq3+IClcaO3jr30Ys4tLb5my+HxP6L5kqt8ejdbKtNFXu0
	 KXvduMgWvaarVPZWqgqR1C93TbpHi+UqE1jBKafyodAWh/4bO8pm3nwyzSqgy+rbkz
	 i0al4+wtuznMg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 416AB3CB35
 for <cake@lists.bufferbloat.net>; Wed,  3 Mar 2021 13:44:30 -0500 (EST)
Received: by mail-pf1-x42d.google.com with SMTP id o188so10234409pfg.2
 for <cake@lists.bufferbloat.net>; Wed, 03 Mar 2021 10:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WKRkMIuB5sK6ZKeC4liNF43FY+kVL7qbwRc+ecIImrs=;
 b=ERoabWVPUlIX691E2Myyj+olwNwKsehDeytcG2qy12cNK2BY657Fgz2yEBoV1AUO6k
 0I2AZUrgaroPLmr7A/9nxWQwCsWx/hvB1UcKiwDdyevymiMe5KPFaYwXguvTDI+av44W
 vcYuVj6bCs8sshiJBLunddXj5K9IodStIxjfQ64qWvELVF3Hn1oZmSeknmyMpNM9Ybxc
 /2LLr7XpTHHaH98KgcUMpdWpn0o7vpC0kLFee7AOFFJ5qG9HMT2a9sNf0JChmxj9WVoh
 /8mDVkGIMWVrMn/DR8P5r/Cdk/wfXxcnpAxEEbQo2B9yHlCKrsbEZK5p6tzzvAnY9pdO
 YOWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WKRkMIuB5sK6ZKeC4liNF43FY+kVL7qbwRc+ecIImrs=;
 b=Xgvajt6trFpyiutcQE8DV0LYKBpRH1I/Btvfnvr52KISiPoOcnAWSoiVWKaTU19imr
 Ol3WzMfPuf5r3WS4BWrjxzgykO94bE7CUKkVfWNiOhmQdutU9qExiutOANoZaDgZNo5e
 XJNCgJVDoo+7iBFDYNm3Jry8XhsaFqJSoemqq34sf12389o+7NMHuHbubTnhhkHfHVF/
 CXDtyCms6uAg6RZbhWigdb+fKPuvqzZ7RPXkQSrqTd7AhyBQunP03OU+akBD4hU5jc1D
 /q0aC6wk+/xNsxT7BsSJ16MAcjom9vMO5PNkvCFBHOKwu+4AfIERwDYfUznUfxh9syUj
 D0rQ==
X-Gm-Message-State: AOAM532TnneWFGbNN7HhqhTemnSEywT8+EUfnPe6l46tzychaKyJU4fZ
 pMlpwamUSisFqDDfHue2Azl/TQ==
X-Google-Smtp-Source: ABdhPJyz1QE/w/bMzByVlBJmAqpgDZT8s75RxUVtPdovDq11zjHmBfdilHjP9fem9OXsS5zkmkWCBg==
X-Received: by 2002:a63:fa02:: with SMTP id y2mr276641pgh.412.1614797069472;
 Wed, 03 Mar 2021 10:44:29 -0800 (PST)
Received: from hermes.local (76-14-218-44.or.wavecable.com. [76.14.218.44])
 by smtp.gmail.com with ESMTPSA id x2sm24972240pfi.220.2021.03.03.10.44.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 10:44:29 -0800 (PST)
Date: Wed, 3 Mar 2021 10:44:20 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Dave Taht <dave.taht@gmail.com>
Message-ID: <20210303104421.35aeb4e4@hermes.local>
In-Reply-To: <CAA93jw5==m8ARhZX2KxFjTwAmaFOa9ugrFtyONBfgnN38J_JRw@mail.gmail.com>
References: <CAA93jw67X7u5pS0a-ERpWvpenwmgvWvQ3KV9e2Pzj75iuOLPgQ@mail.gmail.com>
 <87a6rkf9jv.fsf@toke.dk>
 <CAA93jw5==m8ARhZX2KxFjTwAmaFOa9ugrFtyONBfgnN38J_JRw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Cake] [Cerowrt-devel] merlin gains cake support
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
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCAzIE1hciAyMDIxIDA5OjEyOjM2IC0wODAwCkRhdmUgVGFodCA8ZGF2ZS50YWh0QGdt
YWlsLmNvbT4gd3JvdGU6Cgo+IGl0IHdhcyB0aGUgZmFjdCB0aGVyZSBpcyBhIGNha2UgcG9ydCBh
dCBhbGwgdGhhdCB3YXMgc28gZXhjaXRpbmcsIGFuZAo+IHRoYXQgc29tZSBicm9hZGNvbSBBUElz
IGV4aXN0ZWQsIGV2ZW4gbW9yZSBzby4KPiAKPiBPbiBXZWQsIE1hciAzLCAyMDIxIGF0IDk6MDkg
QU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+IHdyb3RlOgo+ID4KPiA+
IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JpdGVzOgo+ID4gIAo+ID4gPiBodHRw
czovL2dpdGh1Yi5jb20vZHRhaHQvdGMtYWR2L2lzc3Vlcy8yNwo+ID4gPgo+ID4gPiBJIGRvbid0
IGhhdmUgYW55IG9mIHRoZSBoYXJkd2FyZSBzdXBwb3J0ZWQgYnkgdGhpcyBmaXJtd2FyZSBseWlu
Zwo+ID4gPiBhcm91bmQgaGFuZHkuLi4gY2FuIGFueW9uZSB0ZXN0PyAgCj4gPgo+ID4gSSBiZWxp
ZXZlIHRoZSBvcmlnaW5hbCByZXBvcnRlZCBhbHJlYWR5IHRlc3RlZCBhbmQgY29uZmlybWVkIHRo
ZSBmaXgsCj4gPiBhY3R1YWxseS4gSSBoYXZlIGEgcGF0Y2ggcGVuZGluZyBmb3IgdXBzdHJlYW0g
aXByb3V0ZTIgd2hpY2ggc2hvdWxkIHNob3cKPiA+IHVwIG9uIG5ldGRldiBhcyBzb29uIGFzIHZn
ZXIgdW5jbG9ncy4uLgo+ID4KPiA+IC1Ub2tlICAKPiAKPiAKPiAKCkkgaGF2ZSBiZWVuIHVzaW5n
IHRoaXMgaHR0cHM6Ly9naXRodWIuY29tL3R0Z2FwZXJzL2Nha2Vxb3MtbWVybGluCmZvciA1IGRh
eXMgc28gZmFyLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

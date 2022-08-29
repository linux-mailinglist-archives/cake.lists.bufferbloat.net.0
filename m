Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE375A4258
	for <lists+cake@lfdr.de>; Mon, 29 Aug 2022 07:36:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6CCEE3CB40;
	Mon, 29 Aug 2022 01:36:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1661751365;
	bh=TD0fhHrff8zYyQDO2h3wktDbKoDv46BtijWAtnJURcI=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=E3GNEYgLKzo9xsHEyFirc89bzLr5xYrJa8sqlR0+KaTRTigfe3yUOc/OFs4PkenEd
	 TMnnL1lYx8R/swRtsv6qCv+b03AL8LJZlFTi8P7w61mGLNmVjlHT4zxxDiO4jpw2LC
	 tSpx3TwhNQjEdBoqJHoF8GJ0cvYETMmgXCS5VQDVvKzu6GKav5SbVJL2JdCwLxgdnv
	 q72az/0BvG4ldwY716Aom2wfigvS8dY+aH5PqXMpiPmTE/3+kaZuPVHxBgBYHmL3qZ
	 yZ/ns6U9gp7BAlgF7arTDxUSNY/WqpyicjZjN0OkfZVbXZiHwDoTNb57dY1JYJ0vL1
	 EsIhOTYtwsdIg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D906B3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 29 Aug 2022 01:36:03 -0400 (EDT)
Received: by mail-oi1-x233.google.com with SMTP id t140so9214433oie.8
 for <cake@lists.bufferbloat.net>; Sun, 28 Aug 2022 22:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc;
 bh=YPIk4Y6Ukvku/o4Tv5ZXhZ7lEnBtiiRp5ib7DSWGFM8=;
 b=Y2xNXQgUOvz57ZKdc/N+XMhEmLBm3bj1XlrpxOKnPOLBHuD5HmoY+DnVWRW0mN6ADh
 VPvL08VGntcxFZlFmTsY0KVnEMpTn2crFVNbylHVURnsprc1R4w+ono9iXtTBWTwWyXU
 x8EaxkKwqg9+puYxL/yEm3qTriPDWm74Z5kLYF+UgeKsEYEknMN/fCEXpHd8nt+8FljG
 nzbWg/aQakThnqhYoMXVVZk+TTTYsKC/Pg2YtsoOh64hr86qXWJR1my4Z5l93GMcQr1G
 fDMQleXph7i5wXyuigTsrEwfCeKUKZaIhPoezvyykO0QXPHnk1B0YvbB5JUSVdj3cIBl
 Gsrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
 bh=YPIk4Y6Ukvku/o4Tv5ZXhZ7lEnBtiiRp5ib7DSWGFM8=;
 b=0amUFEDPem1c2lqJYJikIossUWssay3sT2FlbZP55YW8Lc3cifqqliJNYUE/bEkPiY
 YA4tTIiLy5a3Tl59NY11lmGNxY+8XMU5k44G8NNcvOPUx6NVNc/bPPciBSqghw/ydG/v
 C2avdCio+ktgMDyWphAFWzHDA4ORv53+CzWu3YZJTUz4GXUfp8/Qptoznc1vh2U9fGkH
 JxTppJyrSDuY0FmXJtqDq0LWfGFLZbvEpQRtP8a+/G6urNu8sHXlmwf3C5r/4uFuHeea
 k4ydurulQ/bGHjqijqiEWrMVhL4c+56sOq7o9IxfbJKv1O4TNooEAYCg28UQQFT97dMv
 FS6A==
X-Gm-Message-State: ACgBeo376N2JIwRTFI5Fdnpg8CDxAie716tCtToRzEuCkONJKoyvIcSG
 NZzJd5qkLUTgwGPHZEwqPBc=
X-Google-Smtp-Source: AA6agR4GofH7Oodg45bBR88TpKCljUFomt/mN0bMVxq3I+QI5h2I1XrvzY/CghUNf0ozvIqP0b/nsA==
X-Received: by 2002:a05:6808:1594:b0:343:2e08:ceaf with SMTP id
 t20-20020a056808159400b003432e08ceafmr6448552oiw.181.1661751363041; 
 Sun, 28 Aug 2022 22:36:03 -0700 (PDT)
Received: from localhost ([2600:1700:65a0:ab60:5e78:4de7:b681:c052])
 by smtp.gmail.com with ESMTPSA id
 r65-20020a4a3744000000b00445313616aesm4592061oor.21.2022.08.28.22.36.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Aug 2022 22:36:02 -0700 (PDT)
Date: Sun, 28 Aug 2022 22:36:00 -0700
To: Zhengchao Shao <shaozhengchao@huawei.com>
Message-ID: <YwxQQOzw/dGKJKyB@pop-os.localdomain>
References: <20220827014910.215062-1-shaozhengchao@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220827014910.215062-1-shaozhengchao@huawei.com>
Subject: Re: [Cake] [PATCH net-next] net: sched: remove redundant NULL check
 in change hook function
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
From: Cong Wang via Cake <cake@lists.bufferbloat.net>
Reply-To: Cong Wang <xiyou.wangcong@gmail.com>
Cc: cake@lists.bufferbloat.net, jiri@resnulli.us, netdev@vger.kernel.org,
 yuehaibing@huawei.com, linux-kernel@vger.kernel.org, jhs@mojatatu.com,
 edumazet@google.com, weiyongjun1@huawei.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gU2F0LCBBdWcgMjcsIDIwMjIgYXQgMDk6NDk6MTBBTSArMDgwMCwgWmhlbmdjaGFvIFNoYW8g
d3JvdGU6Cj4gQ3VycmVudGx5LCB0aGUgY2hhbmdlIGZ1bmN0aW9uIGNhbiBiZSBjYWxsZWQgYnkg
dHdvIHdheXMuIFRoZSBvbmUgd2F5IGlzCj4gdGhhdCBxZGlzY19jaGFuZ2UoKSB3aWxsIGNhbGwg
aXQuIEJlZm9yZSBjYWxsaW5nIGNoYW5nZSBmdW5jdGlvbiwKPiBxZGlzY19jaGFuZ2UoKSBlbnN1
cmVzIHRjYVtUQ0FfT1BUSU9OU10gaXMgbm90IGVtcHR5LiBUaGUgb3RoZXIgd2F5IGlzCj4gdGhh
dCAuaW5pdCgpIHdpbGwgY2FsbCBpdC4gVGhlIG9wdCBwYXJhbWV0ZXIgaXMgYWxzbyBjaGVja2Vk
IGJlZm9yZQo+IGNhbGxpbmcgY2hhbmdlIGZ1bmN0aW9uIGluIC5pbml0KCkuIFRoZXJlZm9yZSwg
aXQncyBubyBuZWVkIHRvIGNoZWNrIHRoZQo+IGlucHV0IHBhcmFtZXRlciBvcHQgaW4gY2hhbmdl
IGZ1bmN0aW9uLgo+IAoKUmlnaHQuLiBidXQgdGhlIG9uZSBiZWxvdzoKCj4gZGlmZiAtLWdpdCBh
L25ldC9zY2hlZC9zY2hfZ3JlZC5jIGIvbmV0L3NjaGVkL3NjaF9ncmVkLmMKPiBpbmRleCBjNTBh
MDg1M2RjYjkuLmUyM2QzZGJiNzI3MiAxMDA2NDQKPiAtLS0gYS9uZXQvc2NoZWQvc2NoX2dyZWQu
Ywo+ICsrKyBiL25ldC9zY2hlZC9zY2hfZ3JlZC5jCj4gQEAgLTQxMyw5ICs0MTMsNiBAQCBzdGF0
aWMgaW50IGdyZWRfY2hhbmdlX3RhYmxlX2RlZihzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5s
YXR0ciAqZHBzLAo+ICAJYm9vbCByZWRfZmxhZ3NfY2hhbmdlZDsKPiAgCWludCBpOwo+ICAKPiAt
CWlmICghZHBzKQo+IC0JCXJldHVybiAtRUlOVkFMOwo+IC0KCkkgZG9uJ3QgdGhpbmsgYW55b25l
IGNoZWNrcyB0YltUQ0FfR1JFRF9EUFNdLiBXaGF0IHlvdSBpbnRlbmRlZCB0byBwYXRjaAppcyBn
cmVkX2NoYW5nZSgpLCByaWdodD8KClRoYW5rcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

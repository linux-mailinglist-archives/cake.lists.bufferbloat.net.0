Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E908F5BFB2B
	for <lists+cake@lfdr.de>; Wed, 21 Sep 2022 11:40:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3039D3CB42;
	Wed, 21 Sep 2022 05:40:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1663753253;
	bh=65bQWatjhfKLN/X6I0Yc3XlEQ+5Da+Nm2MI2t5kqDzA=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=OVdSJTnzWQCBiXs27xn+qGDa6yPjbXdzhCy1cBEFvGM6skgj7vWdSK96ZpyLZ3B2X
	 TGJ2L6e1txrMgFcpPD3GXaYo1ZolQo0Fc4b/6pWmDBkGAxhgOAHJMZCJllE/LP/b1r
	 jPW+Gxs0OOXVDF2K+5BTDv9p38Q4481wKixJvoKNviBH/9MTa/CKHk+iokwV1Qeb4n
	 wtUntvfCwQ5UNbq55jgbqhezSyakPaSVql/UoZgHhvxDaWYihO0Ky+/txdTORLzOYb
	 BWAt7UN5p+PpZou6MrU0S37Km59qPHXYV6yvw6+M5pVz/KtFerCAYdkrqvXktSqdj8
	 TyP5mcM87TQug==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C3D673B29E
 for <cake@lists.bufferbloat.net>; Wed, 21 Sep 2022 05:40:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1663753251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vfl/st5m8Se6ltL60JY32xTNgdDLAMTh+1ursFMAnnc=;
 b=gXQyeF1EBlhM1jMim8Qy5XhtLyfE23+wUQl5qxzjQlV0vFCE9TZHpSuKW9T1GU2mx2klg+
 EtwbGyYcBJqcBrovaYqp7z7o27glwD7KF/mrN8Dd9mQC3hRO13kOnT2yLAAQ7wM9E0mcvq
 OQNygGaCXf7y8IFvgWy/Ro5X/HO0qHk=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-665-INQOPMpiP3ifYaBy5DZJyQ-1; Wed, 21 Sep 2022 05:40:48 -0400
X-MC-Unique: INQOPMpiP3ifYaBy5DZJyQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 c6-20020a05640227c600b004521382116dso4007910ede.22
 for <cake@lists.bufferbloat.net>; Wed, 21 Sep 2022 02:40:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=vfl/st5m8Se6ltL60JY32xTNgdDLAMTh+1ursFMAnnc=;
 b=o8nQFzvMhNtS1IXLzAWMrYAfB91Q/thTqsL4fRRFfKFjhSzY5DgRGm65Q/DwVnHdeT
 HtuVk+gVvzrWj89uHe3zIar7F7RjiyPKNct05WwDm8fNCarW87HOge3CoSUy+XzYci0x
 nO58i/YwLPlDTN2abGPVUxE/3AwtegIOIhceM9G1igaLKTWr+fP4Xsxf6KVewpWjDzfQ
 ZFPiQlzRO7CGVEpN+GZUplxAcr0B58LIUDtkMl/7iJoK+cRKF9dArTzuUurKofOB0wI8
 2IYe3ksCqAX9/0Gy50WVTUkdx8kY7uYTLsq3OUhM0Sk15DCi7O73U9amENs5JuQAleHF
 CBrg==
X-Gm-Message-State: ACrzQf1Hh+3CbLjvMHd5szzSTP5EK/1mfOf+ZRC6pinsLfRVp+SvgttY
 hM7IxvYoshc+hUwTVphjJVl2VQ4J/0SLGWL4AiaAgk+3lUYnUSXQ8P1EdDRHSnN2bHuZOilfCOo
 SiJrievABBGPrbpTCaYjneg==
X-Received: by 2002:a17:907:94ca:b0:77b:542a:4cc4 with SMTP id
 dn10-20020a17090794ca00b0077b542a4cc4mr19302843ejc.257.1663753247289; 
 Wed, 21 Sep 2022 02:40:47 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4hDKaFsXcDpGvBW7qsS7g0afcmMVDNPrIWCK+FY0bzS4JRPiUwSLUK8z2QrUwdSGY7qf4/BA==
X-Received: by 2002:a17:907:94ca:b0:77b:542a:4cc4 with SMTP id
 dn10-20020a17090794ca00b0077b542a4cc4mr19302826ejc.257.1663753247016; 
 Wed, 21 Sep 2022 02:40:47 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 gj22-20020a170906e11600b0073dd1ac2fc8sm1016556ejb.195.2022.09.21.02.40.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 02:40:46 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id D17D861C4E3; Wed, 21 Sep 2022 11:40:45 +0200 (CEST)
To: Zhengchao Shao <shaozhengchao@huawei.com>, netdev@vger.kernel.org,
 cake@lists.bufferbloat.net, linux-kselftest@vger.kernel.org,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, vinicius.gomes@intel.com, stephen@networkplumber.org,
 shuah@kernel.org, victor@mojatatu.com
In-Reply-To: <20220921024104.386242-1-shaozhengchao@huawei.com>
References: <20220921024104.386242-1-shaozhengchao@huawei.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 21 Sep 2022 11:40:45 +0200
Message-ID: <87illhvzdu.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next,
 v3 01/18] net/sched: sch_api: add helper for tc qdisc walker stats
 dump
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: yuehaibing@huawei.com, zhijianx.li@intel.com, weiyongjun1@huawei.com,
 shaozhengchao@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

WmhlbmdjaGFvIFNoYW8gPHNoYW96aGVuZ2NoYW9AaHVhd2VpLmNvbT4gd3JpdGVzOgoKPiBUaGUg
d2FsayBpbXBsZW1lbnRhdGlvbiBvZiBtb3N0IHFkaXNjIGNsYXNzIG1vZHVsZXMgaXMgYmFzaWNh
bGx5IHRoZQo+IHNhbWUuIFRoYXQgaXMsIHRoZSB2YWx1ZXMgb2YgY291bnQgYW5kIHNraXAgYXJl
IGNoZWNrZWQgZmlyc3QuIElmCj4gY291bnQgaXMgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvIHNr
aXAsIHRoZSByZWdpc3RlcmVkIGZuIGZ1bmN0aW9uIGlzCj4gZXhlY3V0ZWQuIE90aGVyd2lzZSwg
aW5jcmVhc2UgdGhlIHZhbHVlIG9mIGNvdW50LiBTbyB3ZSBjYW4gcmVjb25zdHJ1Y3QKPiB0aGVt
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogWmhlbmdjaGFvIFNoYW8gPHNoYW96aGVuZ2NoYW9AaHVhd2Vp
LmNvbT4KCkFja2VkLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNv
bT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

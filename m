Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EADCC5BFB29
	for <lists+cake@lfdr.de>; Wed, 21 Sep 2022 11:40:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0DEFB3CB39;
	Wed, 21 Sep 2022 05:40:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1663753245;
	bh=p6F4ED0AfHdQHET4phA108ZsE8ZGdOgqfTrMJG4L7ak=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Ii2dIZ87kiMxV2dG+xx+dGvMGwKdUvYlkP+CBbLICpFxU2cb6GtSZuex6fK/wju0Y
	 mk7bTsBfoXfpW1ENja26ZtFAHD0zQUZHNALUdtPEK8x9Do72bhManpTlGGbfLXYSCR
	 trdxf6ShW3WmQEin/cj0A1MHMGNqzIhIfFa0iT0GriIKigFYz4R96qwEJswVn4NAOS
	 tFSwXa3grMXp9yUJ+ojIpg9lz+NuI0PjBsu+nr61KStDXP9Iqs9T2ZBaGdSQRXSj3b
	 sgQZQ/iwR90DmHqzX+vyB/GmnISxmO36HB2MdyHlzzWg/RlrzE5BWzuhGmbUKJ/iqJ
	 aTADMAef/huVQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EB6DC3B29E
 for <cake@lists.bufferbloat.net>; Wed, 21 Sep 2022 05:40:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1663753242;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LhUuJRx2gpuIfpjZ2+oW6pFTAAKEReUIPyoUMqiGOJU=;
 b=FrI646wZn/tnHe6LICa/BEiVUn/wVkRkNLgrtcAWAPTy+PlK8+u90bVTxBxwQNT1Z1SshH
 xZH2ErZ3U1olYvoiUvSdwjZplkg07ahxO8FcV05w7s3b1qkIVLUF+jdL4dRApHgreT+cdn
 VKy/AGMuVTu3nOSWsdCs+jXRZBMFKdc=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-597-9ExOgZ78Pqeic2sTNooDnA-1; Wed, 21 Sep 2022 05:40:41 -0400
X-MC-Unique: 9ExOgZ78Pqeic2sTNooDnA-1
Received: by mail-ed1-f72.google.com with SMTP id
 z16-20020a05640235d000b0045485e4a5e0so2932487edc.1
 for <cake@lists.bufferbloat.net>; Wed, 21 Sep 2022 02:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=LhUuJRx2gpuIfpjZ2+oW6pFTAAKEReUIPyoUMqiGOJU=;
 b=N78/PXWClUKeNcOpU000PRWuzQt0+GxPq6s7pE7P2F1RykWK/5xkn9AgK1Xsp0ZpX0
 6P2sbH9WzfYYLHoicn2t3n8FiebL9HfcH6roAflHtErG8Pd4m1wFgr3FF4UY8NWzZ55m
 9N+6ffEn5XduglRAcW0FrKGhF1XIccelazriskki8QwznvrHH23I6i/w258FHfefoMck
 JryUr0E+4hOx28BLECTsIFp9Rm4iMHnl2XjHvGGkauQYmGsHtC5YyTE13H50FJazAdeK
 6/MnHZvzr7UVe04V5goWvfqymTAFkT0rDDHC2daS+28Qng9TQtJGtb3vycik47B/FYi4
 X0HA==
X-Gm-Message-State: ACrzQf1A8HLwv3WxFSH1QzUZOZx7Sw26RVX544A4jjXmdkvPZHmGLTP+
 0ZxWbLtylV0l4v3nXFXdW6/hIIaJWEYKcRCjKNqxb9Q6p5SNdOzCUOvkmfYbSYNIKXtKzWAgw6W
 SfYa5Jyf6Ynt/E+7mvpXK7g==
X-Received: by 2002:a17:906:328c:b0:780:7574:ced2 with SMTP id
 12-20020a170906328c00b007807574ced2mr1001466ejw.634.1663753238398; 
 Wed, 21 Sep 2022 02:40:38 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7iNkNZ8NEmA5Eef9rWoDRK8RoLdOhrzxoLCprjnhClTrEJcAvc5D5cN9ZzokYS37vb9rCXsg==
X-Received: by 2002:a17:906:328c:b0:780:7574:ced2 with SMTP id
 12-20020a170906328c00b007807574ced2mr1001327ejw.634.1663753236035; 
 Wed, 21 Sep 2022 02:40:36 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 g6-20020a170906538600b0077f324979absm1069305ejo.67.2022.09.21.02.40.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 02:40:34 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 574AD61C4E1; Wed, 21 Sep 2022 11:40:34 +0200 (CEST)
To: Zhengchao Shao <shaozhengchao@huawei.com>, netdev@vger.kernel.org,
 cake@lists.bufferbloat.net, linux-kselftest@vger.kernel.org,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, vinicius.gomes@intel.com, stephen@networkplumber.org,
 shuah@kernel.org, victor@mojatatu.com
In-Reply-To: <20220921024118.386700-1-shaozhengchao@huawei.com>
References: <20220921024118.386700-1-shaozhengchao@huawei.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 21 Sep 2022 11:40:34 +0200
Message-ID: <87leqdvze5.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next,
 v3 02/18] net/sched: use tc_qdisc_stats_dump() in qdisc
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

WmhlbmdjaGFvIFNoYW8gPHNoYW96aGVuZ2NoYW9AaHVhd2VpLmNvbT4gd3JpdGVzOgoKPiB1c2Ug
dGNfcWRpc2Nfc3RhdHNfZHVtcCgpIGluIHFkaXNjLgo+Cj4gU2lnbmVkLW9mZi1ieTogWmhlbmdj
aGFvIFNoYW8gPHNoYW96aGVuZ2NoYW9AaHVhd2VpLmNvbT4KPiBSZXZpZXdlZC1ieTogVmljdG9y
IE5vZ3VlaXJhIDx2aWN0b3JAbW9qYXRhdHUuY29tPgo+IFRlc3RlZC1ieTogVmljdG9yIE5vZ3Vl
aXJhIDx2aWN0b3JAbW9qYXRhdHUuY29tPgoKRm9yIHNjaF9jYWtlOgoKQWNrZWQtYnk6IFRva2Ug
SMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

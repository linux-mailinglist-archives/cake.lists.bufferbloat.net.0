Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD8C8A833E
	for <lists+cake@lfdr.de>; Wed, 17 Apr 2024 14:38:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 883FB3CB41;
	Wed, 17 Apr 2024 08:38:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1713357495;
	bh=+Fq0bRU+TUe4FdsCZ+FoQbjLEmTitllbwSes6WBcSCc=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=W/DbqdsCiNUEmQxJ7JyoYJ3Da8elwZ2463iy1WDsvbk57LLYHuTOFkTk4t8zxgBKW
	 8AyNpvmUXtozsFHVXtFKolPws0U0OJ3vb8IfF++Jl90aH9Am2764wplZ78zn9nhATO
	 /8UMJBTcZkK/TZ2+qTCwTK83DPoHwD6GMTENv4wy2mj/louWJk26yIG6BcrBtnmz15
	 mWjUWTkbCR1bYXUu8m6TpdETCSfjTcRLm9tcAS76xuWhOBwbkG643MjP7yLusvLn77
	 0fJzUrirGK+tC6HvL/wYZ+pfUlGobenTskrCZM5MFtJLOPvGz+oMtW9o4RH4yAScWs
	 xrAnHoWadHV6Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 009FD3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 17 Apr 2024 08:38:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713357493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aQsJ74gs8uNCq3QmXHX/BCc46rTm4CPPCIlkZTHPEUk=;
 b=LMqJX3AdMQkkWZq9C0Ki8EjfpAFi6TQ6eTj435Wt7nvYeKLN8SWeUzr8lYb9MPv+s3TGUh
 FwFuJpkAcORU0fZXOlq2rAVr8Ij/GxsqR1Wf+XLjnym6o0ri0p//nBrpPCv/J5T6IsbDJh
 bWvQz8jYp3iGFCEkR1Hbe/+OqfAd5ro=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-54-3BI8klwANYiJEW6RoZ-wlQ-1; Wed, 17 Apr 2024 08:38:12 -0400
X-MC-Unique: 3BI8klwANYiJEW6RoZ-wlQ-1
Received: by mail-lf1-f70.google.com with SMTP id
 2adb3069b0e04-519296de7cfso1502468e87.3
 for <cake@lists.bufferbloat.net>; Wed, 17 Apr 2024 05:38:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713357490; x=1713962290;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aQsJ74gs8uNCq3QmXHX/BCc46rTm4CPPCIlkZTHPEUk=;
 b=Aa9OLmZctN0HFAtdVYkByR8WVqF65WMfSeb6anKot4w7Pf4yawrTOu1KwSkqW6meHz
 CWMGa0CL8z28LKGZ24hrpz/C4HVcc4JtC8Z6hRRbhhSLYxJF9fL0RqIpq5f3WVtGCNfI
 nKG5vlfTGor38qRjS0N23Jr6rcqgql0mYC3uBFEkiuYyuIuXXf5sikyg7rNq33JEvaYy
 GCHGxrkxuNLjyhcn8aYvzR8SVPlk75hlFoL0/bJ2kIxvw/atldWCwqjSXh3Yis+HadaY
 IyRZtVD8VDxLyW8DEUW/MOdG4ZbvQjRIFqgX5uGt0S9PJX0GDT67wyx5PbbZhsOuHtxP
 Nf6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXpFcNtvKk+Sxc9zPliE/TR5u0QQWWnWile2CErl7x4zgHzZ2hFrte8hxJBFmkOPaU8UP7YA5Wepb3jd7H69bHdauGIWFWSJUV9gw==
X-Gm-Message-State: AOJu0Yz16vYqrRtHPAzERAmxHZYfgRXqPbzxBZO/AIZjMJ8M7mI2Ywff
 Lbq720ZNQKXU+POcz8CXgB6H3ohdJEARKFSaYNYiGltaJsxjfnjjPbIM1EmWOB+mwdPdsYv+CD3
 Wm9zgIVJhxzJ1VbauI5rgMdWBukN7Mu09CUGgC3eBFHo1h5EFTAapqy/oGGs=
X-Received: by 2002:ac2:47e3:0:b0:518:97dc:d85b with SMTP id
 b3-20020ac247e3000000b0051897dcd85bmr8375584lfp.63.1713357490571; 
 Wed, 17 Apr 2024 05:38:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHeUFJ352/1MTQiEFFy/J/cM1tPdbSfRnd+F7UDGy5i/v8SGgrqD3jBxFhL9k+vsKNJouu3wg==
X-Received: by 2002:ac2:47e3:0:b0:518:97dc:d85b with SMTP id
 b3-20020ac247e3000000b0051897dcd85bmr8375572lfp.63.1713357490294; 
 Wed, 17 Apr 2024 05:38:10 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 e22-20020a170906c01600b00a51cdde5d9bsm8099945ejz.225.2024.04.17.05.38.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Apr 2024 05:38:09 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 221251233A6E; Wed, 17 Apr 2024 14:25:08 +0200 (CEST)
To: Simon Horman <horms@kernel.org>, Eric Dumazet <edumazet@google.com>
In-Reply-To: <20240417083549.GA3846178@kernel.org>
References: <20240415132054.3822230-1-edumazet@google.com>
 <20240415132054.3822230-3-edumazet@google.com>
 <20240417083549.GA3846178@kernel.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 17 Apr 2024 14:25:08 +0200
Message-ID: <87cyqouqfv.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next 02/14] net_sched: cake: implement
 lockless cake_dump()
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
Cc: Jiri Pirko <jiri@resnulli.us>, eric.dumazet@gmail.com,
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 cake@lists.bufferbloat.net, Cong Wang <xiyou.wangcong@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2ltb24gSG9ybWFuIDxob3Jtc0BrZXJuZWwub3JnPiB3cml0ZXM6Cgo+ICsgVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+Cj4gICBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dAoKVGhhbmtzIQoKPiBPbiBNb24sIEFwciAxNSwgMjAyNCBhdCAwMToyMDo0MlBNICswMDAwLCBF
cmljIER1bWF6ZXQgd3JvdGU6Cj4+IEluc3RlYWQgb2YgcmVseWluZyBvbiBSVE5MLCBjYWtlX2R1
bXAoKSBjYW4gdXNlIFJFQURfT05DRSgpCj4+IGFubm90YXRpb25zLCBwYWlyZWQgd2l0aCBXUklU
RV9PTkNFKCkgb25lcyBpbiBjYWtlX2NoYW5nZSgpLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogRXJp
YyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPgoKSnVzdCB0byBiZSBzdXJlIEkgdW5kZXJz
dGFuZCB0aGlzIGNvcnJlY3RseTogdGhlIGlkZWEgaXMgdGhhdCB3aXRoClJFQUQvV1JJVEVfT05D
RSBhbm5vdGF0aW9ucywgd2UgY2FuIGR1bXAgdGhlIHFkaXNjIG9wdGlvbnMgd2l0aG91dAp0YWtp
bmcgdGhlIFJUTkwgbG9jay4gVGhpcyBtZWFucyB0aGF0IGEgZHVtcCBub3QgYmUgY29uc2lzdGVu
dCBhY3Jvc3MgYQpjb25jdXJyZW50IHJlY29uZmlnIHRoYXQgY2hhbmdlcyBtdWx0aXBsZSBwYXJh
bWV0ZXJzLCBidXQgZWFjaCBwYXJhbWV0ZXIKd2lsbCBiZSBlaXRoZXIgdGhlIG5ldyBvciB0aGUg
b2xkIHZhbHVlLiBSaWdodD8KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

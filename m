Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B67CD807C7B
	for <lists+cake@lfdr.de>; Thu,  7 Dec 2023 00:42:52 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 475493CB50;
	Wed,  6 Dec 2023 18:42:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1701906171;
	bh=rzutF4fn8SH+Ra0LiLGrdT1KnYLj6vKTocORPuIcyLU=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=V1oBd9aUoWo22m1KpiwUeqmSjJVfJTkUh9r/rqZ9r0YzGDOtwRhSSisIX0A5AG/6m
	 R8hEhBdZXXOI2OBq862yI/1iWvRR4h5lFwvrqXverF91uYYLhUWLjg87cX2nIqGWwZ
	 TsUTNsuK6c36jN+7R2rM89W58kO1TDf5vepmdmSdA8GZv+49MQpPshuwzF3xt/FY/X
	 BKPqg8cmrPidUDHUyqDM9EuUxgnOVa/RnKa/ebwrzYu/EBkl5VAA3YER+OoR7Ax8us
	 AbWfGYEaouTFEkqlJiJihKJQyOk+wfmPpJsepw8teUdNZWLwVmX+UMMMZZJ4UiQp67
	 MsTl6cMtqyj6w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BA2433B2A4
 for <cake@lists.bufferbloat.net>; Wed,  6 Dec 2023 18:42:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1701906170;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=byKhWzYdmi5fEDA2bFIRQYvHyYjTkEKHVH1O6k33LAM=;
 b=ZWJHqiwmIM3l/8iKwUPHH3TdJXdnPKTZv58w4uHWX5bhH5dj1+H7hj9M2fkjxrQt3or5M4
 mqmF2BFa1ui7qXJszLZtHzUhyP1aazLRFilzSqQrlaVxvka5MNiIP1zH8MZ9uXX6AQYWNx
 hxLZak7eNnB//tnF62sK9W49HRqQf5E=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-649-xfbcSiZQMCmDupvg23ObUQ-1; Wed, 06 Dec 2023 18:42:48 -0500
X-MC-Unique: xfbcSiZQMCmDupvg23ObUQ-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-54c504e5fd0so174361a12.3
 for <cake@lists.bufferbloat.net>; Wed, 06 Dec 2023 15:42:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701906167; x=1702510967;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=byKhWzYdmi5fEDA2bFIRQYvHyYjTkEKHVH1O6k33LAM=;
 b=Aiwfi1OiDSNw1WOaUutTx80Y7c2DF4hxsI6CxHPbKmEA+ZWnP4uI7QRNVtGZ02DmY6
 zfdd6EC86xBouAXIwpBszD3rHHVCbfW0yD3rF2VhPwszdd635uAOBpw0tOF1yKNsDtwz
 h+MCRoQhP3jubP2+CvRk/BPe27PA3KgGY5BF1Yn//E1SV1qTnO+bIm/BQiw6DunMeDuI
 TfaiKD6a16vAX19MJ3f1J7Gn4DpECqLU6oFn5NqwVlJ7ZPvzvoT22rvZXfkKRFEKYh2M
 0pRT2vwWeKfOvYG+i9V0blQ2X7FMvidUuZPLZNrbwyCYI+xbR581VKSKNoU37+lcRVzU
 mNmg==
X-Gm-Message-State: AOJu0Yy+w53ufBUNeMPxlXfRfox4n3QZ4dW+YbamaFoKwlwaOUUtAMXG
 koifox0u9SuJmrB5gaO7k/ppT6CxZXsEzOp8PsDLqZgFVjSzDhT8rT0q425UMOX4MIqRtWVWSXP
 05ePr+u/sK2So5TzoQse5BQ==
X-Received: by 2002:a05:6402:51d4:b0:54c:793b:8e29 with SMTP id
 r20-20020a05640251d400b0054c793b8e29mr1226991edd.29.1701906167712; 
 Wed, 06 Dec 2023 15:42:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7vRlA+d/H97Tnlmdjl2ipDcurwnvVNGgVnqnqh+mn1wCaJMNyLFxRFkKmPIdyJdpL930WWw==
X-Received: by 2002:a05:6402:51d4:b0:54c:793b:8e29 with SMTP id
 r20-20020a05640251d400b0054c793b8e29mr1226972edd.29.1701906167447; 
 Wed, 06 Dec 2023 15:42:47 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 u21-20020a509515000000b0054db440489fsm80993eda.60.2023.12.06.15.42.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Dec 2023 15:42:46 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 2CC53FAA7F4; Thu,  7 Dec 2023 00:42:46 +0100 (CET)
To: Michal =?utf-8?Q?Koutn=C3=BD?= <mkoutny@suse.com>, Stephen Hemminger
 <stephen@networkplumber.org>
In-Reply-To: <53ohvb547tegxv2vuvurhuwqunamfiy22sonog7gll54h3czht@3dnijc44xilq>
References: <20231206192752.18989-1-mkoutny@suse.com>
 <7789659d-b3c5-4eef-af86-540f970102a4@mojatatu.com>
 <vk6uhf4r2turfxt2aokp66x5exzo5winal55253czkl2pmkkuu@77bhdfwfk5y3>
 <20231206142857.38403344@hermes.local>
 <53ohvb547tegxv2vuvurhuwqunamfiy22sonog7gll54h3czht@3dnijc44xilq>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 07 Dec 2023 00:42:46 +0100
Message-ID: <87sf4elwy1.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH 0/3] net/sched: Load modules via alias
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
Cc: Michal Kubecek <mkubecek@suse.cz>, KP Singh <kpsingh@kernel.org>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Yonghong Song <yonghong.song@linux.dev>,
 Petr Pavlu <ppavlu@suse.cz>, Martin Wilck <mwilck@suse.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Alexei Starovoitov <ast@kernel.org>, cake@lists.bufferbloat.net,
 Cong Wang <xiyou.wangcong@gmail.com>, Hao Luo <haoluo@google.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pedro Tammela <pctammela@mojatatu.com>, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TWljaGFsIEtvdXRuw70gPG1rb3V0bnlAc3VzZS5jb20+IHdyaXRlczoKCj4gT24gV2VkLCBEZWMg
MDYsIDIwMjMgYXQgMDI6Mjg6NTdQTSAtMDgwMCwgU3RlcGhlbiBIZW1taW5nZXIgPHN0ZXBoZW5A
bmV0d29ya3BsdW1iZXIub3JnPiB3cm90ZToKPj4gSXQgaXMgbm90IGNsZWFyIHRvIG1lIHdoYXQg
dGhpcyBwYXRjaHNldCBpcyB0cnlpbmcgdG8gZml4Lgo+PiBBdXRvbG9hZGluZyBoYXBwZW5zIG5v
dywgYnV0IGl0IGRvZXMgZGVwZW5kIG9uIHRoZSBuYW1lIG5vdCBhbGlhcy4KPgo+IFRoZXJlIGFy
ZSBzb21lIG1vcmUgZGV0YWlscyBpbiB0aGUgdGhyZWFkIG9mIHYxIFsxXSBbMl0uCj4gRG9lcyBp
dCBjbGFyaWZ5PwoKWWVzLCBidXQgdGhpcyBzaG91bGQgYmUgZXhwbGFpbmVkIGNsZWFybHkgaW4g
dGhlIGNvbW1pdCBtZXNzYWdlCihpbmNsdWRpbmcgdGhlIHJlYXNvbiB3aHkgdGhpcyBpcyB1c2Vm
dWwsIGluIHRoZSBmb2xsb3ctdXAgdG8gWzFdKS4KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==

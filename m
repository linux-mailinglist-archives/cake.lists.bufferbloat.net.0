Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0885B1B676C
	for <lists+cake@lfdr.de>; Fri, 24 Apr 2020 01:05:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DDE473CB46;
	Thu, 23 Apr 2020 19:05:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587683126;
	bh=dY9bO1LHFKcGgcAeDBU9jsXbFqVDpPAASXSPlo4G1so=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=opas73Lv2k4S6GmkTpW68oZKEqUmUmZVb0gVxRqK7rXKPLH9ViKgUnQR06VcwaabL
	 wBblUQ9oOP58Pd68o+4gmqweKIPGGXe74K3GpYazeJNkaMrGAaoqV2NZOgJEakdrO3
	 n9THYuAH0YT5WezFywCR6cCBvyncbKZboMU2bW/HtMY4QDhBfuFDrQfqJGdTSaONJX
	 HxtCE3YDyq/nW+vWZZMo4uoflFXwucYbp2f83xN8zEwMcXZEZQeSLGhzy5cZ19D7qn
	 bO47FTfTTQtHLplES3KIPreqxFZ1uZSHVoTYlX8SBbUk5Et0nCpE8SgKC+DpJ/Inqc
	 cdY2msUeb25qw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 968963B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 19:05:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587683125;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y8Gr+13vlYzT8T+3lKWjJ/lu7wEB/lRpJ5K3cOiTSl8=;
 b=YShbln5RsDOvzf0synsLqb8mGXmRQwehTjk+bQPBPYrQ6emLJ/PQj0C9wFw6+CVwvDfBtK
 jhDyIAV9vIbL3kHxIAMyR4noys7s/W0c1dsBCPFZfCkOR7Sja7RpKHoIcHIHczRmTu1mwU
 c+dEldIzxDiqNTFeeRE3h+qj3bTK+Fg=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-dOIyA-teMRKGudXL4D540Q-1; Thu, 23 Apr 2020 19:05:21 -0400
X-MC-Unique: dOIyA-teMRKGudXL4D540Q-1
Received: by mail-lj1-f197.google.com with SMTP id y16so1379829ljy.8
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 16:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=Y8Gr+13vlYzT8T+3lKWjJ/lu7wEB/lRpJ5K3cOiTSl8=;
 b=I4UlH/RGULPl5tQ1ioG/f75ncLfCZXLlye3XwAo78gvEibVdn2fj8aj14ZIxuCAd4k
 CiRNFJBdp+/wth6IrkjORPWh2NGugf0JX9p9+v9X9c9GrDQq8CBENd1E7T9Cybug1b3t
 cwUFW7+EAi20tRj3CBn1qUjT+YXkGVdD4R08e+QRFq+B45Rlvl7Ay/rf5J4541+4HGA0
 HvrFXPyyUhgcqfZyY66I7whaUPdfq1yy/cVRbXs6Ct0D9ryyeRe8SWVyciQgGUpZZbfP
 yp1iymI1/uh360W67+ktTzTgPq+y3EXVzIkhA4Al7Bj/TdN1QaFKNvpeep3ytFm0/nto
 sM/Q==
X-Gm-Message-State: AGi0PuYPOalKzbTozFhXbFlmWeFfW4RNup/iDCVMSQdshSwgc+SP/zjY
 6J+0CIRQ2HJIjV3ICpmVH7s77ayKhrYCJEYdAQ9NAMl6FiROFSHk1mIj6f30QxE38NUHiYiKPP1
 eb/Ifpzz+qZvnHA24wDzMeQ==
X-Received: by 2002:ac2:57cc:: with SMTP id k12mr3827990lfo.69.1587683119989; 
 Thu, 23 Apr 2020 16:05:19 -0700 (PDT)
X-Google-Smtp-Source: APiQypLpSAOBdwaqnbGX7SEX/BpxupD+gDA3Z08lDrTcab3OD54KuXLEdce78tWv5DjZ4YQILfEVLQ==
X-Received: by 2002:ac2:57cc:: with SMTP id k12mr3827979lfo.69.1587683119808; 
 Thu, 23 Apr 2020 16:05:19 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id j19sm3292357lfe.17.2020.04.23.16.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 16:05:19 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5B61F1814FF; Fri, 24 Apr 2020 01:05:17 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Maxime Bizon <mbizon@freebox.fr>
In-Reply-To: <20200423215954.GN28541@sakura>
References: <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
 <20200423092909.GC28541@sakura> <87o8ri76u2.fsf@toke.dk>
 <20200423123329.GG28541@sakura> <877dy66tng.fsf@toke.dk>
 <20200423173111.GL28541@sakura> <871roe6of0.fsf@toke.dk>
 <20200423215954.GN28541@sakura>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 24 Apr 2020 01:05:17 +0200
Message-ID: <87r1wd6bwy.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TWF4aW1lIEJpem9uIDxtYml6b25AZnJlZWJveC5mcj4gd3JpdGVzOgoKPiBPbiBUaHVyc2RheSAy
MyBBcHIgMjAyMCDDoCAyMDozNToxNSAoKzAyMDApLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
d3JvdGU6Cj4KPj4gSSBtZWFudCBtb3JlIGRldGFpbHMgb2YgeW91ciBTT0MgcGxhdGZvcm0uIFlv
dSBhbHJlYWR5IHNhaWQgaXQncwo+PiBBUk0tYmFzZWQsIHNvIEkgZ3Vlc3MgdGhlIG1vc3QgaW1w
b3J0YW50IG1pc3NpbmcgcGllY2UgaXMgd2hpY2ggKExpbnV4KQo+PiBkcml2ZXIgZG9lcyB0aGUg
RXRoZXJuZXQgZGV2aWNlKHMpIHVzZT8KPgo+IC0gTWFydmVsbCBLaXJrd29vZCwgbXY2NDN4eF9l
dGggZHJpdmVyCj4gLSBNYXJ2ZWxsIEE4aywgbXZwcDIgZHJpdmVyCgpObyBuYXRpdmUgWERQIHN1
cHBvcnQgaW4gYW55IG9mIHRob3NlLCB1bmZvcnR1bmF0ZWx5IDooCgo+PiBZdXAsIEkgdGhpbmsg
c28uIFdoYXQgZG9lcyB5b3VyIGN1cnJlbnQgc29sdXRpb24gZG8gd2l0aCBwYWNrZXRzIHRoYXQK
Pj4gYXJlIGRlc3RpbmVkIGZvciB0aGUgV2lGaSBpbnRlcmZhY2UsIEJUVz8gSnVzdCBwdW50IHRo
ZW0gdG8gdGhlIHJlZ3VsYXIKPj4ga2VybmVsIHBhdGg/Cj4KPiB5ZXMsIGJ1dCB0aGF0IHdvbid0
IGZseSBhbnltb3JlIGZvciAxMWF4IHJhdGVzCgpJbmRlZWQsIHRoYXQgd2FzIHBhcnRseSB3aHkg
SSBhc2tlZCA6KQpHb3QgYW55IHBsYW5zPwoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D357216ADF
	for <lists+cake@lfdr.de>; Tue,  7 Jul 2020 12:58:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8CCFE3CBCA;
	Tue,  7 Jul 2020 06:58:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594119492;
	bh=4mKuT7HKTAxzu3rdHeSAQMkWyVJkHg3Bz+IAPXDNHn8=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lc7QfVu3ooRN9rtfpxZcbkdIiM8CM6ToibeWGdbppcfoCstFwWlpIopUOySFcxETD
	 PIZRTGyajgi/LXoL0LWpWjLWirSS1hhikj8Kh1DStLTw+4+RvuTAvR0rMuPXr7m2KK
	 H/n+8xTVUw32NCQFtItazijsA8YOrn4XA+74G50gpu++9aEEdszLvcKoeM2zvtG1ON
	 WKuReynyL87dIY/FAyFBne8tcnUfaGoo/Dgfv2ZzGK3cVxRjMre0f7012kxenZYtb4
	 Eut/ELsyJs5fgri7KKArtQ5kX0aGrXp44vahGbOehScL814mSR5db8a4nwzAubRDTv
	 SiMylgSs27HMw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 25E163B2A4
 for <cake@lists.bufferbloat.net>; Tue,  7 Jul 2020 06:44:39 -0400 (EDT)
Received: by mail-pl1-x641.google.com with SMTP id w17so2137798ply.11
 for <cake@lists.bufferbloat.net>; Tue, 07 Jul 2020 03:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qf4pp+chzAbby4mB2Q9eid/KAY6XYVLlyc0I9zbRSSw=;
 b=nKogjC/ASE1D/E23dLWsBoLjHCJO4i4x2qyYJsNa+H7Dciw/69xXlAWosqJAn/yIQ7
 0Ejw8gcJhDQ5K+c8yE8T+tfJLOiNzBGMjxt/PVzlkSmYLgDc2EcBkiLNmBAsS+wBn1c0
 ckqXYuQZSOw6/w+B113YXTtNWfvptLfywSwcrCHjYGdcBhwkrdnI6hch9a3OcNyAF8pN
 v6vE7InLswKrA00RbyRnE/E04BZQm+7EfNB8kkpQQ+R1Fj2fXomR/3dhJ+zJgR8fj1LM
 y3Y9U9q6gSuMK18z/gwI6pRtttw4Io+7R5cUIjOk7+pgJDALXU/9jHk4Fw2CFMz3ZaTl
 2wYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qf4pp+chzAbby4mB2Q9eid/KAY6XYVLlyc0I9zbRSSw=;
 b=Wu2TFdR+ouGAq2dXst1sbLaZEJ7QMLSOKghj3QlJ0GKApw4zq3PZeF0aj9fJoIDq9l
 v0Qvyev1QXr0ZsNwjlvr0Z1ExGGdy5PIJUZnuMQFy8ZL0iUwrnh+t0ZlhkLlVcWDMBEe
 CjfuXqZ8cFHQWRLzTsba7z03tHTne5LIqmnl2qgfMjXGMLGVurxyc08vT9xGR1V8H4eh
 eAiMJ9isOVprzZZwiCg++zXXEH/divc4sFVf+jAN4dB0rhU58UoFGBZsbiTWDLQI7xTK
 yyrxQU/7fdZu9BuIwDW5vzfa9V9l18E2dbLV1hm7p4PFlbUCd207jzcjZg/N6WyggcHh
 6iFQ==
X-Gm-Message-State: AOAM530pyzMryXnJOQ8jdZs0cbAt3QqF7fmmiGtdLz2FmXHtf4NN1v3y
 5ahW8hQGT63zA4/zX3SfT+k=
X-Google-Smtp-Source: ABdhPJxD5uCSBJ1ORQ4K2XTJDxZ0y7uv0ZI7DMrs6t44zKl1P4+hdj4Nf+Pza4dVLVX/9DUswHUePQ==
X-Received: by 2002:a17:90a:cb81:: with SMTP id
 a1mr3782297pju.11.1594118678291; 
 Tue, 07 Jul 2020 03:44:38 -0700 (PDT)
Received: from [172.20.20.103] ([222.151.198.97])
 by smtp.gmail.com with ESMTPSA id v22sm8642168pfe.48.2020.07.07.03.44.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jul 2020 03:44:37 -0700 (PDT)
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 davem@davemloft.net
References: <20200706122951.48142-1-toke@redhat.com>
From: Toshiaki Makita <toshiaki.makita1@gmail.com>
Message-ID: <234d54c2-5b34-7651-5e57-490bee9920ae@gmail.com>
Date: Tue, 7 Jul 2020 19:44:30 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200706122951.48142-1-toke@redhat.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 07 Jul 2020 06:58:11 -0400
Subject: Re: [Cake] [PATCH net] vlan: consolidate VLAN parsing code and
 limit max parsing depth
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
Cc: Davide Caratti <dcaratti@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Cong Wang <xiyou.wangcong@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMjAyMC8wNy8wNiAyMToyOSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFRv
c2hpYWtpIHBvaW50ZWQgb3V0IHRoYXQgd2Ugbm93IGhhdmUgdHdvIHZlcnkgc2ltaWxhciBmdW5j
dGlvbnMgdG8gZXh0cmFjdAo+IHRoZSBMMyBwcm90b2NvbCBudW1iZXIgaW4gdGhlIHByZXNlbmNl
IG9mIFZMQU4gdGFncy4gQW5kIERhbmllbCBwb2ludGVkIG91dAo+IHRoYXQgdGhlIHVuYm91bmRl
ZCBwYXJzaW5nIGxvb3AgbWFrZXMgaXQgcG9zc2libGUgZm9yIG1hbGljaW91c2x5IGNyYWZ0ZWQK
PiBwYWNrZXRzIHRvIGxvb3AgdGhyb3VnaCBwb3RlbnRpYWxseSBodW5kcmVkcyBvZiB0YWdzLgo+
IAo+IEZpeCBib3RoIG9mIHRoZXNlIGlzc3VlcyBieSBjb25zb2xpZGF0aW5nIHRoZSB0d28gcGFy
c2luZyBmdW5jdGlvbnMgYW5kCj4gbGltaXRpbmcgdGhlIFZMQU4gdGFnIHBhcnNpbmcgdG8gYW4g
YXJiaXRyYXJpbHktY2hvc2VuLCBidXQgaG9wZWZ1bGx5Cj4gY29uc2VydmF0aXZlLCBtYXggZGVw
dGggb2YgMzIgdGFncy4gQXMgcGFydCBvZiB0aGlzLCBzd2l0Y2ggb3Zlcgo+IF9fdmxhbl9nZXRf
cHJvdG9jb2woKSB0byB1c2Ugc2tiX2hlYWRlcl9wb2ludGVyKCkgaW5zdGVhZCBvZgo+IHBza2Jf
bWF5X3B1bGwoKSwgdG8gYXZvaWQgdGhlIHBvc3NpYmxlIHNpZGUgZWZmZWN0cyBvZiB0aGUgbGF0
dGVyIGFuZCBrZWVwCj4gdGhlIHNrYiBwb2ludGVyICdjb25zdCcgdGhyb3VnaCBhbGwgdGhlIHBh
cnNpbmcgZnVuY3Rpb25zLgo+IAo+IFJlcG9ydGVkLWJ5OiBUb3NoaWFraSBNYWtpdGEgPHRvc2hp
YWtpLm1ha2l0YTFAZ21haWwuY29tPgo+IFJlcG9ydGVkLWJ5OiBEYW5pZWwgQm9ya21hbm4gPGRh
bmllbEBpb2dlYXJib3gubmV0Pgo+IEZpeGVzOiBkN2JmMmViZWJjMmIgKCJzY2hlZDogY29uc2lz
dGVudGx5IGhhbmRsZSBsYXllcjMgaGVhZGVyIGFjY2Vzc2VzIGluIHRoZSBwcmVzZW5jZSBvZiBW
TEFOcyIpCj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJl
ZGhhdC5jb20+Cj4gLS0tCi4uLgo+IEBAIC02MjMsMTMgKzU5NywxMiBAQCBzdGF0aWMgaW5saW5l
IF9fYmUxNiBfX3ZsYW5fZ2V0X3Byb3RvY29sKHN0cnVjdCBza19idWZmICpza2IsIF9fYmUxNiB0
eXBlLAo+ICAgCQkJdmxhbl9kZXB0aCA9IEVUSF9ITEVOOwo+ICAgCQl9Cj4gICAJCWRvIHsKPiAt
CQkJc3RydWN0IHZsYW5faGRyICp2aDsKPiArCQkJc3RydWN0IHZsYW5faGRyIHZoZHIsICp2aDsK
PiAgIAo+IC0JCQlpZiAodW5saWtlbHkoIXBza2JfbWF5X3B1bGwoc2tiLAo+IC0JCQkJCQkgICAg
dmxhbl9kZXB0aCArIFZMQU5fSExFTikpKQo+ICsJCQl2aCA9IHNrYl9oZWFkZXJfcG9pbnRlcihz
a2IsIHZsYW5fZGVwdGgsIHNpemVvZih2aGRyKSwgJnZoZHIpOwoKU29tZSBkcml2ZXJzIHdoaWNo
IHVzZSB2bGFuX2dldF9wcm90b2NvbCB0byBnZXQgSVAgcHJvdG9jb2wgZm9yIGNoZWNrc3VtIG9m
ZmxvYWQgZGlzY2FyZHMKcGFja2V0cyB3aGVuIGl0IGNhbm5vdCBnZXQgdGhlIHByb3RvY29sLgpJ
IGd1ZXNzIGZvciBzdWNoIHVzZXJzIHRoaXMgZnVuY3Rpb24gc2hvdWxkIHRyeSB0byBnZXQgcHJv
dG9jb2wgZXZlbiBpZiBpdCBpcyBub3QgaW4gc2tiIGhlYWRlcj8KSSdtIG5vdCBzdXJlIHN1Y2gg
YSBjYXNlIGNhbiBoYXBwZW4sIGJ1dCBzaW5jZSB5b3UgY2FyZSBhYm91dCB0aGlzLCB5b3Uga25v
dyByZWFsIGNhc2VzIHdoZXJlCnZsYW4gdGFnIGNhbiBiZSBpbiBza2IgZnJhZ3M/CgpUb3NoaWFr
aSBNYWtpdGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

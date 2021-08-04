Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0AB3E0052
	for <lists+cake@lfdr.de>; Wed,  4 Aug 2021 13:36:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D80413CB40;
	Wed,  4 Aug 2021 07:36:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628077015;
	bh=KSLQTAzj2UFkjAaQvfeMVSDL/WBC6SeioE+QldmsLIg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mFsp/4llJ2KPqaKXpozanPmkI4ipbpiQwMv3hSmunOG10J32kHpOFmYfvqECb25Wn
	 Xx614Wwa1Z3AvzQr9/M0zY+PYQzRvz6n1F2KrfRjKblCm0XT9xMCWnX63azOk6Vh9i
	 8qtcqKr93Yw0ITdkoviq95eE4DAzvXqeM7XfPS8+9jttzT/0Rvx60GBEmVaSq1wVoP
	 Ojpo8qhXtKagvKMN81hYVYqBIdG9CsHNbpejkpqVOlzps7NSip9w/+eSAmsLyc4Z5R
	 FtCh+Z0ppQPp6ySBEdjk68qcUCDufxOV529f4IJZxfTTik2ZvkWX6/jHxtyDke6Ca7
	 +d1bZMq+YptDA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 67E633CB37
 for <cake@lists.bufferbloat.net>; Wed,  4 Aug 2021 07:36:54 -0400 (EDT)
Received: by mail-qv1-xf36.google.com with SMTP id d17so893435qvn.13
 for <cake@lists.bufferbloat.net>; Wed, 04 Aug 2021 04:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ulJco/J+QCYSGRw6APbs5XS7yXBU8p0kktv8dj9Xj0U=;
 b=cJxJaf8gPG7zf64dMIFcn75iMEpbcvAB6ar0iVBY/2CcTnpz21o0XiodmcDRQDMsVC
 TNXFXLOtjK4qmoRftbDjMKBCpDGQpjMOuxuNw/C25Uxjkxi+6UPRtGhXw9U/zXPQ14ck
 pkE1EVcQLfCvsAfv76bfw5VyhaCkHuFxTJF2q9iXp+xOZ8v/iEUIkYaHbNHSqVWleoqz
 hF4Lglo/2bBuqLnlnO2td26XZvYRoIe89n/lTmV4YwIkBMiWYInrMKlPNYbkVTV9PiM0
 3vO1AVHA0bgGhsklzH+NCBqL9nCfDKY0XD+DaCSOskMrX8L9VvZ/dWhvRbLpQc/BkSlk
 KaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ulJco/J+QCYSGRw6APbs5XS7yXBU8p0kktv8dj9Xj0U=;
 b=TnneQGwkyZAvo3oDOfBe4s3eiY7yWlfY067UbiUGVGviZEIeIUFrRIyeBaicOzcbJ9
 dD/xj0mpWNLdc5s7/iicJkSkOYkLpSb4srZpjgWVfQLx9dmjGUD8e2GTxMzhVfMkDl4R
 0O+5oUFEz9iGumrhw+E7X8xfCRTgW3zxqzl5XwvyTMRHG+QyYD32bq/eYkX/TVDLjpYO
 TEjPbtcUsxes6RwAyoL7yZQIEwHyIARXF5XKxPHRZa9n5EyCPKfayKXdMoee4Dy4tghV
 mlUQT7kjuSF4MiE1SUm+h9R2bd3gvoz4AdtirKXSaaTQw8bYWlm86zeT3BFmv24BY0hG
 Fglw==
X-Gm-Message-State: AOAM5311cjX1BwqfM3n5+Y7lw7Nou0zilz8h40i91ETwHZNM3BADZvO+
 2ZbDEneR/RanhbA7LWGRlWcCZVVDjQ1PwbMHb14=
X-Google-Smtp-Source: ABdhPJy9r8zpykFzy0piz4rmHgzSRd5r4Ce1jLT0arRVBwTbhgpLW4nb/uRz06xBEZ2SsVFwRTsLt0FtV14f3zugIcA=
X-Received: by 2002:ad4:5de1:: with SMTP id jn1mr24934568qvb.62.1628077013958; 
 Wed, 04 Aug 2021 04:36:53 -0700 (PDT)
MIME-Version: 1.0
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
 <87r1f95und.fsf@toke.dk>
In-Reply-To: <87r1f95und.fsf@toke.dk>
From: Jonathan Morton <chromatix99@gmail.com>
Date: Wed, 4 Aug 2021 14:36:43 +0300
Message-ID: <CAJq5cE0zdmfOqC+SSNHpb4JEZfXTKQh1EbzxoWLvwkkr27QO=Q@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] cake srchost/dsthost stopped working?
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

T24gV2VkLCA0IEF1ZyAyMDIxIGF0IDE0OjE0LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gdmlh
IENha2UKPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+IFBldGUgSGVpc3Qg
PHBldGVAaGVpc3RwLm5ldD4gd3JpdGVzOgo+Cj4gPiBPbmUgbW9yZSB0aXAsIHJldmVydGluZyB0
aGlzIGNvbW1pdCBzZWVtcyB0byBmaXggaXQ6Cj4gPgo+ID4gaHR0cHM6Ly9naXRodWIuY29tL3Rv
cnZhbGRzL2xpbnV4L2NvbW1pdC9iMGMxOWVkNjA4OGFiNDFkZDJhNzI3YjYwNTk0YjcyOTdjMTVk
NmNlCj4KPiBBaCwgSSB0aGluayBJIHNlZSB3aGF0IHRoZSBwcm9ibGVtIGlzOyBjb3VsZCB5b3Ug
cGxlYXNlIHRyeSB0aGUgcGF0Y2gKPiBiZWxvdz8KPgo+IC1Ub2tlCj4KPiBkaWZmIC0tZ2l0IGEv
bmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwo+IGluZGV4IDk1MTU0
Mjg0M2NhYi4uYTgzYzRkNDMyNmRhIDEwMDY0NAo+IC0tLSBhL25ldC9zY2hlZC9zY2hfY2FrZS5j
Cj4gKysrIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKPiBAQCAtNzIwLDcgKzcyMCw3IEBAIHN0YXRp
YyB1MzIgY2FrZV9oYXNoKHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpxLCBjb25zdCBzdHJ1Y3Qgc2tf
YnVmZiAqc2tiLAo+ICBza2lwX2hhc2g6Cj4gICAgICAgICBpZiAoZmxvd19vdmVycmlkZSkKPiAg
ICAgICAgICAgICAgICAgZmxvd19oYXNoID0gZmxvd19vdmVycmlkZSAtIDE7Cj4gLSAgICAgICBl
bHNlIGlmICh1c2Vfc2tiaGFzaCkKPiArICAgICAgIGVsc2UgaWYgKHVzZV9za2JoYXNoICYmIGZs
b3dfbW9kZSAmIENBS0VfRkxPV19GTE9XUykKPiAgICAgICAgICAgICAgICAgZmxvd19oYXNoID0g
c2tiLT5oYXNoOwo+ICAgICAgICAgaWYgKGhvc3Rfb3ZlcnJpZGUpIHsKPiAgICAgICAgICAgICAg
ICAgZHN0aG9zdF9oYXNoID0gaG9zdF9vdmVycmlkZSAtIDE7CgpHb29kIGNhdGNoIC0gSSB3YXMg
Z29pbmcgdG8gaGF2ZSB0byB3YWRlIGluIGFuZCByZW1pbmQgbXlzZWxmIGhvdyB0aGlzCmx1bXAg
b2YgY29kZSB3b3JrZWQuICBCdXQgc2hvdWxkbid0IHRoZSBtYXNraW5nIG9wZXJhdGlvbiBiZSBp
bgpicmFja2V0cywgdG8gbWFrZSB0aGUgcHJlY2VkZW5jZSBleHBsaWNpdD8KCiAtIEpvbmF0aGFu
IE1vcnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

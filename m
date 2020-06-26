Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5463A20B236
	for <lists+cake@lfdr.de>; Fri, 26 Jun 2020 15:11:55 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 019E53CB38;
	Fri, 26 Jun 2020 09:11:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593177114;
	bh=/CQkwC7p33McdgoaFj+HmM7ZhaW3M4Co+MS2b60xMw0=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bqBU6ZYkjzO+LD7KLZL359HGqmqyN1YnDBWS99JO+FIPlJyNLWXSQeN/KRZLrorto
	 rtYC/YWwtQozbGqeA2ZFqXE/hsmzxpQHbRuS2u4nIoworOIPNYDTB3muau7qGUj+PY
	 l3fhbp3NwXicWUlGQ+3OmomGWI04vBzWf9y/8J2IunKheyoNfOz2i/jxAdcXVd5A3/
	 kyIo1QACYIvwkTJwPMlnZ1G95wpZA5Ni0BbIs2sHUwV7i94R/oLm1DTt0NuzQc5BuK
	 Lt46NxND13/4QGnYvkCyMhEp7IlDDc2wdtM/0KD8c3IhO2t74PaaNVPYvzRkg6MsiF
	 uqnI2i3mIilXw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 573203B29E
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 09:11:52 -0400 (EDT)
Received: by mail-lj1-x242.google.com with SMTP id 9so10288321ljv.5
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 06:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ykHvsTrqoFALeQLAnXWhfrYyHVdyurhRXFO7SGklR3U=;
 b=ZlHIlLXUkTteChc9njF9k76HLkkYX12vEgnIvEse4tOSY3NFYFNPJ/IJuqIFc/caDU
 pDqHNIZlCUd5EBPopgwW/61o6yZufgMNiSKVW8/L6OyGsaxx89AMkx3BZX3M6djMTwpj
 RVszREiLpf/GuxyB6srcuxJYPLnzbJWMJaQDpvTqvpUoq1DfbbE1syU3UuctGVkqhxpM
 NL4gD/qlkSdTQZ7XkUVr00aQiv02F07Oc2EU1meHKhGrtZcJk2y94d8ceOhoiEj+oHR5
 qRj71Nt1b/txhSZvxhLW1k4IaEQP/bgt0nsMd0FKXumJGhCmLHyrIwDe1Da8Bt5LP4KN
 /06g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ykHvsTrqoFALeQLAnXWhfrYyHVdyurhRXFO7SGklR3U=;
 b=AcXgrR+qTv0rb0Rpa4N4D99jmVbWqhNqBBdiXEdr7/nqIYhYCi5kqr8IkpYX9wS3Hf
 id3Y6n4erv8sPRI/VmHAoTZtffsusCDWDh7FCk9CYF8tJS7TrG30T0S92voI5VjsTGwR
 g23oNcHSeNhWjhU+pNoPsoCXZQTCsPUWo7R9b/3od0CLey0OTY/+bKcAPfjOcS4zMPzV
 OW9y/TwVMqwl3TvqPiepkBQ6S0kA4ITc/Keoqjb5n/a4PoqsOa6T6LR2ku84m8GC0oMh
 9MZ2K6oGkoC334aopi6FmnRVnit1gJ9DGi5VVOgdPf3LcABG487AMVLqa+5rmcaAsKUd
 E47Q==
X-Gm-Message-State: AOAM5336EGDQXImlu0qeINCCUh0zxmNnSk8tYX1psi+Uo2nTiCx5fvrn
 TaWgdSgDgGUypsnLx+VuXBI=
X-Google-Smtp-Source: ABdhPJytdicbWQStHtdZwj3lg+5v5M/MlJjlKPxCcX4fuJA9l2DbvUZURhaCc97nc8P3PPVFceLcgQ==
X-Received: by 2002:a2e:8747:: with SMTP id q7mr1328970ljj.459.1593177111264; 
 Fri, 26 Jun 2020 06:11:51 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-85-nat-p.elisa-mobile.fi.
 [83.245.237.85])
 by smtp.gmail.com with ESMTPSA id y188sm7910691lfc.36.2020.06.26.06.11.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jun 2020 06:11:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <240fc14da96a6212a98dd9ef43b4777a9f28f250.camel@redhat.com>
Date: Fri, 26 Jun 2020 16:11:49 +0300
Message-Id: <78C16717-5EB2-49BF-A377-21A9B22662E1@gmail.com>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
 <159308610390.190211.17831843954243284203.stgit@toke.dk>
 <20200625.122945.321093402617646704.davem@davemloft.net>
 <87k0zuj50u.fsf@toke.dk>
 <240fc14da96a6212a98dd9ef43b4777a9f28f250.camel@redhat.com>
To: Davide Caratti <dcaratti@redhat.com>
X-Mailer: Apple Mail (2.3445.9.5)
Subject: Re: [Cake] [PATCH net-next 1/5] sch_cake: fix IP protocol handling
 in the presence of VLAN tags
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VG9rZSBoYXMgYWxyZWFkeSByZXBsaWVkLCBidXQ6Cgo+IFN1cmUsIG15IHByb3Bvc2FsIGRvZXMg
bm90IGNvdmVyIHRoZSBwcm9ibGVtIG9mIG1hbmdsaW5nIHRoZSBDRSBiaXQgaW5zaWRlCj4gVkxB
Ti10YWdnZWQgcGFja2V0cywgaS5lLiBpZiB3ZSBzaG91bGQgdW5kZXJzdGFuZCBpZiBxZGlzY3Mg
c2hvdWxkIGFsbG93Cj4gaXQgb3Igbm90LgoKVGhpcyBpcyBjbGVhcmx5IHdyb25nLWhlYWRlZCBi
eSBpdHNlbGYuCgpFdmVyeXRoaW5nIEkndmUgaGVhcmQgYWJvdXQgVkxBTiB0YWdzIHRodXMgZmFy
IGluZGljYXRlcyB0aGF0IHRoZXkgc2hvdWxkIGJlICp0cmFuc3BhcmVudCogdG8gbm9kZXMgd2hp
Y2ggZG9uJ3QgY2FyZSBhYm91dCB0aGVtOyB0aGV5IGRldGVybWluZSB3aGVyZSB0aGUgcGFja2V0
IGdvZXMgd2l0aGluIHRoZSBMQU4sIGJ1dCBub3QgaG93IGl0IGJlaGF2ZXMuICBJbiBwYXJ0aWN1
bGFyIHRoaXMgbWVhbnMgdGhhdCBBUU0gc2hvdWxkIGJlIGFibGUgdG8gYXBwbHkgY29uZ2VzdGlv
biBjb250cm9sIHNpZ25hbHMgdG8gdGhlbSBpbiB0aGUgbm9ybWFsIHdheSwgYnkgbW9kaWZ5aW5n
IHRoZSBFQ04gZmllbGQgb2YgdGhlIElQIGhlYWRlciBlbmNhcHN1bGF0ZWQgd2l0aGluLgoKVGhl
IG1vc3QgSSB3b3VsZCBlbnRlcnRhaW4gaXMgdG8gaW5jb3Jwb3JhdGUgYSBWTEFOIHRhZyBpbnRv
IHRoZSBoYXNoZXMgdGhhdCBDYWtlIHVzZXMgdG8gZGlzdGluZ3Vpc2ggaG9zdHMgYW5kL29yIGZs
b3dzLiAgVGhpcyB3b3VsZCBhY2NvdW50IGZvciB0aGUgY2FzZSB3aGVyZSB0d28gaG9zdHMgb24g
ZGlmZmVyZW50IFZMQU5zIG9mIHRoZSBzYW1lIHBoeXNpY2FsIG5ldHdvcmsgaGF2ZSB0aGUgc2Ft
ZSBJUCBhZGRyZXNzLgoKIC0gSm9uYXRoYW4gTW9ydG9uCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB464C828
	for <lists+cake@lfdr.de>; Thu, 20 Jun 2019 09:17:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 422943CB39;
	Thu, 20 Jun 2019 03:17:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1561015024;
	bh=hJWUHe3lhNSakJWib42OdvdgkIO2WocJHsT75YCDfMQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=Ebd1x5UiTueifEM+VjFuj+fyjSgzRshH4pXfnXrhNhEbT2j764o6KADETNq3NEKi9
	 gjADzHZFJyk60FyaN4beQD0XcZBJ4W6rhErU7kl37CuBfgD7dj6zgRIQ20iOv8sCvH
	 EqsK9R6SVI6KwV49b8f+Snl18Y01RRgfbRfJWepIj5K33lJTF+tZwJDBc6uDpEOFY2
	 3JgDS6Kw2OkTnuWIkfTjajr2Wy6Hs4/v62C134X5tzI5Nw1Uz8NR6KuZGKXudlgicp
	 SIsNqeRd8XrYxRGE5PalEamRYy6yueGIDCcPbrG+QPK5LQCiLZKTbpWwb/K1gCeWls
	 Kbc8jbb5IrHmw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 328853B2A4;
 Thu, 20 Jun 2019 03:17:03 -0400 (EDT)
Received: by mail-io1-xd2a.google.com with SMTP id j6so578668ioa.5;
 Thu, 20 Jun 2019 00:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=4/4kRsavFvhs76EdOR3op/SsW3mNUGBAUvscmcKRt8I=;
 b=fZ6aUm/mPUJaW6b9CnwjOsgUybCKebqrgX3tIO1jZIR0XwwCCjkWtirNy4x7V4agIB
 tS2y1l1vHggLNT2bGmP6wol6qNmT9/KtGyGwv1FfFX3IraoCSSY4Y03KQ5t5T2LMwsKb
 wMgoBxV9LAlmKDtJxjGe/4NtIyg9VGVcTZo62XGbZxtyJPW8kKHEdJNmAPO5M2VMaU2H
 9MV2+D5DCo5+y38mGUkwbw0MZKysWebOMNZJiBMsDK4hIL9guYvdDZjOerw+b9MakhPO
 QXffqmKHFLj05X3bpQy8XBucfS58SCAsfo8fQNZ+JDxd2uYeTjZA4mOK2anOS3psFHUw
 0+lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=4/4kRsavFvhs76EdOR3op/SsW3mNUGBAUvscmcKRt8I=;
 b=ZAvPlQK9bvLEPU3MIwDQXkycEcKS7Z0bUMJc6KiIvwNaoRSTi99GhSPGjih9EkVibw
 LbpJyJOGoSCu0QMhGGe5aEsCBgF4aEfJoQ/5adAK7mztYxA4dLs95XSTEyy+8gyNaFTj
 czKtVFZ+QShvz/PyfAaQCYQ2wX5maWJyrHdAAkZJawCrRCo8QdpzLU8mZmj7xrhfDH//
 heOtlCs5x8lyw9/Yknkrk1t0DHOm6XM2kpQAPoIxd1nAOh2M0L302C18fy90knYTh0sw
 zzIhafWoLHVcAoPLpFJBZiud/LZKBQbJPt1lC9nfceVWN4NvkxtH6p8seTxFjJFUw4U3
 2q9A==
X-Gm-Message-State: APjAAAUcQoAiJRvmMWJw+b6NZEeJPuroo/aEu9NhYmFn+AK02ONuR2i9
 V8PRmXkDufBubAPFS30+YFe9bVeRkqClSMWsrAc=
X-Google-Smtp-Source: APXvYqy66E59Gbs0YN0WvuS2kVnHAYn4tM3J5C7et+k0ZjnPo2Fxnj84+Emoqxozgli6Z0oitjmnVKqWTwH2gYr2Z1Y=
X-Received: by 2002:a6b:b804:: with SMTP id i4mr78670035iof.119.1561015022487; 
 Thu, 20 Jun 2019 00:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw6C3agU4sencGgeJWHThEDsa-ingmkMG+EzUwydGw96GQ@mail.gmail.com>
In-Reply-To: <CAA93jw6C3agU4sencGgeJWHThEDsa-ingmkMG+EzUwydGw96GQ@mail.gmail.com>
From: Benjamin Henrion <zoobab@gmail.com>
Date: Thu, 20 Jun 2019 09:16:50 +0200
Message-ID: <CANjd3neaD2QA9Zc7NGAAk=c2tyRhX6YZNx6Cq3UwS3vsiz-W_w@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Babel-users] althea presentation on isp in a box at
	nanog 76
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
Reply-To: zoobab@gmail.com
Cc: Cake List <cake@lists.bufferbloat.net>, HOMENET <homenet@ietf.org>,
 babel-users <babel-users@lists.alioth.debian.org>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgNzoxMSBBTSBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1HNEVLYmdT
aHlMdwo+Cj4gSW50ZXJlc3Rpbmcgc3R1ZmYgLSB3aXJlZ3VhcmQsIGZxX2NvZGVsL3NjaF9jYWtl
LCBiYWJlbCB3aXRoIG5ldwo+IG1ldHJpYyB0aGF0IGFsbG93cyBmb3IgY3J5cHRvY3VycmVuY3kg
dHJhZmZpYyBiaWxsaW5nLgoKSXMgaXQgaGFja2FibGU/CgpMaWtlIGNvdWxkIHlvdSBjaGVhdCBv
biB0aGUgYW1vdW50IG9mIHRyYWZmaWMgdHJhbnNtaXR0ZWQ/CgotLQpCZW5qYW1pbiBIZW5yaW9u
ICh6b29iYWIpCkVtYWlsOiB6b29iYWIgYXQgZ21haWwuY29tCk1vYmlsZTogKzMyLTQ4NC01NjYx
MDkKV2ViOiBodHRwOi8vd3d3Lnpvb2JhYi5jb20KRkZJSS5vcmcgQnJ1c3NlbHMKIkluIEp1bHkg
MjAwNSwgYWZ0ZXIgc2V2ZXJhbCBmYWlsZWQgYXR0ZW1wdHMgdG8gbGVnYWxpc2Ugc29mdHdhcmUK
cGF0ZW50cyBpbiBFdXJvcGUsIHRoZSBwYXRlbnQgZXN0YWJsaXNobWVudCBjaGFuZ2VkIGl0cyBz
dHJhdGVneS4KSW5zdGVhZCBvZiBleHBsaWNpdGx5IHNlZWtpbmcgdG8gc2FuY3Rpb24gdGhlIHBh
dGVudGFiaWxpdHkgb2YKc29mdHdhcmUsIHRoZXkgYXJlIG5vdyBzZWVraW5nIHRvIGNyZWF0ZSBh
IGNlbnRyYWwgRXVyb3BlYW4gcGF0ZW50CmNvdXJ0LCB3aGljaCB3b3VsZCBlc3RhYmxpc2ggYW5k
IGVuZm9yY2UgcGF0ZW50YWJpbGl0eSBydWxlcyBpbiB0aGVpcgpmYXZvciwgd2l0aG91dCBhbnkg
cG9zc2liaWxpdHkgb2YgY29ycmVjdGlvbiBieSBjb21wZXRpbmcgY291cnRzIG9yCmRlbW9jcmF0
aWNhbGx5IGVsZWN0ZWQgbGVnaXNsYXRvcnMuIgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

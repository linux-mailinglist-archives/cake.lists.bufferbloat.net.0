Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5662942AA9D
	for <lists+cake@lfdr.de>; Tue, 12 Oct 2021 19:19:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 52D0C3CB48;
	Tue, 12 Oct 2021 13:19:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634059146;
	bh=rBv/f4X+YeHxdjsCQTOHnd6kCVGC0vaUAConAjxB/4c=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RTrusaGwixdsmpSNJwEE17I69F0Retf5BHftWU9pddTJr8B/KqegQ4h23U6fNGhJM
	 ZRLzr8dnkeM6MPihl0Whmhtbj6yF9yjKXQG3hqICcoxQwXGjY1CP6ye+/0vb+SZvJb
	 TUUnW4a/KZFn18W6u6aXxiAhGVD5RBJNnkxVn5zZEYzesSst0EdukXi3UytYjUZEja
	 gFfcRk/dYUIn6slCm/sL9lAS1GfhAeO533D3lb9N+zB2u4WAZqissIz798Ux7u7c/O
	 oJTaqbClOY5B6btxZqhQr/IgPG9/HLRPG1FQSmmLBSUz9SNy0rogze/yqgWau3prVL
	 uBmRZvQaBrCyw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 24BBA3CB35;
 Tue, 12 Oct 2021 13:19:05 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id n7so15650507iod.0;
 Tue, 12 Oct 2021 10:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3PG/hQxMy4zzZ6Z+Qh9rgwOMIX+07yEvs32FDrD3mu4=;
 b=Tcc23ks9t9uioB/gUDfzVMN8igvzDeN6DdcRZg33CTVohlSLm/JdjQzBeUw9nNkRTW
 r8Ws7MYeKcqKdwuFkL4LzaI4BSii7N3Mae1EG79tpImxlbTSQ311jPUzc29XPOHkqXHg
 K+x71V9f6P6LWkaOSY19OAivxy+oQwvQzD9VIHymwrKf1m2Dh9+1I1NSpGcI/0rYxX6X
 3tcHmYfwA9N1J88apOlcGqLIfv2fk49ERJEzKlIPkGf07cU9BzSdYT/+Wo1qXiorNqqE
 2IaMvvgrNetC3xNRPsIwwAp2pWMltBoOWiuRxhehtVtv06Zo8M66pytC9hIe4ga6S1hw
 S6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3PG/hQxMy4zzZ6Z+Qh9rgwOMIX+07yEvs32FDrD3mu4=;
 b=JqGzuhxID8nG5UuKIiFpblJOtg0wZt8NP6t/0O4gaKYeeqaAGIWSe9SCUdvF53guFB
 RBceHpuZ2rye6XGBWekOZMYHYgR64k4Ofhx1Qw/jKa5KDXTyAjr0i+cgSgLn4zDCAeAf
 JXxOIYc6bE0E9GoZom6GF8kBv7UqnUk8tXZqE2dB4UGD45g/ZIin2EMOn4QePHzRUk2q
 Prabf0GdPS/gxh1wiCvTp0UFmaRGiOjFz7f4BlmUCluuAA54H63nQHqnR1bWMhTqGU43
 TsH4a2rEbST3wW+r6qE0w9zc0CoDvXv2aHhx+Djsmi/6QWJEqLutYmy2Inn4Le+N7mjO
 z5Jw==
X-Gm-Message-State: AOAM532Y3EiL+tT0V5tResFmGX8GnDsKf4pRjFejpu2y7jLE7++p3d1j
 3RU+LGg8XrQBNqLpDJ2kyKd6M29ZfXetNi1Wb5M=
X-Google-Smtp-Source: ABdhPJzRoTRz1MFaG7LTjPRXpAuT6+XtFxtXZPDEuNOlVoqmE+nq693elF8yPMy62WWGyobEqI//WssLEEu1Oz1g/bU=
X-Received: by 2002:a6b:cd87:: with SMTP id d129mr24003226iog.28.1634059144562; 
 Tue, 12 Oct 2021 10:19:04 -0700 (PDT)
MIME-Version: 1.0
References: <F822A338-E37A-4D7C-BD06-067D880AB16E@apple.com>
In-Reply-To: <F822A338-E37A-4D7C-BD06-067D880AB16E@apple.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 12 Oct 2021 10:18:50 -0700
Message-ID: <CAA93jw74b8R2MhuKqiqYHU6skwgzd7vD3VY=YNK9nunxOp5aJg@mail.gmail.com>
To: Randall Meyer <rrm@apple.com>
Subject: Re: [Cake] [Rpm] Server side code/config samples open sourced for
 networkQuality tool
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
Cc: Rpm <rpm@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGh4IHJhbmRhbGwhCgpPbiBUdWUsIE9jdCAxMiwgMjAyMSBhdCAxMDowOCBBTSBSYW5kYWxsIE1l
eWVyIHZpYSBScG0KPHJwbUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+Cj4gSGVsbG8h
Cj4KPiBJIGFtIGhhcHB5IHRvIGFubm91bmNlIHRoZSBwdWJsaXNoaW5nIG9mIHRoZSBzZXJ2ZXIt
c2lkZSBjb3VudGVycGFydCB0byB0aGUgcmVzcG9uc2l2ZW5lc3MgbWVhc3VyZW1lbnQgdG9vbCB0
aGF0IHdpbGwgYmUgYXZhaWxhYmxlIGluIHRoZSB1cGNvbWluZyBtYWNPUyBNb250ZXJleSByZWxl
YXNlLgo+Cj4gVGhlIGNvZGUgaXMgYXZhaWxhYmxlIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9uZXR3
b3JrLXF1YWxpdHkvc2VydmVyLgo+Cj4gV2UgcHJvdmlkZSBzZXJ2ZXItc2lkZSBjb25maWd1cmF0
aW9ucyBmb3IgQXBhY2hlIFRyYWZmaWMgU2VydmVyLCBBcGFjaGUgaHR0cGQgYW5kIG5naW54IGFz
IHdlbGwgYXMgcmVmZXJlbmNlIGltcGxlbWVudGF0aW9ucyBpbiBTd2lmdCBhbmQgR28uCj4KPiBU
aGUgY2xpZW50LXNpZGUgaXMgbG9jYXRlZCBAIC91c3IvYmluL25ldHdvcmtRdWFsaXR5IGluIG1h
Y09TIE1vbnRlcmV5IGFuZCBjYW4gYmUgcG9pbnRlZCB0byBhIGN1c3RvbSBzZXJ2ZXIgd2l0aCB0
aGUgLUMgIG9wdGlvbi4KPgo+IFRoZSB0b29sIGltcGxlbWVudHMgdGhlIG1ldGhvZG9sb2d5IHNw
ZWNpZmllZCBpbiBodHRwczovL2RhdGF0cmFja2VyLmlldGYub3JnL2RvYy9kcmFmdC1jcGFhc2No
LWlwcG0tcmVzcG9uc2l2ZW5lc3MvCj4KPiBDb250cmlidXRpb25zIHRvIHRoZSBzZXJ2ZXItc2lk
ZSBhcmUgb2YgY291cnNlIHZlcnkgd2VsY29tZSBvbiB0aGUgR2l0SHViIHJlcG9zaXRvcnkuCj4K
PiAtUmFuZGFsbAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gUnBtIG1haWxpbmcgbGlzdAo+IFJwbUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ycG0KCgoKLS0gCkZpeGluZyBTdGFy
bGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZY
cndndwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

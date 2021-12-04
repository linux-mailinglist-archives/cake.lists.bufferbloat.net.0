Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D77CB468720
	for <lists+cake@lfdr.de>; Sat,  4 Dec 2021 19:44:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 737F93CB38;
	Sat,  4 Dec 2021 13:44:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1638643497;
	bh=6sXhncvOHn503tFyTzMi/5UYB7rkkXx4sIr00HIOtwk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I3jkwbPvu67TucdSuay8xKMzk5uYxGmqTJ1nqdbThfDiQQtrXeGQBOsNT0l1vjGkm
	 LOF39HgGVavUoNFzEEIUjqRR2iVFEpwSMKFzPJFedBcCRnbkUU7+JqXpWnML+5Lsoz
	 V8wrXvvz3LBwCiqiygLOmaqnUT0++8VVVfF0y4nt4PHjlNce23SARLafpfjgc/gcB7
	 86ADj5t3mRfEVpkM1ZKrYY9q2EJgKOzI28dli9GyV7vzboFy/U4rKTDa8S8zhpm3JD
	 nNqCNSCZJ+NoqLc03Y/KHQfsPCGPcaxYDX7fHQs8b53dhXPkBnUIpsaee6qJHlrFa0
	 fMKkXCSGC5Bsg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B6CCC3B29E
 for <cake@lists.bufferbloat.net>; Sat,  4 Dec 2021 13:44:56 -0500 (EST)
Received: by mail-il1-x12f.google.com with SMTP id z8so6114988ilu.7
 for <cake@lists.bufferbloat.net>; Sat, 04 Dec 2021 10:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Z48iYZxmztj6iecBX/tUOTUwIkghxh6xTvFR2g7qo+g=;
 b=VpQ1YHecKR4K8Wto0mFcL52ZMJZ57JHQZTJ0PWOgPmKbnftnoNhphBoyy/J0TVpvI/
 yGnJd8YR3WTAKLJNw9FRFjJ1iSeDjsz4YdXXrwNM7J+PKuhNsIAJyjJewbdZ7uO2Hm7W
 v1psljQyCj53hZh4t1Jg643joLTDv/P4kMxRoxT7OPc1w0SKOT64+zj/ia4blNqKkLwO
 sadZs/W9vTrJogwkmGq+hbgPirul/kzGPsXONAy95Z9J9eikzGA+VM1wFKed3owm2Mqm
 X/oweB2CY15MfoIf9q1OeGrT5tcn6cIDE67IU0y2BMmQXOybFwrjrj264ZnjdtnqRQhA
 jcbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Z48iYZxmztj6iecBX/tUOTUwIkghxh6xTvFR2g7qo+g=;
 b=nziuSpZGcX6GwkFUTVCwIwZYgcY439OSZhDyz6QBbMWpbWOC41cwcMJe5B4yWgk0rY
 Stbj1YZa3NUiKHPNujHYSK9xXdoA2d7r3kk7skW3w8qhs+IKZA1pf6F3NwefwiCEhVDK
 RJbUsnK4Fk8k1P5cBHLOXXRDGeenrEPRZVVYriRcYLBhQnrlu9X/MhAs21CUdZEYQz1Q
 0OrsQ6SkbQMdbkP7jhWA4apxvRD3kc95iiFy1KV15X5kFt4QsI+brV9U4JMwRlrFn5wJ
 rJqPnYdXNtnP1Qs0XDHRjE8uZ7qV+XA1DhxjGwLvzEmRG5wAhFX+b2HUXb04mnDiZI3V
 qrbg==
X-Gm-Message-State: AOAM531LwqSHY91gnhoa0G6aOkiNEm5V2Llm6BjyWTxQ3THifwzzVVFk
 o2xFvFgKzMuenT8ICf9KRCMn9ABiGR6lk2APIFOgJBMgbxM=
X-Google-Smtp-Source: ABdhPJwPt2/dvz7Mgnf6q+nOrCoPSYmJVdOvSEqFm52z71QvEaj/HvxaWnjsM3TfqanjAz15AU4yWlktSjU6d1d/TPs=
X-Received: by 2002:a92:cc50:: with SMTP id t16mr22284282ilq.88.1638643495940; 
 Sat, 04 Dec 2021 10:44:55 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw5MbJwUQf3=N6xsv7dn7V+1dKeX5QR93+f7erHup+TUQg@mail.gmail.com>
 <0A6AB0B7-E010-42E3-BAEE-FCBFA5995117@gmail.com>
In-Reply-To: <0A6AB0B7-E010-42E3-BAEE-FCBFA5995117@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 4 Dec 2021 10:44:42 -0800
Message-ID: <CAA93jw6GeQxF59zX=Co1t_28CxLhi6M_Rn=TBYK8sZtRV1enQQ@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] Understanding the Achieved Rate Multiplication Effect in
 FlowQueue-based AQM Bottleneck
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
Cc: jonathan.kua@deakin.edu.au, Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SXQgd2FzIHRoZSBjb25xdWVzdCB0b29sIHRoZXkgcmVmZXJlbmNlZCB0aGF0IHJlYWxseSBjYXVn
aHQgbXkgZXllCgpodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PVEzRkZ6QjBTVWpjCgoi
Q29uUXVlc3Q6IEZpbmUtR3JhaW5lZCBRdWV1ZSBNZWFzdXJlbWVudCBpbiB0aGUgRGF0YSBQbGFu
ZSIKCk9uIEZyaSwgRGVjIDMsIDIwMjEgYXQgNDowOSBQTSBKb25hdGhhbiBNb3J0b24gPGNocm9t
YXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA+IE9uIDQgRGVjLCAyMDIxLCBhdCAxMjoyNyBh
bSwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBodHRwczov
L2pvbmF0aGFua3VhLmdpdGh1Yi5pby9wcmVwcmludHMvamt1YS1pZWVlbGNuMjAyMV91bmRlcnN0
YW5kaW5nX2FyX3ByZXByaW50LTIwanVsMjAyMS5wZGYKPiA+Cj4gPiBJIHdvdWxkIGxvdmUgaXQg
aWYgc29tZWhvdyB0aGUgbWVhc3VyZWQgZWZmZWN0cyBvZiBjaHVua2xldHMgYWdhaW5zdCBjYWtl
J3MgcGVyLWhvc3QvcGVyIGZsb3cgZnEgd2FzIGV4YW1pbmVkIG9uZSBkYXkuCj4KPiBJIGhhdmVu
J3QgYWN0dWFsbHkgbWVhc3VyZWQgaXQsIGJ1dCBiYXNlZCBvbiB3aGF0IHRoZSBhYm92ZSBwYXBl
ciBzYXlzLCBJIGNhbiBtYWtlIHNvbWUgZmlybSBwcmVkaWN0aW9uczoKPgo+IDE6IFdoZW4gY29t
cGV0aW5nIGFnYWluc3QgdHJhZmZpYyB0byB0aGUgc2FtZSBsb2NhbCBob3N0LCB0aGUgcGVyZm9y
bWFuY2UgZWZmZWN0cyB0aGV5IGRlc2NyaWJlIHdpbGwgYmUgcHJlc2VudC4KPgo+IDI6IFdoZW4g
Y29tcGV0aW5nIGFnYWluc3QgdHJhZmZpYyB0byBhIGRpZmZlcmVudCBsb2NhbC1uZXR3b3JrIGhv
c3QsIHRoZSBwZXJmb3JtYW5jZSBlZmZlY3RzIHRoZXkgZGVzY3JpYmUgd2lsbCBiZSBhdHRlbnVh
dGVkIG9yIGV2ZW4gZW50aXJlbHkgYWJzZW50Lgo+Cj4gMzogVGhleSBub3RlZCBvbmUgb3IgdHdv
IGNhc2VzIG9mIG9ic2VydmFibGUgZWZmZWN0cyBvZiBoYXNoIGNvbGxpc2lvbnMgaW4gdGhlaXIg
dGVzdHMgd2l0aCBGUS1Db2RlbC4gIFRoZXNlIHdpbGwgYmUgZ3JlYXRseSByZWR1Y2VkIGluIHBy
ZXZhbGVuY2Ugd2l0aCBDYWtlLCBkdWUgdG8gdGhlIHNldC1hc3NvY2lhdGl2ZSBoYXNoIGZ1bmN0
aW9uIHdoaWNoIHNwZWNpZmljYWxseSBhZGRyZXNzZXMgdGhhdCBwaGVub21lbm9uLgo+Cj4gIC0g
Sm9uYXRoYW4gTW9ydG9uCgoKCi0tIApJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwg
YSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUz
QSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D691B2F43
	for <lists+cake@lfdr.de>; Tue, 21 Apr 2020 20:40:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3C6C93CB42;
	Tue, 21 Apr 2020 14:40:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587494406;
	bh=Y9dFPHu9sZ8n9yoPBT0+bDbVALRNqkreVJ2Pee7QzVw=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UIIBI03b5rQPnEic6ZGfF0mmbtZ09nfA23HYOeo0JYpHA76/mqM/K66YrHcCMcJ5w
	 bwH46hCKJWhFt4vn7T/GUlJMakHmovj4tLWQMSkUDv5lYWVyKNWnvRn94oNpYTru3R
	 GN5PQ40ULwaJXSSA3xqaLqziHbFvpmRAtkiJdB4h6i5ENFJcUEHkpPGXt5oHMqWnkM
	 Af5WviRQ+YxlNpqd8kgZN2rJvZn08bEgHKvqZB4LwhC5HDE3Q22Keqek6LtWUualqR
	 LK3yhu1ijdNqcm6NLb++oOKF1TuwZLUxeqI+6pL+pnSwkPTxes6k7V6LDu/w+RUNJq
	 vDlLqfI3Wq1QQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0D0923B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 14:40:03 -0400 (EDT)
Received: by mail-lf1-x135.google.com with SMTP id f8so11942640lfe.12
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 11:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=5D5OW90Zdos73Ns0UZYRqgbPWKzURR07M+c9osILWqo=;
 b=mhjfyYZPLFCaGpoaHnickPjVTiayKmrUevkGIx5aYymmoGj4VwUWOq9u+yuFt67hsz
 uxzk/KdBUStkAmuALCpxxNby23GHtYVL3boD8jJdYHchUb4kqcMefXYUrxQBxhKldYp7
 sUwMTvimo4NGOkXlbYs2tHBChrJwKf50aUoXHJnCixi+2EVZASGbK5uLHG/fCFomOwgy
 QfWqDFjZeVz1oCBY7cbTvdt150VGayuFFBO47jddFMI3k1PTXFOG1AJV9Hi1MplRw/uN
 Y1xZJoMLmBdWARCMaCMdvl+usNygrGOvij0iIEWoTSsQ3L8Bf0SfG2GwuMfxKXMPh+un
 4H1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=5D5OW90Zdos73Ns0UZYRqgbPWKzURR07M+c9osILWqo=;
 b=BkDvcH9i2hxmVBv3f5ShoGiYFHeIdsgrefHt4sxiXgK8p2JLFXHWG8jA317XtV/UV3
 tbkfBhW5wldVH60uEfAoMiACAOEg5vbthj3n0bKndXvvjoKpCfLWsDsaoohXneQ+njjO
 00iS7waEqyXs8ZarR+/QSzHPLEwhQn92KN6fhK6FRqhYKRRQKaAfC3kj+glmTlZBTNMp
 VYeAO2vDDo6tVPyttiyuw7Z2T27EPK+9tUJP4qchf7m6CpOJuNYt6LxrCJZzM3BAmoC9
 ue+UzoYPpXaxE0rqcs9+9Avfml9vSIbDsTOoDrmS+aD7mht1ph7ZRlT+Sm4FErJptPOS
 Aonw==
X-Gm-Message-State: AGi0PublArwIbF+/Jkozg9Pgvhe16TKF4imbioeMkYgl0PfmKBGtjsiW
 ZNrlsAnM4DF3fXa4okj015F2aB+Y
X-Google-Smtp-Source: APiQypJTOf8EjVApzyBB2b1V+dO+Rct914tpBPt44kx6uSmz5OGRKp21j+a4zm1plDwpj6aYPh3uqA==
X-Received: by 2002:a19:700b:: with SMTP id h11mr14766699lfc.89.1587494402739; 
 Tue, 21 Apr 2020 11:40:02 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-192-nat-p.elisa-mobile.fi.
 [83.245.235.192])
 by smtp.gmail.com with ESMTPSA id b9sm2997428lfp.27.2020.04.21.11.40.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Apr 2020 11:40:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
Date: Tue, 21 Apr 2020 21:40:00 +0300
Message-Id: <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
To: Justin Kilpatrick <justin@althea.net>
X-Mailer: Apple Mail (2.3445.9.1)
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyMSBBcHIsIDIwMjAsIGF0IDk6MjIgcG0sIEp1c3RpbiBLaWxwYXRyaWNrIDxqdXN0aW5A
YWx0aGVhLm5ldD4gd3JvdGU6Cj4gCj4gSSBoYXZlIGEgZnJlcXVlbnRseSBjaGFuZ2luZyBsaW5r
IEknbSB1c2luZyBhdXRvbWF0ZWQgdG9vbHMgdG8gbW9uaXRvciBhbmQgdHVuZSB1c2luZyBDYWtl
LiBDdXJyZW50bHkgSSdtIG9ubHkgdHVuaW5nIGJhbmR3aWR0aCBwYXJhbWV0ZXIgdXNpbmcgbGF0
ZW5jeSBhbmQgcGFja2V0IGxvc3MgZGF0YS4KPiAKPiBNeSByZWFkaW5nIG9mIHRoZSBjb2RlbCBS
RkMgc2VlbXMgdG8gc2F5IHRoYXQgdHJ5aW5nIHRvIHR1bmUgdGhlICdpbnRlcnZhbCcgdmFsdWUg
dXNpbmcga25vd24gcGF0aCBhbmQgbGluayBsYXRlbmN5IHdvbid0IHByb3ZpZGUgYW55IGFkdmFu
dGFnZXMgb3ZlciBqdXN0IHR1bmluZyB0aGUgYmFuZHdpZHRoIHBhcmFtZXRlci4KPiAKPiBPYnZp
b3VzbHkgY29kZWwgaXMganVzdCBvbmUgcGFydCBvZiB0aGUgQ2FrZSBzZXR1cCBhbmQgSSdtIHdv
bmRlcmluZyBpZiB0aGVyZSBhcmUgYW55IGFkdmFudGFnZXMgSSdtIG1pc3NpbmcgYnkgbm90IHBy
b3ZpZGluZyB0aGlzIGV4dHJhIGlucHV0IHVzaW5nIGRhdGEgSSBhbHJlYWR5IGdhdGhlci4gCgpU
aGUgZGVmYXVsdCBsYXRlbmN5IHBhcmFtZXRlcnMgYXJlIHR1bmVkIHdlbGwgZm9yIGdlbmVyYWwg
SW50ZXJuZXQgcGF0aHMuICBUaGUgbWVkaWFuIHBhdGggbGVuZ3RoIG9uIHRoZSBwdWJsaWMgSW50
ZXJuZXQgaXMgYWJvdXQgODBtcywgZm9yIHdoaWNoIHRoZSBkZWZhdWx0IGludGVydmFsIG9mIDEw
MG1zIGFuZCB0YXJnZXQgb2YgNW1zIHdvcmtzIHdlbGwuICBDb2RlbCBpcyBhbHNvIGRlc2lnbmVk
IHRvIGFjY29tbW9kYXRlIGEgc2lnbmlmaWNhbnQgZGV2aWF0aW9uIGZyb20gdGhlIGV4cGVjdGVk
IHBhdGggbGVuZ3RoIHdpdGhvdXQgdG9vIG11Y2ggZGlmZmljdWx0eS4KCkkgdGhpbmsgaXQncyBv
bmx5IHdvcnRoIHRyeWluZyB0byBhZGp1c3QgdGhpcyBpZiB5b3VyIHR5cGljYWwgcGF0aCBpcyBz
dWJzdGFudGlhbGx5IGRpZmZlcmVudCBmcm9tIHRoYXQgbm9ybS4gIElmIGFsbCB5b3VyIHRyYWZm
aWMgZ29lcyBvdmVyIGEgc2F0ZWxsaXRlIGxpbmssIGZvciBleGFtcGxlLCB0aGUgZGVmYXVsdCBw
YXJhbWV0ZXJzIG1pZ2h0IGJlIHRvbyB0aWdodC4gIElmIHRoZSB2YXN0IG1ham9yaXR5IG9mIGl0
IGdvZXMgdG8gYSBsb2NhbCBDRE4sIHlvdSBjb3VsZCB0cnkgdGhlICJtZXRybyIga2V5d29yZCB0
byB0aWdodGVuIHRoaW5ncyB1cCBhIGJpdC4gIE90aGVyd2lzZSwgeW91J2xsIGJlIGZpbmUuCgpB
bHNvLCBtb3N0IHByb3RvY29scyBhcmUgYWN0dWFsbHkgbm90IHZlcnkgc2Vuc2l0aXZlIHRvIGhv
dyB0aWdodCB0aGUgQVFNIGlzIHNldCBpbiB0aGUgZmlyc3QgcGxhY2UuICBFaXRoZXIgdGhleSBk
b24ndCByZWFsbHkgY2FyZSBhYm91dCBsYXRlbmN5IGF0IGFsbCAoZWcuIGJ1bGsgZG93bmxvYWRz
KSBvciB0aGV5IGFyZSBsYXRlbmN5LXNlbnNpdGl2ZSBidXQgYWxzbyBzcGFyc2UgKGVnLiBETlMs
IE5UUCwgVm9JUCkuICBTbyB0aGV5IGFyZSBtb3JlIGludGVyZXN0ZWQgaW4gYmVpbmcgaXNvbGF0
ZWQgZnJvbSB0aGUgaW5mbHVlbmNlIG9mIG90aGVyIGZsb3dzLCB3aGljaCBDYWtlIGRvZXMgcHJl
dHR5IHdlbGwgcmVnYXJkbGVzcyBvZiB0aGUgQVFNIHNldHRpbmdzLgoKSXQncyAqY29uc2lkZXJh
Ymx5KiBtb3JlIGltcG9ydGFudCB0byBlbnN1cmUgdGhhdCB5b3VyIHNoYXBlciBpcyBjb25maWd1
cmVkIGNvcnJlY3RseS4gIFRoYXQgbWVhbnMgc2V0dGluZyBub3Qgb25seSB0aGUgYmFuZHdpZHRo
IHBhcmFtZXRlciwgYnV0IHRoZSBvdmVyaGVhZCBwYXJhbWV0ZXJzIGFzIHdlbGwuICBBIGJhZCBz
aGFwZXIgc2V0dGluZyBjb3VsZCByZXN1bHQgaW4gc29tZSBvciBhbGwgb2YgeW91ciB0cmFmZmlj
IG5vdCBzZWVpbmcgQ2FrZSBhcyB0aGUgZWZmZWN0aXZlIGJvdHRsZW5lY2ssIGFuZCB0aHVzIG5v
dCByZWNlaXZpbmcgaXRzIGNhcmUuICBUaGlzIGNhbiBiZSBhbiBvcmRlcnMtb2YtbWFnbml0dWRl
IGVmZmVjdCwgZGVwZW5kaW5nIG9uIGp1c3QgaG93IGJsb2F0ZWQgdGhlIHVuZGVybHlpbmcgaGFy
ZHdhcmUgaXMuCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

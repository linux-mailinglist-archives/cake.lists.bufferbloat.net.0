Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7DB1C82F0
	for <lists+cake@lfdr.de>; Thu,  7 May 2020 08:59:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8F8983CB41;
	Thu,  7 May 2020 02:59:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588834795;
	bh=AC+eVcvIoQAR/nowQPaB0PEOhqicnaN/f1cpEnDD5Fg=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nDmSUBWXo72Ws6K2Jb5th8I60WHtaSrx4eMMm5dUmgZ8DPazFABCW+nieu58z88tw
	 EKs6ATZ0ZrZB2Q/G6zhxUFfriXzzLkZn1JwNARKMftdefwDosD3yG3lx4CbJdttHtD
	 DSqsgv6afovz7g1BVvCKv6mmxwGab45/ax4k3e7q0FUTqHh+NTkmW3Yl2p2ScMrvd/
	 hzGiGOBSCOhPrk9I4xIiADrp3LSGErboqZopbRriZi2sl6w1ChwnHHGncYcHWG/mnT
	 HTnPBm34oPx9eMKbNnf/6xzGtWsWMJ/h5tO7SlCxTI2v5hB3GUUap64s/Uc+mb8wnh
	 abBoxRvVQbHGw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0B0B23B29D
 for <cake@lists.bufferbloat.net>; Thu,  7 May 2020 02:59:54 -0400 (EDT)
Received: by mail-lj1-x22e.google.com with SMTP id u15so5113857ljd.3
 for <cake@lists.bufferbloat.net>; Wed, 06 May 2020 23:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=lj4rnQoW3rZbq8EDSJNMJsmipyZkr4CR6fe8VvvhNxg=;
 b=nJA5tNd4ZpT2/sngk9zIeg1K19bgfJrrUxGtCOavaM0BzgLbXyWvMgU2oKkHNJznaL
 XhISnP18E1CKXYwh995JSl42j+1+Wu0oIbsaIwFUPQNXm8i+SVfEaJ5UuUL14r0u7Geo
 gUMFMFYyCzgviEq0RPpRyYImoiV06Lx2sOG1jn8o0HV9BqwALDx+bMNmCFhF838zRl4T
 dvqrr+SfOqfk3syM9QJkw0W9gXXhJ6fAGiFx2AUUepJQd+at0Pp3wZdGGvMtpaTq9/ux
 GXfpMIZwSDboB7HGfz6AfYvy+g7cAdeR0t/U2hA/eaLOPr3MzjrYAnC/M28upyyBScMU
 G3Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=lj4rnQoW3rZbq8EDSJNMJsmipyZkr4CR6fe8VvvhNxg=;
 b=fVyaVN5QWOT0pjuIcQ5yQYYve2YplCSZydS1RYFD9jtnZ3NhyWydW8sokN95ONlEfo
 2dXNVaYq22fyiKc988ggXxNaCBf5gPfh/tsKlUWffnauTOJaGHn3ARIRvfbaBrOaS7IN
 tjWZugWU25sw0JbjhFv4UtPHooVaSJartZ3bGPBJLWCf6YnLteM0ni7Oazh+o1HVje2/
 BvE6ikq2sB1+hfm3VELHrhVVHEclfgSVIAno8erthUSBjvVBBPFGcZDdHikTzK1F5lxj
 5mNYzumcTCFOAMXC2qhCumbJwf1nO5eR2R3sxiHgV8sohlIToLKQ4es9YGP5oFY5sAHF
 N8pw==
X-Gm-Message-State: AGi0PuZijmqw1xhmK6Yvj/lCBxj3oJJtSbjBRUYKN4/oYl0caw2IHWcJ
 h+DtzST2E2LFHAFjH3cfiCg=
X-Google-Smtp-Source: APiQypJhbb3c1vkazDsFAODVwOzoDaBR15fPe29P8uZNtPp+XC+nYrPNU3yOypQAn4Wh+ZZvyAu80Q==
X-Received: by 2002:a2e:8590:: with SMTP id b16mr7755279lji.45.1588834792877; 
 Wed, 06 May 2020 23:59:52 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-192-nat-p.elisa-mobile.fi.
 [83.245.235.192])
 by smtp.gmail.com with ESMTPSA id g1sm3111399lfb.85.2020.05.06.23.59.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 23:59:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
Date: Thu, 7 May 2020 09:59:49 +0300
Message-Id: <8258F6F9-0754-49C7-BEEE-92AE7A944B1A@gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
To: Avakash bhat <avakash261@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Query on ACK
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
Cc: Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 cake@lists.bufferbloat.net, "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA3IE1heSwgMjAyMCwgYXQgOTo0NCBhbSwgQXZha2FzaCBiaGF0IDxhdmFrYXNoMjYxQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gCj4gVGhhbmtzIGZvciB0aGUgcXVpY2sgcmVzcG9uc2UuIEkgYWxz
byBoYWQgYSBmb2xsb3d1cCBxdWVzdGlvbi4gCj4gCj4gSWYgdGhlIGFjayBmaWx0ZXIgYWRkcyB0
aGUgbmV3IGFjayB0byB0aGUgdGFpbCBvZiB0aGUgcXVldWUgYWZ0ZXIgcmVtb3ZpbmcgYW4gYWNr
IGZyb20gdGhlIHF1ZXVlLCB3b24ndCBpdCBiZSBzdGFydmluZyB0aGUgYWNrPyAKPiBUaGUgcmVw
bGFjZWQgYWNrIHdhcyBtdWNoIGFoZWFkIGluIHRoZSBxdWV1ZSB0aGFuIHRoZSBhY2sgd2UgcmVw
bGFjZWQgYXQgdGhlIHRhaWwgcmlnaHQ/CgpObywgaWYgeW91IGFyZSBkb2luZyB0aGlzIG9uIGVu
cXVldWUsIHRoZW4geW91IGFyZSBjb21wYXJpbmcgdGhlIG5ldyBhY2sgd2l0aCBhbiBhY2sgaW1t
ZWRpYXRlbHkgcHJlY2VkaW5nIGl0IGluIHRoZSBzYW1lIHF1ZXVlLCB3aGljaCB3aWxsIGFsc28g
YmUgYXQgdGhlIHRhaWwuICBBbmQgaWYgeW91IGFyZSBkb2luZyBpdCBvbiBkZXF1ZXVlIHRoZW4g
Ym90aCBwYWNrZXRzIHdlcmUgZW5xdWV1ZWQgc29tZSB0aW1lIGFnbywgYW5kIGJvdGggYXJlIGFs
cmVhZHkgZHVlIGZvciBkZWxpdmVyeSB2ZXJ5IHNvb24uCgpJbiBnZW5lcmFsLCB0aGUgc2Vjb25k
IHBhY2tldCBpcyBkZWxpdmVyZWQgc29vbmVyLCBpbiBwbGFjZSBvZiB0aGUgZmlyc3Qgb25lIHRo
YXQgd2FzIHJlbW92ZWQuICBUaGlzIG1lYW5zIGl0IHJlZHVjZXMgZmVlZGJhY2sgbGF0ZW5jeSB0
byB0aGUgKGZvcndhcmQgcGF0aCkgc2VuZGVyLgoKIC0gSm9uYXRoYW4gTW9ydG9uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==

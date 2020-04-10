Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E35081A4734
	for <lists+cake@lfdr.de>; Fri, 10 Apr 2020 16:14:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C4DCD3CB38;
	Fri, 10 Apr 2020 10:14:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586528095;
	bh=Vpab6v5X8VNRVITqNnxJ1cUB05+DbEDN7U3Y9uUlo0s=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LCLOGxvO/aP2VTmtRPy8HZHYt1Q0G5CHUrmAvMh2id8YV6XqFRO0rt/2LujUJcHYM
	 fCoy7Qk/p3vNhUew9PRab4upBFCBVgxiDB31PA9mqfwQ0SJ4p2UawMZ1g78iEM+O0b
	 1S2rzQQZzsbFkOJUwMQe3DfAODU0oMtsTY8ocC4WUHf0QexOZ+2tT7HZU3zCUEG2BQ
	 JE5u8qLplZ+Yw7wSBxaDi3MYciRI3G/RgoCEPPSh3C2AeF3PPnA7MEmGqfUiveMg4u
	 5eD/5FGkT1bj97RKmypCFS/ngOQsgQs8D8y4ftAZwngbz0SfSAS8m8F4YIMAApCUOl
	 CIf07w+bXs63g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7B0E53B2A4
 for <cake@lists.bufferbloat.net>; Fri, 10 Apr 2020 10:14:54 -0400 (EDT)
Received: by mail-lj1-x22c.google.com with SMTP id z26so2064325ljz.11
 for <cake@lists.bufferbloat.net>; Fri, 10 Apr 2020 07:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=SENOVtCyxRS0z5psVbUTg+n3p6i+iZw2nzISHOZJLuc=;
 b=e3qTAMh/SeAJSETTKaOO/+X7z8CqmyWSU1eG0XnzGRYUG9wwVz0xI86HBEMMGI4yR2
 yD6VKDVieuW1AsBAP4oFpqnp7QG3eB5IEuSu+Af11OPxd1kasI1sTHH0IDy2CAHhfb2V
 aZmukywW3M2GeK7jM/s45e0U4uJjp70/yU0wyF9EF0MnVkUQHxgJdpCBTd7BEu4W03lf
 7/bSmvXVCpytZSnYgL9hcEpqwdN3RBTVZeiK07dYZ+oTxL+0ybBrjuRDwBUrYkOt7tkB
 K87vY0ZDRcW9vMo2riRqkVuZRdjxiFCfZhxXmZ/P8xyMDfhsHrsFwErI8MdWKo2XkYN7
 /HMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=SENOVtCyxRS0z5psVbUTg+n3p6i+iZw2nzISHOZJLuc=;
 b=AACrEU0NmBFj/bLlkrWjVq871s5BfKi20Ypgy4Nk+IycFth3FXV/oaFJNifSSo+WR2
 Im0RS4jt1j+8T6eSLrGHkZzQ3MHf6go3lceREhzByo3g4SmcETf0/e9sEYxnBQn1zrER
 au2jhpSpSNqm+pQ/TB5QFsobRlBFJ8VZ8b2E/sIOUhQPJhNv/jCBh56FOr8KxEqmzq3f
 QHnesWRpGI7ILFWdQngLHmvxaACF+3P+TapDWvwKzV4ea5dJtovd9SflfnsX5tReas8b
 GfgBblMG+Cqff4hpuBJ1sgNgxQxk282CakTIKWYOPBJ/Mm07ByVMQNb3eWLBG4z2b1Up
 erZw==
X-Gm-Message-State: AGi0PuZjJRY9PKiOog1ePM32OwCOVYD8rDV6ukeaTuAhY7YpJMXDcrBl
 krPRrLeOUhUgkV72zKOC8/A=
X-Google-Smtp-Source: APiQypLGqe58p5TQv0O6kI4kgkDCk8htqNpOo/UXj8xPwruldskv1RUaklbbYXwjLQOu43u636M2Jw==
X-Received: by 2002:a05:651c:203:: with SMTP id
 y3mr3059942ljn.249.1586528093358; 
 Fri, 10 Apr 2020 07:14:53 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-250-250-nat-p.elisa-mobile.fi.
 [83.245.250.250])
 by smtp.gmail.com with ESMTPSA id k18sm1811720lfg.81.2020.04.10.07.14.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Apr 2020 07:14:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <7BD9FB5D-7577-477A-9FF0-7BF90043C27B@darbyshire-bryant.me.uk>
Date: Fri, 10 Apr 2020 17:14:51 +0300
Message-Id: <B37EB18D-CA01-464B-8924-7864FE9A327E@gmail.com>
References: <7BD9FB5D-7577-477A-9FF0-7BF90043C27B@darbyshire-bryant.me.uk>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Thinking about ingress shaping & cake
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

Cgo+IE9uIDEwIEFwciwgMjAyMCwgYXQgNDoxNiBwbSwgS2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQg
PGtldmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3cm90ZToKPiAKPiBJIGhhdmUgYSA4MC8y
MG1iaXQgRlRUQyBsaW5lIGludG8gdGhlIGhvdXNlLiAgRWdyZXNzIHNoYXBpbmcvY29udHJvbCB3
aXRoIGNha2UgaXMgc2ltcGxlLCBlYXN5LCBiZWF1dGlmdWwgYW5kIGl0IHdvcmtzLiAgVGVsbCBp
dCB0byB1c2UgMTk5MDBLYml0LCBzZXQgc29tZSBtaW4gcGFja2V0IHNpemUsIGEgYml0IG9mIG92
ZXJoZWFkIGFuZCBvZmYgeW91IGdvLiAgSW5ncmVzcyBoYXMgbW9yZSBwcm9ibGVtczoKPiAKPiBB
c3N1bWluZyBJIGRvIGFjdHVhbGx5IGdldCA4ME1iaXQgaW5jb21pbmcgdGhlbiB0aGUgbmFpdmUg
YmFuZHdpZHRoIHNldHRpbmcgZm9yIENBS0Ugd291bGQgYmUgODBNYml0LiAgQ2FrZSBpbnRlcm5h
bGx5IGRlcXVldWVzIGF0IHRoYXQgODBNYml0IHJhdGUgYW5kIHRoZXJlZm9yZSB0aGUgb25seSB3
YXkgYW55IGZsb3dzIGNhbiBhY2N1bXVsYXRlIGJhY2tsb2cgaXMgd2hlbiB0aGV54oCZcmUgY29t
cGV0aW5nIHdpdGggZWFjaCBvdGhlciBpbiB0ZXJtcyBvZiBmYWlybmVzcyhUaW4vSG9zdCkgYW5k
IHF1YW50dW1zIGJlY29tZSBpbnZvbHZlZOKApkkgdGhpbmsuCgpOby4gIElmIHRoZSBkZXF1ZXVl
IHJhdGUgaXMgbmV2ZXIgbGVzcyB0aGFuIHRoZSBlbnF1ZXVlIHJhdGUsIHRoZW4gdGhlIGJhY2ts
b2cgcmVtYWlucyBhdCB6ZXJvIHByZXR0eSBtdWNoIGFsbCB0aGUgdGltZS4gIFRoZXJlIGFyZSBz
b21lIHNob3J0LXRlcm0gZWZmZWN0cyB3aGljaCBjYW4gcmVzdWx0IGluIHRyYW5zaWVudCBxdWV1
aW5nIG9mIGEgc21hbGwgbnVtYmVyIG9mIHBhY2tldHMsIGJ1dCB0aGVzZSB3aWxsIGFsbCBkcmFp
biBvdXQgcHJvbXB0bHkuCgpGb3IgQ2FrZSB0byBhY3R1YWxseSBnYWluIGNvbnRyb2wgb2YgdGhl
IGJvdHRsZW5lY2sgcXVldWUsIGl0IG5lZWRzIHRvICpiZWNvbWUqIHRoZSBib3R0bGVuZWNrIC0g
d2hpY2gsIHdoZW4gZG93bnN0cmVhbSBvZiB0aGUgbm9taW5hbCBib3R0bGVuZWNrLCBjYW4gb25s
eSBiZSBhY2hpZXZlZCBieSBzaGFwaW5nIHRvIGEgc2xvd2VyIHJhdGUuICBJIHdvdWxkIHRyeSA3
OU1iaXQgZm9yIHlvdXIgY2FzZS4KCiAtIEpvbmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQo=

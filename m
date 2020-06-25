Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CE2209DE6
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 13:55:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 913253CB4E;
	Thu, 25 Jun 2020 07:55:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593086115;
	bh=jCMUgVvJ/2n2ExVrIjqnxXK9nQr2HGsGM4atNULgNLA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AW14oTx5x9QnnTRZNMO7Gy8rq9kq2uzFNj63/VOlFIobuqv+60SD+bKwW0POGTpy8
	 8yKdI04pCQKKEFOstaKt/S5jHFlQOkurxz7XlesE909URoFDuqpByLUiZD5inVvECd
	 9+4GwTMM/JCOOcRmfnU+PCmer1hQqLijEmc1oaoWgC5nk0y8zIfrbz1ZnSe3B9Ii1Z
	 Vu1dRjI2J3V0BaqUQFROlKNTAa3mS1eNgLK+4qTlqbpH+ZnE3P9Auz/GzG1u1keDQA
	 uUTBmDHBFV5+ddC/SGNzer9nmT4JGe4BFzz813E7LpupNGjJo7J81fhaxXFe3aU4d3
	 XyMuIVTNLkwQQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D4D663B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 07:55:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593086113;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oS+tjJRTXWkIBJiF60BGiX9Deix+p/MPPW7LrDM4LQg=;
 b=O38EpymfpLv7ScNU6vfp3wvsRk2hHC4rBOM6+haqfQzImVkz/cHiY5qzN2xLngpmSrbQMj
 /0EKCxxnqNEVWYABJOsMUB4y1GWSTuJCV/sKo8WOqpssjW+hgsYt12GmAkINiF9bwuRDyB
 tkeKzmpjJC8wzbNzbrkNOCW+RcPjlTY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-407-Cf5ENBHcM7OLnCof9JZ0Xg-1; Thu, 25 Jun 2020 07:55:11 -0400
X-MC-Unique: Cf5ENBHcM7OLnCof9JZ0Xg-1
Received: by mail-wm1-f72.google.com with SMTP id c66so6843934wma.8
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 04:55:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=oS+tjJRTXWkIBJiF60BGiX9Deix+p/MPPW7LrDM4LQg=;
 b=dQa8MaF0bTUJQ7zb79cdfVUv2hsdtwU7Qvh9g9x29C1xCusTu8Jmpvm6Iqp8+/0a02
 ux1l83jlPiloxQh10n7HXPCrArpm2aLC6Xn3RwYkCB+P5lMyuvc1wGetXzaxbVMtqhdd
 W/cx3f3vuUFw1y56Tb/J7CDKh6YYeNmosxgbdsK369U4kmUCnO1+7QReA7b/8Y/QG9xk
 lF337qRfIUNADdEDXIPV10xPhJ/hG4RaXobDB0mIaJaS9sycg7K/Rm+WbqRLg0fSyAgH
 5C+RJqKP1FkK+sav5IzbFThn4Ugj8Q6oa7u6ANzEHdH3Fb9JKQtBg9+VrheKezLApG/i
 P5bw==
X-Gm-Message-State: AOAM530CIQz+bgXJqwcUXLSP9aMm8R8uKXwxYQVCmpABZIVs0e/ZJNL2
 MaznjfiVJ8tsNeu58LSZ3s7YJFisku1bWXJ8XCMQbV3atdu3NLl5m5QO5S9od92Rtaqqxx0icvu
 vCg5qJHEAz8Hq4gHQR0s6qQ==
X-Received: by 2002:adf:a507:: with SMTP id i7mr39280024wrb.0.1593086110797;
 Thu, 25 Jun 2020 04:55:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwjqfJVd3WkZS8rf/Eu0Ta02+8zhyOKxM75IA3tL9xrh0OYYczzH8cn3T+qkjTjJplc9T9E0g==
X-Received: by 2002:adf:a507:: with SMTP id i7mr39280013wrb.0.1593086110634;
 Thu, 25 Jun 2020 04:55:10 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id v20sm31975789wrb.51.2020.06.25.04.55.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 04:55:09 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5729F1814F9; Thu, 25 Jun 2020 13:55:08 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 13:55:08 +0200
Message-ID: <159308610826.190211.15296927891260930838.stgit@toke.dk>
In-Reply-To: <159308610282.190211.9431406149182757758.stgit@toke.dk>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next 5/5] sch_cake: fix a few style nits
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpJIHNwb3R0
ZWQgYSBmZXcgbml0cyB3aGVuIGNvbXBhcmluZyB0aGUgaW4tdHJlZSB2ZXJzaW9uIG9mIHNjaF9j
YWtlIHdpdGgKdGhlIG91dC1vZi10cmVlIG9uZTogQSByZWR1bmRhbnQgZXJyb3IgdmFyaWFibGUg
ZGVjbGFyYXRpb24gc2hhZG93aW5nIGFuCm91dGVyIGRlY2xhcmF0aW9uLCBhbmQgYW4gaW5kZW50
YXRpb24gYWxpZ25tZW50IGlzc3VlLiBGaXggYm90aCBvZiB0aGVzZSB0bwptaW5pbWlzZSB0aGUg
ZGVsdGEuCgpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVk
aGF0LmNvbT4KLS0tCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8ICAgIDQgKystLQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXQv
c2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IDc4YTcwMmE0ZTFk
NC4uZTA3NTkxM2IyZmQ3IDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9u
ZXQvc2NoZWQvc2NoX2Nha2UuYwpAQCAtMjc2MSw3ICsyNzYxLDcgQEAgc3RhdGljIGludCBjYWtl
X2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwKIAlxZGlzY193YXRj
aGRvZ19pbml0KCZxLT53YXRjaGRvZywgc2NoKTsKIAogCWlmIChvcHQpIHsKLQkJaW50IGVyciA9
IGNha2VfY2hhbmdlKHNjaCwgb3B0LCBleHRhY2spOworCQllcnIgPSBjYWtlX2NoYW5nZShzY2gs
IG9wdCwgZXh0YWNrKTsKIAogCQlpZiAoZXJyKQogCQkJcmV0dXJuIGVycjsKQEAgLTMwNzgsNyAr
MzA3OCw3IEBAIHN0YXRpYyBpbnQgY2FrZV9kdW1wX2NsYXNzX3N0YXRzKHN0cnVjdCBRZGlzYyAq
c2NoLCB1bnNpZ25lZCBsb25nIGNsLAogCQkJUFVUX1NUQVRfUzMyKEJMVUVfVElNRVJfVVMsCiAJ
CQkJICAgICBrdGltZV90b191cygKIAkJCQkJICAgICBrdGltZV9zdWIobm93LAotCQkJCQkJICAg
ICBmbG93LT5jdmFycy5ibHVlX3RpbWVyKSkpOworCQkJCQkJICAgICAgIGZsb3ctPmN2YXJzLmJs
dWVfdGltZXIpKSk7CiAJCX0KIAkJaWYgKGZsb3ctPmN2YXJzLmRyb3BwaW5nKSB7CiAJCQlQVVRf
U1RBVF9TMzIoRFJPUF9ORVhUX1VTLAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

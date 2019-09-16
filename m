Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2DBB3C28
	for <lists+cake@lfdr.de>; Mon, 16 Sep 2019 16:06:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 652183CB40;
	Mon, 16 Sep 2019 10:06:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568642785;
	bh=+ed4SUQphKGRcQIlLlzZ0zBWGOfITQ7jXDxTGsJYR7E=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A1a8ydnwQWc66st9HLhvqyUHpte0kTQRtBt33Ydh/MI1FZSM1CvfTa8sB94U1bD+R
	 UcRxaN61k/h0tgo8/QS5TRT1zbpPbN9I8yIdImOqpE5vNxGf9WKttZVqIQkDDPwnip
	 cGbZJf9ma0iMRV9cL1dz2kUH+PK4Xc2QeAiLVDJfqJOQkeC6d1VF15nYjJ2fuhy+j3
	 GyX7ywAps0uCTfDe3T9uA6/KM46lC0JlNE1CD4P8B/3r/ET/PHx409gtLflOcKWrIr
	 cXdxwqDhmLjgL+c0Cn0zs4QVjQiygHryYE4TI9VmWCQhTp6LITGy8DWFe+dOqbRSxs
	 8+jaXqxROzuDQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D9F2E3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 10:06:23 -0400 (EDT)
Received: by mail-lf1-x135.google.com with SMTP id w6so68480lfl.2
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 07:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0fBgWTISn7InlX1w/tqRrmqkc3cxHpAywKPVegCeFUQ=;
 b=X8kE2FFsR/IVAFAqEWsgPM2uBdeo6bjAfULxSx1MIwc9Z3yD7WFfmr/Dho6viaUYE6
 jT+d4slSy6tjtjN0mbxWk70NKiwlVDfhjo7mvNMqqqPy3WvDehVy7aOIIccQsUPCiI6/
 1H6uk7NG9igPDYrfaMakRKxjt6xK/XJ2UrZ9Jqw2Ylf7RPJ2C/eOgvrRRYI3IwmJTj/R
 1gCxOdrU54xsCAAaO0reczPlLm35XDOQB6HVoOwm5Jz/WwpxTcD2qlAMM3FWuAjxtJ5T
 +AN+g4+cTy4kOUoNhRKMImcX6iNPnq9wODoq9Xul9VLmqieR/1ZGK+6WvmBR7RD9UTHO
 gCvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0fBgWTISn7InlX1w/tqRrmqkc3cxHpAywKPVegCeFUQ=;
 b=RlNKtJgQmxcF514jiBIF64DEgaGzlMuSA3wBCG6ihi2zBBteA75dcyfC/nJC1psA+r
 mMPTnu/jUyBd1/c5RiVRD0hJJQSjwFZTlBPNQW/MEteP5PQNRqWLmSLxroIId1buZzBX
 z19H8wF7o9r2mus/IIjXGKy7Pop+CrUd5zDcGKnsR597ZEiOyf8G2EtO42aQz1Qf21c1
 4c3Nz/DpLfGuGTFO3OA/VzSeUvHlgZUni0QrXapqDQI+3LRifJYFmufmD5UUL6HK+QEv
 YFN2qM7RmGLuNayC5m3PlzlQTPJE/RPR1+kQ2SttRvqQu+ESSYeN2uXHXM72D6kSntEI
 wk/Q==
X-Gm-Message-State: APjAAAWDS0yXYCHXpRi5TU43sRflENn0Oix/ffV6EitRzr1yH9JWAZvq
 mQQbKJXpzpnWB4DGPFQ0UkQ=
X-Google-Smtp-Source: APXvYqymHRHKMeB+kai2JlGiawi6/XlXGZP6dOTjSPhnFPf0qdcfyPN0CLDY5rHo8abE3GQY/lArxA==
X-Received: by 2002:a19:ca07:: with SMTP id a7mr41567843lfg.181.1568642782806; 
 Mon, 16 Sep 2019 07:06:22 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-113-nat-p.elisa-mobile.fi.
 [83.245.235.113])
 by smtp.gmail.com with ESMTPSA id r8sm9006310lfm.71.2019.09.16.07.06.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Sep 2019 07:06:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <99196e48-926e-689d-b1a8-69b1bfb1885f@newmedia-net.de>
Date: Mon, 16 Sep 2019 17:06:21 +0300
Message-Id: <D50283B7-56E0-44D1-A026-854D794661BC@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <CAA93jw6+=SuQhFbvVWMbL3m3r_0pRWSMmgScHbhZ=sSN9prntw@mail.gmail.com>
 <f44aa0fc-64d3-88a3-98db-dccf4f2c0530@newmedia-net.de>
 <93040b26-aa44-41b9-abec-7e1f637c0cb1@www.fastmail.com>
 <2FE4FDA8-BB22-4216-8D97-FA05D896E54B@gmail.com>
 <99196e48-926e-689d-b1a8-69b1bfb1885f@newmedia-net.de>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] cake memory consumption
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

SWYgeW91J3JlIGFibGUgdG8gbG9nIGluIGFzIHJvb3QsIHdoYXQgZG9lcyAidGMgLXMgcWRpc2Mg
fCBmZ3JlcCBtZW1vcnkiIHRlbGwgeW91PwoKQ2FrZSBhY3R1YWxseSBkb2VzIHZlcnkgbGl0dGxl
IGR5bmFtaWMgbWVtb3J5IGFsbG9jYXRpb24uICBUaGVyZSdzIGEgc21hbGwgYW1vdW50IG9mIG1l
bW9yeSB1c2VkIHBlciBxdWV1ZSBhbmQgcGVyIHRpbiwgd2hpY2ggc2hvdWxkIHRvdGFsIGxlc3Mg
dGhhbiAxMDBLQiBpbiAiYmVzdGVmZm9ydCIgbW9kZSAod2hpY2ggeW91IHNob3VsZCBiZSB1c2lu
ZyBpZiB5b3UgaGF2ZSBtYW51YWwgdHJhZmZpYyBjbGFzc2lmaWNhdGlvbikuCgpBbGwgb3RoZXIg
bWVtb3J5IGNvbnN1bXB0aW9uIGlzIGR1ZSB0byBwYWNrZXRzIGluIHRoZSBxdWV1ZSwgd2hpY2gg
YXJlIGFsbG9jYXRlZCBieSB0aGUga2VybmVsIHdoZW4gdGhleSBhcmUgcmVjZWl2ZWQsIGFuZCBk
ZWFsbG9jYXRlZCB3aGVuIHRyYW5zbWl0dGVkIG9yIGRyb3BwZWQuICBDYWtlIGFwcGxpZXMgYSBs
aW1pdCB0byB0aGUgbWVtb3J5IHVzZWQgYnkgcXVldWVkIHBhY2tldHMsIGdlbmVyYWxseSA0TUIg
YnkgZGVmYXVsdC4gIFRoZSBvbmx5IHdheSB0aGlzIGNhbiBiZSBleGNlZWRlZCBieSBtb3JlIHRo
YW4gb25lIHBhY2tldCAodHJhbnNpZW50bHksIHdoZW4gYSBwYWNrZXQgaXMgZW5xdWV1ZWQgYW5k
IENha2UgaGFzIHRvIGRyb3Agb3RoZXIgcGFja2V0cyB0byBtYWtlIHJvb20pIGlzIGlmIHRoZXJl
J3MgYW4gdW5hY2NvdW50ZWQgbWVtb3J5IGxlYWsgc29tZXdoZXJlLgoKSWYgeW91IGNhbiBmaW5k
IHN1Y2ggYSBsZWFrIGluIENha2UsIHdlJ2xsIGZpeCBpdC4gIEJ1dCBJIHRoaW5rIGl0IGlzIHBy
b2JhYmx5IGVsc2V3aGVyZS4KCiAtIEpvbmF0aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==

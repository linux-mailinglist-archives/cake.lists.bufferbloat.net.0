Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id A62F812FFE
	for <lists+cake@lfdr.de>; Fri,  3 May 2019 16:22:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7B99D3CB39;
	Fri,  3 May 2019 10:22:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556893359;
	bh=QdvxgDRa3RL1a1OTS3lAOFOtXbhBlCPEMGQYSWLOzbE=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kVKff7/5TkLvOd6W5xj/1u0yTqRNlVK6bJaoWnoycsBVwrDgnN571I9GF2jpnA3XF
	 /n4m4xnYLakL1ZtHn4fIip+KOiR1ipIdocVVX14qdL7IF/c7ifLlAebjQm0ZKIRAL2
	 RojSeSJHTdkXdiYompN60+U8QOPY5j3YvodxibIzUTZJeRKmFQVqv9WOxmQj18tuSb
	 BA4DhDJW7vBt/04M78Am/fDhGwipPgFdSN1+c1uk4jSu1OVXxJCVmh8CnDShjPlas4
	 XFr77ICn6zWFlSeIuUrynwhxYNv/wB1QFTl2pBCRnxBN8FhpKSzbqaDL2Yzm7SVTPJ
	 xs9cDGHW9ns1g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B3CD93CB35
 for <cake@lists.bufferbloat.net>; Fri,  3 May 2019 10:22:37 -0400 (EDT)
Received: by mail-ed1-f67.google.com with SMTP id w33so3876481edb.10
 for <cake@lists.bufferbloat.net>; Fri, 03 May 2019 07:22:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=MbhCg2VJsNT0tGKgfXjxg1F6/FbhcHMNiUg23qvLW8U=;
 b=cK1sCYh+OEkWasNA6SrWgkdcDoHh83+f1ApQKNWyF+NN0er11Uql7hQXfjcLc5XUC/
 LU7b1QlFXqxy4LJC6pqSact1Hf6ak/W5w/9gIRM6hx+v8Zqk2OM3l+Z15/tLtBpgFRDC
 WtVzHxFf9ephVe8Fw8XUBjPpK7IInMcLRQBH0T8IoU2oYIJIYF95TXbrT5ksPZ5VuQyx
 I0wnk8/8TjdB0UoJQJJxTVnLyD4mFLTpkJBPOP7dWEGqBOg1YsxEU8Nu+7QiJtO+Y3gA
 SH4nCxrQ4fWNI+B/RzZFfN+3o6V6z4CB6NnQMHDZ5oPSBRnlxg+RsOCWJgp688ptB2ao
 Yz2Q==
X-Gm-Message-State: APjAAAVFLf4DRVFqf3/Or79NiEJrbRjG3qZAZmZkukXclWX3eHywljqZ
 zbn1uF272LSmokYb9r3bV38BFeoIV3I=
X-Google-Smtp-Source: APXvYqw0C+uTzwBnxUI0q1zl/BiyCtJ7vW7cEun0uuEN0VbzAii+OYHmcGpriM/eo6GoSuMcRBxB3w==
X-Received: by 2002:a17:906:b7da:: with SMTP id
 fy26mr3800022ejb.148.1556893356796; 
 Fri, 03 May 2019 07:22:36 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.vpn.toke.dk.
 [2a00:7660:6da:10::2])
 by smtp.gmail.com with ESMTPSA id b42sm583748edd.83.2019.05.03.07.22.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 07:22:36 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id C0E091800E2; Fri,  3 May 2019 16:22:35 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>,
 Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
References: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 03 May 2019 16:22:35 +0200
Message-ID: <87pnozhb2s.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Possible conntrack lookup improvements
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

S2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQgPGtldmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3
cml0ZXM6Cgo+IEhpIEV2ZXJ5b25lLAo+Cj4gSeKAmXZlIGJlZW4gd29ya2luZyBvbiBhY3RfY3Rp
bmZvIHRvd2FyZCBnZXR0aW5nIHRoYXQgdXBzdHJlYW0gYW5kIGl0IGlzCj4gZ2V0dGluZyBjbG9z
ZXIuIFNpbmNlIHRoYXQgbW9kdWxlIGFsb25nIHdpdGggYWN0X2Nvbm5tYXJrIGRvZXMgaXRzIG93
bgo+IGNvbm50cmFjayBsb29rdXBzIEnigJl2ZSBiZWVuIGxvb2tpbmcgYXQgd2hhdCB0aGV5IGRv
IGFuZCB3aGF0IHdlIGRvIGluCj4gY2FrZS4KPgo+IFR3byBwYXRjaGVzIGF0dGFjaGVkIC0gb25l
IGlzIGEgc2ltcGxlIHZhcmlhYmxlIGVsaW1pbmF0aW9uIHdpdGggbm8KPiBmdW5jdGlvbmFsIGNo
YW5nZS4gVGhlIHNlY29uZCBjaGFuZ2VzL3NpbXBsaWZpZXMgdGhlIGNvbm50cmFjayB0dXBsZQo+
IGxvb2t1cCAmIHVzYWdlLiBJ4oCZdmUgaGFkIGEgcGxheSBhbmQgSSBkb27igJl0IHRoaW5rIEni
gJl2ZSBicm9rZW4gYW55IG9mCj4gdGhlIGhvc3QgZmFpcm5lc3MgQlVUIGl0IGNvdWxkIGRvIHdp
dGggc29tZSBtb3JlIHRlc3RpbmcsIHRoYXTigJlzIHdoZXJlCj4geW91IGNvbWUgaW7igKYgcHJv
YmFibHkgUGV0ZSAmIEdlb3JnZSA6LSkKClNlZW1zIHJlYXNvbmFibGUuIEJ1dCBwbGVhc2UgZm9s
ZCB0aGVzZSB0d28gcGF0Y2hlcyBpbnRvIG9uZTsgY2hhbmdpbmcKZXZlcnl0aGluZywgdGhlbiBp
bW1lZGlhdGVseSBjaGFuZ2luZyBpdCBhZ2FpbiBkb2VzIG5vdCBoZWxwCnJlYWRhYmlsaXR5Li4u
IEFuZCB0aGUgZXhwbGFuYXRpb24gbWFrZXMgYSBsb3QgbW9yZSBzZW5zZSBpZiB5b3UganVzdApj
aGFuZ2UgdGhlIHdob2xlIHRoaW5nIGluIG9uZSBwYXRjaCA6KQoKLVRva2UKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

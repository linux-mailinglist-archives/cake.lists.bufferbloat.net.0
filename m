Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7C519F359
	for <lists+cake@lfdr.de>; Mon,  6 Apr 2020 12:15:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6EC0F3CB3F;
	Mon,  6 Apr 2020 06:15:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586168116;
	bh=mtE3WrsRHBROsZASUdkCOljl4Wh5FN3H95s/WJ/cu0I=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YSivjzyUhYzXl/Uc4lKnI2blQi4l1HhL/aE4UoE8qo7uI39MHokw2qBLxQoo1lqsQ
	 vbR/irGR4rDNp62OkJj199QsNOhb3OH32wy8L1hrapW9e09E7vmcJmxnEUFglS7xjm
	 DaQFIfYTrrE0rLhihTJSm8DNlsBG7BD/evJE0r6oGiLRapQo8NcAD6esly+ce5RL61
	 anXy0PjB8hCrWoLeyIYM/2bW03qPX81M8GQINM+/rPv9pb047a4XqnA3jP8eyh0+qP
	 lwUUo5eRaRo1BdNUxBYnrRsSxXy0G7Z+RElNeNg3R/+4hphFmYQtFQ8U/zrpPrEI3T
	 YrACmGXkyl3dQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1B7F63B29E
 for <cake@lists.bufferbloat.net>; Mon,  6 Apr 2020 06:15:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586168114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+hnwvqLZw14eORfIWriCprwBiEKLc66c70W85F7C4fs=;
 b=GWlu9R62xECZJ4Fg+FqWLiMA/TUXtfoX3t4UIKtP7LrI9qg4CPVddgyHjTqV68K4lUlxPd
 6Lb03Z5LxVoSa2LihwJE2UHb8G+pyBLhr2/rVgcNr7xEAG0T10ZWNNFRzU+uZeom9gNiz9
 qQaoWdxw1dR6rD08PbZcgGwQ0YwUHDI=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-162-BC1zk4MMNfubQyBb2iVmTQ-1; Mon, 06 Apr 2020 06:15:12 -0400
X-MC-Unique: BC1zk4MMNfubQyBb2iVmTQ-1
Received: by mail-lj1-f198.google.com with SMTP id i19so1767691ljn.17
 for <cake@lists.bufferbloat.net>; Mon, 06 Apr 2020 03:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=+hnwvqLZw14eORfIWriCprwBiEKLc66c70W85F7C4fs=;
 b=eynfjEGWiBaRNOCdym/N9r1+7Vs/B3HYfz5lOWSkno3jhyPhExKcH9pSz6O+9wgUXT
 8dFmgWTGnTWtHu/Eljr41zLDXYmDEIFhpTlPRRoFHGP2tsVzb5xz2KvswT1nm9GeKmrv
 kejF+GPJd0KRbeaFuDEjdi3LVPkMkDs+InQJ49wYAwJjhYqnKlm5zMGeYmy+08FOE3kf
 5srFWIbn46aFCzElzpHNh/VDWZoHszka2N90WTQ8T6dK8cy/gLHAGG+25/PKOkuvFXc7
 GLvV8oC20sLB7U92he29UQ543tGeyTXZeTe/5r9AoEKBQGBavFj5RWSsFFXCc1BThdCY
 fFhA==
X-Gm-Message-State: AGi0PubkK567kK7zQrfkXWo/ZivqR/qkZqPkIZCrdlbu76Y9uH6ACxSV
 Z1K1dNt4D6sS/YzzRSt699NX8TJQ9uCG2f43oWaufbHtZfAp43PBgIa717EbU55+QQkXjwFu6+p
 jZpXj+2SO25mfgxb+xJFgPQ==
X-Received: by 2002:a2e:a365:: with SMTP id i5mr11690009ljn.246.1586168110803; 
 Mon, 06 Apr 2020 03:15:10 -0700 (PDT)
X-Google-Smtp-Source: APiQypLwCHojzxOWaS2qjEKClS4bGjNyVxFDmXXTlTiutkVxFqYwi7HQORQ3GtxBYfiokOHRrNTWoA==
X-Received: by 2002:a2e:a365:: with SMTP id i5mr11689990ljn.246.1586168110591; 
 Mon, 06 Apr 2020 03:15:10 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id q22sm9527389ljm.10.2020.04.06.03.15.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 03:15:09 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 130421804E7; Mon,  6 Apr 2020 12:15:09 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>,
 Dave Taht <dave.taht@gmail.com>
In-Reply-To: <656F3146-1B43-41DC-963C-21770747E4AC@darbyshire-bryant.me.uk>
References: <CAA93jw62J_psLswMnisU4c3j9J=Q-HTDRO5F2q_+YRFqV+MtKw@mail.gmail.com>
 <FFAECE22-C1E8-4CA8-8ACF-8C49BEBE3DA8@darbyshire-bryant.me.uk>
 <CAA93jw5qkWxsA__+69em0BRT32-Ze42NH7VorsCW1TE_JAio3Q@mail.gmail.com>
 <656F3146-1B43-41DC-963C-21770747E4AC@darbyshire-bryant.me.uk>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 06 Apr 2020 12:15:09 +0200
Message-ID: <874ktwdioi.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] cake and nat in openwrt... on by default?
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

S2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQgPGtldmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3
cml0ZXM6Cgo+PiBPbiA1IEFwciAyMDIwLCBhdCAxNjoyMiwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRA
Z21haWwuY29tPiB3cm90ZToKPj4gCj4+PiAKPj4gCj4+IEknZCBzdGlsbCBiZSB3aWxsaW5nIHRv
IGJldCwgdGhlbiwgdGhhdCB0aGUgbWFqb3JpdHkgb2YgaW5zdGFuY2VzIHdlcmUKPj4gbm90IHR1
cm5pbmcgbmF0IG1vZGUgb24sIHdoZW4KPj4gdGhleSBzaG91bGQgaGF2ZSBiZWVuLgo+Cj4gSWYg
bWVtb3J5IHNlcnZlcywgYXQgdGhlIHRpbWUgdGhlcmUgd2FzIGEgbG90IG9mIGNvbmNlcm4gYWJv
dXQgY3B1Cj4gdXNhZ2UgYW5kIChJIGZlbHQpIHRoYXQgZXZlcnkgbGluZSwgZXZlcnkgcG90ZW50
aWFsIGluc3RydWN0aW9uIGFuZAo+IGNhY2hlIGhpdCB3YXMgYmVpbmcgc2NydXRpbmlzZWQuIE5B
VCBsb29rdXAgYnkgZGVmYXVsdCB3YXMgZGVlbWVkIHRvbwo+IG11Y2guIENha2UgZW5kZWQgdXAg
YmVpbmcg4oCYY3B1IGhlYXZ54oCZIHRob3VnaCBJ4oCZdmUgeWV0IHRvIHNlZSBhIGJldHRlcgo+
IGNvbWJpbmF0aW9uIG9mIHNoYXBlciwgYXFtLCBmbG93IGZhaXJuZXNzLCBob3N0IGZhaXJuZXNz
LCBEU0NQCj4gYXdhcmVuZXNzIGFuZCBhY2sgZmlsdGVyaW5nIGluIG9uZSBvdmVyYWxsIHBhY2th
Z2UsIGxldCBhbG9uZSBvbmUgdGhhdAo+IGRpZCBpdCBpbiBsZXNzIGNwdS4KCldlbGwsIG9uZSB0
aGluZyB3ZSBjb3VsZCBkbyBpcyBjaGFuZ2UgdGhlIGRlZmF1bHRzIGluIHNxbS1zY3JpcHRzPyA6
KQoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

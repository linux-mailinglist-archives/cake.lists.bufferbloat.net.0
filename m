Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB013C2BE1
	for <lists+cake@lfdr.de>; Sat, 10 Jul 2021 01:57:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 57F3B3CBC5;
	Fri,  9 Jul 2021 19:56:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625875012;
	bh=LvVBHXJQfTELbOOLxcS/qTAeV8dA0lkXLuBI/p1/pXg=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X0NqwerT36GhDtSVPKuB1Hyutzy5P7yXnExW6bfaTC8N7qQmgelLEJbiVTtpdgVaB
	 nwKWzGYLexq58fAi/DCJDbBPuBU46kqRX394QYaVmQbuW0wHjenLseF68gMSdc7PWp
	 8BdccEK75mnD4CLUWmrXBBQZKKRQS1HWHaxpYjDSV65+/qsFsErvVBIht0Vq0oFXsv
	 3E8p4wn9VciFDBTtGxygpv++JgbnpU7IFZyTQGDVj7VAs0Z9Z3+8InWfJeUKsbPOba
	 icQ4m7MSKOFOB/DdEPXU/r36GsxBgbNwTDtaPVhJbwB4bsDqkFzavBm7K0Mc0bdBkI
	 HnRjit6wDfJ7g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BD94B3B2A4;
 Fri,  9 Jul 2021 19:56:50 -0400 (EDT)
Received: by mail-lj1-x22c.google.com with SMTP id r16so10661935ljk.9;
 Fri, 09 Jul 2021 16:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A/I1emx+XJOpUfRdsSiNBQCuOrkhBZDCr7PAZ5u18lg=;
 b=FPkJ/FHXiqm1iwBdDq4IKsu4kO8sJ7q4G4/evfV6CgqPccecQ8iEG0605aoVBaGyBC
 W1XeVFAQGqpTigJKltDISbRguVhBn2f+82gvWLhWPxX93ywEzAPI+L+DfMCh2xo+ees5
 BsUAEDi8XNHHOhXWA3ldEydFC8NusVyLqbm28nqGcHX07u0zETv/efMJbK7I9Y/Sqtdh
 YHuFEkYYtzTEoJSMNT2dgdsPx2aBMRVWJnrI3ZLGMHg4BOoyXFoYQgj3h+9IqvgcqcoK
 DVDR0RHRAwdTK9R6I/5Skx5l6sT39dcLTSq8gVAgLDZhNxQPJqe32YBgWOqA8Vna4lkI
 YK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A/I1emx+XJOpUfRdsSiNBQCuOrkhBZDCr7PAZ5u18lg=;
 b=P0FF5AKV2PAoCW3wrfoRnn1kMo+azZ9ypQIyYFexNYsy/hTOJeNThga7mLuNb2N3JP
 NnQl2YMxLmz9JYxiqANm9jc8fZUmyqT64a9LN9LB7eFlTGTNW6EDNAtESfVUbFMXIbu7
 eGbAdsGL33AMwsLTiqT9pHIgbMsIXjTA6zYmovvTPBzeGw6Rle8TTL6pePVKMQf/IycT
 cyuKyteFkC0PCzRomaqGS6T/E0rFoP234lBY8z/1qQL5b7bosGykCih4BEngX3MIwRCb
 B39nj/Ss64ht97IjNEBzcUOj78gW1RkIMoqDpCXhjRLzIz/H9x8h8Xms+q5gaguCo591
 JeGg==
X-Gm-Message-State: AOAM530onsCAMmOenYm6foNLdo5pGDVlMt2RmWJeaKsYIKO5gVX0P6Dm
 fa9CzvxUdkpFSfahiKzYoN4=
X-Google-Smtp-Source: ABdhPJyKMZ2m09b9Do8CMzFpnPo6Gw4jcLjfueb0jG/GD1leOkRd2DB+YlQdUKQ5ERUpoDA3+q0Kkg==
X-Received: by 2002:a05:651c:234:: with SMTP id
 z20mr23045581ljn.294.1625875008240; 
 Fri, 09 Jul 2021 16:56:48 -0700 (PDT)
Received: from jonathartonsmbp.lan (37-136-219-147.rev.dnainternet.fi.
 [37.136.219.147])
 by smtp.gmail.com with ESMTPSA id a25sm728939ljp.71.2021.07.09.16.56.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Jul 2021 16:56:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
X-Priority: 3 (Normal)
In-Reply-To: <8C38E940-8B97-4767-A39B-25F043AE0856@cs.ucla.edu>
Date: Sat, 10 Jul 2021 02:56:46 +0300
Message-Id: <A2CB0701-E08F-46ED-8579-CC24F1444E9C@gmail.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <8C38E940-8B97-4767-A39B-25F043AE0856@cs.ucla.edu>
To: Leonard Kleinrock <lk@cs.ucla.edu>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
 but not invalidating my main point
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxMCBKdWwsIDIwMjEsIGF0IDI6MDEgYW0sIExlb25hcmQgS2xlaW5yb2NrIDxsa0Bjcy51
Y2xhLmVkdT4gd3JvdGU6Cj4gCj4gTm8gcXVlc3Rpb24gdGhhdCBub24tc3RhdGlvbmFyaXR5IGFu
ZCBpbnN0YWJpbGl0eSBhcmUgd2hhdCB3ZSBvZnRlbiBzZWUgaW4gbmV0d29ya3MuICBBbmQsIG5v
bi1zdGF0aW9uYXJpdHkgYW5kIGluc3RhYmlsaXR5IGFyZSBib3RoIHRvcGljcyB0aGF0IGxlYWQg
dG8gdmVyeSBjb21wbGV4IGFuYWx5dGljYWwgcHJvYmxlbXMgaW4gcXVldWVpbmcgdGhlb3J5LiAg
WW91IGNhbiBmaW5kIHNvbWUgcmVzdWx0cyBvbiB0aGUgdHJhbnNpZW50IGFuYWx5c2lzIGluIHRo
ZSBxdWV1ZWluZyB0aGVvcnkgbGl0ZXJhdHVyZSAoaW5jbHVkaW5nIHRoZSBzZWNvbmQgdm9sdW1l
IG9mIG15IFF1ZXVlaW5nIFN5c3RlbXMgYm9vayksIGJ1dCB0aGV5IGFyZSBsaW1pdGVkIGFuZCBo
YXJkLiBOZXZlcnRoZWxlc3MsIHRoZSBsaXRlcmF0dXJlIGRvZXMgY29udGFpbiBzb21lIHdvcmtz
IG9uIHRyYW5zaWVudCBhbmFseXNpcyBvZiBxdWV1ZWluZyBzeXN0ZW1zIGFzIGFwcGxpZWQgdG8g
bmV0d29yayBjb25nZXN0aW9uIGNvbnRyb2wgLSBhZ2FpbiBsaW1pdGVkLiBPbiB0aGUgb3RoZXIg
aGFuZCwgYXMgeW91IHNhaWQsIGNvbnRyb2wgdGhlb3J5IGFkZHJlc3NlcyBzdGFiaWxpdHkgaGVh
ZCBvbiBhbmQgZG9lcyBvZmZlciBzb21lIHRvb2xzIGFzIHdlbGwsIGJ1dCBhZ2FpbiwgaXQgaXMg
aGFpcnkuIAoKSSB3YXMganVzdCBhYm91dCB0byBtZW50aW9uIGNvbnRyb2wgdGhlb3J5LgoKT25l
IGJhc2ljIGNoYXJhY3RlcmlzdGljIG9mIFBvaXNzb24gdHJhZmZpYyBpcyB0aGF0IGl0IGlzIGlu
ZWxhc3RpYywgYW5kIGFzc3VtZXMgdGhlcmUgaXMgbm8gY29udHJvbCBmZWVkYmFjayB3aGF0c29l
dmVyLiAgVGhpcyBtZWFucyBpdCBjYW4gb25seSBiZSBhIHZhbGlkIG1vZGVsIHdoZW4gdGhlIGZv
bGxvd2luZyBhcmUgYm90aCB0cnVlOgoKMTogVGhlIG9mZmVyZWQgbG9hZCBpcyAqYmVsb3cqIHRo
ZSBsaW5rIGNhcGFjaXR5LCBmb3IgYWxsIGxpbmtzLCBhdmVyYWdlZCBvdmVyIHRpbWUuCgoyOiBB
IGhpZ2ggZGVncmVlIG9mIHN0YXRpc3RpY2FsIG11bHRpcGxleGluZyBleGlzdHMuCgpJZiAxOiBp
cyBub3QgdHJ1ZSBhbmQgdGhlIHRyYWZmaWMgaXMgdHJ1bHkgaW5lbGFzdGljLCB0aGVuIHRoZSBx
dWV1ZXMgd2lsbCBpbmV2aXRhYmx5IGZpbGwgdXAgYW5kIGNvbmdlc3Rpb24gY29sbGFwc2Ugd2ls
bCByZXN1bHQsIGFzIHNob3duIGZyb20gQVJQQU5FVCBleHBlcmllbmNlIGluIHRoZSAxOTgwczsg
dGhlIHNvbHV0aW9uIHdhcyB0byBpbnRyb2R1Y2UgY29udHJvbCBmZWVkYmFjayB0byB0aGUgdHJh
ZmZpYywgaW5pdGlhbGx5IGluIHRoZSBmb3JtIG9mIFRDUCBSZW5vLiAgSWYgMjogaXMgbm90IHRy
dWUgdGhlbiB0aGUgdHJhZmZpYyBjYW5ub3QgYmUgYXBwcm94aW1hdGVkIGFzIFBvaXNzb24gYXJy
aXZhbHMsIHJlZ2FyZGxlc3Mgb2YgbG9hZCByZWxhdGl2ZSB0byBjYXBhY2l0eSwgYmVjYXVzZSB0
aGUgZGVncmVlIG9mIGNvcnJlbGF0aW9uIGlzIHRvbyBoaWdoLgoKVGFraW5nIHRoZSBpUGhvbmUg
aW50cm9kdWN0aW9uIGFuZWNkb3RlIGFzIGFuIGlsbHVzdHJhdGl2ZSBleGFtcGxlLCBtZWFzdXJp
bmcgdXRpbGlzYXRpb24gYXMgdmVyeSBjbG9zZSB0byAxMDAlIGlzIGEgY2xlYXIgd2FybmluZyBz
aWduIHRoYXQgdGhlIFBvaXNzb24gbW9kZWwgd2FzIGluYXBwcm9wcmlhdGUsIGFuZCBhIGNvbnRy
b2wtdGhlb3J5IGFwcHJvYWNoIHdhcyBuZWVkZWQgaW5zdGVhZCwgdG8gY2FwdHVyZSB0aGUgZmVl
ZGJhY2sgZWZmZWN0cyBvZiBjb25nZXN0aW9uIGNvbnRyb2wuICBUaGUgaGlnaCBkZWdyZWUgb2Yg
c3RhdGlzdGljYWwgbXVsdGlwbGV4aW5nIGluaGVyZW50IHRvIGEgbWFqb3IgSVNQIGJhY2toYXVs
IGlzIGlycmVsZXZhbnQgdG8gdGhhdCBkZXRlcm1pbmF0aW9uLgoKU3VjaCBhIG1vZGVsIHdvdWxk
IGhhdmUgZm91bmQgdGhhdCB0aGUgcHJpbWFyeSBzb3VyY2Ugb2YgY29udHJvbCBmZWVkYmFjayB3
YXMgaHVtYW4gdXNlcnMgZ2l2aW5nIHVwIGluIGRpc2d1c3QuICBIb3dldmVyLCBkaWZmZXJlbnQg
aHVtYW5zIGhhdmUgZGlmZmVyZW50IGxldmVscyBvZiB0b2xlcmFuY2UgYW5kIHBlcnNpc3RlbmNl
LCBzbyB0aGlzIGZlZWRiYWNrIHdhcyBub3Qgc3VmZmljaWVudCB0byByZWR1Y2UgdGhlIGxvYWQg
c3VmZmljaWVudGx5IHRvIGdpdmUgdGhlIG1ham9yaXR5IG9mIHVzZXJzIGEgZ29vZCBzZXJ2aWNl
OyBpbnN0ZWFkLCAqYWxsKiB1c2VycyByZWNlaXZlZCBhIHBvb3Igc2VydmljZSBhbmQgbWFueSB1
c2VycyByZWNlaXZlZCBubyB1c2FibGUgc2VydmljZS4gIEludHJvZHVjaW5nIGEgdGVjaG5vbG9n
aWNhbCBjb250cm9sIGZlZWRiYWNrLCBpbiB0aGUgZm9ybSBvZiBwYWNrZXQgbG9zcyB1cG9uIG92
ZXJmbG93IG9mIGNvcnJlY3RseS1zaXplZCBxdWV1ZXMsIGltcHJvdmVkIHNlcnZpY2UgZm9yIGV2
ZXJ5b25lLgoKKEJUVywgRE5TIGJlY29tZXMgc2lnbmlmaWNhbnRseSB1bnJlbGlhYmxlIGFyb3Vu
ZCAxLTIgc2Vjb25kcyBSVFQsIGR1ZSB0byBwcm90b2NvbCB0aW1lb3V0cywgd2hpY2ggaXMgaW5o
ZXJpdGVkIGJ5IGFsbCBhcHBsaWNhdGlvbnMgdGhhdCByZWx5IG9uIEROUyBsb29rdXBzLiAgTWVy
ZWx5IHJlZHVjaW5nIHRoZSBkZWxheXMgY29uc2lzdGVudGx5IGJlbG93IHRoYXQgdGhyZXNob2xk
IHdvdWxkIGhhdmUgaW1wcm92ZWQgcGVyY2VpdmVkIHJlbGlhYmlsaXR5IG1hcmtlZGx5LikKCkNv
bnZlcnNlbHksIHdoZW4gdGFsa2luZyBhYm91dCB0aGUgdHJhZmZpYyBvbiBhIHNpbmdsZSBJU1Ag
c3Vic2NyaWJlcidzIGxhc3QtbWlsZSBsaW5rLCB0aGUgUG9pc3NvbiBtb2RlbCBoYXMgdG8gYmUg
ZGlzY2FyZGVkIGR1ZSB0byBjcml0ZXJpb24gMiBiZWluZyBmYWxzZS4gIFRoZSBudW1iZXIgb2Yg
Zmxvd3MgZ29pbmcgdG8gZXZlbiBhIGZhbWlseSBob3VzZWhvbGQgaXMgcHJvYmFibHkgaW4gdGhl
IGxvdyBkb3plbnMgYXQgYmVzdC4gIEEgY29udHJvbC10aGVvcnkgYXBwcm9hY2ggY2FuIGFsc28g
d29yayBoZXJlLgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

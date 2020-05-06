Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 624CA1C79FD
	for <lists+cake@lfdr.de>; Wed,  6 May 2020 21:13:23 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3873A3CB41;
	Wed,  6 May 2020 15:13:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588792402;
	bh=j0bFPefphDdJWEcBkJlLK3cVU54LrqVZ6KBApf+x8co=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c/IfNAWe7wsB1i7abbgwS5YHc7aHbvCoNVybZ9FvZ93JCHIYRJZ0Fw6GTEpJOFECw
	 hkkbkCWqm6CNW86IpCpGxcbnDH4jtNVaR4uIht7a+nrQNVt8jqfxmz4enIzYxjaRA2
	 uvww9F6Dw3i+KzxEU5PIqnfsfTqfMgRvOiCyYcjRD3111KHEhDw/eorGnvX+s8eXn7
	 rFVZlNTHUmn7F0ZagN1EbmQ/GqiZBilsjQFxPQjSTr0FFlKvqgtXxkjkcEGJxL9y8v
	 KQIBQnE2eAANl/n6/67BeTnTQGSCW/8+MiISRSm8oYJ1GCtW4X742St3hsKhzxOMeh
	 Q1ATW7eYwVMnw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 068CB3B29D
 for <cake@lists.bufferbloat.net>; Wed,  6 May 2020 15:13:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588792400;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oM5J7uSgxHkkGqIGf4jNxVl7eaaXvDKyoK/tqDiUqiw=;
 b=OQXDC9IG6H3J3YXuA/CKivOHQlBsvIkHA3XOI28y3YnKa7I1GiX4LKepaLFYyFruZmOx9H
 k68w76CuF75wGUt9gRkWQOhfyMx9RL7KDnayyaqZjq1erohkO3CF0HnP5OLqbhwwWqn/aM
 KNBWf2b56BQ4N5IP0wypW59Niq9M3CE=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-1RV0tUDSNUSCxPTdYiyTmw-1; Wed, 06 May 2020 15:13:18 -0400
X-MC-Unique: 1RV0tUDSNUSCxPTdYiyTmw-1
Received: by mail-lf1-f72.google.com with SMTP id q8so1189918lfp.23
 for <cake@lists.bufferbloat.net>; Wed, 06 May 2020 12:13:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=oM5J7uSgxHkkGqIGf4jNxVl7eaaXvDKyoK/tqDiUqiw=;
 b=s/IXHz08UtcJ8Ia5n+/o8rUppr/oYjNYrG5LmAFO0INryGnaFqIJ6a/QDPWNEpr7mE
 FAXE35GJ/WEC00RVw73/vshHInBhI6UlYeYVHKVyDN9H/C9diHAEFXFsUDe/QRZoVVNQ
 9KjVr2rAhsSNPt3Ps9Pj9ieoCmJldCQu1ttULufDUitvTvDlVPhAHla3jfQDoCcCEzJG
 yhBrUIpyNInyHAY/IJRP+JGJFP2NkiAlBjIMNchiUgItl7NHBz80Vz4tFg1qVe3A5QO/
 mUFVt68si3A0Z9/tjH6aeSi8T1ePGO6Nqe0LNYnaf+XU2AsYg7+h8mjidghWojdS4olF
 2+xA==
X-Gm-Message-State: AGi0Pubnvi5GKfJzSM8+dDQvTX8mLLIn/YtJ90dB4rx7/nTw//0GMbhR
 SIzYDR/umb6WN5d9VceZRiqbqCrG4PhQ6V2fBWvOsMl/dbwxOEXAOoc+WzJbOsLkRRJWCbdZF+F
 L2grDXGADC4nnRO+kxT3/8Q==
X-Received: by 2002:a19:ad45:: with SMTP id s5mr6332444lfd.106.1588792397249; 
 Wed, 06 May 2020 12:13:17 -0700 (PDT)
X-Google-Smtp-Source: APiQypKBPeKIHId8N8OyPp4yEWIdN3ijSSPVzuZYSIWiNqMdhO+vr69Aot5QLUoYoF6dJovNWYWtxw==
X-Received: by 2002:a19:ad45:: with SMTP id s5mr6332427lfd.106.1588792397005; 
 Wed, 06 May 2020 12:13:17 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id m132sm2226453lfa.94.2020.05.06.12.13.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 12:13:16 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B8B871804E9; Wed,  6 May 2020 21:13:15 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jonathan Morton <chromatix99@gmail.com>,
 Avakash bhat <avakash261@gmail.com>
In-Reply-To: <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 06 May 2020 21:13:15 +0200
Message-ID: <87wo5okhbo.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Cc: cake@lists.bufferbloat.net, "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>, Vybhav Pai <vybhavpai1999.vp@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Sm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyaXRlczoKCj4+IE9uIDYg
TWF5LCAyMDIwLCBhdCA5OjQzIHBtLCBBdmFrYXNoIGJoYXQgPGF2YWthc2gyNjFAZ21haWwuY29t
PiB3cm90ZToKPj4gCj4+IFdlIGFyZSB0cnlpbmcgdG8gaW1wbGVtZW50IHRoZSBBQ0sgZmlsdGVy
aW5nIG1vZHVsZSBvZiBDQUtFIGluIG5zLTMgKE5ldHdvcmsgU2ltdWxhdG9yKS4KPgo+IEFoIHll
cy4gIFNvcnJ5IEkgZGlkbid0IHJlc3BvbmQgdG8gdGhlIGludHJvZHVjdGlvbiBlYXJsaWVyIC0g
d2Ugd2VyZSByaWdodCBpbiB0aGUgbWlkZGxlIG9mIHByZXBhcmluZyBmb3IgYW4gSUVURiB2aXJ0
dWFsIG1lZXRpbmcuICBUaGUgZGVicmlzIGlzIHN0aWxsIGZhbGxpbmcgZnJvbSBvcmJpdOKApgo+
Cj4+IFdlIGhhZCBhIHF1ZXN0aW9uIG9uIHRoZSB3b3JraW5nIG9mIGFjayBmaWx0ZXJpbmcuIAo+
PiBJZiBhbiBpbmNvbWluZyBhY2sgd2hpY2ggY2FuIHJlcGxhY2UgYW4gZWxpZ2libGUgYWNrIGlu
IHRoZSBxdWV1ZSBpcyBhYm91dCB0byBiZSBlbnF1ZXVlZCwgZG8gd2UgcmVwbGFjZSB0aGUgYWNr
IGluIHRoZSBxdWV1ZSB3aXRoIHRoZSBpbmNvbWluZyBhY2sgCj4+IG9yIGRvIHdlIGVucXVldWUg
dGhlIGFjayB0byB0aGUgdGFpbCBvZiB0aGUgcXVldWUgYW5kIHJlbW92ZSB0aGUgZWxpZ2libGUg
YWNrIGZyb20gdGhlIHF1ZXVlPwo+Cj4gVGhhdCBzb3VuZHMgbGlrZSBhbiBpbXBsZW1lbnRhdGlv
biBkZXRhaWwuIEJ1dCB3aGF0IHdlIGRvIGluIENha2UgaXMKPiB0byBzaW1wbHkgZW5xdWV1ZSBh
bGwgdGhlIHBhY2tldHMsIGFuZCBkZWFsIHdpdGggZXZlcnl0aGluZwo+IGNvbXBsaWNhdGVkIG9u
IGRlcXVldWUuCgpUaGUgQUNLIGZpbHRlciBpcyBydW4gb24gZW5xdWV1ZSwgYWN0dWFsbHkgOikK
Cj4gQXQgdGhhdCBwb2ludCwgd2UgY2hlY2sgd2hldGhlciB0aGUgdHdvIHBhY2tldHMgYXQgdGhl
IGhlYWQgb2YgdGhlCj4gcXVldWUgYXJlIGFja3MgZm9yIHRoZSBzYW1lIGZsb3csIGFuZCBpZiBz
bywgd2UgZnVydGhlciBjaGVjayB3aGV0aGVyCj4gdGhlIGluZm9ybWF0aW9uIGluIHRoZSBmaXJz
dCBwYWNrZXQgaXMgcmVkdW5kYW50IGdpdmVuIHRoZSBwcmVzZW5jZSBvZgo+IHRoZSBzZWNvbmQg
cGFja2V0LiBJZiB0aGVyZSBpcyBpbmZvcm1hdGlvbiBpbiB0aGUgZmlyc3QgcGFja2V0IHRoYXQg
aXMKPiBub3QgYWxzbyBwcm92aWRlZCBieSB0aGUgc2Vjb25kIHBhY2tldCwgdGhlIGZpcnN0IHBh
Y2tldCBpcyBkZWxpdmVyZWQuCj4gT3RoZXJ3aXNlIHRoZSBmaXJzdCBwYWNrZXQgaXMgZHJvcHBl
ZCwgYW5kIHRoZSBzZWNvbmQgcGFja2V0IG1vdmVzIHRvCj4gdGhlIGhlYWQgb2YgdGhlIHF1ZXVl
LiBUaGlzIHByb2Nlc3MgbWF5IHJlcGVhdCBzZXZlcmFsIHRpbWVzIGlmIHRoZXJlCj4gYXJlIHNl
dmVyYWwgY29uc2VjdXRpdmUsIHJlZHVuZGFudCBhY2tzIGluIHRoZSBxdWV1ZS4KPgo+IFRoZSBp
bXBvcnRhbnQgcGFydCBpcyB0aGUgc2V0IG9mIHJ1bGVzIGRldGVybWluaW5nIHdoZXRoZXIgdGhl
IGFjayBpcwo+IHJlZHVuZGFudC4KClllcywgaW5kZWVkLiBQbGVhc2UgZmVlbCBmcmVlIHRvIGdv
IHRocm91Z2ggY2FrZV9hY2tfZmlsdGVyKCkgaW4Kc2NoX2Nha2UuYyBhbmQgbWFrZSBzdXJlIHlv
dSBnZXQgYWxsIHRob3NlIGVkZ2UgY2FzZXMgaW4geW91cgplbGlnaWJpbGl0eSBjaGVjay4uLgoK
LVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMu
YnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

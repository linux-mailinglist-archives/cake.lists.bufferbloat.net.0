Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 90549A2EC73
	for <lists+cake@lfdr.de>; Mon, 10 Feb 2025 13:30:16 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8C5823CB44;
	Mon, 10 Feb 2025 07:30:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1739190615;
	bh=/BwNcsBzFg9sgD2/7NJcaNdMNGAKbc8jahlcOPU4/CE=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=b94hw7gjmfIi7VGZIpbqdflbwrBsu6kC7hSsJ0AvRhx1fjIz3s4juVc/k0PJMgDFs
	 190wQobTDZX9VJ1slLP2Q/NY7JO8JKqJ/NXMR1tjv9M6BYPejrrKPYeOQMngxEb0XV
	 ZMb/nlscIK+HwXw5XfDwZGWX7UJ1T9Eyr6sxjG7U1eoylWA72pFA8SfkM3sOvZmU1X
	 QIZBzj2kjsuOOUqBr6p2r18i+/dnhLfrk6QwEXC5BrlSZUMvrS+grWecmY7DHOMqM1
	 JRE4VJOg/lJO1ZPdRJfhKRm1jk7U/1SRejdS3a0C0YZO+CZwtn7v59l+Yx/zrEXOaI
	 ekATZsTdCQ0qg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 821AA3B29D
 for <cake@lists.bufferbloat.net>; Mon, 10 Feb 2025 07:30:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1739190614;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gNvCRiWSKl3RxK0VQkFEheeA2fwKR8AeCUB/f+IVQHU=;
 b=My4d8KFZvXVzfn69C+CBo0jAaRI3kBaAbdzu38+y2fTrcNX7czC7UMSrWQvjxTkq1vzpiO
 dkxEGsF/ERS5xAYNNMhPRqzig6AA+r1CodM3iFpRYMw/0mERNLFTwlTMDVmDl8Jre0/ZjS
 7uhovdxcqY1Jr46ryi98E0KgLvvZ5Y0=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-460-PVQb5UpoOC2AKtzoE9Uzqw-1; Mon, 10 Feb 2025 07:30:12 -0500
X-MC-Unique: PVQb5UpoOC2AKtzoE9Uzqw-1
X-Mimecast-MFC-AGG-ID: PVQb5UpoOC2AKtzoE9Uzqw
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-5d89a53fc46so5258738a12.2
 for <cake@lists.bufferbloat.net>; Mon, 10 Feb 2025 04:30:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739190611; x=1739795411;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gNvCRiWSKl3RxK0VQkFEheeA2fwKR8AeCUB/f+IVQHU=;
 b=jMeBbGGb+5FzYEe8nj54ahpFza4dHBHYO1Ii1GxKW0GR/Ek+eaowAGebw+qzp06gRu
 z6BnFpdwIvlL2wE7qj+gd0C9Js/8LKnjqhS6T0rig48+ag18K1mXb2/AvOJhdUigAmqJ
 r+eKor8FpG5Y5o0/dWAEFBHBEd86qGlqCaUc+QyMHGoIE/F4x5GTPNt91X+CqqQV19IB
 WG6uasIIKSVU0kyZX7kdy+0BbcUsUpD8J5wwvUPdBck0kjcg80y6DihwbMA+8D0JTCBh
 xRVj6Pr1ZCZx88JpAFa5APIuaWRWoIHdmg827/aZz5ylTUsdm7gXexm4VEagrN1Mdkkt
 Sfgg==
X-Gm-Message-State: AOJu0YwE2nZUXELJwplK0ay2POFl/DQocsgLBlMS/3mSxjmUv0cSgb6z
 vopDvFpnzc39CA3o8xyhStNVDbOrciZ6PooD0cLpeZEhFNou9h7zgM1forMW0Lxa0laAC0C3F4B
 FPL9YoQejs/Y8nMS2ay3wRqtQLUQjYJSlgmj307bPvxdOBwEW/8wwNok8/ws=
X-Gm-Gg: ASbGncvBjJ0f1aE8L601+e842EiX6Z38mzWRVGHwtoHuby3R82vvF+kdjGL9dO0Mki+
 zHSQNDmSSHskt5Ilwj9Go9l/O3MgCQeCWbDb2kOoNo1kfTaOpCwI5/9wv+swpLj2qkdtxhbjWwL
 +GA5ebQK2HLa/ct0MHrogZlxihDvz6N6xNmIvAlSxlS4qBD4Bxeni1MkiWaxRlBA6uDwmsDbyao
 yJHDrHMWISy9sRuYVHnObKh9YD+DvkOr/IFJFIWYF6FMyTlnriDUiSLkFwXjt2yJwz9qMi3xFwl
 5A==
X-Received: by 2002:a05:6402:13c8:b0:5dc:7374:2638 with SMTP id
 4fb4d7f45d1cf-5de44feaad4mr13205977a12.7.1739190611651; 
 Mon, 10 Feb 2025 04:30:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFO5ncdiSdm8v+brXXyQXpQZNXQSN/C+jjct56sazH/Gh3XI6XpxZEMCO02XyWlJhLHYrfB2A==
X-Received: by 2002:a05:6402:13c8:b0:5dc:7374:2638 with SMTP id
 4fb4d7f45d1cf-5de44feaad4mr13205960a12.7.1739190611263; 
 Mon, 10 Feb 2025 04:30:11 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5de59f893ebsm5137026a12.45.2025.02.10.04.30.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 04:30:10 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BD8AF184FC08; Mon, 10 Feb 2025 13:30:09 +0100 (CET)
To: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <5DFA90A5-9FDB-4B3E-8C80-A33D02632E7E@gmx.de>
References: <CAM0EoM=bFMVMV-f2n4BNSJoqOAxqr+kcJ9kg2NLVvmw2rX-2WA@mail.gmail.com>
 <87bjvarvtd.fsf@toke.dk> <564C0719-2569-4A8A-981D-35F9473F8AF2@gmx.de>
 <875xlirssb.fsf@toke.dk> <5DFA90A5-9FDB-4B3E-8C80-A33D02632E7E@gmx.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 10 Feb 2025 13:30:09 +0100
Message-ID: <8734gmrnhq.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rj-wDpxhrltwl0xMpam3MG7506TM4Rc0oyDBnmcrpP4_1739190612
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [NetDev-People] 0x19: Talk,
 mq-cake: Scaling software rate limiting across CPU cores
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JpdGVzOgoKPiBIaSBUb2tlLAo+
Cj4KPj4gT24gMTAuIEZlYiAyMDI1LCBhdCAxMTozNSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+PiAKPj4gU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxs
ZXIwQGdteC5kZT4gd3JpdGVzOgo+PiAKPj4+IFRoYXQgc291bmRzIG1vc3QgZXhjZWxsZW50Li4u
Cj4+PiAKPj4+IFRoaXMgYWxzbyBtZWFucyB0aGF0IG5vdyB3ZSBuZWVkIGNoZWFwIHJvdXRlciBo
YXJkd2FyZSB3aXRoID4gMiBOSUMKPj4+IHF1ZXVlcyBhbmQgPiAyIENQVXMgOykgKHdpdGggaW5n
cmVzcyBhbmQgZWdyZXNzIHNoYXBpbmcgdGhlIGN1cnJlbnQKPj4+IHN0YXRlIGlzIHRoYXQgMiBD
UFVzIGNhbiBiZSB1dGlsaXNlZCkuCj4+IAo+PiBXZWxsLCBldmVuIGlmIHRoZXJlIGFyZSBvbmx5
IDIgQ1BVcywgdGhlIE1RIHZlcnNpb24gY2FuIHV0aWxpc2UgYm90aCBvZgo+PiB0aG9zZSBpbiBv
bmUgZGlyZWN0aW9uLCB3aGljaCBoZWxwcyBmb3IgYXN5bW1ldHJpY2FsIHRyYWZmaWMgOikKPgo+
IEZhaXIgcG9pbnQsIEkgd2FzIHRoaW5raW5nIGJpIGRpcmVjdGlvbmFsIHNhdHVyYXRpbmcgdHJh
ZmZpYyBvbiBhCj4gc3ltbWV0cmljIGxpbmssIHdoaWNoIEkgZ3Vlc3MgaXMgZmFyIGZyb20gdGhl
IHR5cGljYWwgdXNlIGNhc2UgOykKCkV4YWN0bHkgOikKCj4+IAo+Pj4gSSB3b25kZXIsIGRvZXMg
dGhpcyB3b3JrIGZvciBJRkJzIGFzIHdlbGwgb3Igb25seSBmb3IgcmVhbCBoYXJkd2FyZQo+Pj4g
TklDIHF1ZXVlcz8KPj4gCj4+IFl1cCwgeW91IGNhbiBzcGVjaWZ5IHRoZSBudW1iZXIgb2YgVFgg
cXVldWVzIG9uIGFuIGlmYiBpbnRlcmZhY2Ugd2hlbgo+PiBjcmVhdGluZyBpdCAoaXAgbGluayBh
ZGQgbnVtdHhxdWV1ZXMgMiB0eXBlIGlmYikuCj4KPiBHcmVhdCwgc28gdGhpcyB3aWxsIHRoZW4g
d29yayBldmVuIGlmIHRoZSB0cnVlIE5JQyBoYXJkd2FyZSBpcyBub3QKPiBtdWx0aS1xdWV1ZSBj
YXBhYmxlIG9yIGRvZXMgbnVtdHhxdWV1ZXMgbmVlZCB0byBiZSA8PSB0cnVlIG51bWJlciBvZgo+
IE5JQyBxdWV1ZXM/CgpIbW0sIG5vLCBpZmIgcXVldWVzIGFyZSBpbmRlcGVuZGVudCwgc28geWVh
aCwgSSBndWVzcyBpbmdyZXNzIHNoYXBpbmcKY291bGQgc2NhbGUgcmVnYXJkbGVzcyBvZiB0aGUg
bnVtYmVyIG9mIEhXUXMuLi4KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

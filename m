Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 738DF3201B5
	for <lists+cake@lfdr.de>; Sat, 20 Feb 2021 00:26:17 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 32C653CB38;
	Fri, 19 Feb 2021 18:26:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613777176;
	bh=Hh2DYD1rjZNsFjAtUoeM/VDAd2bDCxfxXi8BW++jKME=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p5D50t8pkd20Sz/s++QwUS+8y2ee1EuTpAtqQ4NhFRQCsOiypzcmRGV3mHPei+N1b
	 eTCn1/CLkwZnpRoJLPMxeJoa4JMb1LteTbRRbRtq2CLcGZHjfYM+RM1KIUXSu9FiHp
	 ZhD8ikKDzTdYRFkImH0ToLqTQDLdVGoMPo4LuqB+ycsUrsCUbk3yLjc9B/tY/469je
	 95V4dO4kygmP8ocjPinD1a6Geer6OWjrC/9VR4YlbVJB+7aFfXl7zu7P/LBDcaSR8p
	 +DRKZGmZocr2qfq4UUNqY3SDv0TLiogduoARqNtiaallhrOKeGe2Xc/1PWpYm0BP/V
	 BkXh/Ys3Y2E9Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7B2FD3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 18:26:14 -0500 (EST)
Received: by mail-il1-x12b.google.com with SMTP id m20so5872920ilj.13
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 15:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=9KstHk62DWTtBZv/fVi/wnfq1zKtAORAgmPTL/Mbtqg=;
 b=WQW7er+4dyvB0tck/aU60rQAXJ1OJ8NXesytrmeBqQldPpPikr2W8X07LwUb9iXJiY
 nsRbxGB5OgkbYs9tEntfgH53hH5qC+h4GJSpTDgyoWVOyOvnS171BA9XKK3GDYjIf65O
 hygDrN75TjHTxSdwgw5vf0/WXeEzK8f2sk1PfJl3UnHy8bUIQG6zJHE11lK9VozZLqt3
 mK4HqDk7Xpf+LfyZg1BDI7ccQjw8YdCho/+JEaJ8t+OuxZpAIhFFrMI7uWhqZO68jTgY
 u9s6pzSXBBYoh+7edumfNOJ+3PrNZWt2ZU0IhKb3hzk30Sqa2/Rt41V2G5xWCNJ09F5d
 Em0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=9KstHk62DWTtBZv/fVi/wnfq1zKtAORAgmPTL/Mbtqg=;
 b=a+WvNy5Leop04sFaHlJH1k1xujphZv7zHtMUPsL0pnNYnzaB1jLrmLtQP8zl7/hI8r
 3e0WJQq9Rj4D6KzByyRDLJpb77u95/7BXewCBz/unt76FjnUZ2XHD8mI9RT6IdcfnJoZ
 b0aPaaOlH+L3FVvP/Hhw+ZqAJRMs9czXRg04+EJwBPnT1wSh12y4ZNPc1fpxH7Dc8xvy
 dROb5HDxoUkoQ8HoC31LCInWKgERiMUHLkmQqCe/CnpxU2t/lCsL2wB5wm4XvHbfhUtj
 eARuH2XHaj4v3rwW+75LyckxPV/r8J2CszrhmFfyj4PRFoTZ9gq5nHpx3Dj8In3/TUVC
 zVpQ==
X-Gm-Message-State: AOAM530+p837BrnX7MeC9Pjnow/7kXNSUbs3YUANTLh4f1145jyWr6K+
 9tsB193djOWh1UlkFK72QuR0eTHo5d0tAA==
X-Google-Smtp-Source: ABdhPJxcn4Bga43YpZwqI/y5Wn5qd8U6vrQG8Iwlky3EctvQHFSr3fYaEp18i4ii9svvSG20MDTGIw==
X-Received: by 2002:a05:6e02:1bca:: with SMTP id
 x10mr5507297ilv.71.1613777173580; 
 Fri, 19 Feb 2021 15:26:13 -0800 (PST)
Received: from [192.168.2.45] ([75.9.254.211])
 by smtp.gmail.com with ESMTPSA id i6sm7377047ilq.51.2021.02.19.15.26.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Feb 2021 15:26:13 -0800 (PST)
From: Jeremy Marks <jmarks2@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 19 Feb 2021 17:26:12 -0600
Message-Id: <67767F38-CDB2-45C0-80A6-AAFF4ED75CBE@gmail.com>
References: <406344b9-49af-54f0-15fd-a17c5f3b604c@sager.me.uk>
In-Reply-To: <406344b9-49af-54f0-15fd-a17c5f3b604c@sager.me.uk>
To: John Sager <john@sager.me.uk>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [Cake] Enforcing video quality question
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

TGVhcm5pbmcgaG93IHRvIGhhdmUgdGhpcyBsZXZlbCBvZiBjb250cm9sIG9uIGluY29taW5nIHRy
YWZmaWMgaXMgcmVhbGx5IGludGVyZXN0aW5nLiBJIHdvdWxkIGJlIHZlcnkgaW50ZXJlc3RlZCBp
biBhIGxvb2tpbmcgYXQgYW4gZXhhbXBsZSBzY3JpcHQsIGlmIGl0IGlzIHBvc3NpYmxlIHRvIGF0
dGFjaCBhIHRleHQgZmlsZSBvciBhIHRpbnkgaW5zdHJ1Y3RpdmUgcG9zdCBvbiB0aGUgQ0FLRSBz
aXRlLiAKCgoKT24gRmViIDE5LCAyMDIxLCBhdCA1OjA2IFBNLCBKb2huIFNhZ2VyIDxqb2huQHNh
Z2VyLm1lLnVrPiB3cm90ZToKCu+7v1lvdSB3aWxsIG5lZWQgdG8gc3BlY2lmeSB0aGUgaG9zdHMg
ZXhwbGljaXRseSwgdW5sZXNzIHlvdSBjYW4gbGl2ZSB3aXRoIHRoZW0gYWxsIHNoYXJpbmcgb25l
IGJhbmR3aWR0aCBjbGFzcy4gSW4gdGhhdCBjYXNlIGlmIHlvdSBoYXZlIG1vcmUgdGhhbiBvbmUg
dXNpbmcgYmFuZHdpZHRoIHRoZXkgd291bGQgc2hhcmUgdGhlIGJhbmR3aWR0aCBpbiB0aGF0IGNs
YXNzIGVxdWFsbHkuIEkgYXNzdW1lIGZyb20geW91ciBvcmlnaW5hbCBwb3N0IHRoYXQgeW91IHdh
bnQgZWFjaCBob3N0IHRvIGJlIGxpbWl0ZWQgaW4gYmFuZHdpZHRoIHRvIGEgc3BlY2lmaWMgdmFs
dWUsIGJ1dCB0byBkbyB0aGF0IHlvdSBuZWVkIGEgY2xhc3MgZm9yIGVhY2ggaG9zdCBpbiB0aGUg
aW5ncmVzcyBIVEIuIFdoYXQgeW91IHByb2JhYmx5IG5lZWQgaXMgYSBzY2hlZHVsZXIgdGhhdCBo
YXMgYSBsaW1pdCBwZXIgZmxvdyB1cCB0byBhbiBvdmVyYWxsIGNlaWxpbmcgYmV5b25kIHdoaWNo
IGl0IHNoYXJlcyBlcXVhbGx5LiBJJ20gbm90IGF3YXJlIHRoYXQgYW55IG9mIHRoZSBzY2hlZHVs
ZXJzIGRvIGFueXRoaW5nIGxpa2UgdGhhdC4KCkpvaG4KCk9uIDE5LzAyLzIwMjEgMjA6MzMsIFBl
dGVyIExlcGVza2Egd3JvdGU6Cj4gIkknbGwgcHV0IHRvZ2V0aGVyIGEgdG95IGlwdGFibGVzIHJ1
bGVzIGZpbGUgYW5kIGEgdG95IHNjcmlwdCB3aXRoIHRoZQo+IG5lY2Vzc2FyeSB0YyBjb21tYW5k
cy4gIgo+IFdvdyAtLSB0aGF0IHdvdWxkIGJlIHJlYWxseSBhcHByZWNpYXRlZC4gUXVlc3Rpb246
IHdpbGwgeW91IG5lZWQgdG8gZXhwbGljaXRseSBjYWxsIG91dCB0aGUgaW5zaWRlIElQIGFkZHJl
c3Mgb2YgdGhlIGhvc3QgYmVpbmcgc2hhcGVkPyBPciwgY2FuIGl0IGJlIHNldCB0byBzaGFwZSBl
YWNoIGluc2lkZSBob3N0Pwo+IEknbSBub3Qgc3VyZSB5b3UgY2FuIHBvc3QgdG8gbWFpbGluZyBs
aXN0IGJ1dCBtYXliZSBnaXZlIGl0IGEgc2hvdCAoc2luY2UgdGhlcmUgbWF5IGJlIGdlbmVyYWwg
aW50ZXJlc3QpIGFuZCBpZiBpdCBmYWlscyBlbWFpbCBtZSBkaXJlY3RseT8KPiBUaGFua3MhISEK
PiBQZXRlcgo+IE9uIEZyaSwgRmViIDE5LCAyMDIxIGF0IDI6MDQgUE0gSm9obiBTYWdlciA8am9o
bkBzYWdlci5tZS51ayA8bWFpbHRvOmpvaG5Ac2FnZXIubWUudWs+PiB3cm90ZToKPiAgICBZZXMu
IFRoZSBtYXJrcyBhcmUgc2V0IG9uIGVncmVzcyBzbyB5b3UgY2FuIHNlbGVjdCBvbiBpbnNpZGUg
SVAgYWRkcmVzcywKPiAgICBwb3J0LCBwcm90b2NvbCAtIGluIGZhY3QgbWFueSBjaGFyYWN0ZXJp
c3RpY3MgdGhhdCBpcHRhYmxlcyBydWxlcyBjYW4gdGVzdAo+ICAgIGZvci4gSSdsbCBwdXQgdG9n
ZXRoZXIgYSB0b3kgaXB0YWJsZXMgcnVsZXMgZmlsZSBhbmQgYSB0b3kgc2NyaXB0IHdpdGggdGhl
Cj4gICAgbmVjZXNzYXJ5IHRjIGNvbW1hbmRzLiBJdCdsbCB0YWtlIG1lIGEgZmV3IGRheXMgdGhv
dWdoIGFzIEknbSBidXN5IHdpdGgKPiAgICBvdGhlciBzdHVmZiBjdXJyZW50bHkuCj4gICAgUFMg
ZG9lcyB0aGUgY2FrZSBsaXN0IGFsbG93IGF0dGFjaG1lbnRzPyBJdCB3aWxsIGJlIGEgc21hbGwg
emlwIGZpbGUuCj4gICAgSm9obgo+ICAgIE9uIDE5LzAyLzIwMjEgMTU6MDIsIFBldGVyIExlcGVz
a2Egd3JvdGU6Cj4gICAgID4gSGkgSm9obgo+ICAgICA+Cj4gICAgID4gRG9lcyB0aGlzIHJlc3Vs
dCBpbiB0aGUgYWJpbGl0eSB0byBzZXQgcGVyIGludGVybmFsIGhvc3QgbWF4IGluZ3Jlc3MKPiAg
ICAgPiBiYW5kd2lkdGg/IElmIHNvLCBhbnkgY2hhbmNlIHlvdSBjYW4gc2hhcmUgYSBzbmlwcGV0
IG9mIGEgc2NyaXB0PyBJCj4gICAgd2lsbCBiZQo+ICAgICA+IHRyeWluZyB0byByZXByb2R1Y2Ug
eW91ciBzZXR1cC4KPiAgICAgPgo+ICAgICA+IFRoYW5rIHlvdSEKPiAgICAgPgo+ICAgICA+IFBl
dGVyCj4gICAgID4KPiAgICAgPiBPbiBGcmksIEZlYiAxOSwgMjAyMSBhdCA3OjE2IEFNIEpvaG4g
U2FnZXIgPGpvaG5Ac2FnZXIubWUudWsKPiAgICA8bWFpbHRvOmpvaG5Ac2FnZXIubWUudWs+Cj4g
ICAgID4gPG1haWx0bzpqb2huQHNhZ2VyLm1lLnVrIDxtYWlsdG86am9obkBzYWdlci5tZS51az4+
PiB3cm90ZToKPiAgICAgPgo+ICAgICA+ICAgICBUaGF0J3MgYmFzaWNhbGx5IHdoYXQgSSBkby4g
SSBzZXQgbWFya3Mgb24gb3V0Z29pbmcgdHJhZmZpYyBpbgo+ICAgIHRoZSBtYW5nbGUKPiAgICAg
PiAgICAgdGFibGUgd2hpY2ggYXJlIGNvcGllZCB0byBjb25ubWFyayBiZWZvcmUgZWdyZXNzLiBU
aGVuIG9uIGluZ3Jlc3MgdGhlCj4gICAgID4gICAgIGNvbm5tYXJrIGlzIHJlc3RvcmVkIHRvIHRo
ZSBwYWNrZXQgYW5kIHB1bnRlZCB0byBpZmIwIHVzaW5nICdhY3Rpb24KPiAgICAgPiAgICAgY29u
bm1hcmsKPiAgICAgPiAgICAgYWN0aW9uIG1pcnJlZCBlZ3Jlc3MgcmVkaXJlY3QgZGV2ICRJRkIn
IGFzIGFuIGluZ3Jlc3MgZmlsdGVyIG9uIHRoZQo+ICAgICA+ICAgICBpbmNvbWluZwo+ICAgICA+
ICAgICBpbnRlcmZhY2UgKHBwcDAgaW4gbXkgY2FzZSkuIFRoZW4gSSBoYXZlIEhUQiBjbGFzc2Vz
IG9uIGlmYjAKPiAgICB3aGljaCBzZXQgcmF0ZQo+ICAgICA+ICAgICBsaW1pdHMgZm9yIGRpZmZl
cmVudCB0cmFmZmljIGNsYXNzZXMgaW5kaWNhdGVkIGJ5IHRoZSBtYXJrcy4gSQo+ICAgIGhhdmUg
b25seSA2Cj4gICAgID4gICAgIHRyYWZmaWMgY2xhc3NlcyAoSSBidW5kbGUgYWxsIHZpZGVvIGlu
dG8gb25lIGNsYXNzKSwgYnV0IGFzIG1hcmtzCj4gICAgYXJlIDMyCj4gICAgID4gICAgIGJpdHMg
d2lkZSB0aGVyZSBpcyBsb3RzIG9mIHNjb3BlIGZvciBjbGFzc2VzIGZvciBpbmRpdmlkdWFsIElQ
Cj4gICAgYWRkcmVzc2VzLgo+ICAgICA+Cj4gICAgID4gICAgIEpvaG4KPiAgICAgPgo+ICAgICA+
ICAgICBPbiAxOC8wMi8yMDIxIDE5OjI4LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gdmlhIENh
a2Ugd3JvdGU6Cj4gICAgID4gICAgICA+IFBldGVyIExlcGVza2EgPGJpenpieXN0ZXJAZ21haWwu
Y29tCj4gICAgPG1haWx0bzpiaXp6YnlzdGVyQGdtYWlsLmNvbT4gPG1haWx0bzpiaXp6YnlzdGVy
QGdtYWlsLmNvbQo+ICAgIDxtYWlsdG86Yml6emJ5c3RlckBnbWFpbC5jb20+Pj4KPiAgICAgPiAg
ICAgd3JpdGVzOgo+ICAgICA+ICAgICAgPgo+ICAgICA+ICAgICAgPj4gQSB1c2VyIG9uIHRoZSBP
cGVuV3J0IGZvcnVtIHN1Z2dlc3RlZCBoYXNobGltaXQgcnVsZXMKPiAgICBzdXBwb3J0ZWQgYnkK
PiAgICAgPiAgICAgID4+IGlwdGFibGVzLiBIb3cgZG9lcyB0aGF0IGlkZWEgc291bmQgdG8geW91
Pwo+ICAgICA+ICAgICAgPgo+ICAgICA+ICAgICAgPiBUaGF0IHdpbGwgcmVzdWx0IGluIGEgY2xp
ZmYtZWRnZSBwb2xpY2VyIChpLmUuLCBhcyBzb29uIGFzIGEKPiAgICBkZXZpY2UgZ29lcwo+ICAg
ICA+ICAgICAgPiBvdmVyIGl0cyBsaW1pdHMgaXQgd2lsbCBzZWUgZXZlcnkgcGFja2V0IGdldCBk
cm9wcGVkKS4gVGhpcwo+ICAgIGRvZXNuJ3QKPiAgICAgPiAgICAgID4gaW50ZXJhY3QgdG9vIHdl
bGwgd2l0aCB0aGUgYnVyc3RpbmVzcyBvZiBUQ1AsIHNvIHlvdSdsbCBsaWtlbHkgZ2V0Cj4gICAg
ID4gICAgICA+IGVycmF0aWMgYmVoYXZpb3VyIG9mIHRoZSB0cmFmZmljIGlmIHlvdSBkbyB0aGF0
LiBEb2luZyB0aGUKPiAgICBzYW1lIHRoaW5nCj4gICAgID4gICAgICA+IHdpdGggSFRCIG1lYW5z
IHRoZSByb3V0ZXIgd2lsbCBxdWV1ZStzaGFwZSBlYWNoIGNsYXNzIChhbmQKPiAgICB3aXRoIEZR
LUNvRGVsCj4gICAgID4gICAgICA+IG9uIHRoZSBsZWF2ZXMsIHlvdSdsbCBnZXQgYSBuaWNlIEFR
TSBiZWhhdmlvdXIgYXMgd2VsbCksIHNvCj4gICAgdGhhdCB3aWxsIGJlCj4gICAgID4gICAgICA+
IHNtb290aGVyIGFuZCBsZXNzIHByb25lIHRvIGJsb2F0IDopCj4gICAgID4gICAgICA+Cj4gICAg
ID4gICAgICA+IC1Ub2tlCj4gICAgID4gICAgICA+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gICAgID4gICAgICA+IENha2UgbWFpbGluZyBsaXN0Cj4g
ICAgID4gICAgICA+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0IDxtYWlsdG86Q2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQ+Cj4gICAgPG1haWx0bzpDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dCA8bWFpbHRvOkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pj4KPiAgICAgPiAgICAgID4gaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+ICAgICA+ICAgICAgPgo+
ICAgICA+ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ICAgICA+ICAgICBDYWtlIG1haWxpbmcgbGlzdAo+ICAgICA+IENha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0IDxtYWlsdG86Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4gICAgPG1haWx0
bzpDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCA8bWFpbHRvOkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Pj4KPiAgICAgPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCj4gICAgID4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==

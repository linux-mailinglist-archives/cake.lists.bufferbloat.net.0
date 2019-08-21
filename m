Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FFF986E3
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 23:53:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EBDBC3CB38;
	Wed, 21 Aug 2019 17:53:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566424429;
	bh=gcJpcYjXykvD22ya7JlMxJFUlopVtri+3BkiPeGTAOg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BqiTKFleydElryjr4+BLdpemldeF60sIrJy36PSoGLnHCLRLzeRV8HGiNkEYLADwi
	 sT/NALM/JNI5heQz8sgpO7Dx3deGVjoFg6Z1NSGw1WdXG/w0dEt+s5l/YwvsC4Z1QP
	 rvIMb/fxS/YNsDczEoqHzAOldcAqvHqCNps9SXmMlJMaspOg9i9a0K206iABlHqTM7
	 xwf0Uep57dGIGIK7jq305TFDXaUf4rDNKVYNTUyYa1mKRWMXposZrQnt9bxDM6Naj0
	 xdwFeFBE6PQDHL3lC4nNuPO2+MuyHNPnHiJiTMofT0ADE2/mlW3DWp51cVrJBVMoOB
	 XIkQOTnCQooqQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 518A53CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 17:53:48 -0400 (EDT)
Received: by mail-io1-xd2c.google.com with SMTP id t3so7679398ioj.12
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 14:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P6fpJYgHGoZO9zBAt9ixs+4Zp9FT+wVWFcTLAL+GK/w=;
 b=VMKqFDDwaaUpajW5xeZKDHnI2kBOwjVHg6uChFbifoPh78U6l0IBisT7c1Qtz7lNxv
 1hT9+E49/sAqnL4wsKS0IDleIP7j27LC2IUm2G4VMjC/IboWdQvkSA28DDD9H08NO9uZ
 ybcnnF6jd7gJpONqcO6KOrPu1tLkZRNm3lGyRaKaX7bTF3I7l7nhd56jKbXzya6aUwCI
 5R2erPN3AnPBeRJL62Ix4ZiZN/tBbrtnRTixIpD9+1U/ic8j4QvQ2hM0lNeSQ3qp/JZe
 hR5DrP5Np/HS1YhFgfPYheNa3rHv6UmfzL6cOLZsaEuli0uvoTlXY0JL3Er7+4i9cqLZ
 RwsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P6fpJYgHGoZO9zBAt9ixs+4Zp9FT+wVWFcTLAL+GK/w=;
 b=PEPib8c1CmldOvVWXKNpiIRKfnAR4oEKjy+DuLrirt+OIzpPaDR7Nq+TN/tvP9G3HO
 4arTRqh0GkaOsrsGxJaOVZzcEpM6Coj99ZM+/3uVDEBmD/bPEqfuZXlAXUgFfKcczXmB
 wxI8qCuh5suk8lT43hsDFi9f2qE0BTXKDQNF4UmRAcB+Uyz2B92ifqqEdEC2GHSNxPKb
 rKxgM5gNpOf5Z18G+cCH6Rw5SHRXX9pmdNRFurBNFMG73G108OljPUgQTCTELMu8HpSR
 JOCLqtSIUPN8IFDVmxE0HGIV9ksK2wxGOEbIVpOd4kiRnWBR1+5L2FgzSPpzrO/fmAvp
 5bdg==
X-Gm-Message-State: APjAAAU+8shsxbSb8rn0oOJ5lVv/fSuMWxDar6/AMY75rdoisFu6tYbf
 rZ8kPTjXRDXCGICcy0OiYwd0lh+KUACMGjeIH4o=
X-Google-Smtp-Source: APXvYqyMn/NiqWtSOpguTXo16GUOlFW3HclD1HFrv/Iy1qTVp9+lZ5ndw4eRuE9hcUrbTn2WW4l0umC7mEP4j1NhF2c=
X-Received: by 2002:a02:cc6c:: with SMTP id j12mr12175429jaq.29.1566424427520; 
 Wed, 21 Aug 2019 14:53:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
 <87sgpvflo4.fsf@taht.net> <87wof6rf7t.fsf@toke.dk>
 <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87v9uqea3x.fsf@taht.net> <87tvaap57q.fsf@toke.dk>
In-Reply-To: <87tvaap57q.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 21 Aug 2019 14:53:36 -0700
Message-ID: <CAA93jw6f0kedxwoN-ER3W1QKeg0sMxVCy6YYk_gRbrVwhD42jQ@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] pie in dd-wrt
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

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMjo0MCBQTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBEYXZlIFRhaHQgPGRhdmVAdGFodC5uZXQ+IHdy
aXRlczoKPgo+ID4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1u
ZXQuZGU+IHdyaXRlczoKPiA+Cj4gPj4gQW0gMjEuMDguMjAxOSB1bSAxODoyMSBzY2hyaWViIFNl
YmFzdGlhbiBNb2VsbGVyOgo+ID4+Pgo+ID4+PiBPbiBBdWd1c3QgMjEsIDIwMTkgNjoxMjowMyBQ
TSBHTVQrMDI6MDAsIFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEt
bmV0LmRlPiB3cm90ZToKPiA+Pj4+IHRoYXRzIHJhdGhlciBvbGQuIGkgcmV3cm90ZSBhbGwgdGhl
IHFvcyBjb2RlIGluIHRoZSBsYXN0IDQgb3IgNSBkYXlzLgo+ID4+Pj4gc28KPiA+Pj4+IHRoaW5n
cyBtaWdodCBiZSBjaGFuZ2VkLiBuZXh0IHBoYXNlIGlzIGJyaW5naW5nIGFsbCB0aGUgbGluayBs
ZXZlbAo+ID4+Pj4gZGV0YWlsIGNvbmZpZ3VyYXRpb24gc3R1ZmYgaW50byB0aGUgZ3VpIHdoaWNo
IHdpbGwgYmUgZG9uZQo+ID4+Pj4gdG9tb3Jyb3cgb3IgYXQgbGVhc3Qgc3RpbGwgd2l0aGluIHRo
aXMgd2Vlay4KPiA+Pj4+IGkgYWxzbyBhZGRlZCBub3cgY2FrZSB0byBzb21lIHNtYWxsZXIgbG93
IGJ1ZGdlZCByb3V0ZXJzIHdpdGggbGltaXRlZAo+ID4+Pj4gcmVzb3VyY2VzLCBzbyBzZWUgaG93
IGl0IHJ1bnMuIGkgaGFkIGJhZCBleHBlcmllbmNlcyB3aXRoIGZxX2NvZGVsIGluCj4gPj4+PiB0
aGUgcGFzdCBkdWUgc29tZSBoaWdoIG1lbW9yeSB1c2FnZS4KPiA+Pj4+IGVzcGVjaWFsbHkgc2lu
Y2UgaXRzIGhhcmQgY29kZWQgc29tZXdoYXQgaW50byB0aGUgd2lyZWxlc3MgYXRoOWsKPiA+Pj4+
IGRyaXZlci4KPiA+Pj4+IHNvIGkgYWxyZWFkeSBtb2RkZWQgaXQgZm9yIG1vcmUgZWZmaWNpZW50
IGhhbmRsaW5nLiA0IG1iIG1heCBwZXIgcXVldWUKPiA+Pj4+IGlzIHNpbXBseSB0b28gbXVjaCBm
b3IgIGEgMzIgbWIgcmFtIGJhc2VkIHJvdXRlci4KPiA+Pj4gVGhpcyBpcyB3aHkgSSdtIHNxbSB3
ZSByZWR1Y2VkIHRoZSBxdWV1ZWQgcGFja2V0IG1heGltdW0gbSB0byBhcm91bmQgMTAwMCwgYW5k
IGFsc28gd2h5IGNha2UgaGFzIGFuIGV4cGxpY2l0IG1lbWxpbWl0IGtleXdvcmQuCj4gPj4geWVh
aCBidXQgZG9lcyB0aGlzIGhlbHAgaWYgZnFfY29kZWwgaXMgaGFyZGNvZGVkIGludG8gbWFjODAy
MTE/Cj4gPj4gZnFfY29kZWwgaGFzIGEgbWVtbGltaXQgIGtleXdvcmQgdG9vIGJ0dy4gaXRzIGZp
eGVkIHRvIDRNQi4gaSByZWR1Y2VkCj4gPj4gaXQgdG8gMjU2a2Igb24gbG93IG1lbW9yeSBhcmNo
aXRlY3R1cmVzLiBubyBvdGhlciB3YXkgdG8gZ2V0IGFyb3VuZAo+ID4+IE9PTSBwcm9ibGVtcwo+
ID4+IG1hYzgwMjExICBkb2VzIGFsd2F5cyBtYWtlIHVzZSBvZiBmcV9jb2RlbC4gaXQgaGFzIGEg
b3duIGJ1aWxkIGluCj4gPj4gaW1wbGVtZW50YXRpb24KPiA+Cj4gPiBDZXJ0YWlubHkgbWVtb3J5
IGxpbWl0cyBhcmUgYSBodWdlIHByb2JsZW0gdGhyb3VnaG91dCBjb21wbGV4IHFkaXNjcywKPiA+
IGVzcGVjaWFsbHkgd2hlbiBzdGFja2VkIHVwIChlZyBoZnNjIDEgLT4gcWRpc2N4IGhmc2MgMiAt
PiBxZGlzYyB4KSwKPiA+IGFuZAo+ID4KPiA+IE9PTXMgc3Vjay4gUGFydGljdWxhcmx5IGFzIGZl
dyB0ZXN0IHBhY2tldCBmbG9vZGluZyB0aGVpciBkZXZpY2VzCj4gPiBhZnRlciBzZXR0aW5nIHVw
IGEgY29tcGxleCBxZGlzYyBzeXN0ZW0uCj4gPgo+ID4gQnl0ZXMgPSB0aW1lLiBJdCBkb2Vzbid0
IG1hdHRlciBob3cgbWFueSBxdWV1ZXMgeW91IGhhdmUuIFRoaXMKPiA+IHRvIG1lIGhhcyBhbHdh
eXMgYmVlbiBvbmUgb2YgdGhlIGJpZ2dlc3QgZmxhd3Mgb2YgdGhlIHRjIHN1YnN5c3RlbQo+ID4g
aW4gZ2VuZXJhbCBpcyB0aGF0IHRoZSB0b3RhbCBhbW91bnQgb2YgbWVtb3J5IGluIHVzZSBvbgo+
ID4gYSBnaXZlbiBwaHlzaWNhbCBpbnRlcmZhY2Ugc2hvdWxkIGJlIG1hbmFnZWQgYnkgdGhlIHRv
cG1vc3QgbGF5ZXIuCj4gPgo+ID4gU2FtZSBwcm9ibGVtIGZvciB3aWZpIGluIG11bHRpcGxlIFNT
SURzLi4uIGl0J3Mgc3RpbGwganVzdCBvbmUgZGV2aWNlLgo+ID4KPiA+IEhvd2V2ZXIgd2UgZG8g
bmVlZCBlbm91Z2ggYnl0ZXMgdG8ga2VlcCB0aGUgZGV2aWNlIGJ1c3kgYW5kIHRoZXJlCj4gPiBh
cmUgb3RoZXIgcHJvYmxlbXMgd2l0aCBwZXIgcGFja2V0IGxpbWl0cyBsZWFkaW5nIG1lIHRvIHBy
ZWZlcgo+ID4gdXNpbmcganVzdCBtZW1vcnkgbGltaXRzLiBPbmUgaXMsIHRoYXQgeW91ciB0eXBp
Y2FsIGFjayBwYWNrZXQKPiA+IGNvbWluZyBvZmYgdGhlIHJ4IHJpbmcgaXMgYWN0dWFsbHkgMmsg
aW4gc2l6ZSwgbm90IDY0IGJ5dGVzLgo+ID4gSSBoYWQgYXQgb25lIHBvaW50IChpbiBvcGVud3J0
KSBzb21ldGhpbmcgdGhhdCB0b29rIHNtYWxsIHBhY2tldHMKPiA+IGFuZCBjb3BpZWQgdGhlbSB0
byBhIHNtYWxsZXIgYWxsb2NhdGlvbiB3aGljaCB0b29rIHByZXNzdXJlIG9mZiB0aGUKPiA+IG1l
bW9yeSBhbGxvY2F0b3IuCj4gPgo+ID4gSSd2ZSBraW5kIG9mIGxvc3QgdHJhY2ssIGRpZCB0aGUg
YXRoOWsgd2lmaSBzdHVmZiB1c2UgMSBhbGxvY2F0aW9uIGZvcgo+ID4gYWxsIDQgaHcgcXVldWVz
PyBJJ20gYWZyYWlkIHRvIGxvb2sgdGhpcyBtb3JuaW5nLi4uIChhbmQgSSdtIG5vdCBiaWcKPiA+
IG9uIHRoZSA0IGh3IHF1ZXVlcyBlaXRoZXIpCj4KPiBUaGUgbWVtb3J5IGxpbWl0IGluIG1hYzgw
MjExIGlzIGdsb2JhbCBwZXIgcGh5LgoKeWVhISB3aW4hIFNvIG11Y2ggYmV0dGVyIHRoYW4gZm91
ciBpbnN0YW5jZXMgcGVyIHNzaWQuCgo+IC1Ub2tlCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQoKCgotLSAKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVr
bGlicmUuY29tClRlbDogMS04MzEtMjA1LTk3NDAKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

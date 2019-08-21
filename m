Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id AD00C986B3
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 23:40:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E9FE33CB38;
	Wed, 21 Aug 2019 17:40:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566423646;
	bh=5nTnlKO527k9TL5YaXtCyE8D/JnhYXfC3oF1aL9t5K8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mMwhujb+7cmH/WuxB32xDEuxuk5Z1r2qXWjsCCpYbEeHcUN8mZTs20EJ5aO2PTHf4
	 oMi+veRUzAD2h53hoU26l3swjhx0dAc9A49BttHtairQwhE2WKxuJJqAkacYJclAdi
	 9gvXp6NqvB7qcuVi1Z2f47f+APzc1uyiIhgwOvG6tYYPyl8xOJ5fPJHuNdn6jw8vNz
	 BO/E9BIAv4UVWjNIiyb9aX5MZpcDX46ghdkDqTH68QMfE4MfmORe6jRwvCP9sdm3QZ
	 hTGb6pACzQtshN9/b+CLYFVzq1n0baICGOcm4rTDr2gk8Ox/A9Pk3UMchkT4PZqzz5
	 GQdvSuKFylJ5A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E8AEB3CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 17:40:44 -0400 (EDT)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3703781F2F
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 21:40:44 +0000 (UTC)
Received: by mail-ed1-f70.google.com with SMTP id f3so2136386edx.10
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 14:40:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=IoMEX0eHjixXXzBCGFUhAJtw3vuJZ7k5y+k95Knjiug=;
 b=WpevvljeVYvrAod5pLGMhDKqaJQYS8rsVbn8e9JKhlA7EmMSrG7Zh0DoD8bSLWUcZk
 sCa4RnEq7CzJjw20nbwkn/JZScOAJ6oH4/2zmz+DTEK45oupsF+D0y5UT/RSlbHE/iFL
 VGXCF0tyHqeN6ygYYULm1KW8G1dB2g7a4GrZ2U2SPfrMzS+I3yoOM0ZJob2e3F1V3KNt
 a4Ku75UJeSYn7cPKmZpAAB0F9HZ2KWQcF/UBRv9AhXGCvUqQQ1hixL+SBBsCsx5jIzLd
 eBlB+RxZ6OnMzKboPL/O/Mud2GhxEsezGiWCkDkSC/82fVe6EEsg6DO3dR1porJVNldo
 tv2w==
X-Gm-Message-State: APjAAAXxBT1BmYFpzOMwuEVV2buPmY+Y82unyEcsf2zwf8bUq+TYb5Fi
 qFcs4tUuH1wEhYqEvMe8HU0zDx9Uhonbt6hypwq1J+nntwnO19kpD6mViKG2KGCoTqm8VlMDeDC
 +YBTNOTbXoAd+LSCQ+9iCYg==
X-Received: by 2002:a17:906:314c:: with SMTP id
 e12mr21630061eje.285.1566423642736; 
 Wed, 21 Aug 2019 14:40:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxe+Vi+Xqg4m2ugRVLFXiBwhWdccK1Yu2zRyHKxNYTKpujOkwA+Khp8K9NkspQriGyw8D1WCQ==
X-Received: by 2002:a17:906:314c:: with SMTP id
 e12mr21630049eje.285.1566423642525; 
 Wed, 21 Aug 2019 14:40:42 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id o11sm3329204ejd.68.2019.08.21.14.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 14:40:41 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 83B31181CEF; Wed, 21 Aug 2019 23:40:41 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dave Taht <dave@taht.net>,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>
In-Reply-To: <87v9uqea3x.fsf@taht.net>
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
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk> <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87v9uqea3x.fsf@taht.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 21 Aug 2019 23:40:41 +0200
Message-ID: <87tvaap57q.fsf@toke.dk>
MIME-Version: 1.0
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlQHRhaHQubmV0PiB3cml0ZXM6Cgo+IFNlYmFzdGlhbiBHb3R0c2NoYWxs
IDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cml0ZXM6Cj4KPj4gQW0gMjEuMDguMjAx
OSB1bSAxODoyMSBzY2hyaWViIFNlYmFzdGlhbiBNb2VsbGVyOgo+Pj4KPj4+IE9uIEF1Z3VzdCAy
MSwgMjAxOSA2OjEyOjAzIFBNIEdNVCswMjowMCwgU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290
dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+Pj4+IHRoYXRzIHJhdGhlciBvbGQuIGkg
cmV3cm90ZSBhbGwgdGhlIHFvcyBjb2RlIGluIHRoZSBsYXN0IDQgb3IgNSBkYXlzLgo+Pj4+IHNv
Cj4+Pj4gdGhpbmdzIG1pZ2h0IGJlIGNoYW5nZWQuIG5leHQgcGhhc2UgaXMgYnJpbmdpbmcgYWxs
IHRoZSBsaW5rIGxldmVsCj4+Pj4gZGV0YWlsIGNvbmZpZ3VyYXRpb24gc3R1ZmYgaW50byB0aGUg
Z3VpIHdoaWNoIHdpbGwgYmUgZG9uZQo+Pj4+IHRvbW9ycm93IG9yIGF0IGxlYXN0IHN0aWxsIHdp
dGhpbiB0aGlzIHdlZWsuCj4+Pj4gaSBhbHNvIGFkZGVkIG5vdyBjYWtlIHRvIHNvbWUgc21hbGxl
ciBsb3cgYnVkZ2VkIHJvdXRlcnMgd2l0aCBsaW1pdGVkCj4+Pj4gcmVzb3VyY2VzLCBzbyBzZWUg
aG93IGl0IHJ1bnMuIGkgaGFkIGJhZCBleHBlcmllbmNlcyB3aXRoIGZxX2NvZGVsIGluCj4+Pj4g
dGhlIHBhc3QgZHVlIHNvbWUgaGlnaCBtZW1vcnkgdXNhZ2UuCj4+Pj4gZXNwZWNpYWxseSBzaW5j
ZSBpdHMgaGFyZCBjb2RlZCBzb21ld2hhdCBpbnRvIHRoZSB3aXJlbGVzcyBhdGg5awo+Pj4+IGRy
aXZlci4KPj4+PiBzbyBpIGFscmVhZHkgbW9kZGVkIGl0IGZvciBtb3JlIGVmZmljaWVudCBoYW5k
bGluZy4gNCBtYiBtYXggcGVyIHF1ZXVlCj4+Pj4gaXMgc2ltcGx5IHRvbyBtdWNoIGZvcsKgIGEg
MzIgbWIgcmFtIGJhc2VkIHJvdXRlci4KPj4+IFRoaXMgaXMgd2h5IEknbSBzcW0gd2UgcmVkdWNl
ZCB0aGUgcXVldWVkIHBhY2tldCBtYXhpbXVtIG0gdG8gYXJvdW5kIDEwMDAsIGFuZCBhbHNvIHdo
eSBjYWtlIGhhcyBhbiBleHBsaWNpdCBtZW1saW1pdCBrZXl3b3JkLgo+PiB5ZWFoIGJ1dCBkb2Vz
IHRoaXMgaGVscCBpZiBmcV9jb2RlbCBpcyBoYXJkY29kZWQgaW50byBtYWM4MDIxMT8KPj4gZnFf
Y29kZWwgaGFzIGEgbWVtbGltaXTCoCBrZXl3b3JkIHRvbyBidHcuIGl0cyBmaXhlZCB0byA0TUIu
IGkgcmVkdWNlZAo+PiBpdCB0byAyNTZrYiBvbiBsb3cgbWVtb3J5IGFyY2hpdGVjdHVyZXMuIG5v
IG90aGVyIHdheSB0byBnZXQgYXJvdW5kCj4+IE9PTSBwcm9ibGVtcwo+PiBtYWM4MDIxMcKgIGRv
ZXMgYWx3YXlzIG1ha2UgdXNlIG9mIGZxX2NvZGVsLiBpdCBoYXMgYSBvd24gYnVpbGQgaW4KPj4g
aW1wbGVtZW50YXRpb24KPgo+IENlcnRhaW5seSBtZW1vcnkgbGltaXRzIGFyZSBhIGh1Z2UgcHJv
YmxlbSB0aHJvdWdob3V0IGNvbXBsZXggcWRpc2NzLAo+IGVzcGVjaWFsbHkgd2hlbiBzdGFja2Vk
IHVwIChlZyBoZnNjIDEgLT4gcWRpc2N4IGhmc2MgMiAtPiBxZGlzYyB4KSwKPiBhbmQgCj4KPiBP
T01zIHN1Y2suIFBhcnRpY3VsYXJseSBhcyBmZXcgdGVzdCBwYWNrZXQgZmxvb2RpbmcgdGhlaXIg
ZGV2aWNlcwo+IGFmdGVyIHNldHRpbmcgdXAgYSBjb21wbGV4IHFkaXNjIHN5c3RlbS4gCj4KPiBC
eXRlcyA9IHRpbWUuIEl0IGRvZXNuJ3QgbWF0dGVyIGhvdyBtYW55IHF1ZXVlcyB5b3UgaGF2ZS4g
VGhpcwo+IHRvIG1lIGhhcyBhbHdheXMgYmVlbiBvbmUgb2YgdGhlIGJpZ2dlc3QgZmxhd3Mgb2Yg
dGhlIHRjIHN1YnN5c3RlbQo+IGluIGdlbmVyYWwgaXMgdGhhdCB0aGUgdG90YWwgYW1vdW50IG9m
IG1lbW9yeSBpbiB1c2Ugb24KPiBhIGdpdmVuIHBoeXNpY2FsIGludGVyZmFjZSBzaG91bGQgYmUg
bWFuYWdlZCBieSB0aGUgdG9wbW9zdCBsYXllci4KPgo+IFNhbWUgcHJvYmxlbSBmb3Igd2lmaSBp
biBtdWx0aXBsZSBTU0lEcy4uLiBpdCdzIHN0aWxsIGp1c3Qgb25lIGRldmljZS4KPgo+IEhvd2V2
ZXIgd2UgZG8gbmVlZCBlbm91Z2ggYnl0ZXMgdG8ga2VlcCB0aGUgZGV2aWNlIGJ1c3kgYW5kIHRo
ZXJlCj4gYXJlIG90aGVyIHByb2JsZW1zIHdpdGggcGVyIHBhY2tldCBsaW1pdHMgbGVhZGluZyBt
ZSB0byBwcmVmZXIKPiB1c2luZyBqdXN0IG1lbW9yeSBsaW1pdHMuIE9uZSBpcywgdGhhdCB5b3Vy
IHR5cGljYWwgYWNrIHBhY2tldAo+IGNvbWluZyBvZmYgdGhlIHJ4IHJpbmcgaXMgYWN0dWFsbHkg
MmsgaW4gc2l6ZSwgbm90IDY0IGJ5dGVzLgo+IEkgaGFkIGF0IG9uZSBwb2ludCAoaW4gb3Blbndy
dCkgc29tZXRoaW5nIHRoYXQgdG9vayBzbWFsbCBwYWNrZXRzCj4gYW5kIGNvcGllZCB0aGVtIHRv
IGEgc21hbGxlciBhbGxvY2F0aW9uIHdoaWNoIHRvb2sgcHJlc3N1cmUgb2ZmIHRoZQo+IG1lbW9y
eSBhbGxvY2F0b3IuCj4KPiBJJ3ZlIGtpbmQgb2YgbG9zdCB0cmFjaywgZGlkIHRoZSBhdGg5ayB3
aWZpIHN0dWZmIHVzZSAxIGFsbG9jYXRpb24gZm9yCj4gYWxsIDQgaHcgcXVldWVzPyBJJ20gYWZy
YWlkIHRvIGxvb2sgdGhpcyBtb3JuaW5nLi4uIChhbmQgSSdtIG5vdCBiaWcKPiBvbiB0aGUgNCBo
dyBxdWV1ZXMgZWl0aGVyKQoKVGhlIG1lbW9yeSBsaW1pdCBpbiBtYWM4MDIxMSBpcyBnbG9iYWwg
cGVyIHBoeS4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

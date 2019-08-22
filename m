Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id D301799079
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 12:12:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C20023CB38;
	Thu, 22 Aug 2019 06:12:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566468773;
	bh=ikJDdo5gY9oa2FSMXilMT8xZAo4Q3h5d2VzOlCPKhTY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HLuiGR6WxkKgMWCTPIYX5LoyMh0aJHPM607eMqaGy84jTFsnzNRq1eIz1JiR7xb66
	 TVTK9cmDsSifURN3hViuqbBJP4drXOxCYO4VogN53yAc0g7iiPJ0bxt/IKxgL6NutB
	 pzhtCx1E9BixB7ydVq3ls710jM+QncGObgcNtblckKqJTdaZgR3Y83PWxxSEq3moLQ
	 61dPwHwTM2JcXp4sabyGU6/QzyzzFsKvdzwEzGyXwyd5okoTJNhBuuJI60TX2Eqic1
	 UbbXswiC7SUrRw/oRA+eGYmzPJ66z8HjB/8U0vRUfB7sApa8PtD5X43to1QZ+iDDP/
	 Ztls3c1ro3NSA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 350B13CB35
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 06:12:52 -0400 (EDT)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 215012A09B2
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 10:12:51 +0000 (UTC)
Received: by mail-ed1-f69.google.com with SMTP id z25so2993028edm.3
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 03:12:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=Q0pIknYyHMexZB/emK12WcIBtWmAlfLbBzJVllfSeGw=;
 b=fbtTo2rly5NqmIaDE1wQfdg31+VnhgEECUrouLjP5oX5FkiVa2z3H6sSsVVqED6FbV
 Yd5uDlqMHmayBoSJF1uf7tpbrLP8w2klJqLRN6QcAkeZfwDNSoPExXb08bhR9ABHXQVM
 LAfe4qwkOiYfKjAg5/kF85KSL4aN4QzZ0v8ht5fKlsWl4/dDzupABD5qfrjk+utWKIE+
 U4k3SpgtorwO64pv5i8FQpsGyfe8EpEQw/xdW7TytimEaHzd6677UDtPzDyHShF2y/Fn
 orLa/ey3us4Jx9ZWPTKt/mnAANwKokwMCIARecEJgEZdk6O+4tge9VpAPFuNV9RGEaS6
 Gq3Q==
X-Gm-Message-State: APjAAAVcO2Ao+BM8FaVwN9MYcIFhArJTGXCI7uzKTCsCEenG5QGXVQbI
 7S4Jew/vA5h91ZsVWJ3BcTpc+sxfk1pvJvtjwfcZevSOuqW8x2NY2532q50GUimUFI7yDrjjFfp
 YxunM7mwqkWv5Jz8amc/8BQ==
X-Received: by 2002:a17:906:924a:: with SMTP id
 c10mr33999961ejx.115.1566468769888; 
 Thu, 22 Aug 2019 03:12:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3Zl3VIwxidbTzglaZFidSXOSjKxTvB3+HO4QScz8QVEsNLY5wnMA5a1gVvZqDASJsSyEi0g==
X-Received: by 2002:a17:906:924a:: with SMTP id
 c10mr33999939ejx.115.1566468769616; 
 Thu, 22 Aug 2019 03:12:49 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id f2sm4516106eds.87.2019.08.22.03.12.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 03:12:48 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 50D3B181CEF; Thu, 22 Aug 2019 12:12:48 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 Sebastian Moeller <moeller0@gmx.de>, cake@lists.bufferbloat.net,
 Dave Taht <dave.taht@gmail.com>, Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <0cd1c3ea-6ef5-3293-0b65-58cb1e4871eb@newmedia-net.de>
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
 <87wof6p595.fsf@toke.dk>
 <0cd1c3ea-6ef5-3293-0b65-58cb1e4871eb@newmedia-net.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 22 Aug 2019 12:12:47 +0200
Message-ID: <87o90hpkyo.fsf@toke.dk>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKCj4gQW0gMjEuMDguMjAxOSB1bSAyMzozOSBzY2hyaWViIFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbjoKPj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQu
ZGU+IHdyaXRlczoKPj4KPj4+IEFtIDIxLjA4LjIwMTkgdW0gMTg6MjEgc2NocmllYiBTZWJhc3Rp
YW4gTW9lbGxlcjoKPj4+PiBPbiBBdWd1c3QgMjEsIDIwMTkgNjoxMjowMyBQTSBHTVQrMDI6MDAs
IFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90
ZToKPj4+Pj4gdGhhdHMgcmF0aGVyIG9sZC4gaSByZXdyb3RlIGFsbCB0aGUgcW9zIGNvZGUgaW4g
dGhlIGxhc3QgNCBvciA1IGRheXMuCj4+Pj4+IHNvCj4+Pj4+IHRoaW5ncyBtaWdodCBiZSBjaGFu
Z2VkLiBuZXh0IHBoYXNlIGlzIGJyaW5naW5nIGFsbCB0aGUgbGluayBsZXZlbAo+Pj4+PiBkZXRh
aWwgY29uZmlndXJhdGlvbiBzdHVmZiBpbnRvIHRoZSBndWkgd2hpY2ggd2lsbCBiZSBkb25lCj4+
Pj4+IHRvbW9ycm93IG9yIGF0IGxlYXN0IHN0aWxsIHdpdGhpbiB0aGlzIHdlZWsuCj4+Pj4+IGkg
YWxzbyBhZGRlZCBub3cgY2FrZSB0byBzb21lIHNtYWxsZXIgbG93IGJ1ZGdlZCByb3V0ZXJzIHdp
dGggbGltaXRlZAo+Pj4+PiByZXNvdXJjZXMsIHNvIHNlZSBob3cgaXQgcnVucy4gaSBoYWQgYmFk
IGV4cGVyaWVuY2VzIHdpdGggZnFfY29kZWwgaW4KPj4+Pj4gdGhlIHBhc3QgZHVlIHNvbWUgaGln
aCBtZW1vcnkgdXNhZ2UuCj4+Pj4+IGVzcGVjaWFsbHkgc2luY2UgaXRzIGhhcmQgY29kZWQgc29t
ZXdoYXQgaW50byB0aGUgd2lyZWxlc3MgYXRoOWsKPj4+Pj4gZHJpdmVyLgo+Pj4+PiBzbyBpIGFs
cmVhZHkgbW9kZGVkIGl0IGZvciBtb3JlIGVmZmljaWVudCBoYW5kbGluZy4gNCBtYiBtYXggcGVy
IHF1ZXVlCj4+Pj4+IGlzIHNpbXBseSB0b28gbXVjaCBmb3LCoCBhIDMyIG1iIHJhbSBiYXNlZCBy
b3V0ZXIuCj4+Pj4gVGhpcyBpcyB3aHkgSSdtIHNxbSB3ZSByZWR1Y2VkIHRoZSBxdWV1ZWQgcGFj
a2V0IG1heGltdW0gbSB0byBhcm91bmQgMTAwMCwgYW5kIGFsc28gd2h5IGNha2UgaGFzIGFuIGV4
cGxpY2l0IG1lbWxpbWl0IGtleXdvcmQuCj4+PiB5ZWFoIGJ1dCBkb2VzIHRoaXMgaGVscCBpZiBm
cV9jb2RlbCBpcyBoYXJkY29kZWQgaW50byBtYWM4MDIxMT8gZnFfY29kZWwKPj4+IGhhcyBhIG1l
bWxpbWl0wqAga2V5d29yZCB0b28gYnR3LiBpdHMgZml4ZWQgdG8gNE1CLiBpIHJlZHVjZWQgaXQg
dG8gMjU2a2IKPj4+IG9uIGxvdyBtZW1vcnkgYXJjaGl0ZWN0dXJlcy4gbm8gb3RoZXIgd2F5IHRv
IGdldCBhcm91bmQgT09NIHByb2JsZW1zCj4+PiBtYWM4MDIxMcKgIGRvZXMgYWx3YXlzIG1ha2Ug
dXNlIG9mIGZxX2NvZGVsLiBpdCBoYXMgYSBvd24gYnVpbGQgaW4KPj4+IGltcGxlbWVudGF0aW9u
Cj4+IFRoZSBtYWM4MDIxMSBpbXBsZW1lbnRhdGlvbiBhbHNvIGhhcyBhIG1lbWxpbWl0IHBhcmFt
ZXRlci4gWW91IGNhbiBzZXQKPj4gaXQgdGhyb3VnaCBkZWJ1Z2ZzIC0gMk1CIHdvdWxkIGJlOgo+
Pgo+PiBlY2hvIDIwOTcxNTIgPiAvc3lzL2tlcm5lbC9kZWJ1Zy9pZWVlODAyMTEvcGh5MC9hcW0K
Pj4KPj4gb3IgdGhyb3VnaCBpdzoKPj4KPj4gaXcgcGh5IHBoeTAgc2V0IHR4cSBtZW1vcnlfbGlt
aXQgMjA5NzE1Mgo+Pgo+PiBUaGUgbmw4MDIxMSBhdHRyaWJ1dGUgaXMgY2FsbGVkIE5MODAyMTFf
QVRUUl9UWFFfTUVNT1JZX0xJTUlULgo+IGFzIGkgc2FpZCBpIGFscmVhZHkgbW9kaWZpZWQgbWFj
ODAyMTEgaW4gYSB3YXkgdGhhdCBpdCBzZXRzIHNhbmUgbWVtb3J5IAo+IGxpbWl0cyBkZXBlbmRp
bmcgb24gdGhlIGFyY2hpdGVjdHVyZS4gZGV2aWNlcyB3aXRoIGp1c3QgMzIgbWIgcmFtIHJ1biAK
PiBvbmx5IHN0YWJsZSB3aXRoIDI1NmtiIG1lbW9yeSBsaW1pdC4KPiBzbyBpIGNvbmZpZ3VyZWQg
ZGlmZmVyZW50IGRlZmF1bHRzLiBidXQgdGhlIHBvaW50IGlzIHN0aWxsIHRoYXQgZm9yIGEgCj4g
c3RhbmRhcmQgdXNlciAobGV0cyBzYXkgaW4gb3BlbndydCkgdGhlIGN1cnJlbnQgaW1wbGVtZW50
YXRpb24gaXMgbm90IAo+IGdvb2QuIHNvbWV3aGVyZSBpbiB0aGUgb3BlbndydCBjb21tdW5pdHkg
aSB3YXMgcmVhZGluZyB0aGF0IHN1Y2ggZGV2aWNlcyAKPiBzaG91bGQgbm90IGJlIHVzZWQgYW55
bW9yZSBmb3Igb3BlbndydCBkdWUgdGhlIG1lbW9yeSBsaW1pdGF0aW9ucy4gYnV0IAo+IHRoYXRz
IG5vIHNvbHV0aW9uIGZvciBtZSBpZiBpdCB3YXMgd29ya2luZyBiZWZvcmUgdGhlIGludHJvZHVj
dGlvbiBvZiAKPiBmcV9jb2RlbCBpbiBtYWM4MDIxMQoKLi4uIHdoaWNoIGlzIHdoeSBpdCBpcyBj
b25maWd1cmFibGU/CgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

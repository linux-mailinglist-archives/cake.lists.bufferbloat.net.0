Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E51097FBF
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 18:13:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1FB373CB38;
	Wed, 21 Aug 2019 12:13:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566403987;
	bh=wSvgtucg2d4aioo4lpO1pVSjqh8Tq3xkSk6ALtdD8CA=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eBns1r1E7kxkuE4Orgp7Dst1N5g7OPb3XJi+wdeZDFeOK7et5oEEFUrXJslclQWoi
	 lEkdDw8wmqnEHtnmVNg2XP4KGoH1p1BE6R5T3/Y9Kie6SZyn9hCfhixE+xPrBVu0d5
	 3S0qTSNJgm3QGM10rMkZGrU/HiBO06xbAqzTuWrN2AbtePjY2UfP/GXOTTNAPDZ3/J
	 AmVr5YeCgQbaVhdFVTyQOvnoUmDx0fNftkEfdjKWl+cbJ+beEb4XlmhWmrx9u8Qvb9
	 UAg+ufw4gKUkphZf8MMZ1VdqScbDB1NsNYL5tvy7FKh+iVwG8DkZWfO0cWbVqlbnOj
	 ICOYGkLnJpe4Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 078933CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 12:13:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=a/TwxBTezc/OuBminjbVloUyO8IOel/+LUIOMYfbS7E=; 
 b=jaqa0di9j44xkuhSklchN0JQ51L8NxxFMPMdfKIooYQ/H3A78DgQifgoK1/TAc2zW6xkeaIv5tNT9YjHnrvRDZV2fJJQJervcYfC85LGWw0gO8wLxJ4kRxdP3/qnqlLT/QNtGarlk/bS34OnEOCj5mxBQe1ykMRKX4unb9oyr3w=;
To: Dave Taht <dave.taht@gmail.com>, Jonathan Morton <chromatix99@gmail.com>
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
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
Date: Wed, 21 Aug 2019 18:12:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0TEW-0005PA-Fc; Wed, 21 Aug 2019 18:13:12 +0200
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

dGhhdHMgcmF0aGVyIG9sZC4gaSByZXdyb3RlIGFsbCB0aGUgcW9zIGNvZGUgaW4gdGhlIGxhc3Qg
NCBvciA1IGRheXMuIHNvIAp0aGluZ3MgbWlnaHQgYmUgY2hhbmdlZC4gbmV4dCBwaGFzZSBpcyBi
cmluZ2luZyBhbGwgdGhlIGxpbmsgbGV2ZWwgCmRldGFpbCBjb25maWd1cmF0aW9uIHN0dWZmIGlu
dG8gdGhlIGd1aSB3aGljaCB3aWxsIGJlIGRvbmUKdG9tb3Jyb3cgb3IgYXQgbGVhc3Qgc3RpbGwg
d2l0aGluIHRoaXMgd2Vlay4KaSBhbHNvIGFkZGVkIG5vdyBjYWtlIHRvIHNvbWUgc21hbGxlciBs
b3cgYnVkZ2VkIHJvdXRlcnMgd2l0aCBsaW1pdGVkIApyZXNvdXJjZXMsIHNvIHNlZSBob3cgaXQg
cnVucy4gaSBoYWQgYmFkIGV4cGVyaWVuY2VzIHdpdGggZnFfY29kZWwgaW4gCnRoZSBwYXN0IGR1
ZSBzb21lIGhpZ2ggbWVtb3J5IHVzYWdlLgplc3BlY2lhbGx5IHNpbmNlIGl0cyBoYXJkIGNvZGVk
IHNvbWV3aGF0IGludG8gdGhlIHdpcmVsZXNzIGF0aDlrIGRyaXZlci4gCnNvIGkgYWxyZWFkeSBt
b2RkZWQgaXQgZm9yIG1vcmUgZWZmaWNpZW50IGhhbmRsaW5nLiA0IG1iIG1heCBwZXIgcXVldWUg
CmlzIHNpbXBseSB0b28gbXVjaCBmb3LCoCBhIDMyIG1iIHJhbSBiYXNlZCByb3V0ZXIuCgoKU2Vi
YXN0aWFuCgpBbSAyMS4wOC4yMDE5IHVtIDE3OjQyIHNjaHJpZWIgRGF2ZSBUYWh0Ogo+IHRoaXMg
c2hvd3Mgc29tZSBnb29kIHJlc3VsdHMgd2l0aCBwaWUgb24gdGhlIGRvd25sb2FkCj4KPiBodHRw
czovL2ZvcnVtLmRkLXdydC5jb20vcGhwQkIyL3ZpZXd0b3BpYy5waHA/dD0zMTM4ODYmcG9zdGRh
eXM9MCZwb3N0b3JkZXI9YXNjJnN0YXJ0PTMwJnNpZD00ZDRkMmE1ODNhZmFkNzM3NTljYmVlZTFh
OGY0YjMyOQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id EE42EB3BCA
	for <lists+cake@lfdr.de>; Mon, 16 Sep 2019 15:49:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CEE173CB40;
	Mon, 16 Sep 2019 09:49:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568641749;
	bh=jZH7SgAvO81HOAb43kIhOIzWjELeHkwxwzkfhR/noOo=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F4ygW2KuI0CrTJ+oBEN/WB2nkU8Sg3PtAOPfYJkNVUtELtvNPmF4GIE568tvQKE0j
	 wJZYOb0yUuWLXKce9rv3YM6Bg/xVFJ/RfYM7nWQ0FzykWcqsvz6HHjC8hBVViN9Msu
	 wOkmrH3PHOUE9BjO+1fkIZmD9sfALND2oOsiH20LKtoaEMPOuiyHPfR4PhUehgQFOe
	 KlEvPNbXS9iRcxx+TNnQzi/vPI4hPm6dZ7fT6r4qTodniKQl4PcCsiJ4BRw1xbmvE0
	 2Bg028YA2ogK5+dKENz+dN1mQOgtYzU6dvWqgqaid4sjVULPapeUttW9ZVioNShmp3
	 4JXib0cJbavvw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C3A1A3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 09:49:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=dzsgm4SGqg/ZLUNoiAuhnIqSFe/hvrXn839qLF/cEfs=; 
 b=WP+euVnQZKelm0EMzvm6lY/I1K8MpGIztkcsP1WEmJciZYN1xQy/PigBO0OkNfGb/rQ3ws605NzzfhkMfoKYqyNF6SjJcCYQMIM92L7Z1PKXDrbgOikoFEMMXOTR6ecHLmyjWNjgNqPkb8qEfgH26bC6waVlyDVD2gdmjCQxxUU=;
To: cake@lists.bufferbloat.net
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <CAA93jw6+=SuQhFbvVWMbL3m3r_0pRWSMmgScHbhZ=sSN9prntw@mail.gmail.com>
 <f44aa0fc-64d3-88a3-98db-dccf4f2c0530@newmedia-net.de>
 <93040b26-aa44-41b9-abec-7e1f637c0cb1@www.fastmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <8d8bee07-f3b8-37c9-2ca1-7fd76e8b48d3@newmedia-net.de>
Date: Mon, 16 Sep 2019 15:47:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <93040b26-aa44-41b9-abec-7e1f637c0cb1@www.fastmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i9rNT-00028F-Bj
 for cake@lists.bufferbloat.net; Mon, 16 Sep 2019 15:49:15 +0200
Subject: Re: [Cake] cake memory consumption
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDE2LjA5LjIwMTkgdW0gMTU6Mjggc2NocmllYiBKdXN0aW4gS2lscGF0cmljazoKPiBJJ20g
bm90IHNlZWluZyBhbnl0aGluZyBsaWtlIHRoZSBtZW1vcnkgdXNhZ2UgeW91IGRlc2NyaWJlIGlu
IGEgc2ltaWxhciBzaXR1YXRpb24uCj4KPiBPcGVuV1JUIDE4LjA2LjQgb24gYSBnbGIxMzAwIGFu
ZCAxMCsgdmlydHVhbCBpbnRlcmZhY2VzIHdpdGggY2FrZS4gVG90YWwgbWVtb3J5IHVzYWdlIGlz
IDcwTUIgZm9yIGV2ZXJ5dGhpbmcuCmRvZXNudCBzb3VuZCBtdWNoIGRpZmZlcmVudC4gY29uc2lk
ZXIgdGhlIGFyY2hlciBjNyBoYXMgYSB3aXJlbGVzcyAKYXRoMTBrIGJhc2VkIGNhcmQgYW5kIGF0
aDEwayBhbG9uZSB0YWtlIDQwIC0gNDUgbWIgaW8gbWVtb3J5IGZyb20gdGhlIApzeXN0ZW0gaXRz
ZWxmLgpOb3cgNzAgKyA0NSA9IDExNSBtYiArIHNvbWUga2VybmVsIG1lbW9yeSBhbmQgdXNlcnNw
YWNlIGNyYXAgLiA9IE9PTSBvbiAKYSAxMjggbWIgZGV2aWNlCmkgZG9udCBrbm93IGlmIHlvdSBl
bmFibGVkIHdpcmVsZXNzIG9uIHRoZSBnbGIxMzAwIHdoaWNoIHVzZXMgYXRoMTBrIHRvbyAKYW5k
IGkgZG9udCBrbm93IHlvdSB5b3UgYXJlIHJ1bm5pbmcgc2VwYXJhdGUgY2FrZSBpbnN0YW5jZXMg
b24gZWFjaCBvZiAKdGhlc2UgaW50ZXJmYWNlcwo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB4897350
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 09:26:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DBB323CB38;
	Wed, 21 Aug 2019 03:26:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566372412;
	bh=DyRtUryvaVyCsGngl9m/epQNSQSY8LR84g0NiiAOqwY=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YPFwW0pR+OZ5DBJk8Xml5HVofIrEAYBPLKEvr/k1cm75xHvATS3sQ+pqSKaB3tB/c
	 XBSZiWMTtvhvLnls+jETVYEbcjGctrEwO/F3OY72s9U6yct4/7aBIM4PoqurvosMTR
	 ibkCCRUOCtQqMpK8yQXxjjil/DjXknXm4Sp1G+uYTz1x9pju3GvZBm+IJdVjXRww3r
	 TiMq+34Z5Afm9JOooJn0DoI6+T35AP09e+gpFBxbvuqdDYK41gFjC+VxlLK95bNsTn
	 iAbdrLqH1Dvs2quLF5lsRD0PsgGUp1xeeAGTTjJGbPu8EnW0act2CtLe9lczNMpiD9
	 rUf/wg7QedIgw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E2B973B2A4
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 03:26:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=qbVCPKvGfh1cth2PKDSq4VpKgu0b8j182xZxtffCYao=; 
 b=Vv7Ndfr1uDUjkcTogYPMFUOQskB7JyffYe63jXsTMlhQsCcUlOpjonEfcqQ99Ua6JhxUv9EgmTbe/PlVq9QzQ64WZAYaPzewv1n36THi8YhNcqAJsCdjvsJUzFNpheuou+Nncaj06HU6GExNo/556ZkHJblfDxmkPYjWGv4AxkE=;
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Dave Taht <dave.taht@gmail.com>
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
 <87o90jsmds.fsf@toke.dk>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <005ca3fb-dde4-4d75-3e8a-9eae53bb9ac9@newmedia-net.de>
Date: Wed, 21 Aug 2019 09:25:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87o90jsmds.fsf@toke.dk>
X-Received: from [2003:c9:3f25:1300:e947:ab73:1d88:4792]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0L1D-0003r6-7x; Wed, 21 Aug 2019 09:26:55 +0200
Subject: Re: [Cake] cake in dd-wrt
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

ZSBvZiBjb3Vyc2UgZXhjZXB0aW9ucyB0byB0aGlzIHdoZXJlIGEgc3RyaWN0IHJ1bGUtYmFzZWQK
Pj4+IHNoYXBpbmcgKmlzKiByZWFsbHkgbmVlZGVkOyBidXQgSFRCIGFscmVhZHkgcHJvdmlkZXMg
dGhpcyBpbiB0aGUga2VybmVsLAo+Pj4gYW5kIHdlIGRvbid0IHdhbnQgdG8gcmUtaW52ZW50IHRo
YXQsIHNvIEknbSBub3Qgc3VyZSB3ZSdsbCBldmVyIHN1cHBvcnQKPj4+IHRoaXMgcHJvcGVybHkg
aW4gQ0FLRSwgc2FkbHkuLi4KPj4gdGhpcyBpcyB3aGF0IHdlIGFyZSBhbHNvIGRvaW5nLiBjYWtl
IGlzIGZpbmFsbHkganVzdCBhIG9wdGlvbi4geW91IGNhbgo+PiBzZWxlY3QgbXVsdGlwbGUgc2No
ZWR1bGVycyBhdCB0aGUgZ3VpLiBpbmNsdWRpbmcgY29kZWwuIGZxX2NvZGVsLAo+PiBmcV9jb2Rl
bF9mYXN0LCBjYWtlICwgcGllIGV0Yy4KPiBSaWdodC4gV2hhdCBhcmUgeW91IHNldHRpbmcgYXMg
dGhlIGRlZmF1bHQsIEJUVz8KZGVmYXVsdCBRT1MgaXMgb2ZmIDotKSBhbmQgdGhlIG9sZCBoaXN0
b3JpY2FsIGRlZmF1bHQgc2V0dGluZ3MgYXJlIGh0YiAKd2l0aCBzZnEKPgo+IC1Ub2tlCj4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

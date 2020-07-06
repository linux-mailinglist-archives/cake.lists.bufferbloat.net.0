Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7B0215616
	for <lists+cake@lfdr.de>; Mon,  6 Jul 2020 13:06:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 82D473CB55;
	Mon,  6 Jul 2020 07:06:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594033594;
	bh=2U7gmMNkB7mq+21Tu+o71wtQ0WHyDX0hNPtJ8/K/rRg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hUBLxHJx6DEb37ltdCZiDuzO9IR0dV+n82q0G+aJHu8El0lwjOM7YT3qlVCFebDZ6
	 7fFRo0gFnj5/brJRSZEVcMywd3yyu6N7TzirH/Sj3737hvlAsvN/Tcyf9oOK/6gPSi
	 QnFggYnhoMLnaGO/d3Lm8Wj0pH8jtx6usnrGxlTR/jGTANQQ7llASi4ogh69fti1nQ
	 3kjFyKg25g749jfQkCBGlkzdhqdJhON0mBr2CjnGB3j5M3tbkx+gF8ii6sfYT0Cvkj
	 nvskYABTQHDWOtK+6vZLSAL/EmDCoD1gxFHIogwG+1WPnwHyP3zS4V+0wMzrOSmW0V
	 aOwLwDjD7zc6A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B86163B29E
 for <cake@lists.bufferbloat.net>; Mon,  6 Jul 2020 06:53:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594032802;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DDrKhQJ/LeBJeWNJbgWb3c/9LBMiGCiDMeRqR2oCvdU=;
 b=UBiV2HGngH23sy6etSFhB+gHeibWoG96cs5V6FwFqOz2pFEX4frLECk7kyd3sAEDaHutGu
 zZ93rf7vkwA5oUN1j67E/NzxWAGCnHdbUEFPel4DZyIUG3KOkeP45phzZSE4KR7UabPu6b
 repNG+6ces1//goQQrBrArk93frVa5g=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-uWuCsKJDOY6Dt_3w5S1Ksw-1; Mon, 06 Jul 2020 06:53:19 -0400
X-MC-Unique: uWuCsKJDOY6Dt_3w5S1Ksw-1
Received: by mail-pl1-f199.google.com with SMTP id y9so10962752plr.9
 for <cake@lists.bufferbloat.net>; Mon, 06 Jul 2020 03:53:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=NNn4lPIzDwTEM2THr/KH6JkSvVcflXvGyR2W59aQaSk=;
 b=Q4r1mC3YMFJskIH/vcrfUBCEgL4teUdIxNGeydBLSRFjaPwLYrc+z+wpvOydgfv+e5
 4DHYe3HQBdiQvTXwkCuZ0Z6WeWuQzpmdl2CY2T1bt3qvJrc7/46TjOpeov+uif7OZjDW
 Z/2bJOUi9z7bvLMxIs9zuKSCJ5dt/1peCs/vztEbV/spEYqnLzaFiO8zCaSTH72lFs0s
 LBZHpJt1srt01ketYdRBQEFaobqffjEyQUSCuGfdTeR+ONMBUfBpAnQBuFAIoSSEUJdq
 8o8BmdvMwkHqb68yvuFLE0HoaMNAVwybr4cOf5owN6qZry81PJoRjsaBcYL6yHCXXKju
 U9QA==
X-Gm-Message-State: AOAM530xsbX3IxwK9il9wA3cBEFyv+ODSN3yDF/YMlBbly+EAqcaYDEV
 J4GSwh2/v5SycPHpqvDBoqqm9N577Wz5Xi/EndGOH5UoIAsJ308HxwbeeYmZFW087DB9avlIRx5
 pyC0uP0kcOSqsc6lNk8BXfw==
X-Received: by 2002:a63:e50a:: with SMTP id r10mr39164234pgh.285.1594032798189; 
 Mon, 06 Jul 2020 03:53:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxn2BPP8PHjBIuh7k4X2AXIL7g+wnqUI3sZsXOl6bg0fevLnkJSHbnf7UrOH01FWX607jY0EA==
X-Received: by 2002:a63:e50a:: with SMTP id r10mr39164213pgh.285.1594032797866; 
 Mon, 06 Jul 2020 03:53:17 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id k4sm17925318pjt.16.2020.07.06.03.53.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 03:53:17 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 748F91804EB; Mon,  6 Jul 2020 12:53:12 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Toshiaki Makita <toshiaki.makita1@gmail.com>
In-Reply-To: <b62fcd67-1b0a-ab7f-850d-22e62faf3a23@gmail.com>
References: <20200703202643.12919-1-toke@redhat.com>
 <ada37763-16cd-7b51-f9ce-41e8d313bf96@gmail.com> <878sfzms4p.fsf@toke.dk>
 <b62fcd67-1b0a-ab7f-850d-22e62faf3a23@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 06 Jul 2020 12:53:12 +0200
Message-ID: <875zb0ncdj.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Mon, 06 Jul 2020 07:06:32 -0400
Subject: Re: [Cake] [PATCH net v3] sched: consistently handle layer3 header
	accesses in the presence of VLANs
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
Cc: Lawrence Brakmo <brakmo@fb.com>, Davide Caratti <dcaratti@redhat.com>,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Roman Mashak <mrv@mojatatu.com>, Ilya Ponetayev <i.ponetaev@ndmsystems.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, bpf@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VG9zaGlha2kgTWFraXRhIDx0b3NoaWFraS5tYWtpdGExQGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBP
biAyMDIwLzA3LzA0IDIwOjMzLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IFRv
c2hpYWtpIE1ha2l0YSA8dG9zaGlha2kubWFraXRhMUBnbWFpbC5jb20+IHdyaXRlczoKPj4+IE9u
IDIwMjAvMDcvMDQgNToyNiwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4gLi4u
Cj4+Pj4gKy8qIEEgZ2V0dGVyIGZvciB0aGUgU0tCIHByb3RvY29sIGZpZWxkIHdoaWNoIHdpbGwg
aGFuZGxlIFZMQU4gdGFncyBjb25zaXN0ZW50bHkKPj4+PiArICogd2hldGhlciBWTEFOIGFjY2Vs
ZXJhdGlvbiBpcyBlbmFibGVkIG9yIG5vdC4KPj4+PiArICovCj4+Pj4gK3N0YXRpYyBpbmxpbmUg
X19iZTE2IHNrYl9wcm90b2NvbChjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBib29sIHNraXBf
dmxhbikKPj4+PiArewo+Pj4+ICsJdW5zaWduZWQgaW50IG9mZnNldCA9IHNrYl9tYWNfb2Zmc2V0
KHNrYikgKyBzaXplb2Yoc3RydWN0IGV0aGhkcik7Cj4+Pj4gKwlfX2JlMTYgcHJvdG8gPSBza2It
PnByb3RvY29sOwo+Pj4+ICsKPj4+PiArCWlmICghc2tpcF92bGFuKQo+Pj4+ICsJCS8qIFZMQU4g
YWNjZWxlcmF0aW9uIHN0cmlwcyB0aGUgVkxBTiBoZWFkZXIgZnJvbSB0aGUgc2tiIGFuZAo+Pj4+
ICsJCSAqIG1vdmVzIGl0IHRvIHNrYi0+dmxhbl9wcm90bwo+Pj4+ICsJCSAqLwo+Pj4+ICsJCXJl
dHVybiBza2Jfdmxhbl90YWdfcHJlc2VudChza2IpID8gc2tiLT52bGFuX3Byb3RvIDogcHJvdG87
Cj4+Pj4gKwo+Pj4+ICsJd2hpbGUgKGV0aF90eXBlX3ZsYW4ocHJvdG8pKSB7Cj4+Pj4gKwkJc3Ry
dWN0IHZsYW5faGRyIHZoZHIsICp2aDsKPj4+PiArCj4+Pj4gKwkJdmggPSBza2JfaGVhZGVyX3Bv
aW50ZXIoc2tiLCBvZmZzZXQsIHNpemVvZih2aGRyKSwgJnZoZHIpOwo+Pj4+ICsJCWlmICghdmgp
Cj4+Pj4gKwkJCWJyZWFrOwo+Pj4+ICsKPj4+PiArCQlwcm90byA9IHZoLT5oX3ZsYW5fZW5jYXBz
dWxhdGVkX3Byb3RvOwo+Pj4+ICsJCW9mZnNldCArPSBzaXplb2Yodmhkcik7Cj4+Pj4gKwl9Cj4+
Pgo+Pj4gV2h5IGRvbid0IHlvdSB1c2UgX192bGFuX2dldF9wcm90b2NvbCgpIGhlcmU/IEl0IGxv
b2tzIHF1aXRlIHNpbWlsYXIuCj4+PiBJcyB0aGVyZSBhbnkgcHJvYmxlbSB3aXRoIHVzaW5nIHRo
YXQ/Cj4+IAo+PiBUQkgsIEkgY29tcGxldGVseSBtaXNzZWQgdGhhdCBoZWxwZXIuIEl0IHNlZW1z
IHRvIGhhdmUgc2lkZSBlZmZlY3RzLAo+PiB0aG91Z2ggKHBza2JfbWF5X3B1bGwoKSksIHdoaWNo
IGlzIG9uZSBvZiB0aGUgdGhpbmdzIHRoZSBvcmlnaW5hbCBwYXRjaAo+PiB0byBzY2hfY2FrZSB0
aGF0IGluaXRpYXRlZCBhbGwgb2YgdGhpcyB3YXMgdHJ5aW5nIHRvIGF2b2lkLgo+Cj4gU29ycnkg
Zm9yIG5vdCBjb21wbGV0ZWx5IGZvbGxvd2luZyB0aGUgZGlzY3Vzc2lvbi4uLgo+IFB1bGxpbmcg
ZGF0YSBpcyB3cm9uZyBmb3IgY2FrZSBvciBvdGhlciBzY2hlZHVsZXJzPwoKVGhpcyB3YXMgbm90
IGV4cGxpY2l0IGluIHRoZSBjdXJyZW50IHRocmVhZCwgYnV0IHRoZSByZWFzb24gSSBzdGFydGVk
Cmxvb2tpbmcgaW50byB0aGlzIGluIHRoZSBmaXJzdCBwbGFjZSB3YXMgYSBwdWxsIHJlcXVlc3Qg
b24gdGhlCm91dC1vZi10cmVlIHZlcnNpb24gb2Ygc2NoX2Nha2UgdGhhdCBub3RpY2VkIHRoYXQg
dGhlcmUgYXJlIGRyaXZlcnMgdGhhdAp3aWxsIGFsbG9jYXRlIFNLQnMgaW4gc3VjaCBhIHdheSB0
aGF0IGFjY2Vzc2luZyB0aGUgcGFja2V0IGhlYWRlciBjYXVzZXMKaXQgdG8gYmUgcmVhbGxvY2F0
ZWQ6IGh0dHBzOi8vZ2l0aHViLmNvbS9kdGFodC9zY2hfY2FrZS9wdWxsLzEzNgoKSSdtIG5vdCBl
bnRpcmVseSBwb3NpdGl2ZSB0aGF0IHRoaXMgYXBwbGllcyB0byBqdXN0IHJlYWRpbmcgdGhlIGhl
YWRlcgp0aHJvdWdoIHBza2JfbWF5X3B1bGwoKSwgb3IgaWYgaXQgd2FzIG9ubHkgb24gc2tiX3Ry
eV9tYWtlX3dyaXRhYmxlKCk7CmJ1dCBpbiBhbnkgY2FzZSBpdCBzZWVtcyB0byBtZSB0aGF0IGl0
J3MgYmV0dGVyIGZvciBhIGhlbHBlciBsaWtlCl9fdmxhbl9nZXRfcHJvdG9jb2woKSB0byBub3Qg
aGF2ZSBzaWRlIGVmZmVjdHMuCgo+PiBJIGd1ZXNzIEkgY291bGQganVzdCBmaXggdGhhdCwgdGhv
dWdoLCBhbmQgc3dpdGNoIF9fdmxhbl9nZXRfcHJvdG9jb2woKQo+PiBvdmVyIHRvIHVzaW5nIHNr
Yl9oZWFkZXJfcG9pbnRlcigpLiBXaWxsIHNlbmQgYSBmb2xsb3ctdXAgdG8gZG8gdGhhdC4KPj4g
Cj4+IEFueSBvcGluaW9uIG9uIHdoZXRoZXIgaXQncyBhIGdvb2QgaWRlYSB0byBsaW1pdCB0aGUg
bWF4IHBhcnNlIGRlcHRoCj4+IHdoaWxlIEknbSBhdCBpdCAoc2VlIERhbmllbCdzIHJlcGx5KT8K
Pgo+IFRoZSBsb2dpYyB3YXMgb3JpZ2luYWxseSBpbnRyb2R1Y2VkIGJ5IHNrYl9uZXR3b3JrX3By
b3RvY29sKCkgYmFjayBpbgo+IHYzLjEwLCBhbmQgSSBoYXZlIG5ldmVyIGhlYXJkIG9mIHNlY3Vy
aXR5IHJlcG9ydCBhYm91dCB0aGF0LiBCdXQgeWVzLAo+IEkgZ3Vlc3MgaXQgcG90ZW50aWFsbHkg
Y2FuIGJlIHVzZWQgZm9yIERvUyBhdHRhY2suCgpSaWdodCwgSSdsbCBhZGQgdGhlIGxpbWl0IGFz
IHdlbGwsIHRoZW4gOikKCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

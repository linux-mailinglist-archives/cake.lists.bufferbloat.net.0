Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 114492155B4
	for <lists+cake@lfdr.de>; Mon,  6 Jul 2020 12:38:24 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DABA53CB5B;
	Mon,  6 Jul 2020 06:38:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594031902;
	bh=XHNOmDhgWgZ1M6wO+svggHsUMfLrKUwKDmXBwTxZNzw=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZsV2ikB27q2SOMxYzAaxY6Lx6rw+B9KOjiWkVrr+eyQwEjC3cNOtjArMhMsEEsVb3
	 b0KcGIt0yqCa6EtqJf4AHAxJ/IVeqYVjR5sm98Dml19OH2bt/r7ekf/qSG2tJgrLJ1
	 Cv08zBIyuqI7x3M1Dd/btWf1ct2Icj1Pe1sQazqtjn4kt/XsqLwjQSikgB8HY+6udj
	 dLmH17aWJnjR0TfewDyVtvP79StBXFIKFKBH/8UkrUjkQJz/QhMratMlwCmc411mhK
	 6qoLxKQpoY+40Zhl3As2wjlKIwob9Y3S0mF9dYhwcTaEIKefWKVbLeEQKv+6kWpo67
	 8p030GU0q1WZQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com
 [IPv6:2607:f8b0:4864:20::643])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A757D3B29D
 for <cake@lists.bufferbloat.net>; Mon,  6 Jul 2020 00:24:51 -0400 (EDT)
Received: by mail-pl1-x643.google.com with SMTP id x11so14825584plo.7
 for <cake@lists.bufferbloat.net>; Sun, 05 Jul 2020 21:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NhQuh/M+EWr/H+2AN4zsqP1K1gI1NFzEkYpBnUNzwu8=;
 b=tzabOV92NsrmrViHXK0nWYnzKyxMnXybz1c5LHrpbDZvsULkOEjoUwyg0SEJZWfv2j
 ke044ICDxjqm31S6SUtqUtsSNgikx9OupmoDwcqP4bmuxNg3IK1qbyy3SvLCR2/I2pur
 VxoNfSeScLptOrJjsstSIQo9lvVctL3xwjCOl0BpXU1wfF3hp3IWqZsRLp8zzqIqGJAK
 BzdKyAYWRXGcwRVo6Xb5F9dbkqkuQunR5ZZ/I/wk4eNu8OWhQ+ROPxtuaCJbZuj0Ga6i
 C3CW4lXhSdwsxT8A5EMFgsQGQs/5JFpeTr7wKEz4Wbdhzew5aHKRXnYJMH00J12AbpKe
 nIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NhQuh/M+EWr/H+2AN4zsqP1K1gI1NFzEkYpBnUNzwu8=;
 b=jmcl62HLXPUuu1ujmO37cJczdGzgScWKssoxgwaO627k1bvpbHHFCgSlM/IKMyQqXm
 rsz1fRyz1CgBRUzydcIRn49qEks/SLd8c65IyHtRmOEyjeLtm787W6kvh4TYWo6iX/e/
 58lrNB5qDYAOBf8zL1Jc58Xn/E7GYhPuEY7sOCKKRzL7Cu4ZaJLd4tqR+jnk7MBfWaZS
 Kld5HG3SP6IR1ExR15T87dDgNVt68zz9te9UbXCXPm4prYOolSYefp0oSPLow3e5bDGi
 uyoxYoxgFNjDIF3spab9fiw2b5DjyQux1mnPb35oQqCkkkWjOSEKJcqtszkMWyvoPZaO
 xKvA==
X-Gm-Message-State: AOAM533+eEvn4AG0Orv6xFzTONHEjLF+f1K7c4Ofetqhq9Sz9/lUEFMk
 ftOZ03ZedoxHF1mxD8QfhiU=
X-Google-Smtp-Source: ABdhPJyHCUXMwb1alkHT6aU83lgl85yKQ4N8yg8Bm1A7RfvY/tx7kGh5nrkaA6qdA1Cf5r2jzEe7Sw==
X-Received: by 2002:a17:902:684e:: with SMTP id
 f14mr11268525pln.166.1594009490929; 
 Sun, 05 Jul 2020 21:24:50 -0700 (PDT)
Received: from [172.20.20.103] ([222.151.198.97])
 by smtp.gmail.com with ESMTPSA id d14sm298902pjc.20.2020.07.05.21.24.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Jul 2020 21:24:50 -0700 (PDT)
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>
References: <20200703202643.12919-1-toke@redhat.com>
 <ada37763-16cd-7b51-f9ce-41e8d313bf96@gmail.com> <878sfzms4p.fsf@toke.dk>
From: Toshiaki Makita <toshiaki.makita1@gmail.com>
Message-ID: <b62fcd67-1b0a-ab7f-850d-22e62faf3a23@gmail.com>
Date: Mon, 6 Jul 2020 13:24:42 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <878sfzms4p.fsf@toke.dk>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 06 Jul 2020 06:38:22 -0400
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMjAyMC8wNy8wNCAyMDozMywgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFRv
c2hpYWtpIE1ha2l0YSA8dG9zaGlha2kubWFraXRhMUBnbWFpbC5jb20+IHdyaXRlczoKPj4gT24g
MjAyMC8wNy8wNCA1OjI2LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IC4uLgo+
Pj4gKy8qIEEgZ2V0dGVyIGZvciB0aGUgU0tCIHByb3RvY29sIGZpZWxkIHdoaWNoIHdpbGwgaGFu
ZGxlIFZMQU4gdGFncyBjb25zaXN0ZW50bHkKPj4+ICsgKiB3aGV0aGVyIFZMQU4gYWNjZWxlcmF0
aW9uIGlzIGVuYWJsZWQgb3Igbm90Lgo+Pj4gKyAqLwo+Pj4gK3N0YXRpYyBpbmxpbmUgX19iZTE2
IHNrYl9wcm90b2NvbChjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBib29sIHNraXBfdmxhbikK
Pj4+ICt7Cj4+PiArCXVuc2lnbmVkIGludCBvZmZzZXQgPSBza2JfbWFjX29mZnNldChza2IpICsg
c2l6ZW9mKHN0cnVjdCBldGhoZHIpOwo+Pj4gKwlfX2JlMTYgcHJvdG8gPSBza2ItPnByb3RvY29s
Owo+Pj4gKwo+Pj4gKwlpZiAoIXNraXBfdmxhbikKPj4+ICsJCS8qIFZMQU4gYWNjZWxlcmF0aW9u
IHN0cmlwcyB0aGUgVkxBTiBoZWFkZXIgZnJvbSB0aGUgc2tiIGFuZAo+Pj4gKwkJICogbW92ZXMg
aXQgdG8gc2tiLT52bGFuX3Byb3RvCj4+PiArCQkgKi8KPj4+ICsJCXJldHVybiBza2Jfdmxhbl90
YWdfcHJlc2VudChza2IpID8gc2tiLT52bGFuX3Byb3RvIDogcHJvdG87Cj4+PiArCj4+PiArCXdo
aWxlIChldGhfdHlwZV92bGFuKHByb3RvKSkgewo+Pj4gKwkJc3RydWN0IHZsYW5faGRyIHZoZHIs
ICp2aDsKPj4+ICsKPj4+ICsJCXZoID0gc2tiX2hlYWRlcl9wb2ludGVyKHNrYiwgb2Zmc2V0LCBz
aXplb2YodmhkciksICZ2aGRyKTsKPj4+ICsJCWlmICghdmgpCj4+PiArCQkJYnJlYWs7Cj4+PiAr
Cj4+PiArCQlwcm90byA9IHZoLT5oX3ZsYW5fZW5jYXBzdWxhdGVkX3Byb3RvOwo+Pj4gKwkJb2Zm
c2V0ICs9IHNpemVvZih2aGRyKTsKPj4+ICsJfQo+Pgo+PiBXaHkgZG9uJ3QgeW91IHVzZSBfX3Zs
YW5fZ2V0X3Byb3RvY29sKCkgaGVyZT8gSXQgbG9va3MgcXVpdGUgc2ltaWxhci4KPj4gSXMgdGhl
cmUgYW55IHByb2JsZW0gd2l0aCB1c2luZyB0aGF0Pwo+IAo+IFRCSCwgSSBjb21wbGV0ZWx5IG1p
c3NlZCB0aGF0IGhlbHBlci4gSXQgc2VlbXMgdG8gaGF2ZSBzaWRlIGVmZmVjdHMsCj4gdGhvdWdo
IChwc2tiX21heV9wdWxsKCkpLCB3aGljaCBpcyBvbmUgb2YgdGhlIHRoaW5ncyB0aGUgb3JpZ2lu
YWwgcGF0Y2gKPiB0byBzY2hfY2FrZSB0aGF0IGluaXRpYXRlZCBhbGwgb2YgdGhpcyB3YXMgdHJ5
aW5nIHRvIGF2b2lkLgoKU29ycnkgZm9yIG5vdCBjb21wbGV0ZWx5IGZvbGxvd2luZyB0aGUgZGlz
Y3Vzc2lvbi4uLgpQdWxsaW5nIGRhdGEgaXMgd3JvbmcgZm9yIGNha2Ugb3Igb3RoZXIgc2NoZWR1
bGVycz8KCj4gSSBndWVzcyBJIGNvdWxkIGp1c3QgZml4IHRoYXQsIHRob3VnaCwgYW5kIHN3aXRj
aCBfX3ZsYW5fZ2V0X3Byb3RvY29sKCkKPiBvdmVyIHRvIHVzaW5nIHNrYl9oZWFkZXJfcG9pbnRl
cigpLiBXaWxsIHNlbmQgYSBmb2xsb3ctdXAgdG8gZG8gdGhhdC4KPiAKPiBBbnkgb3BpbmlvbiBv
biB3aGV0aGVyIGl0J3MgYSBnb29kIGlkZWEgdG8gbGltaXQgdGhlIG1heCBwYXJzZSBkZXB0aAo+
IHdoaWxlIEknbSBhdCBpdCAoc2VlIERhbmllbCdzIHJlcGx5KT8KClRoZSBsb2dpYyB3YXMgb3Jp
Z2luYWxseSBpbnRyb2R1Y2VkIGJ5IHNrYl9uZXR3b3JrX3Byb3RvY29sKCkgYmFjayBpbiB2My4x
MCwKYW5kIEkgaGF2ZSBuZXZlciBoZWFyZCBvZiBzZWN1cml0eSByZXBvcnQgYWJvdXQgdGhhdC4g
QnV0IHllcywgSSBndWVzcyBpdApwb3RlbnRpYWxseSBjYW4gYmUgdXNlZCBmb3IgRG9TIGF0dGFj
ay4KClRvc2hpYWtpIE1ha2l0YQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

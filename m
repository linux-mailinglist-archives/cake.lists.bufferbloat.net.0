Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C0A2161A8
	for <lists+cake@lfdr.de>; Tue,  7 Jul 2020 00:44:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C7EB03CBC5;
	Mon,  6 Jul 2020 18:44:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594075460;
	bh=S7nScIyozR4v7DUFE2XkAG/6vTM+1euWRiqre/e2kWM=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p0MiLN2JOKPH9tYoojAiGSLIfM/1TutRZqtnZwLAYFDPhOV7lUITA79NYl8M/VGfN
	 Cmyf/0t9NNk12BolTfjRC0ApPOR4KjkL+I6G5IlXGCvDC3Y8A1na0kLm40bYH0cQ2U
	 uiTLhGgaXk41FrBRO3qvlg2QHkcYtwebxoR02LVPP83LJDuhfAfARafKszIYvDX6en
	 HWRHPE6fj0TWqMqyEx6LIi/7mSaA5Fsmxms+kbSY3609GuI/x3uBW9pXq7/9/JAb21
	 qUrEo6h5/RApTkFcX99GtN0/5EgEgJGqo3mdAcc9g1luCQgPpXNEFZ64qQ+E7ojIUS
	 BRbS5FgvAE4dg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 297633B2A4
 for <cake@lists.bufferbloat.net>; Mon,  6 Jul 2020 18:44:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594075458;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WaRcfmh0dnJaXCAB+hSg5BA0paManfn3RR3dWJMFDRw=;
 b=DT4MffFe5+p2/bdg9fOwZ5FBlGkPyF1jeSUIspVYQUouL4xZHGbbeRvBVr/pC0SljWaVZn
 kaNHhF3i5wGSU8bAuc1LPQMvaw0iRLW7ZFp9JTFUwUxPJyoM1hEdEtebwjYbfAzbSb/VpA
 xrXZ0J9GMQFu9uGsk6z3IPh0DMny+ms=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-ERvnBNH2PBWkDtO0wX_F4w-1; Mon, 06 Jul 2020 18:44:15 -0400
X-MC-Unique: ERvnBNH2PBWkDtO0wX_F4w-1
Received: by mail-pg1-f200.google.com with SMTP id u16so30839187pgj.17
 for <cake@lists.bufferbloat.net>; Mon, 06 Jul 2020 15:44:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=lADiN9digWx1yABnbEC/NhleCjcMB30P02hQYoJI214=;
 b=BSul0s8hnWufbLBRTuGCvYKTZZqaDUkGlIuADqrwVMbJrI+xGWNjlNrcspiUwCjM4g
 553UsmAbluYyb+hJ7M1ga4/Zgh5J5bqzHMyn0ZYunJOCA3avLp8SIUJk7iaDkkaYi1AD
 U4V8YJteD9iKHMnraHNCPdQ659Yf87W1ReQ4FPxlvKSTNo/9iV5JLCOHKuvW7uNmjj2E
 Wj3tHQAxzSwXiwOsuWbOg8uxsDm0QVgtLak5Ip0jyX2t5KLC29t2ouZuTccYCcz0t7Yq
 MbLybJHhnaHYF+W7mDD5JtkApdUtWPW2eLeEtSIhUXC0ejlRpqG2VfvmcBQHqK6JeKSm
 NF4Q==
X-Gm-Message-State: AOAM530gNSNCO4vHDWurp1DohnLJMC2mfJJ9Jri+yrns72DRjP0tmJkT
 DRqHqazMagP6go7h/lHlsoOpG2zcsqc8P1W1UnB6qY6dwCarJEJb7tOVxjskSc5AEoXGePZMBWz
 MEkTiV0VYHmZRZwWHSdBleA==
X-Received: by 2002:a17:902:bb81:: with SMTP id
 m1mr42577212pls.134.1594075454291; 
 Mon, 06 Jul 2020 15:44:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyKlDUILrNhEZOu4t20bsIU72SPNfPkiSMv6ptgB8+VNWOgOwWU1av6fzMV5gPPxVbpsQ1m2A==
X-Received: by 2002:a17:902:bb81:: with SMTP id
 m1mr42577202pls.134.1594075453960; 
 Mon, 06 Jul 2020 15:44:13 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id v11sm10277248pfc.108.2020.07.06.15.44.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 15:44:13 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 58C6B1804ED; Tue,  7 Jul 2020 00:44:08 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Daniel Borkmann <daniel@iogearbox.net>, davem@davemloft.net
In-Reply-To: <4f7b2b71-8b2a-3aea-637d-52b148af1802@iogearbox.net>
References: <20200706122951.48142-1-toke@redhat.com>
 <4f7b2b71-8b2a-3aea-637d-52b148af1802@iogearbox.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 07 Jul 2020 00:44:08 +0200
Message-ID: <87lfjwl0w7.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net] vlan: consolidate VLAN parsing code and
	limit max parsing depth
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
Cc: Davide Caratti <dcaratti@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Toshiaki Makita <toshiaki.makita1@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGFuaWVsIEJvcmttYW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD4gd3JpdGVzOgoKPiBPbiA3LzYv
MjAgMjoyOSBQTSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+PiBUb3NoaWFraSBw
b2ludGVkIG91dCB0aGF0IHdlIG5vdyBoYXZlIHR3byB2ZXJ5IHNpbWlsYXIgZnVuY3Rpb25zIHRv
IGV4dHJhY3QKPj4gdGhlIEwzIHByb3RvY29sIG51bWJlciBpbiB0aGUgcHJlc2VuY2Ugb2YgVkxB
TiB0YWdzLiBBbmQgRGFuaWVsIHBvaW50ZWQgb3V0Cj4+IHRoYXQgdGhlIHVuYm91bmRlZCBwYXJz
aW5nIGxvb3AgbWFrZXMgaXQgcG9zc2libGUgZm9yIG1hbGljaW91c2x5IGNyYWZ0ZWQKPj4gcGFj
a2V0cyB0byBsb29wIHRocm91Z2ggcG90ZW50aWFsbHkgaHVuZHJlZHMgb2YgdGFncy4KPj4gCj4+
IEZpeCBib3RoIG9mIHRoZXNlIGlzc3VlcyBieSBjb25zb2xpZGF0aW5nIHRoZSB0d28gcGFyc2lu
ZyBmdW5jdGlvbnMgYW5kCj4+IGxpbWl0aW5nIHRoZSBWTEFOIHRhZyBwYXJzaW5nIHRvIGFuIGFy
Yml0cmFyaWx5LWNob3NlbiwgYnV0IGhvcGVmdWxseQo+PiBjb25zZXJ2YXRpdmUsIG1heCBkZXB0
aCBvZiAzMiB0YWdzLiBBcyBwYXJ0IG9mIHRoaXMsIHN3aXRjaCBvdmVyCj4+IF9fdmxhbl9nZXRf
cHJvdG9jb2woKSB0byB1c2Ugc2tiX2hlYWRlcl9wb2ludGVyKCkgaW5zdGVhZCBvZgo+PiBwc2ti
X21heV9wdWxsKCksIHRvIGF2b2lkIHRoZSBwb3NzaWJsZSBzaWRlIGVmZmVjdHMgb2YgdGhlIGxh
dHRlciBhbmQga2VlcAo+PiB0aGUgc2tiIHBvaW50ZXIgJ2NvbnN0JyB0aHJvdWdoIGFsbCB0aGUg
cGFyc2luZyBmdW5jdGlvbnMuCj4+IAo+PiBSZXBvcnRlZC1ieTogVG9zaGlha2kgTWFraXRhIDx0
b3NoaWFraS5tYWtpdGExQGdtYWlsLmNvbT4KPj4gUmVwb3J0ZWQtYnk6IERhbmllbCBCb3JrbWFu
biA8ZGFuaWVsQGlvZ2VhcmJveC5uZXQ+Cj4+IEZpeGVzOiBkN2JmMmViZWJjMmIgKCJzY2hlZDog
Y29uc2lzdGVudGx5IGhhbmRsZSBsYXllcjMgaGVhZGVyIGFjY2Vzc2VzIGluIHRoZSBwcmVzZW5j
ZSBvZiBWTEFOcyIpCj4+IFNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPgo+PiAtLS0KPj4gICBpbmNsdWRlL2xpbnV4L2lmX3ZsYW4uaCB8IDU3
ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDM1IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oIGIvaW5jbHVkZS9saW51eC9pZl92bGFuLmgKPj4g
aW5kZXggNDI3YTViODU5N2MyLi44NTVkMTYxOTJlNmEgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUv
bGludXgvaWZfdmxhbi5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oCj4+IEBAIC0y
NSw2ICsyNSw4IEBACj4+ICAgI2RlZmluZSBWTEFOX0VUSF9EQVRBX0xFTgkxNTAwCS8qIE1heC4g
b2N0ZXRzIGluIHBheWxvYWQJICovCj4+ICAgI2RlZmluZSBWTEFOX0VUSF9GUkFNRV9MRU4JMTUx
OAkvKiBNYXguIG9jdGV0cyBpbiBmcmFtZSBzYW5zIEZDUyAqLwo+PiAgIAo+PiArI2RlZmluZSBW
TEFOX01BWF9ERVBUSAkzMgkJLyogTWF4LiBudW1iZXIgb2YgbmVzdGVkIFZMQU4gdGFncyBwYXJz
ZWQgKi8KPj4gKwo+Cj4gQW55IGluc2lnaHQgb24gbGltaXRzIG9mIG5lc3Rpbmcgd3J0IFFpblEs
IG1heWJlIGZyb20gc3BlYyBzaWRlPwoKRG9uJ3QgdGhpbmsgc28uIFdpa2lwZWRpYSBzYXlzIHRo
aXM6CgogODAyLjFhZCBpcyB1cHdhcmQgY29tcGF0aWJsZSB3aXRoIDgwMi4xUS4gQWx0aG91Z2gg
ODAyLjFhZCBpcyBsaW1pdGVkCiB0byB0d28gdGFncywgdGhlcmUgaXMgbm8gY2VpbGluZyBvbiB0
aGUgc3RhbmRhcmQgbGltaXRpbmcgYSBzaW5nbGUKIGZyYW1lIHRvIG1vcmUgdGhhbiB0d28gdGFn
cywgYWxsb3dpbmcgZm9yIGdyb3d0aCBpbiB0aGUgcHJvdG9jb2wuIEluCiBwcmFjdGljZSBTZXJ2
aWNlIFByb3ZpZGVyIHRvcG9sb2dpZXMgb2Z0ZW4gYW50aWNpcGF0ZSBhbmQgdXRpbGl6ZQogZnJh
bWVzIGhhdmluZyBtb3JlIHRoYW4gdHdvIHRhZ3MuCgo+IFdoeSBub3QgOCBhcyBtYXgsIGZvciBl
eGFtcGxlIChJJ2QgcHJvYmFibHkgZXZlbiBjb25zaWRlciBhIGRlcHRoIGxpa2UKPiB0aGlzIGFz
IHV0dGVybHkgYnJva2VuIHNldHVwIC4uKT8KCkkgb3JpZ2luYWxseSB3ZW50IHdpdGggOCwgYnV0
IGNoaWNrZW5lZCBvdXQgYWZ0ZXIgc2VlaW5nIGhvdyBtYW55IHBsYWNlcwpjYWxsIHRoZSBwYXJz
aW5nIGZ1bmN0aW9uLiBXaGlsZSBJIGRvIGFncmVlIHRoYXQgZWlnaHQgdGFncyBpcy4uLiBzb21l
d2hhdApleGNlc3NpdmUuLi4gSSB3YXMgdHJ5aW5nIHRvIG1ha2UgYWJzb2x1dGVseSBzdXJlIG5v
IG9uZSB3b3VsZCBoaXQgdGhpcwpsaW1pdCBpbiBub3JtYWwgdXNlLiBTZWUgYWxzbyBodHRwczov
L3hrY2QuY29tLzExNzIvIDopCgotVG9rZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BED5A835F
	for <lists+cake@lfdr.de>; Wed, 31 Aug 2022 18:40:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7D7533CB41;
	Wed, 31 Aug 2022 12:40:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1661964032;
	bh=w9emXiV8ksOREWROVxBj5K57cTnGGE6iTdNSTunEmSU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=TzBQJMUibSyFKvJHP2U8SskB+El+3QVXX7YNQs/VI1OgO5haQAmYb0UWEQOYewads
	 Xavw5DH20zYw6NoKTQe8EiC4YcCZrehN7KNuqJXJxR/zfflYHqCKmXfSMWgtxKZ1TN
	 vo1xWTqRcc/MFcAxwoBjA97YvpvKEK4FCDz/45Yx5OfItUU5TZ/EuwmSTclIjR85Hk
	 DkoiCq2UofHLH3DbtxjIKkKTu5cPPo4n8CaOaJubo8YKFfoByhZLr7GhZD42ATa9Rg
	 DLh9mvpmZ/DM3isQETdb+v1JUItmtyFWR4zwVnqUmRtnwWZJRvzKfVzfVwKURBLDnc
	 coanYN51ouA+w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2C9233B2A4
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 12:40:31 -0400 (EDT)
Received: by mail-wr1-x431.google.com with SMTP id c7so12364312wrp.11
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 09:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc;
 bh=bUBMi1acHtMeDGGZvh1t1mjTfEq6faCqsrwiPN+cRk0=;
 b=ZEOZpDu7xj2KDttFLwLzWSKZ8jV3ZJSh8OBnIxqtFoNZd+MQlO1YJ0i5M62mWkCzKv
 Cpp23/siggy3iob/Om7ZG0BE4yS6PwI0cc9idi59AdHPyxkvvnVD9oFgcBDqbRvPOnEr
 u+Lcz3E288HIwKHWo65KabcTTPrX8f9Rp28Brpe6Ehzjjnt1fIfb0qWeEC2DtX/YHl1I
 A35qwx8RR05D2JuhaTi0AD7BUy5pQf6qOT/uK3GK+yogCnsNc79bjM/K0Drj/ZqWdrge
 ImTBnGDHF/IaOWe0RGXANZdqRlFXXpX+A6XjBQfzKxGIQH7tthqxA8XwVzA32blBzgb0
 LcRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
 bh=bUBMi1acHtMeDGGZvh1t1mjTfEq6faCqsrwiPN+cRk0=;
 b=vxi9ewUidU3UzmxJ1X1+X+LImZI7wnVSql/YSOItn4wze95d/WF67ijTggCS3+7M2X
 P4OJPkoNi7w4r4EzdT2aIb4xEX0hoYYM4qpeevnwRUiiwGqmHvpEhNBCPH/LJ4pziF9Q
 AnMO41EQamKqPyNpMXJg2EODFHuJaRN4vmGQ25S4pM7M473kUPJjswVsE8ZCqpXk7vgU
 LFtgEY5NaGaNVIJ20m/yxA3Idc6AC5FZJs5LzZnzGymFhXx9x6lJOXzD89JSsAQcdi19
 tfqE46m4a0HLM9p8NaqLa1PxN43jwSGhXsaEdEB+GbzEAolzm1PBVf4YAFi3z9MKz3Sd
 c8qA==
X-Gm-Message-State: ACgBeo3dPT1+9V3CyQZp5JtIDDyMjoEmpYelJBh8yaedZrpixAtnTzO0
 eBi22VVZaoTBQy9ALi2uS37mMNml9LwzbcRdCzPJqlOG
X-Google-Smtp-Source: AA6agR5juRfFLmW4tIeo5yHvfh6iJU2ENOUufSBtKdXypL68uFGOC0RxbLf3CqMZ2/LeKM13VFHUxqpw/l0LAxb8uYE=
X-Received: by 2002:a5d:4302:0:b0:225:5303:39e5 with SMTP id
 h2-20020a5d4302000000b00225530339e5mr12658153wrq.380.1661964030001; Wed, 31
 Aug 2022 09:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220831092103.442868-1-toke@toke.dk>
In-Reply-To: <20220831092103.442868-1-toke@toke.dk>
Date: Wed, 31 Aug 2022 09:40:17 -0700
Message-ID: <CAA93jw7f7eUeMc9rymgGtNAjK2t7s_X80L1JNq9fdwPkAn_qPg@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] [PATCH net] sch_cake: Return __NET_XMIT_STOLEN when
 consuming enqueued skb
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

aG1tLiB3aGF0IGRpZCB0aGlzIGJyZWFrIGFib3ZlIGl0PyBqdXN0IHN0YXRzPyBvciBhIG1lbSBs
ZWFrPyBvcj8KCk9uIFdlZCwgQXVnIDMxLCAyMDIyIGF0IDI6MjUgQU0gVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIHZpYSBDYWtlCjxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4K
PiBXaGVuIHRoZSBHU08gc3BsaXR0aW5nIGZlYXR1cmUgb2Ygc2NoX2Nha2UgaXMgZW5hYmxlZCwg
R1NPIHN1cGVycGFja2V0cwo+IHdpbGwgYmUgYnJva2VuIHVwIGFuZCB0aGUgcmVzdWx0aW5nIHNl
Z21lbnRzIGVucXVldWVkIGluIHBsYWNlIG9mIHRoZQo+IG9yaWdpbmFsIHNrYi4gSW4gdGhpcyBj
YXNlLCBDQUtFIGNhbGxzIGNvbnN1bWVfc2tiKCkgb24gdGhlIG9yaWdpbmFsIHNrYiwKPiBidXQg
c3RpbGwgcmV0dXJucyBORVRfWE1JVF9TVUNDRVNTLiBUaGlzIGNhbiBjb25mdXNlIHBhcmVudCBx
ZGlzY3MgaW50bwo+IGFzc3VtaW5nIHRoZSBvcmlnaW5hbCBza2Igc3RpbGwgZXhpc3RzLCB3aGVu
IGl0IHJlYWxseSBoYXMgYmVlbiBmcmVlZC4gRml4Cj4gdGhpcyBieSBhZGRpbmcgdGhlIF9fTkVU
X1hNSVRfU1RPTEVOIGZsYWcgdG8gdGhlIHJldHVybiB2YWx1ZSBpbiB0aGlzIGNhc2UuCj4KPiBG
aXhlczogMGM4NTAzNDRkMzg4ICgic2NoX2Nha2U6IENvbmRpdGlvbmFsbHkgc3BsaXQgR1NPIHNl
Z21lbnRzIikKPiBTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VA
dG9rZS5kaz4KPiAtLS0KPiAgbmV0L3NjaGVkL3NjaF9jYWtlLmMgfCA0ICsrKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBh
L25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKPiBpbmRleCBhNDNh
NThhNzNkMDkuLmEwNDkyODA4MmU0YSAxMDA2NDQKPiAtLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2Uu
Ywo+ICsrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCj4gQEAgLTE3MTMsNiArMTcxMyw3IEBAIHN0
YXRpYyBzMzIgY2FrZV9lbnF1ZXVlKHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBRZGlzYyAq
c2NoLAo+ICAgICAgICAgfQo+ICAgICAgICAgaWR4LS07Cj4gICAgICAgICBmbG93ID0gJmItPmZs
b3dzW2lkeF07Cj4gKyAgICAgICByZXQgPSBORVRfWE1JVF9TVUNDRVNTOwo+Cj4gICAgICAgICAv
KiBlbnN1cmUgc2hhcGVyIHN0YXRlIGlzbid0IHN0YWxlICovCj4gICAgICAgICBpZiAoIWItPnRp
bl9iYWNrbG9nKSB7Cj4gQEAgLTE3NzEsNiArMTc3Miw3IEBAIHN0YXRpYyBzMzIgY2FrZV9lbnF1
ZXVlKHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBRZGlzYyAqc2NoLAo+Cj4gICAgICAgICAg
ICAgICAgIHFkaXNjX3RyZWVfcmVkdWNlX2JhY2tsb2coc2NoLCAxLW51bXNlZ3MsIGxlbi1zbGVu
KTsKPiAgICAgICAgICAgICAgICAgY29uc3VtZV9za2Ioc2tiKTsKPiArICAgICAgICAgICAgICAg
cmV0IHw9IF9fTkVUX1hNSVRfU1RPTEVOOwo+ICAgICAgICAgfSBlbHNlIHsKPiAgICAgICAgICAg
ICAgICAgLyogbm90IHNwbGl0dGluZyAqLwo+ICAgICAgICAgICAgICAgICBjb2JhbHRfc2V0X2Vu
cXVldWVfdGltZShza2IsIG5vdyk7Cj4gQEAgLTE5MDQsNyArMTkwNiw3IEBAIHN0YXRpYyBzMzIg
Y2FrZV9lbnF1ZXVlKHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBRZGlzYyAqc2NoLAo+ICAg
ICAgICAgICAgICAgICB9Cj4gICAgICAgICAgICAgICAgIGItPmRyb3Bfb3ZlcmxpbWl0ICs9IGRy
b3BwZWQ7Cj4gICAgICAgICB9Cj4gLSAgICAgICByZXR1cm4gTkVUX1hNSVRfU1VDQ0VTUzsKPiAr
ICAgICAgIHJldHVybiByZXQ7Cj4gIH0KPgo+ICBzdGF0aWMgc3RydWN0IHNrX2J1ZmYgKmNha2Vf
ZGVxdWV1ZV9vbmUoc3RydWN0IFFkaXNjICpzY2gpCj4gLS0KPiAyLjM3LjIKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5nIGxp
c3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UKCgoKLS0gCkZRIFdvcmxkIERvbWluYXRpb24gcGVuZGluZzog
aHR0cHM6Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29kZWwvCkRhdmUgVMOk
aHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8A1C9175B
	for <lists+cake@lfdr.de>; Fri, 28 Nov 2025 10:33:15 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id CA4F29D8E6D;
	Fri, 28 Nov 2025 10:33:14 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=PY6nOk7M
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764322394;
 b=GLBiRQOAk+RluhdQly1DvKWAgfnfCmv37/Jy2o5gx/LgDN1FjWh7rNsOzCsg0g9xc65bq
 k6ucZ4OwhJJwJ9dXfqC3Iq/2pyPqoEYL8z/tG0X7IUnXSNtDr7zmAw6fgM1G+6XpSzHVRbt
 iYavTSLuCgi5nJs7d6MPTGYQ/GEH+bM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764322394; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=5D4MyxBARvU2zqBW3+ugyJ8ano+gnM3/WDeXsUA7d3E=;
 b=NSa/DwJEOMygW3XFKDyVbu50467EwVbOk2UT9/vCS5PdvNhc1wmxIvWXXh50y5agGd2Sy
 KKMXcLhWmOsDiFOIJj+s8XE1nfCxjq7Fr6X3K6GHyTDPOWtbD4htzogbKXalI65ZBSrPByG
 qq4wMl9aMXWlGtGHecFYYiqCE+5rXhY=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com
 [IPv6:2607:f8b0:4864:20::f33])
	by mail.toke.dk (Postfix) with ESMTPS id 47EC79D6518
	for <cake@lists.bufferbloat.net>; Fri, 28 Nov 2025 01:16:31 +0100 (CET)
Received: by mail-qv1-xf33.google.com with SMTP id
 6a1803df08f44-8823fa3bd95so20062346d6.1
        for <cake@lists.bufferbloat.net>;
 Thu, 27 Nov 2025 16:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764288989; x=1764893789;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/f5AJstH+nkEL/NwBUZtkEuWsmh/aI2o6SSahqAyPSM=;
        b=PY6nOk7M22W4LqwjndCH0ww3uKl0mVdvx4zwEDB+Ao9HqqWDygfV+qGaZOVz0KDkS/
         B8iXnp6ngjqo583Q7POZ3syjt/5+Y3tf06SGhAfe/CaRyXOFy+7K+MWx5dXPvSnkSKcM
         /LRbrLh8zCXomnD0bLVjNv8NhfzHStHZWBROT5ZJTVFUbGexCZC4WJJSdPTF79lLfQgs
         PAzYyLDcw1LYL1hy4pIdFi186JhsMZpe4nCNTShRguvNrD1zS2CRlB1m9RqfJHhWvm7u
         lztZ7GFXZgJNcaOWt+Du7up+ASMGmB8b3GxFOkkjfqT+FuswTci9YWQ/7tbNjPcYJD4C
         Z9OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764288989; x=1764893789;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/f5AJstH+nkEL/NwBUZtkEuWsmh/aI2o6SSahqAyPSM=;
        b=Q4fdyykeDlP43eoDVa5J+Srgu5xH5MLZhMBHFkJo6suvKroEhSFGalc2LAM6FhmWDD
         Xxbgl3lUsJME9fNkNwUaJD9MRv9jqBC8SDFrHm6TQuHsFwmNrG44pvruLWY6XpBd/KGN
         ckg/UI91h/a7BMWr135U0f9OjqqH8IXIbAFUd54vNBOmdAmyhLhS6CzJrN5FEkaTr43K
         9JdakXOQ5OGnh7bFzyRF/12kU9Q53A/SlOBCM0SFnWbRp+TZhNjZO/anCcB1+PKSq2cn
         7pNFMAMzy+83OjRC3xIFkibviyrBca/XMfTD7Bl19Lcg5qftVq92frkCinH4aVn85sEP
         BFQw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXiIDJNG0oJc50Gv0nVE7H7wCrxVBE6TVk+OYcDG1pHgtmjn9S27AaxpgRO+8xS9xVLTcH+@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyRAyBNutVAfZIVhK5DRK+VtEKKy2qChQRG9CdBC53GdQqrEhRu
	ZOA2tswWIpA4jscPtJImZS3LEqTEFuHDenfd1QHdKFSC2cNELOx2dZgL9EsHAw9V4FxOpWP4j1n
	2FlvwJKu7j1V9Q223A1yMcl40SuHgxCH9HnXwdVQm
X-Gm-Gg: ASbGncvPWG3isuHabfviM/3Dtl1PQ69KATDHAK9D3K+oHq2vuZzPEHlbBoIbCE6VfxW
	IJz3SbGWx8cyGCmfJHo7mOsWF/goaAdS/XBJ4PNxdGDKKsmW+3dsFj77a4mLF5iAyKTbspweHnW
	Y9tS3YL+UQeFh0QuLQADHrT96vEepiKxwWFfBopn0DxpWgmQEQ2UYiAYKgNSD+vLCywZMjwkk1A
	2RGs132ji87ociS5hYL9/wJxVekWo/7yVf5Rww9Am/ZGUIfWmajvk12jM8xNS/Vjk+DLeyZMYXi
	rmo5vdQ=
X-Google-Smtp-Source: 
 AGHT+IHqtqFThjT0il3Av8xWTU6PtV96MSG8Goe9XxzXE4td+Exyt3EFwZ1YQr+Qn1b36fkEWbyrs9Jz6MGV1Fprrjw=
X-Received: by 2002:a05:620a:1990:b0:8b2:f0be:27f5 with SMTP id
 af79cd13be357-8b33be05c62mr3793893285a.36.1764288989592; Thu, 27 Nov 2025
 16:16:29 -0800 (PST)
MIME-Version: 1.0
References: <20251126194513.3984722-1-xmei5@asu.edu>
 <20251127153644.55ef4796@kernel.org>
In-Reply-To: <20251127153644.55ef4796@kernel.org>
From: Xiang Mei <xmei5@asu.edu>
Date: Thu, 27 Nov 2025 17:16:18 -0700
X-Gm-Features: AWmQ_bnOxFilKmR9vNSK0sO-1VqGCMNowWWrP0Rc25rhrMJR1r8SMo-VGLfuglE
Message-ID: 
 <CAPpSM+S1-c68WsY3KYQp4R3kC+p+eREdJP0Qas9Q68MiA9Y3AA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: security@kernel.org, netdev@vger.kernel.org, toke@toke.dk,
	xiyou.wangcong@gmail.com, cake@lists.bufferbloat.net, bestswngs@gmail.com
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: CBXBIRQJADLS7IRPIPAESKPFAZJ777YR
X-Message-ID-Hash: CBXBIRQJADLS7IRPIPAESKPFAZJ777YR
X-Mailman-Approved-At: Fri, 28 Nov 2025 10:33:13 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v7 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAPpSM+S1-c68WsY3KYQp4R3kC+p+eREdJP0Qas9Q68MiA9Y3AA@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgcmVtaW5kZXIuIFRoZSBjb25mbGljdCBoYXMgYmVlbiByZXNvbHZlZCBp
biB2OC4NCg0KT24gVGh1LCBOb3YgMjcsIDIwMjUgYXQgNDozNuKAr1BNIEpha3ViIEtpY2luc2tp
IDxrdWJhQGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIDI2IE5vdiAyMDI1IDEyOjQ1
OjEyIC0wNzAwIFhpYW5nIE1laSB3cm90ZToNCj4gPiBJbiBjYWtlX2Ryb3AoKSwgcWRpc2NfdHJl
ZV9yZWR1Y2VfYmFja2xvZygpIGlzIHVzZWQgdG8gdXBkYXRlIHRoZSBxbGVuDQo+ID4gYW5kIGJh
Y2tsb2cgb2YgdGhlIHFkaXNjIGhpZXJhcmNoeS4gSXRzIGNhbGxlciwgY2FrZV9lbnF1ZXVlKCks
IGFzc3VtZXMNCj4gPiB0aGF0IHRoZSBwYXJlbnQgcWRpc2Mgd2lsbCBlbnF1ZXVlIHRoZSBjdXJy
ZW50IHBhY2tldC4gSG93ZXZlciwgdGhpcw0KPiA+IGFzc3VtcHRpb24gYnJlYWtzIHdoZW4gY2Fr
ZV9lbnF1ZXVlKCkgcmV0dXJucyBORVRfWE1JVF9DTjogdGhlIHBhcmVudA0KPiA+IHFkaXNjIHN0
b3BzIGVucXVldWluZyBjdXJyZW50IHBhY2tldCwgbGVhdmluZyB0aGUgdHJlZSBxbGVuL2JhY2ts
b2cNCj4gPiBhY2NvdW50aW5nIGluY29uc2lzdGVudC4gVGhpcyBtaXNtYXRjaCBjYW4gbGVhZCB0
byBhIE5VTEwgZGVyZWZlcmVuY2UNCj4gPiAoZS5nLiwgd2hlbiB0aGUgcGFyZW50IFFkaXNjIGlz
IHFmcV9xZGlzYykuDQo+DQo+IFRoaXMgc2VyaWVzIGRvZXMgbm90IGFwcGx5LCBwbGVhc2UgcmVi
YXNlIG9uIG5ldGRldi9uZXQvbWFpbi4NCj4gLS0NCj4gcHctYm90OiBjcg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0g
Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

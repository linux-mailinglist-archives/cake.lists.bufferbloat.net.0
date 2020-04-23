Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAC31B67F2
	for <lists+cake@lfdr.de>; Fri, 24 Apr 2020 01:12:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7FDA53CB46;
	Thu, 23 Apr 2020 19:12:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587683532;
	bh=ib2xXcyKai196qXimfEMkXzApCmYeKHAZjv/nfpinUw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WJEk6rrt1tSCoBumk5JhuZGVsTKn/7FsBSEzA2B48Ag6QYpt0/mp4ZD5WL1vlT5FJ
	 Iy4CgfTAxTs9g0Yae9JKQgziCuqyeYR3Py8dLJt8/dl9Wo9b85WlNzWOfgN6R3Sq63
	 uS+wEa8DKdA4fsojxmvEfdjL+1W/pFc+i/4NTTKmInVoqQgAWFh+gsAxhofuRuWtSx
	 ZbkS5+TXf4GxxAlvaHw5oO8J1jWhE6zy8ZFQvkzKWEdIcySz2DyHuG8cfnRicrwcgx
	 O+2tdYSO9Z1P7ZbRrzmz3NzxDcjaRbKVQzc9SDzhuXByFed4M/vE9dSni9FP+v0mGp
	 +P6YUcjDFpJcg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E55083B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 19:12:10 -0400 (EDT)
Received: by mail-il1-x141.google.com with SMTP id q10so7545436ile.0
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 16:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=u9DVP0AgkfdMB50EEx6D995fuGA+XZlbO2RDW30u+g4=;
 b=Ak5XozDTJypMPKZU2weBJg9+gBzSuB8wipGrVytUS/jP8qq7CFMlJkXCp2q7OivyZ8
 2V4E/nzQIwhr98hz3WSgXlZo1JkJdgRsx4lJ06kID7sCnMueN2vLp9pwjtEWvnCLpAAD
 phuyzKwpYlqPOQaaIoMVLxVIfr2FwGkTdkiWHvPV7NCoBmUZJE2+MEABKiaezO1OCauC
 9uIjYg7qkLxBHLoNn4ePpIYz5L5KtzzgLghbn4X6mP0qVlFJbSpswFVzq55dbRxepINu
 O5OK8+bq3jfCCWDlrmuyVNjrhohnpu+AaU6fddM2B1zeu5lBgAuR9z9DZuU/HszTbR9R
 0PyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=u9DVP0AgkfdMB50EEx6D995fuGA+XZlbO2RDW30u+g4=;
 b=APuMnq9xQJPnA6Chs+6jvG31R/6zJSSOYSOBWXbn4TpcimP4TybXUM4NFETPYtkwPs
 nI7gLzSEwYfFnvUWHI+Rfp+g2ej53EWbtQXQqQ38mUce/TQvyHPDoLuKLF9pmOGfbud7
 fJgOacaBCiuBjELw6jgDyzwCgTjKkJXOPujRoqgWWJLjeGw+dT4r5vHSxiouUTAkZ2Qp
 TCRmAwL7Evslk5I6fnbSlx3pHHtuAtbx1hFT6fHfMjyPV9LWBxaJXnhhatNF1ffGR7Za
 LuJB7W0Pt3YTIwG3P/FarZ69PMqcQfM6Rmhd4VLGlQvXV17ogUe8X97eNYpxLa5QQ4Y7
 I0Hw==
X-Gm-Message-State: AGi0PubpykgW+RyApNNaJY2XmRlO4KRmmktoPA8pcgAMl+WyIhEgKZmk
 keEBeI9BNUJ3VFX6hG5IzRzk7NwdhefqfNiOmV4=
X-Google-Smtp-Source: APiQypIDe//RuTxwRwzQJp2kq21CyK5O57+EGhD+ZznSrhpMRvQ3DRr+sLdicnWE8xV2YkL2oOw9SecxrqiHXQvjxH0=
X-Received: by 2002:a92:dc0d:: with SMTP id t13mr5959936iln.287.1587683530440; 
 Thu, 23 Apr 2020 16:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
 <20200423092909.GC28541@sakura> <87o8ri76u2.fsf@toke.dk>
 <20200423123329.GG28541@sakura>
 <877dy66tng.fsf@toke.dk> <20200423173111.GL28541@sakura>
 <871roe6of0.fsf@toke.dk>
 <20200423215954.GN28541@sakura> <87r1wd6bwy.fsf@toke.dk>
In-Reply-To: <87r1wd6bwy.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 23 Apr 2020 16:11:58 -0700
Message-ID: <CAA93jw4ECsgvjnamqjDFzFboMM9j3u1ZFtF=E8x6zyBOCTJDnw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>, Maxime Bizon <mbizon@freebox.fr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBBcHIgMjMsIDIwMjAgYXQgNDowNSBQTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBNYXhpbWUgQml6b24gPG1iaXpvbkBmcmVlYm94
LmZyPiB3cml0ZXM6Cj4KPiA+IE9uIFRodXJzZGF5IDIzIEFwciAyMDIwIMOgIDIwOjM1OjE1ICgr
MDIwMCksIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPiA+Cj4gPj4gSSBtZWFudCBt
b3JlIGRldGFpbHMgb2YgeW91ciBTT0MgcGxhdGZvcm0uIFlvdSBhbHJlYWR5IHNhaWQgaXQncwo+
ID4+IEFSTS1iYXNlZCwgc28gSSBndWVzcyB0aGUgbW9zdCBpbXBvcnRhbnQgbWlzc2luZyBwaWVj
ZSBpcyB3aGljaCAoTGludXgpCj4gPj4gZHJpdmVyIGRvZXMgdGhlIEV0aGVybmV0IGRldmljZShz
KSB1c2U/Cj4gPgo+ID4gLSBNYXJ2ZWxsIEtpcmt3b29kLCBtdjY0M3h4X2V0aCBkcml2ZXIKPiA+
IC0gTWFydmVsbCBBOGssIG12cHAyIGRyaXZlcgo+Cj4gTm8gbmF0aXZlIFhEUCBzdXBwb3J0IGlu
IGFueSBvZiB0aG9zZSwgdW5mb3J0dW5hdGVseSA6KAo+Cj4gPj4gWXVwLCBJIHRoaW5rIHNvLiBX
aGF0IGRvZXMgeW91ciBjdXJyZW50IHNvbHV0aW9uIGRvIHdpdGggcGFja2V0cyB0aGF0Cj4gPj4g
YXJlIGRlc3RpbmVkIGZvciB0aGUgV2lGaSBpbnRlcmZhY2UsIEJUVz8gSnVzdCBwdW50IHRoZW0g
dG8gdGhlIHJlZ3VsYXIKPiA+PiBrZXJuZWwgcGF0aD8KPiA+Cj4gPiB5ZXMsIGJ1dCB0aGF0IHdv
bid0IGZseSBhbnltb3JlIGZvciAxMWF4IHJhdGVzCj4KPiBJbmRlZWQsIHRoYXQgd2FzIHBhcnRs
eSB3aHkgSSBhc2tlZCA6KQo+IEdvdCBhbnkgcGxhbnM/CgpJIHdvdWxkIHJlYWxseSBsb3ZlIHRv
IGdldCBzb21ldGhpbmcgZ29pbmcgb3V0IG9mIHRoaXMgaW5pdGlhdGl2ZToKCmh0dHBzOi8vcG9p
bnRlci5uZ2kuZXUvcGFnZXMvbmdpLXBvaW50ZXItb3BlbmNhbGxzCgouLi4gZWl0aGVyIHdpdGgg
bWFydmVsbCB3aWZpLCA4MDIuMTFheCwgYXRoMTFrLCBtdDc2Li4uIGdwb24gb250cywKanVzdCBz
b21ldGhpbmcsIGFueXRoaW5nIGZxLWluZyBhdCB0aGUgdmVyeSBsZWFzdCwgb3ZlciBmaWJlciBv
ZiBhbnkKc29ydCwgd291bGQgYmUgYSBzdGFydC4KCmlzIHRoZXJlIGFueW9uZSBvdXQgdGhlcmUg
d2l0aCBzb21lIHNwYXJlIHRpbWUgYW5kIG5lZWRzIHNvbWUgZXUgZG9sbGFycz8KCkkgdGVuZCB0
byBkaXNhZ3JlZSB0aGF0IHdlIG5lZWQgbWFzc2l2ZSBvZmZsb2FkaW5nIG9uIDgwMi4xMWF4LiBX
ZQpuZWVkIGZpcm13YXJlIG9uIHRoZSBjaGlwIHRoYXQgZG9lcyBwZXIgc3RhdGlvbiBzY2hlZHVs
aW5nLCBmb3IgdGhlCnJlc3Qgb2YgdGhlIHF1ZXVlIG1hbmFnZW1lbnQgYSBzbWFydGVyIGhvc3Qg
Y3B1IGluIHRoZSBhNzIgY2xhc3MgbW9yZQp0aGFuIHN1ZmZpY2VzLCBlc3BlY2lhbGx5IGlmIHRo
ZSBwYWNrZXRzIGFyZSBhcnJpdmluZyBnc28nZC4KCj4KPiAtVG9rZQoKPgoKCi0tCk1ha2UgTXVz
aWMsIE5vdCBXYXIKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVr
bGlicmUuY29tClRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

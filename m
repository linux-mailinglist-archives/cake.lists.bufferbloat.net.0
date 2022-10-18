Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0463D602307
	for <lists+cake@lfdr.de>; Tue, 18 Oct 2022 06:02:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CC1B63CB39;
	Tue, 18 Oct 2022 00:02:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666065759;
	bh=9sqVLmBTeDnjwkUzeDwygoVAXZGhxK4In7ckjNA1uJU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=XymAV1hUw12ywBBjuDfDUpuiYAKXFMRqgltkS8dFvtDpOIS8UDQunPdkqXUJddqJ9
	 vnPCVHKbF3ds5uLYOFLyPaWuiNkX/r/vFlT2w9B3B3DyGl7oZVG+DJBAEn6AFZYoOF
	 +bRFqMH2g3BB3t/Rb0XOEUQqFVnDhZPXo280UWP8RgDxcHqeEfeavkWbUvZjL6cEZn
	 oLrhSqBk8fol6Hf7NDbmMLxZo8usqjA1KQnFPn5YlGjz4E7TLdXG2f6guTrFaPjrkI
	 F0/vGS2cBX+YxHM7nNr6Fku0UXxvj+i1qNRL7g/r3y8V9dCxJKjJ/8zz/IKQRWen+3
	 B0Vumg35BOQbA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 83FCC3B2A4
 for <cake@lists.bufferbloat.net>; Tue, 18 Oct 2022 00:02:38 -0400 (EDT)
Received: by mail-yb1-xb30.google.com with SMTP id b145so15628038yba.0
 for <cake@lists.bufferbloat.net>; Mon, 17 Oct 2022 21:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=HalKK5SyX7FJhYB5Tf86gqfUkX66otPt4pr9pNs2XmA=;
 b=Xm71qlnvRqyuKfZiXZ6kysTR2sRjb9zTfNa42alQ+cKjHsZx2xgw+rdFQsQAy9JchL
 DI30gqjH4RqKPJdg/Mdk4S0PODBtMnTwuOF+cpc3Tu2z43Qsjtml3JTAaePN9pR+QvBE
 RCgvZtHchl+2diBPREa5X+GG6VtFrd80fXVmGQ7sLi6uUMuVDDSZ87a2rGHvGRxeFAqk
 uF82P6zMl0jdvCEGjBKbonMCkM6NXs3tyd/VH7nKBbK+xOVxaQrUB1k5MXtmfIs/ubI0
 lijPS189ySTUDCj68W1GLbzP9dCX+Akj7VZ044VrGwXyGTYZ1oMKjBGzgOtyhZCr7NVd
 0/uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HalKK5SyX7FJhYB5Tf86gqfUkX66otPt4pr9pNs2XmA=;
 b=0f0MI2MTX7cVsmqYOsNsqPRJYbb2EbrZgifiwFzBhauQJ2ThV3H00V5FloWpA6CeoI
 rnbHhaX+GSy24Ysf/ofsJfNSORQLP3QCqoUQpwCd1F1VLmSpImJzSNxAwZzgY5tsV8Bt
 64TzaCnbvPy39l1RkdPqfSUqlTJCvTl2PS8G+aAC8Olfzl+vNFiugrK3bn8i68eNtL4Q
 yfnYcteCM4H6K2RVg+1b3cq4naDI9B3lhkGGS09zFRRIayaZmkdVdrLL4Kd9oMDABWgK
 pSFaXPpge9/gcCrprSZlS/2EzcD7Rgzs6c/0nRmeQ8blU4BAkfWGvsNWZeOWVZ6LLpoR
 bIvQ==
X-Gm-Message-State: ACrzQf0iPQMzaKpUWssriCzRL++niAEsQP3oYtLYpag6a4r+de43uDVH
 f/Z4UpEk+g/40Gxw89ezd0aMs9qq241D5iOj49/9xg==
X-Google-Smtp-Source: AMsMyM5a72J+oURrN1Xn65POqIcaJbOb/V5ADXI1msRfSesaXYIp7KdxQCFidqm8CWl7fZdfIE8dj2k7QBC+tgvGSi0=
X-Received: by 2002:a25:328c:0:b0:6be:2d4a:e77 with SMTP id
 y134-20020a25328c000000b006be2d4a0e77mr762263yby.407.1666065757722; Mon, 17
 Oct 2022 21:02:37 -0700 (PDT)
MIME-Version: 1.0
References: <20221018034718.82389-1-shaozhengchao@huawei.com>
 <20221018034718.82389-3-shaozhengchao@huawei.com>
In-Reply-To: <20221018034718.82389-3-shaozhengchao@huawei.com>
Date: Mon, 17 Oct 2022 21:02:26 -0700
Message-ID: <CANn89iJubvtbdpgKXhP8CMcWEn8Ws80sLeu=F4RMTAEKWePoyg@mail.gmail.com>
To: Zhengchao Shao <shaozhengchao@huawei.com>
Subject: Re: [Cake] [PATCH net 2/3] net: sched: fq_codel: fix null pointer
 access issue when fq_codel_init() fails
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
From: Eric Dumazet via Cake <cake@lists.bufferbloat.net>
Reply-To: Eric Dumazet <edumazet@google.com>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, yuehaibing@huawei.com,
 jhs@mojatatu.com, cake@lists.bufferbloat.net, weiyongjun1@huawei.com,
 kuba@kernel.org, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCBPY3QgMTcsIDIwMjIgYXQgODozOSBQTSBaaGVuZ2NoYW8gU2hhbyA8c2hhb3poZW5n
Y2hhb0BodWF3ZWkuY29tPiB3cm90ZToKPgo+IFdoZW4gdGhlIGRlZmF1bHQgcWRpc2MgaXMgZnFf
Y29kZWwsIGlmIHRoZSBxZGlzYyBvZiBkZXZfcXVldWUgZmFpbHMgdG8gYmUKPiBpbml0ZWQgZHVy
aW5nIG1xcHJpb19pbml0KCksIGZxX2NvZGVsX3Jlc2V0KCkgaXMgaW52b2tlZCB0byBjbGVhcgo+
IHJlc291cmNlcy4gSW4gdGhpcyBjYXNlLCB0aGUgZmxvdyBpcyBOVUxMLCBhbmQgaXQgd2lsbCBj
YXVzZSBncGYgaXNzdWUuCj4KPiBUaGUgcHJvY2VzcyBpcyBhcyBmb2xsb3dzOgo+IHFkaXNjX2Ny
ZWF0ZV9kZmx0KCkKPiAgICAgICAgIGZxX2NvZGVsX2luaXQoKQo+ICAgICAgICAgICAgICAgICAu
Li4KPiAgICAgICAgICAgICAgICAgcS0+Zmxvd3NfY250ID0gMTAyNDsKPiAgICAgICAgICAgICAg
ICAgLi4uCj4gICAgICAgICAgICAgICAgIHEtPmZsb3dzID0ga3ZjYWxsb2MoLi4uKSAgICAgIC0t
LT5mYWlsZWQsIHEtPmZsb3dzIGlzIE5VTEwKPiAgICAgICAgICAgICAgICAgLi4uCj4gICAgICAg
ICAuLi4KPiAgICAgICAgIHFkaXNjX3B1dCgpCj4gICAgICAgICAgICAgICAgIC4uLgo+ICAgICAg
ICAgICAgICAgICBmcV9jb2RlbF9yZXNldCgpCj4gICAgICAgICAgICAgICAgICAgICAgICAgLi4u
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgZmxvdyA9IHEtPmZsb3dzICsgaSAgIC0tLT5xLT5m
bG93cyBpcyBOVUxMCj4KPiBUaGUgZm9sbG93aW5nIGlzIHRoZSBDYWxsIFRyYWNlIGluZm9ybWF0
aW9uOgo+IGdlbmVyYWwgcHJvdGVjdGlvbiBmYXVsdCwgcHJvYmFibHkgZm9yIG5vbi1jYW5vbmlj
YWwgYWRkcmVzcwo+IDB4ZGZmZmZjMDAwMDAwMDAwMTogMDAwMCBbIzFdIFBSRUVNUFQgU01QIEtB
U0FOCj4gS0FTQU46IG51bGwtcHRyLWRlcmVmIGluIHJhbmdlIFsweDAwMDAwMDAwMDAwMDAwMDgt
MHgwMDAwMDAwMDAwMDAwMDBmXQo+IFJJUDogMDAxMDpmcV9jb2RlbF9yZXNldCsweDE0ZC8weDM1
MAo+IENhbGwgVHJhY2U6Cj4gPFRBU0s+Cj4gcWRpc2NfcmVzZXQrMHhlZC8weDZmMAo+IHFkaXNj
X2Rlc3Ryb3krMHg4Mi8weDRjMAo+IHFkaXNjX3B1dCsweDllLzB4YjAKPiBxZGlzY19jcmVhdGVf
ZGZsdCsweDJjMy8weDRhMAo+IG1xcHJpb19pbml0KzB4YTcxLzB4MTc2MAo+IHFkaXNjX2NyZWF0
ZSsweDNlYi8weDEwMDAKPiB0Y19tb2RpZnlfcWRpc2MrMHg0MDgvMHgxNzIwCj4gcnRuZXRsaW5r
X3Jjdl9tc2crMHgzOGUvMHhhYzAKPiBuZXRsaW5rX3Jjdl9za2IrMHgxMmQvMHgzYTAKPiBuZXRs
aW5rX3VuaWNhc3QrMHg0YTIvMHg3NDAKPiBuZXRsaW5rX3NlbmRtc2crMHg4MjYvMHhjYzAKPiBz
b2NrX3NlbmRtc2crMHhjNS8weDEwMAo+IF9fX19zeXNfc2VuZG1zZysweDU4My8weDY5MAo+IF9f
X3N5c19zZW5kbXNnKzB4ZTgvMHgxNjAKPiBfX3N5c19zZW5kbXNnKzB4YmYvMHgxNjAKPiBkb19z
eXNjYWxsXzY0KzB4MzUvMHg4MAo+IGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ2
LzB4YjAKPiBSSVA6IDAwMzM6MHg3ZmQyNzJiMjJkMDQKPiA8L1RBU0s+Cj4KPiBGaXhlczogNDk0
ZjUwNjNiODZjICgibmV0OiBzY2hlZDogZnFfY29kZWw6IHJlbW92ZSByZWR1bmRhbnQgcmVzb3Vy
Y2UgY2xlYW51cCBpbiBmcV9jb2RlbF9pbml0KCkiKQo+IFNpZ25lZC1vZmYtYnk6IFpoZW5nY2hh
byBTaGFvIDxzaGFvemhlbmdjaGFvQGh1YXdlaS5jb20+Cj4gLS0tCgpJIHZvdGUgZm9yIGEgcmV2
ZXJ0LCBwcmV2aW91cyBjb2RlIHdhcyBtdWNoIGNsZWFuZXIuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK

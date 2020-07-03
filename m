Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED454213BE7
	for <lists+cake@lfdr.de>; Fri,  3 Jul 2020 16:37:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C11AE3CB46;
	Fri,  3 Jul 2020 10:37:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593787047;
	bh=ohkN+V6CUF1GxizJ7iTApqNoQV04HVvu4ExXYc3DS0E=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fv5kwR0TeA0x8qEqe60f+Ia8GacB1XKAgtFg1RXo/oI66J2AtAyjtSI5T24hDa3X8
	 T0/TnzMvD3ECnhZJxZ7Bkl8Iuj9G7EphTYh8/jT5N/oYLc+inVGxtyfp8aC37B4V6t
	 vzg3rDqnYxdjunj/FxqdewjPHufNn17ZdD4MA1KwGCNA0HxNqj6zm6XFPV4jCmIc4Y
	 mDcMhkOKCzRlxWQ+WuedHvJ9Oi2LCEKQZrYhvGSOLbcbBiGz0yUwxcoArOeUFnVWuF
	 8yEaDe0ew4af4l/EAphfqnc21hVngBWK/ECjNHcZHEvSIkYIHSA9TG4Se6SEbIzIj6
	 pjC12QsJZlhGg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DE0713B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Jul 2020 10:37:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593787046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=diHfsq0rXnLaq8z+P8hpE4mUEjDJ4fv5IrD+f0fwMfU=;
 b=DKzagHoQGyHJB8hcRpqoYv6gDn2xuI6c++nLX3jWgbfJgSE0v6ues5+hnZrB7qam2IvhQs
 wQssaBRU/V/VFICrF4jo0ts7obRSrXhbYYBozNLwzjI5g1/Jg7H0h/WUy7caDxyCbqsilH
 dR6TclhjU355jH5QJi+Pbj5eTcLZpHA=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-R2kmmDSyMbykXEM28qulPA-1; Fri, 03 Jul 2020 10:37:25 -0400
X-MC-Unique: R2kmmDSyMbykXEM28qulPA-1
Received: by mail-qk1-f199.google.com with SMTP id q192so11553939qka.13
 for <cake@lists.bufferbloat.net>; Fri, 03 Jul 2020 07:37:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=7h3VIBynGAlk+pxIYoEzFod8/JhmRY6WxDm0pv5l3KQ=;
 b=l1zCZt1Qbp8o7PwrK+WTCytOcPMRVe0oj4b9zxKsDWDaSaIRE4qyfM7BH19rgnamuO
 g9Tbz72gr6EmvXqKYP55iTxtBKaQqAUGkAxQAc2ggiIZ+zS7bLzGTIhV6+F+4bdtfVAM
 n3vTXo69x7XYnX+bb91tbFRh77UffkKsfUvOrdKgH0sUxu+v4ul8X+6mTYXZtptuki4S
 gbIOMD1OhzFh6JjTCeeELmhPaAA6P8uuoqcQwfn0vdVvcOVh4j/86Rti5VCbMYNLMkoF
 r2QFHLunystLYCmAaQrw3SSzVdIw1zMQ7PmI1TwV/p2/0TZ/WtNjGc1QheQCDP4fnDHH
 HB3Q==
X-Gm-Message-State: AOAM532iLZ1jp7QuOO6T1PyXHU9mFvhxct02aoX6a5B99bX7EFi+47Pq
 V49HBpU8VHTil6bTN/CJAfi5wc4U7w3jCrRnUwJPjpVw6uPy4f7DLBimxesCTP+nWM/pI/CfvPa
 pnK7X+X7nqZ3IFCPLdeW7Eg==
X-Received: by 2002:a37:5b46:: with SMTP id p67mr34023941qkb.346.1593787044529; 
 Fri, 03 Jul 2020 07:37:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/rfayxSbJbu3yk98ojqDffk/hNVOL8EuEKT5F/T8VpEAS/bHNmrwscdBkv/Nu2oiHHiwkTg==
X-Received: by 2002:a37:5b46:: with SMTP id p67mr34023909qkb.346.1593787044160; 
 Fri, 03 Jul 2020 07:37:24 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id j52sm12168959qtc.49.2020.07.03.07.37.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jul 2020 07:37:23 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id F03F51828E4; Fri,  3 Jul 2020 16:37:20 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Davide Caratti <dcaratti@redhat.com>, davem@davemloft.net
In-Reply-To: <4297936b4cc7d6cdcb51ccc10331467f39978795.camel@redhat.com>
References: <20200703120523.465334-1-toke@redhat.com>
 <4297936b4cc7d6cdcb51ccc10331467f39978795.camel@redhat.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 03 Jul 2020 16:37:20 +0200
Message-ID: <873668ekbj.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net] sched: consistently handle layer3 header
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Ilya Ponetayev <i.ponetaev@ndmsystems.com>,
 Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2aWRlIENhcmF0dGkgPGRjYXJhdHRpQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gaGVsbG8gVG9r
ZSwKPgo+IHRoYW5rcyBmb3IgYW5zd2VyaW5nIQo+Cj4gT24gRnJpLCAyMDIwLTA3LTAzIGF0IDE0
OjA1ICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+ICAgd2hpbGUgKHBy
b3RvID09IGh0b25zKEVUSF9QXzgwMjFRKSB8fCBwcm90byA9PSBodG9ucyhFVEhfUF84MDIxQUQp
KSB7Cj4KPiBtYXliZSB0aGlzIGxpbmUgYmUgc2hvcnRlbmVkLCBzaW5jZSBpZl92bGFuLmggaGFz
IFsxXToKPgo+IHdoaWxlIChldGhfdHlwZV92bGFuKHByb3RvKSkgewo+ICAJLi4uCj4gfQoKR29v
ZCBwb2ludCwgbWlzc2VkIHRoYXQhIFdpbGwgZml4IGFuZCBzZW5kIGEgdjIuCgo+IElmIEkgcmVh
ZCB3ZWxsLCB0aGUgYmlnZ2VzdCBjaGFuZ2UgZnJvbSBmdW5jdGlvbmFsIHBvaW50IG9mIHZpZXcg
aXMgdGhhdAo+IG5vdyBxZGlzY3MgY2FuIHNldCB0aGUgRUNOIGJpdCBhbHNvIG9uIG5vbi1hY2Nl
bGVyYXRlZCBWTEFOIHBhY2tldHMgYW5kCj4gUWluUS10YWdnZWQgcGFja2V0cywgaWYgdGhlIElQ
IGhlYWRlciBpcyB0aGUgb3V0ZXItbW9zdCBoZWFkZXIgYWZ0ZXIgVkxBTjsKPiBhbmQgdGhlIHNh
bWUgYXBwbGllcyB0byBhbG1vc3QgYWxsIG5ldC9zY2hlZCBmb3JtZXIgdXNlcnMgb2Ygc2tiLT5w
cm90b2NvbCAKPiBvciB0Y19za2JfcHJvdG9jb2woKS4KCll1cCwgdGhhdCdzIHRoZSBpZGVhLgoK
PiBRdWVzdGlvbiAoc29ycnkgaW4gYWR2YW5jZSBiZWNhdXNlIGl0IG1pZ2h0IGJlIGEgZHVtYiBv
bmUgOikgKToKPgo+IGRvIHlvdSBrbm93IHdoeSBjbHNfZmxvd2VyLCBhY3RfY3QsIGFjdF9tcGxz
IGFuZCBhY3RfY29ubm1hcmsga2VlcCByZWFkaW5nCj4gc2tiLT5wcm90b2NvbD8gaXMgdGhhdCBp
bnRlbnRpb25hbD8KCkhtbSwgbm8gbm90IHJlYWxseS4gSSBvbmx5IGNoZWNrZWQgZm9yIGNhbGxz
IHRvIHRjX3NrYl9wcm90b2NvbCgpLCBub3QKZm9yIGRpcmVjdCB1c2VzIG9mIHNrYi0+cHJvdG9j
b2wuIFdpbGwgZml4IHRob3NlIGFzIHdlbGwgOikKCj4gKGZvciBhY3RfbXBscyB0aGF0IGRvZXNu
J3QgbG9vayBpbnRlbnRpb25hbCwgYW5kIHByb2JhYmx5IHRoZSByZXN1bHQgaXMKPiB0aGF0IHRo
ZSBCT1MgYml0IGlzIG5vdCBzZXQgY29ycmVjdGx5IGlmIHNvbWVvbmUgdHJpZXMgdG8gcHVzaC9w
b3AgYSBsYWJlbAo+IGZvciBhIG5vbi1hY2NlbGVyYXRlZCBvciBRaW5RIHBhY2tldC4gQnV0IEkg
ZGlkbid0IHRyeSBpdCBleHBlcmltZW50YWxseQo+IDopICkKCkhtbSwgeW91J3JlIGNlcnRhaW5s
eSByaWdodCB0aGF0IHRoZSBNUExTIGNvZGUgc2hvdWxkIHVzZSB0aGUgaGVscGVyIHRvCmdldCBj
b25zaXN0ZW50IHVzZSBiZXR3ZWVuIGFjY2VsZXJhdGVkL25vbi1hY2NlbGVyYXRlZCBWTEFOIHVz
YWdlLiBCdXQgSQpkb24ndCBrbm93IGVub3VnaCBhYm91dCBNUExTIHRvIGp1ZGdlIHdoZXRoZXIg
aXQgc2hvdWxkIGJlIHNraXBwaW5nIHRoZQpWTEFOIHRhZ3Mgb3Igbm90LiBTb3VuZHMgbGlrZSB5
b3UncmUgc2F5aW5nIHRoZSByaWdodCB0aGluZyBpcyB0byBza2lwCnRoZSBWTEFOIHRhZ3MgdGhl
cmUgYXMgd2VsbD8KCkxvb2tpbmcgYXQgdGhlIG90aGVycywgaXQgbG9va3MgbGlrZSBhY3RfY29u
bm1hcmsgYW5kIGFjdF9jdCBib3RoIG91Z2h0CnRvIHNraXAgVkxBTiB0YWdzLCB3aGlsZSBhY3Rf
Zmxvd2VyIHNob3VsZCBwcm9iYWJseSBrZWVwIGl0LCBzaW5jZSBpdApzZWVtcyBpdCBoYXMgYSBW
TEFOIG1hdGNoIHR5cGUuIE9yPwoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E997739D170
	for <lists+cake@lfdr.de>; Sun,  6 Jun 2021 22:26:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7FACF3CB38;
	Sun,  6 Jun 2021 16:26:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1623011206;
	bh=Py3p4fzYuQuu4ZkSdDiO8pqbxLVA80zT7Folqqu8DnQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e0vHthvosBWujYELQNgUVKDYWg0IsivH8af7z4BNSnAfJLCP9RGekT8dApn28IKV1
	 eqdkAd9Eonr/mma1mJBi/mLrbjM2S1zbnhUUTlbfx+Y5751d8QWp9ojtDMIHwVsNOA
	 m2+RQ679kshM6wiBVyF51B1RZcuEpWSx1oij2jTKIxutBtEsEGcyqHmWLBVOq8+hnj
	 seM4hzzN85v71oYCiSkkP0Ces98bpoFaEOfash4RANhiCY7YuiQFL7PmcibCQ+S2B/
	 qURK3E52+CfsrzwFzSf6PkGvehlLDiMp9PX0uY0zUEMH3pSixgCltviWsdfwdQncb0
	 ibzRgX4xOSziQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E29133B29E
 for <cake@lists.bufferbloat.net>; Sun,  6 Jun 2021 16:26:44 -0400 (EDT)
Received: by mail-wm1-x329.google.com with SMTP id
 k5-20020a05600c1c85b02901affeec3ef8so881099wms.0
 for <cake@lists.bufferbloat.net>; Sun, 06 Jun 2021 13:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=THfJPPf5ajzDB5wvPD8BBmIf/a7f7LjHQcDxUwO0GtQ=;
 b=TA6p0Da77bqQPho1S4gJz7syOkmMCS4+XZNN+kHLBrqkKnb02XlMTRQXITpA8gmq5a
 r5tEsCRCVkwTv1Juthu6QVP/mqzLMTWjqMrsHiUyfRy1vzam6xqYsgklSBvoN4PGVV98
 0hqxUoOtDUHSIvkMXxiyhddFCNHHYNX8+WbgjW6re4qCj3/HHKx8AdT+M4KfukpP7e5v
 Zxm4i3Za/41zPYafJu/AP15h/LqsG+bjtV87f1iOCq45xfnAo1izvyp+a2o/MbDOmIcE
 3sR26EymVBr4COD0pMdpVJFbSNZRmkpr5Yiqtfje0WdwFrlfuckb+PfId9TRRy6hXJOO
 7tOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=THfJPPf5ajzDB5wvPD8BBmIf/a7f7LjHQcDxUwO0GtQ=;
 b=Ovx133KXAukKFmYvfETS/ih3rJedANwfolFoDZOuo0nMFsy2ndXDvJA4uho2APGbxA
 hpwtLKblCBcVyYUkOYQjFLsK6nx5/amTGqVtUa5KwLMPynKxRFpgKzIGxiBbNoIbRrbl
 VfQkVXhbdqKxmvq6dBUg6XvMKBqv9TPTGHC8zfMkhvTpMfbzpuG8WON3b2PSQz5KmKZ2
 6yf0ehqSriURQ3yCuqp0wmeTM8AyiCwV1VcSISw0ZtYgFjPCIfZsaRLsTIlsGQxRFGxc
 LaAz1sEW5QcFMcvdvFVi54O35cs4Fef3P72rDPCqUUco2dye5XaHW+94nAHmFfws0a+M
 cJzg==
X-Gm-Message-State: AOAM532uhtrf/1c06LTyFjJvMGydQLbTQrvB6ChSbHrmjRi3a+kwQKm5
 aJ17xkkfIJzm/TcSM0ewlN14B9MDTpUVNg==
X-Google-Smtp-Source: ABdhPJwvgPkmHlQ9yR9MlLXV3X3PJ5vjeNL16kEnYrpmvC19yRbK4s+Jn/HXcPTvxEa07dLw2Gbp4Q==
X-Received: by 2002:a05:600c:290:: with SMTP id
 16mr13878950wmk.162.1623011203925; 
 Sun, 06 Jun 2021 13:26:43 -0700 (PDT)
Received: from [10.72.0.88] (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id 3sm14829187wmi.7.2021.06.06.13.26.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Jun 2021 13:26:43 -0700 (PDT)
Message-ID: <e29563108ce8841d8c56a428f72bd2644019957a.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Date: Sun, 06 Jun 2021 22:26:42 +0200
In-Reply-To: <87h7iawyr1.fsf@toke.dk>
References: <22f3032d0dfd47f53d4d6595ee6bd192377fbc6e.camel@heistp.net>
 <87h7iawyr1.fsf@toke.dk>
User-Agent: Evolution 3.40.1 
MIME-Version: 1.0
Subject: Re: [Cake] customizing Cake's isolation with ipsets,
 tc-flow and eBPF
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gU3VuLCAyMDIxLTA2LTA2IGF0IDIxOjU5ICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gUGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PiB3cml0ZXM6Cj4gCj4gPiBJ
J3ZlIGFsd2F5cyB3YW50ZWQgYSB3YXkgdG8gY3VzdG9taXplIENha2UncyBob3N0IGFuZCBmbG93
IGlzb2xhdGlvbgo+ID4gaW4KPiA+IGEgd2F5IHRoYXQgd291bGQgYmUgdXNhYmxlIGUuZy4gZm9y
IHNtYWxsIElTUHMsIGFuZCB0aGlzIGlzIHdoYXQgSQo+ID4gY2FtZQo+ID4gdXAgd2l0aDoKPiA+
IAo+ID4gaHR0cHM6Ly9naXRodWIuY29tL2hlaXN0cC9jYWtlLWN1c3RvbS1pc29sYXRpb24KPiA+
IAo+ID4gaXBzZXRzIGFyZSB1c2VkIHRvIHNldCB0aGUgc2tiIHByaW9yaXR5IG9yIG1hcmssIHRo
ZW4gdGMtZmxvdyBvciBhCj4gPiBzaW1wbGUgZUJQRiBjbGFzc2lmaWVyIGlzIHVzZWQgaW4gYSBj
aGlsZCBmaWx0ZXIgb2YgY2FrZSB0byBnZXQgdGhlCj4gPiBtYWpvciBhbmQgbWlub3IgY2xhc3Mg
SURzIHNldCwgd2hpY2ggb3ZlcnJpZGUgdGhlIGhvc3QgYW5kIGZsb3cKPiA+IGhhc2hlcy4KPiAK
PiBWZXJ5IGNvb2whIEF3ZXNvbWUgdG8gc2VlIHRoZSBjdXN0b21pc2F0aW9uIG9wdGlvbnMgYmVp
bmcgdXNlZCBmb3IKPiBzb21ldGhpbmcgbmVhdCBsaWtlIHRoaXMhIDopCj4gCj4gPiBUbyBzaG93
IGl0IGluIGFjdGlvbiwgdGhlIGNha2Vpc28uc2ggc2NyaXB0IHNldHMgdXAgYSBuZXRucwo+ID4g
ZW52aXJvbm1lbnQKPiA+IGFuZCBydW5zIGNvbXBldGl0aW9uIGJldHdlZW4gdHdvICJzdWJzY3Jp
YmVycyIgYW5kIHRocmVlIGZsb3dzLCB0d28KPiA+IFRDUAo+ID4gZmxvd3MgYW5kIG9uZSB1bnJl
c3BvbnNpdmUgVURQIGZsb3cuIFNldmVyYWwgY29uZmlndXJhdGlvbnMgYXJlIHJ1bgo+ID4gdG8K
PiA+IHNob3cgd2hhdCBpcyBhbmQgaXNuJ3QgcG9zc2libGUuCj4gPiAKPiA+IElmIGFueW9uZSBr
bm93cyBvZiBhIHNpbXBsZXIgd2F5IHRoYW4gZUJQRiB0byBnZXQgYm90aCB0aGUgbWFqb3IgYW5k
Cj4gPiBtaW5vciBjbGFzcyBJRCBzZXQgZnJvbSBpcHNldHMsIEknZCBsaWtlIHRvIGhlYXIgaXQs
IGJ1dCB0aGUgaW5jbHVkZWQKPiA+IGNsYXNzaWZpZXJzIGFyZSBhdCBsZWFzdCB2ZXJ5IHNpbXBs
ZSBvbmUtbGluZXJzLi4uCj4gCj4gV2VsbCwgeW91IGNvdWxkIGdvIHRoZSBvdGhlciB3YXk/IElu
c3RlYWQgb2YgaXBzZXQsIGp1c3QgZG8gdGhlCj4gY2xhc3NpZmljYXRpb24gaW4gZUJQRiBhbmQg
dXNlIGEgQlBGIG1hcCB0byBzdG9yZSB0aGUgSVAgYWRkcmVzc2VzLgo+IFRoZXJlJ3MgZXZlbiBh
biBMUE0gbWFwIHR5cGUsIHNvIHlvdSBjYW4gdXNlIGFyYml0cmFyeSBwcmVmaXggbGVuZ3Rocwo+
IGZvciBlYWNoIGNsYXNzIChvciBub3QsIGFuZCBqdXN0IHVzZSBhIGhhc2htYXApLi4uCgpUcnVl
IHRoYXQsIEkgc3RhcnRlZCBzb21ldGhpbmcgbGlrZSB0aGF0IGF0IHNvbWUgcG9pbnQ6CgpodHRw
czovL2dpdGh1Yi5jb20vaGVpc3RwL3RjLXVzZXJzLwoKYnV0IEkgdGhpbmsgSSBnb3QgYSBsaXR0
bGUgb3ZlcnplYWxvdXMgd2l0aCBpdC4gSSdtIG5vdCBzdXJlIGlmL3doZW4KSSdsbCBnZXQgYmFj
ayB0byB0aGF0LCBidXQgdGhlIGlwc2V0IHNvbHV0aW9uIHNlZW1zIHRvIGJlICJnb29kIGVub3Vn
aCIKZm9yIHdoYXQgSSAoYW5kIG15IElTUCkgbmVlZHMuIEknbSBnbGFkIHlvdSBzbGlwcGVkIHRo
ZSB0YyBmaWx0ZXIKb3ZlcnJpZGVzIGluIGJlZm9yZSBDYWtlIHdlbnQgb3V0IHRoZSBkb29yLiA6
KQoKVGhpcyBkb2Vzbid0IGRvIGF3YXkgd2l0aCB0aGUgcG9zc2libGUgbmVlZCBmb3IgYSBmdWxs
LWJsb3duIElTUCBxZGlzYwpvbmUgZGF5LCB3aXRoIGNvbmZpZ3VyYWJsZSBzdWJzY3JpYmVyIHRp
ZXJzLCBoYW5kbGluZyBvZiBoaWdoZXIgbG9hZHMsCmV0YywgYnV0IGF0IGxlYXN0IGl0J3Mgc29t
ZXRoaW5nIGZvciB0aGUgbGl0dGxlIGd1eXMuCgpQZXRlCgo+IC1Ub2tlCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

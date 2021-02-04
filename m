Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C77230EC35
	for <lists+cake@lfdr.de>; Thu,  4 Feb 2021 06:51:07 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 580D23CB38;
	Thu,  4 Feb 2021 00:51:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1612417866;
	bh=hvlWTVO4NGVda52pEsuO8yQbJV/AwuNwvZ9NWG0TLB4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fLHgA6YSCccNLdNppjNmgBQELCpAB9jVWmzFbLwpP2vBH0i0eEZ6LRniQwUxEB0md
	 qDb4DXr+0adOWfwNP0evMPnvB18UPoNEHgJ6eZ154n4mUpjZ52iJRoCoftdj557fvL
	 pTJOYCSHf9j23maRCARLN6nmRxKG6wIQtRN03pHC9MbhkzZc1j0zl4hKmI6LIdT32f
	 IZx6RewFBpR7kVSn3NuJCwFdbKlgiMm6AnNQG2eZ1/ciaFdo7++w0ATk6rfrsv+GYg
	 3JDn1iAfOGp9fFk5Mv48HdNcYzDB5+AhYrCGOTQif7/EyiGOdn0eU4SWdczL5R2Uwi
	 AXQ98jvWVdTfg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7AEE83B29E
 for <cake@lists.bufferbloat.net>; Thu,  4 Feb 2021 00:51:04 -0500 (EST)
Received: by mail-wr1-x42b.google.com with SMTP id 7so2077135wrz.0
 for <cake@lists.bufferbloat.net>; Wed, 03 Feb 2021 21:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=E+3KRMJqTK+9Ev06yHShHqWCSvWOl2MKMPVxo1PMKT8=;
 b=eJsrY8f1da5AQG11hOIhmCAlpWuQdN5BuTl4fg48qzaopMBdZRRlp9NMG/tpJq/s2v
 ajgmCAG1vX1BtbKOSLVsdVrKxa/hAn8O9nEKPrxJQLEjqH0gWad8jMMYHTKeEn+B4bsg
 iUW3HLYjdXteU1gBxAJO6crIZXNMYYqHxxmu9wONotUtbqf7h+SQtB0ZoeioxQU+uiFA
 iHY2lcxf0vvtI9eHL81Lfngmofbng1jXk6OyfX7Bg4KVpxOdjmGtNg+7B/Ke8YLChCOE
 lMNzdC+JUGGDTa0h5a5quXORv+aWuRka+yauq5Xmoht2I5BGjcozKvdyQCjz7WuK8N7h
 vM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=E+3KRMJqTK+9Ev06yHShHqWCSvWOl2MKMPVxo1PMKT8=;
 b=E83scIvPyjXDEGENHiHhb4yw547yFO+ASmMRL6pb4C1zNVH4ykr3GGf/QFX0x+sZ67
 /822vVvWLTtJpxUDY8Cxe/JmdeK9Wg8yubrxQL1I7PjWisU/bqYS6cjiOpbv1tdVHc1h
 fROtRquRKj72v1vM4f6WdUDDa4EzmDRDCUGrZDvLmD6wzffSLVS97zSrlNzjdhoAg0wI
 klEwXiKKBsot715TXPzNVECT1xFIEvyReH7xPbkykTuJn8w1ef6Jy+UmvmTR79WMZfr4
 FmrOGNRTBJzRz/bpvQZOQgMl8X08EIOdqpsssblKxfUzdLAtJ7QMhmIXELB2+AJM/OEH
 +FeA==
X-Gm-Message-State: AOAM531/d/1lmNZWxDPCRdYvV5EshcBcbqTrw4j38bpUCF/DaD0S2khn
 sAhiHr5DkUfZX/FgYM4G/gPQzZXQhdyjRw==
X-Google-Smtp-Source: ABdhPJzc9snsjKssEVfuy2pjE9CeVUgowpvtk1pRuFXNSKm/V+iFqh6UD/P/TohDnhyCpq+2xkOKmA==
X-Received: by 2002:a5d:55c6:: with SMTP id i6mr7450322wrw.145.1612417862874; 
 Wed, 03 Feb 2021 21:51:02 -0800 (PST)
Received: from [10.72.0.88] (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id l2sm4792270wmq.17.2021.02.03.21.51.02
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 21:51:02 -0800 (PST)
Message-ID: <23f20674380a41fbe696735884bb89d553eb0513.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: cake@lists.bufferbloat.net
Date: Thu, 04 Feb 2021 06:51:01 +0100
In-Reply-To: <91BCCD0A-BE88-49A8-AEE0-960A1B363A9D@gmail.com>
References: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
 <91BCCD0A-BE88-49A8-AEE0-960A1B363A9D@gmail.com>
User-Agent: Evolution 3.38.3 
MIME-Version: 1.0
Subject: Re: [Cake] bringing up a new router/connection
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCAyMDIxLTAyLTA0IGF0IDAyOjAzICswMjAwLCBKb25hdGhhbiBNb3J0b24gd3JvdGU6
Cj4gCj4gCj4gT25lIGRldmljZSB0aGF0IHNob3VsZCBiZSBhYmxlIHRvIGtlZXAgdXAgaXMgYSBS
YXNwYmVycnkgUGkgNCAobm90Cj4gdGhlIGVhcmxpZXIgdmVyc2lvbnMpIHN1cHBsZW1lbnRlZCB3
aXRoIGEgVVNCMy1hdHRhY2hlZCBHaWdFIGRvbmdsZS7CoAo+IFBldGUgSGVpc3QgaGFzIGVzdGFi
bGlzaGVkIHRoYXQgaXQgY2FuIHN1c3RhaW4gNjAwTWJpdCB0aHJvdWdoIENha2UKPiB3aXRob3V0
IG11Y2ggQ1BVIGxvYWQgb3IgYWRkZWQgbGF0ZW5jeS7CoCBBYm92ZSB0aGF0IGxldmVsIHRoZQo+
IGNoYXJhY3RlcmlzdGljcyBkbyBkZWdyYWRlIGEgYml0LgoKRndpdywgaGVyZSdzIHdoYXQgSSBz
YXcgb24gdGhlIFJhc1BpNCBhbmQgQVBVMi4gVGhlIFJhc1BpNCB3YXMgdGVzdGVkCndpdGggb25l
LWFybWVkIHJvdXRpbmcgYXMgdGhhdCdzIHdoYXQgSSB3YXMgYWZ0ZXIgYXQgdGhlIHRpbWUsIGJ1
dCB0aGUKQVBVMiB3YXMgdGVzdGVkIHRocm91Z2ggdHdvIGludGVyZmFjZXMgYWxzby4KCmh0dHBz
Oi8vZG9jcy5nb29nbGUuY29tL3NwcmVhZHNoZWV0cy9kLzFTQW00Vmk5am83Vkc3Y0pWbmRNZGFX
anJnZnFMNkVCeDNGWURqa1BfSElZL2VkaXQ/dXNwPXNoYXJpbmcKCj4gCj4gwqAtIEpvbmF0aGFu
IE1vcnRvbgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==

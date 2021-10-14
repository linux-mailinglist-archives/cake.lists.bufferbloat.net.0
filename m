Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8E042DFF0
	for <lists+cake@lfdr.de>; Thu, 14 Oct 2021 19:09:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4EE483CB4F;
	Thu, 14 Oct 2021 13:09:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634231353;
	bh=DQFib+KOjuhzyMfR8qoa/oFGaaXK1G5Fdm9XlVFGh14=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yw9MZfFlU3ZaKeoEjXaMo6I05+VPpOFXHLhPrteMFCx9m5hzasfMnmW34ZsRdpC5V
	 IOKVk52y4qFE2GV8bNjPSfksM3RSPFCkwQZ4jXkGvk+uEhvGe+8EyPM2+Vy5+8+nun
	 ONG+oU7J4ADToX0doEKmekeBqHniD2SD8XJjbP/xSAav0SPeVxcg4RujypRs+Hy9Hr
	 iW2FnxfSKB8TcSbiGcNtJZu5D4KazMy+u6pxDDzlZR9Ny6034dUuKujcF6bvJSfNgC
	 OIpqGlJonmnHPj0976DoXNBOV2qGh5ZPwDlIk9PATQ3HuD9ZHD4PaP/SsofW4i/Mh9
	 FsvRC6MwyOBFQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A2A6A3B29E;
 Thu, 14 Oct 2021 13:09:11 -0400 (EDT)
Received: by mail-io1-xd31.google.com with SMTP id n7so4690118iod.0;
 Thu, 14 Oct 2021 10:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=w6QYzlXmwKmaETfFZOoPXi8RlSKFpa5U87OM9gTeQiw=;
 b=RuaW5AIvxElfGC2ZCxSq4MW2xRzD+RHS+o91RL+OyQ65G0jmQfF9BswSwQpwPHJQKo
 3A+RBVFw2EICGg1TmgaO4WjPBMwvW2GMDQYswNsa9gQ7U+2UQU1rRKtJSVbIJPuWzMTr
 GazAv690a3SYwS6TZVgROQnwMwm7PTiN++xOECf3jWO4hZlhDNf8BYdFSqjvRT1zHE+M
 CFQ9ZKsmQ6BSq+Pqkpeu8fQzjVbKGkQiZxncJnaG/yGvtTiECa2mrVlr1J3Idg9oTPYe
 ILYqWJ+uKvvE41f4f/31UcLHvDzUq+8K8k02jGXymbYSBfwMTRvD+f33qsI9HMkSDIVn
 bJnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w6QYzlXmwKmaETfFZOoPXi8RlSKFpa5U87OM9gTeQiw=;
 b=hs4HqYJ8prI0aI0/JED/AiMHZypwi2Zo3F0OWN+GdC/raXkVseX0EcmxqNA1d1cqZL
 cBNY8EzLig2hDxcKcuW6J1ooDiHdPEz9SVkAuIXk2t2cHnubn4H2A1dd96MhzlfWRnd6
 PQT94dePjVfU9Y1HWoF9IcbSy6QRAgyoYy+zwJOQpStjIW2u1uBTTErogsP2jGE/Ae03
 udEl6zl3QP8XCQJKIeTO6+XZTekpZW3TZ8EzGN4PwbhFTmjZpQS4ybWQ8NPGjuAJ82mU
 6b/ib/I2wJDpv/hnqTrnPWJoJQjV9scebKUz3Ry0HCj5c58m/LQGDC3xA0O+PnjJnXP9
 adFQ==
X-Gm-Message-State: AOAM5326zn8IKnUtDReE6l+2jvv4oyyDdTB/E/e9lMKz4Et8L5ZW7n+k
 7Tq2ioylx/1Mh5Z84NG1dP+L+RUrYwlNbRcnZOVzS9+kr0k=
X-Google-Smtp-Source: ABdhPJzG4GZ8a8VtijXt4XqK4yQpJF39VkNfy5+XtoiyTE9w571rFu+hacj5cD7VJEwXR1vzK/suY9D2BLjGk7LxOrk=
X-Received: by 2002:a05:6638:1607:: with SMTP id
 x7mr4092611jas.128.1634231350819; 
 Thu, 14 Oct 2021 10:09:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
In-Reply-To: <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 14 Oct 2021 10:08:58 -0700
Message-ID: <CAA93jw5dJ_=5OzPrcQYmFQtKLXJcfb7TWUW-jKMqfxZCpD3cZQ@mail.gmail.com>
To: Jordan Szuch <jordan@inacomptc.com>
Subject: Re: [Cake] [Bloat] some mikrotik comments
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGh4LiBJIHB1dCB0aGUgZGlzY3Vzc2lvbiBhbmQgcGxvdHMgb3ZlciBoZXJlOgoKaHR0cHM6Ly9m
b3J1bS5taWtyb3Rpay5jb20vdmlld3RvcGljLnBocD90PTE3OTMwNwoKSSBtaWdodCAtIHNob3Vs
ZCBJIGZlZWwgbGlrZSBleHBvdW5kaW5nIG1vcmUgbGF0ZXIgdGhpcyB3ZWVrIC0gZ28gYmFjawp0
byB0aGUgZmxlbnQuZ3ogZmlsZXMgdG8gZGlzY3VzcyBvdGhlciBmZWF0dXJlcy4gSXJvbmljYWxs
eSB0aGUKY2hyb21lYm9vayBJIGhhdmUgaW4gZnJvbnQgb2YgbWUgZG9lc24ndCB3YW50IHRvIGxl
dCBtZSBkb3dubG9hZCBhCmZpbGUgdmlhIGVtYWlsIGFuZCBtYWtlIGl0IHZpc2libGUgaW4gdGhl
IHJlYWwgZmlsZXN5c3RlbS4gSSdtIHZtJ2QKb2ZmIGZyb20gbXlzZWxmIGZvciBzb21lIHJlYXNv
bi4KCkJ1dCBteSBiaWcgZ29hbCwgaG9uZXN0bHksIHdhcyB0byBnZXQgc29tZSBtaWtyb3RpayB1
c2VycyB0byB0ZXN0CnRoZWlyIGJpZ2dlciBpcm9uLi4uCgpPbiBTdW4sIE9jdCAxMCwgMjAyMSBh
dCA5OjA1IEFNIEpvcmRhbiBTenVjaCB2aWEgQmxvYXQKPGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldD4gd3JvdGU6Cj4KPiBIaSBEYXZlLAo+Cj4gSW50ZXJlc3RpbmcgdGhhdCB5b3Ugc2hvdWxk
IHNlbmQgdGhpcyBvdXQ7IEkgcmVjZW50bHkgcGlja2VkIHVwIGEgdW5pdCAodGhpcyBvbmUgc3Bl
Y2lmaWNhbGx5OiBodHRwczovL21pa3JvdGlrLmNvbS9wcm9kdWN0L2hhcF9hYzIpIHRvIGRvIHNv
bWUgdGVzdGluZyBvZiB0aGUgdjcgZmlybXdhcmUuIE5vdGhpbmcgc3VwZXIgaGlnaCBlbmQgYnV0
IGVub3VnaCB0byBkbyBhIGxpdHRsZSB0ZXN0aW5nLiBJIGhhdmUgQ0FLRSBzZXQgdG8gZG8gc29t
ZSBzaGFwaW5nIGFuZCBzbyBmYXIgc2VlbXMgZnVuY3Rpb25hbC4gQXQgbGVhc3QgdGhlIGJ1ZmZl
cmJsb2F0IHNwZWVkIHRlc3RzIGZyb20gRFNMUmVwb3J0cyBhbmQgV2F2ZUZvcm0gaW5kaWNhdGUg
c29tZSBzaGFwaW5nIGlzIGhhcHBlbmluZy4gSWYgeW91J2QgbGlrZSBhbnkgaW5mb3JtYXRpb24g
YWJvdXQgdGhlIHVuaXQsIHRoZSB2NyBmaXJtd2FyZSwgb3IgcGFydGljdWxhciB0ZXN0cyBydW4g
dGhlbiBJJ2QgYmUgaGFwcHkgdG8gaGVscCBvdXQuCj4KPiBKb3JkYW4KPgo+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogQmxvYXQgPGJsb2F0LWJvdW5jZXNAbGlzdHMuYnVmZmVy
YmxvYXQubmV0PiBPbiBCZWhhbGYgT2YgRGF2ZSBUYWh0Cj4gU2VudDogU3VuZGF5LCBPY3RvYmVy
IDEwLCAyMDIxIDExOjM5IEFNCj4gVG86IENha2UgTGlzdCA8Y2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQ+OyBibG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pgo+IFN1YmplY3Q6IFtC
bG9hdF0gc29tZSBtaWtyb3RpayBjb21tZW50cwo+Cj4gdGhlIHY3IGJldGEgZ2FpbmVkIGRvYyBh
bmQgbW9yZSBvcyBzdXBwb3J0IGZvciBmcV9jb2RlbCBhbmQgY2FrZSByZWNlbnRseQo+Cj4gaHR0
cHM6Ly9mb3J1bS5taWtyb3Rpay5jb20vdmlld3RvcGljLnBocD9wPTg4NTAwMCNwODg1MDAwCj4K
PiBhbnlvbmUgb3V0IHRoZXJlIGFjdGl2ZWx5IHRlc3RpbmcgbWlrcm90aWs/Cj4KPiAtLQo+IEZp
eGluZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/
dj1jOWdMbzZYcndndwo+Cj4gRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsb2F0IG1haWxpbmcg
bGlzdAo+IEJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsb2F0IG1haWxpbmcgbGlzdAo+IEJsb2F0QGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Js
b2F0CgoKCi0tIApGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1
YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExD
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

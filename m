Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 392917B1D82
	for <lists+cake@lfdr.de>; Thu, 28 Sep 2023 15:20:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 57DB33CB39;
	Thu, 28 Sep 2023 09:19:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695907199;
	bh=dCWwGBNYmgapW2ydgeyddWPeS5GUOEIUm5bm4f+mjmw=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=hA3Gu7bSfEfI+68ZHFoCMZn+3q6S5nh7pmssmhcuG33yY5l7tn5G2VGafNnvVg3ka
	 JCbrmJRN8CgGxX3FhzxoFdrM9iIFKcL4V6ijczp4pBjrvBY0/aalnR1AZqceOjaZ1y
	 qlm6qVBVtZ1ZdS5Hdf637b2+NR/VamLPqri1uhSfd0Mfu0D09PDBPsqt/aL+0xsNS9
	 gKNSL7NhyJmO1CBmbHt4TlTngb+QeZCs7MaaRa6V+qd9kHt8bv8bl2NpoFtJC0SiAJ
	 D1h6doem6YV2zliYiRSb/wmx+bYRub7/A28Pv6zOoNuhP/cYaqcb25aKEsWjUP5nOr
	 JLm1EE5yRa3Lg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E6A4B3B29D
 for <cake@lists.bufferbloat.net>; Thu, 28 Sep 2023 09:19:57 -0400 (EDT)
Received: from dlang-mobile (unknown [10.2.2.69])
 by mail.lang.hm (Postfix) with ESMTP id EAF6B1AEFC0;
 Thu, 28 Sep 2023 06:19:56 -0700 (PDT)
Date: Thu, 28 Sep 2023 06:19:56 -0700 (PDT)
To: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <FFCCB1ED-3CB4-4F97-9B3B-ADF10F2FE730@gmx.de>
Message-ID: <r9268rp5-8sr8-262s-7975-q68q6434sp6s@ynat.uz>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
 <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
 <FFCCB1ED-3CB4-4F97-9B3B-ADF10F2FE730@gmx.de>
MIME-Version: 1.0
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
From: David Lang via Cake <cake@lists.bufferbloat.net>
Reply-To: David Lang <david@lang.hm>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCAyOCBTZXAgMjAyMywgU2ViYXN0aWFuIE1vZWxsZXIgdmlhIENha2Ugd3JvdGU6Cgo+
IFAuUy46IEkgYW0gdGVtcHRlZCwgYnV0IHdpbGwgbGlrZWx5IHdhaXQgdW50aWwgdGhleSBhcmUg
YXZhaWxhYmxlIGluIHF1YW50aXR5IGFuZCBob3BlIHRoYXQgdGhlIHN0cmVldCBwcmljZSBjb21l
cyBkb3duIGEgYml0IGJlZm9yZSBnZXR0aW5nIG9uZSA7KQoKVGhleSBhcmVuJ3QgYXZhaWxhYmxl
IGF0IGFsbCB5ZXQsIGFuZCBpdCdzIG5vdCBjbGVhciB3aGVuIHRoZXkgd2lsbCBiZSAKYXZhaWxh
YmxlLgoKRGF2aWQgTGFuZwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

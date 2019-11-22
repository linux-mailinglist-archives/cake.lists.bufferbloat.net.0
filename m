Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF2B106E54
	for <lists+cake@lfdr.de>; Fri, 22 Nov 2019 12:07:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4F7DD3CB38;
	Fri, 22 Nov 2019 06:07:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1574420877;
	bh=/GwEI7tbBjdp8xU7a3O9dH3fKM0mn5fZwN7C8iZ/GNE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=ET5CknV+HVOd5z5Cld1wQFMvUMYZVg6ZhUbAif2mQdSav9pWeKZrgAoeGmbCrujPS
	 Ck1ypv2/yF7k74NU7tp7YLJ+8jRiJ+OK19GrNAoqLROeS7qErck8FqQRcFktxeD3xS
	 QmEL6+Tv+bFKOFdtrx8duphsmhD7QvkCO1GJt+g1WCc8lXTbnG/XTRlPIb3Ea6iO6l
	 1mPPF/o8YwA3iIwpmRmkqFHAdKZpDuJZP/+9MrFpcquEqjcABxd0YC322d2JK8r+ho
	 UEbHvRCXNSLFgnNQgYr9BBlSeMwFGNV0Xr3TtkiyizR6GQdL5pbfWU61GNZCpmU5PB
	 n77eDJ6y6nc+A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sa.plexicomm.net (sa.plexicomm.net [204.80.232.21])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F0DFD3B29E
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 06:07:55 -0500 (EST)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by sa.plexicomm.net (Postfix) with ESMTP id 5B1DA412EFC
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 06:06:28 -0500 (EST)
X-Virus-Scanned: Debian amavisd-new at plexicomm.net
X-Spam-Flag: NO
X-Spam-Score: -0.202
X-Spam-Level: 
X-Spam-Status: No, score=-0.202 tagged_above=-9999 required=4.5
 tests=[DKIM_SIGNED=0.1, DKIM_VALID=-0.1, DKIM_VALID_AU=-0.1,
 DKIM_VALID_EF=-0.1, SPF_HELO_PASS=-0.001, SPF_PASS=-0.001]
 autolearn=unavailable autolearn_force=no
Authentication-Results: sa.plexicomm.net (amavisd-new);
 dkim=pass (1024-bit key) header.d=plexicomm.net
Received: from sa.plexicomm.net ([127.0.0.1])
 by localhost (sa.plexicomm.net [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-x2fJeuDNJe for <cake@lists.bufferbloat.net>;
 Fri, 22 Nov 2019 06:06:27 -0500 (EST)
Received: from mail.plexicomm.net (mail.plexicomm.net [204.80.232.17])
 by sa.plexicomm.net (Postfix) with ESMTP id DC9B9412EFA
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 06:06:27 -0500 (EST)
DKIM-Signature: a=rsa-sha256; t=1574420867; x=1575025667; s=key1;
 d=plexicomm.net; c=relaxed/relaxed; v=1;
 bh=ndfDlHkrr6V2eFWHYZmDKsRCl2RPMvkcAMLlaLW6S2A=;
 h=From:Reply-To:Subject:Date:Message-ID:To:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
 b=VQzdjo1HdvCd0Fd59YhOpZT1dpHT7yyBWx/D5WcgDr5CeEodkvdXLUKnPcYjWG7XO91ZCMxU81c8bGb9mYz7zOvEy7gVIkvXUAFTyFM+G/9LtZ34J5kIB/Ezi7DEmfhE4Ixe9Be947niJdz1CTZyqoGGVobTq0BAKa5CnNLYO4E=
Received: from [192.168.11.33] ([23.226.94.156])
 by mail.plexicomm.net (12.2.0 x64) with ASMTP id 201911220607473144
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 06:07:47 -0500
From: "Adam Moffett" <adam@plexicomm.net>
To: cake@lists.bufferbloat.net
Date: Fri, 22 Nov 2019 11:07:54 +0000
Message-Id: <em348223d0-543c-4b79-ba6b-93f2244326c1@adam-pc>
In-Reply-To: <CAA93jw4N_-5bui532Ad5QwGn=GH2CnqWYm=BRn75Fgo93R6aJw@mail.gmail.com>
References: <em287ad38a-b2b3-4e82-9836-99fab879ad14@adam-pc>
 <CAA93jw4N_-5bui532Ad5QwGn=GH2CnqWYm=BRn75Fgo93R6aJw@mail.gmail.com>
User-Agent: eM_Client/7.2.36908.0
Mime-Version: 1.0
Subject: Re: [Cake] Cake implementations
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
Reply-To: Adam Moffett <adam@plexicomm.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cj4+Cj4+ICBBcmUgdGhlcmUgYW55IGNvbW1lcmNpYWwgcHJvZHVjdHMgYWxyZWFkeSB1c2luZyBD
YWtlPwo+Cj5FdmVucm91dGUsIGVlcm8sIHVibnQgdG9wIHRoYXQgbGlzdC4gRXZlbnJvdXRlJ3Mg
aW1wbGVtZW50YXRpb24gaXMKPnN1cGVyYiwgdGhlIGZpcnN0IG9uZSB0aGF0IHVzZWQgYWN0aXZl
IGxpbmUgbWVhc3VyZW1lbnRzIHRvIGhhbmRsZQo+InNhZyIuIEFueXRoaW5nIGRlcml2ZWQgZnJv
bSBvcGVud3J0IChzb21ld2hlcmUgYmV0d2VlbiAxMC0zMCUgb2YgdGhlCj5ob21lIHJvdXRlciBt
YXJrZXQpLiBJJ20gbm90IHN1cmUgaWYgcHJlc2VlbSBpcyB1c2luZyBpdCBvciBub3QuCj5kZC13
cnQuIE1vc3Qgb3RoZXIgdGhpbmdzIGRvaW5nICJTUU0iIGFyZSBkb2luZyBpdCB2aWEgaHRiICsg
ZnFfY29kZWwuCj4KPgpBbiBpZGVhIHdoaWNoIHdhcyBmbG9hdGVkIHdhcyB0byBleHBlcmltZW50
IHdpdGggcm91dGluZyBJU1AgY3VzdG9tZXIgCnRyYWZmaWMgdGhyb3VnaCBhIExpbnV4IHNlcnZl
ciB1c2luZyBjYWtlIHRvIGltcHJvdmUgY3VzdG9tZXIgCmV4cGVyaWVuY2UuICBCYXNpY2FsbHkg
bGlrZSBQcmVzZWVtLiAgTXkgY29sbGVhZ3VlIGhhcyB0b3llZCB3aXRoIGl0IGEgCmJpdCBpbiBz
bWFsbCB0ZXN0IGNhc2VzIGFuZCB3YXMgaW1wcmVzc2VkIHdpdGggdGhlIG91dGNvbWVzLgoKSGUn
cyBsb29rZWQgY2xvc2VyIHRoYW4gSSBoYXZlLCBidXQgSSdtIHRyeWluZyB0byBwaWN0dXJlIGhv
dyBoaXMgaWRlYSAKd291bGQgc2NhbGUuICBJIGJlbGlldmUgSSdtIHNlZWluZyBhIENMSSB0b29s
IGZvciBjb25maWd1cmluZyBwb2xpY2llcy4gIApJdCBzZWVtcyBsaWtlIHdlJ2QgaGF2ZSB0byBj
cmVhdGUgYSBtaWRkbGUgbGF5ZXIgdG8gY3JlYXRlL3VwZGF0ZSAKcG9saWNpZXMgZm9yIGN1c3Rv
bWVyJ3MgSVAgYWRkcmVzcyBiYXNlZCBvbiBpbmZvcm1hdGlvbiBvYnRhaW5lZCBmcm9tIApvdXIg
QUFBIGFuZCBDUk0gc3lzdGVtcy4gIEkgY2FuIHBpY3R1cmUgc29tZSBzaGFwZXMgdGhhdCBtaWdo
dCB0YWtlLCBidXQgCkkgdGhpbmsgaXQgd291bGQgdWx0aW1hdGVseSBoYXZlIHRvIHJldm9sdmUg
YXJvdW5kIHNjcmlwdGluZyB0aGUgdGMgCmNvbW1hbmQuICBUaGVyZSB3b3VsZCBiZSB0aG91c2Fu
ZHMgb2YgcG9saWNpZXMgYW5kIGEgcG9saWN5IHdvdWxkIGJlIApjcmVhdGVkL3VwZGF0ZWQgd2hl
bmV2ZXIgYSBzdWJzY3JpYmVyIHJlY29ubmVjdHMgKGUuZy4gd2hlbiBhIERIQ1AgbGVhc2UgCnJl
bmV3cyBvciBhIFJBRElVUyBhdXRoIGV2ZW50IGhhcHBlbnMgb3Igc2ltaWxhcikuCgpTaG91bGQg
d2UgZXZlbiBwdXJzdWUgdGhpcyBpZGVhPwoKQWx0aG91Z2ggbW9zdCBzdGFmZiB3aG8gd291bGQg
dG91Y2ggdGhpcyB3aWxsIGhhdmUgc3R1ZGllZCBwcm9ncmFtbWluZyAKaW4gY29sbGVnZSwgSSB3
b3VsZCBub3QgcXVhbGlmeSBhbnkgb2YgdXMgYXMgInByb2dyYW1tZXJzIiBwZXIgc2UuICBNeSAK
YmlnZ2VzdCBjb25jZXJuIHdvdWxkIGJlIGhpdHRpbmcgYSBzZXJ2aWNlIGFmZmVjdGluZyBwcm9i
bGVtIHRoYXQgd2UgCmNhbid0IHNvbHZlLgoKU2Vjb25kIGNvbmNlcm4gaXMgdGhhdCBtYW55IG9m
IG91ciBlcXVpcG1lbnQgdmVuZG9ycyBhbHJlYWR5IHVzZSBMaW51eC4gIApFdmVuIENpc2NvIG5v
dyBpbiBzb21lIHByb2R1Y3RzLiAgTWF5YmUgd2UnbGwgd2FzdGUgb3VyIHRpbWUgdHJ5aW5nIHRv
IApyb2xsIG91ciBvd24gc29sdXRpb24gYW5kIHRoZW4gZmluZCB0aGF0IGEgc29mdHdhcmUgdXBk
YXRlIGZyb20gYSB2ZW5kb3IgCm5leHQgeWVhciBnaXZlcyB1cyBldmVyeXRoaW5nIHdlIG5lZWRl
ZCBhbnl3YXkuCgotQWRhbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

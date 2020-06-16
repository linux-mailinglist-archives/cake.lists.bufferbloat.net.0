Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8E41FA846
	for <lists+cake@lfdr.de>; Tue, 16 Jun 2020 07:31:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 37F183CB38;
	Tue, 16 Jun 2020 01:31:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592285498;
	bh=4kDJ4qBJnFucOuibbnxmr+dtTHIX3E3S1JTsg9CWSjc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ow316UYYbWio87L+BuxKRtRGj3J6i/KnM3yZxv+4DYmp1x0a34CM4UD+G42IrLlkQ
	 +gwP7vpfcrX1vibKNzkA42pMzLO4fd4qnLQN9gYrlM7OusYGq21AcWNcSnLvfbFniQ
	 V9hHwZL873OIwG/TW1MS4z0/s5srTbKWz1/UmNNqm9mazm/CURI8VJ76QyKzOl38ZJ
	 Xf2wi0NyGeGpGsjGi30vB6plH5Gm7kUk1TNFLF/S24nWU7dhAhq+U94t4a66fHd790
	 cm1JsjRs8BmBg106iIfRwgfAUym6TRuiWs8rfDzZy72EY/RomUH325DveBEtUdGbqQ
	 TMMqRH3yD2CEA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com
 [IPv6:2607:f8b0:4864:20::d2b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0D6B93B29D
 for <cake@lists.bufferbloat.net>; Tue, 16 Jun 2020 01:31:36 -0400 (EDT)
Received: by mail-io1-xd2b.google.com with SMTP id r77so20588091ior.3
 for <cake@lists.bufferbloat.net>; Mon, 15 Jun 2020 22:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dqpjXQGXrHivbFRNiCo0gSriMRNh7XcmpFnB5Sr+fkY=;
 b=q3WK+g3U01pGLevt/MJLxBQUYZ+mRYaC7lFCJ5B64WItEiFenHhJ9zZcXtAWQPrbzM
 97Gwem/bk08Zetf++CuQkQKgnIapT9PciPYzl5WG5/XZYRwBbajRsxFj3NkRZnHNAO9j
 mfMV7NZ6bvqqxG2fkw5mqtSKUA34zl0qZddKVswTuFP54Ha4QRrTvCAl/fGYCKaKbHzf
 jWa27woLwkNxe+5Ju7kKt+TKJdtH7Vp8ZeTo74yw4XYcaU9d36HqgntB6IpLmo5uV6hL
 jwMjLozrQ5WthvCz/Ipxm90zZ6k21EJdxb7epl6aen+ySEcmeAWSZTV8OnyD5BKCvF/2
 hu/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dqpjXQGXrHivbFRNiCo0gSriMRNh7XcmpFnB5Sr+fkY=;
 b=pjy0J4R9ffNFg7+o8PSEYUxjRjS64IBrgtDJgfc+WWBLk1vVhkMq88wniMbu+3t/59
 A09ywYFPq8hNUY8DhZfPiaVSlptuGkzMlcNWV2qOc1I0OsfSxV+O8kSPScGIA66C6tSV
 sW5G/B1MGAokhRUFkdTDR9W+McVcNmJC+HWjVBZ8tO4R9P1s1Ujjr95UpTXX/lQ/7/nq
 +R0lU/FWQtrZp4PGMDn8luhvl91bJynFk/7Q+dzN2UNBESpnVGH0+0z2BZHtqolwcSkx
 7cWCsrtsuDaXtq4Plq3Zi2TKUKafCSf3MEPdkekUhW13GpZUy4B5dmdP0gf4Ee9jVbTm
 KySA==
X-Gm-Message-State: AOAM5308vWR0HZWO2B7V4a51AZpzMiDOEFTgIRMkCniMtyayeHLBtYEQ
 kWGZx/Ibu0YPiAEX8AL/23b5F2MSHLFIgCFRJe4=
X-Google-Smtp-Source: ABdhPJweI8EI0fUEWVFCGHinKIEPzkhWFgrZnBlkjSfa/Iy8yoSRGr+PQCykNTCBj+R4QiOKJs9E9Syi4CLj95kVAFk=
X-Received: by 2002:a5e:dc03:: with SMTP id b3mr1007639iok.27.1592285496513;
 Mon, 15 Jun 2020 22:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
 <875zd6h3bu.fsf@toke.dk>
 <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
 <7FCC9B1F-7F4B-43E8-B557-88B2A845C28B@gmail.com>
 <CAA93jw6qnP0r8LcUxykUtbwMuv0WcoCvtseLC4rLdbhpwnOU-Q@mail.gmail.com>
 <CAC8NkTCQQ=8Zy-YiYKP=8VLRzmrMH8g1ya1o=6iZAgY2vvbxAw@mail.gmail.com>
 <48938727-0CFF-4B72-B82B-49E0535E9B82@gmail.com> <87y2pgi5ue.fsf@toke.dk>
 <CAC8NkTCrNr8De8eT90UogVE+6ZzHgxQz1K3SXFrs1JVCTahdQQ@mail.gmail.com>
 <1F6D30F9-A697-4588-9AB7-2A3757924900@gmail.com>
 <CAC8NkTCf0B2QKb9TEZXk2P171CGb2faKZ3BHg2UJONpROxjY8Q@mail.gmail.com>
In-Reply-To: <CAC8NkTCf0B2QKb9TEZXk2P171CGb2faKZ3BHg2UJONpROxjY8Q@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 15 Jun 2020 22:31:24 -0700
Message-ID: <CAA93jw7baj-aRjASUq_GW+Si6pE=WP81nfLJ5+45A2B90=8_Bg@mail.gmail.com>
To: Avakash bhat <avakash261@gmail.com>
Subject: Re: [Cake] Query on ACK
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
Cc: Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

c28gZ2xhZCB0byBzZWUgdGhhdCBtZXJnZWQhIEkga25vdyBob3cgaGFyZCBpdCBpcyB0byBtYWtl
IHByb2dyZXNzCnRoYXQgYW55b25lIGNhbiAocmUpdXNlLgoKVGhhbmtzIHNvIG11Y2ghCgpPbiBN
b24sIEp1biAxNSwgMjAyMCBhdCAxMDoyMiBQTSBBdmFrYXNoIGJoYXQgPGF2YWthc2gyNjFAZ21h
aWwuY29tPiB3cm90ZToKPgo+IEhpIGFsbCwKPgo+IFRoYW5rIHlvdSBmb3IgdGhlIGNsYXJpZmlj
YXRpb24uIFdlIHdpbGwgdHJ5IGltcGxlbWVudGluZyBhIHNpbWlsYXIgdGVzdC4KPgo+IFRoYW5r
cyB0byB0aGUgQ2FrZSBjb21tdW5pdHkncyBjb250aW51ZWQgc3VwcG9ydCB3ZSB3ZXJlIGFibGUg
dG8gc3VjY2Vzc2Z1bGx5IG1lcmdlIHRoZSBzZXQtYXNzb2NpYXRpdmUgZmxvdyBoYXNoIG1vZHVs
ZSBpbnRvIG5zLTMgKGh0dHBzOi8vZ2l0bGFiLmNvbS9uc25hbS9ucy0zLWRldi8tL21lcmdlX3Jl
cXVlc3RzLzIwOSkuCj4KPiBIb3BlZnVsbHksIHdlIGFyZSBhYmxlIHRvIGFjaGlldmUgYSBzaW1p
bGFyIHJlc3VsdCB3aXRoIHRoZSBhY2sgZmlsdGVyIG1vZHVsZSBhbmQgd2Ugd2lsbCBjb250aW51
ZSB0byB3b3JrIHRvIGRvIHNvLgo+Cj4gVGhhbmtzLAo+IEF2YWthc2ggQmhhdAo+Cj4gT24gU3Vu
LCBKdW4gMTQsIDIwMjAgYXQgODoxMyBQTSBKb25hdGhhbiBNb3J0b24gPGNocm9tYXRpeDk5QGdt
YWlsLmNvbT4gd3JvdGU6Cj4+Cj4+ID4gT24gMTQgSnVuLCAyMDIwLCBhdCAzOjQzIHBtLCBBdmFr
YXNoIGJoYXQgPGF2YWthc2gyNjFAZ21haWwuY29tPiB3cm90ZToKPj4gPgo+PiA+IEkgd2FudGVk
IGFub3RoZXIgY2xhcmlmaWNhdGlvbiBvbiB0aGUgcmVzdWx0cyBvYnRhaW5lZCBieSB0aGUgQWNr
IGZpbHRlcmluZyBleHBlcmltZW50KCBGaWcgNikgLgo+PiA+IFdhcyB0aGUgZXhwZXJpbWVudCBj
b25kdWN0ZWQgd2l0aCBvbmx5IGFjayBmaWx0ZXJpbmcgZW5hYmxlZD8KPj4gPiBPciB3YXMgc2V0
IGFzc29jaWF0aXZlIGhhc2ggYW5kIHRoZSBvdGhlciBtb2R1bGVzIG9mIENha2UgZW5hYmxlZCBh
bG9uZyB3aXRoIEFjayBmaWx0ZXJpbmcgd2hpbGUgcnVubmluZyB0aGlzIGV4cGVyaW1lbnQgPwo+
Pgo+PiBUaGUgdGVzdCB3YXMgcnVuIG9uIGEgY29tcGxldGUgaW1wbGVtZW50YXRpb24gb2YgQ2Fr
ZSwgc2V0IHVwIGluIHRoZSBub3JtYWwgd2F5LiAgSSB0aGluayB3ZSBrZXB0IHRoZSBjb25maWd1
cmF0aW9uIHNpbXBsZSBmb3IgdGhpcyB0ZXN0LCBzbyBldmVyeXRoaW5nIGF0IGRlZmF1bHRzIGV4
Y2VwdCBmb3IgY2hvb3NpbmcgdGhlIHNoYXBlZCBiYW5kd2lkdGggaW4gZWFjaCBkaXJlY3Rpb24u
Cj4+Cj4+IFRoZSBhY2stZmlsdGVyIHJlbGllcyBvbiBoYXZpbmcgZmFpcmx5IGdvb2QgZmxvdyBp
c29sYXRpb24sIHNvIHRoYXQgY29uc2VjdXRpdmUgcGFja2V0cyBpbiB0aGUgYXBwcm9wcmlhdGUg
cXVldWUgYmVsb25nIHRvIHRoZSBzYW1lIGFjayBzdHJlYW0uICBTbyBhdCBtaW5pbXVtIGl0IGlz
IGFwcHJvcHJpYXRlIHRvIGhhdmUgdGhlIHNldC1hc3NvY2lhdGl2ZSBmbG93IGhhc2ggZW5hYmxl
ZC4KPj4KPj4gVGhlIGhvc3QtZmFpcm5lc3MgYW5kIERpZmZzZXJ2IGZlYXR1cmVzIHdlcmUgcHJv
YmFibHkgZW5hYmxlZCwgYnV0IGRpZCBub3QgaGF2ZSByZWxldmFudCBlZmZlY3RzIGluIHRoaXMg
Y2FzZSwgc2luY2Ugb25seSBvbmUgcGFpciBvZiBob3N0cyBhbmQgdGhlIEJlc3QgRWZmb3J0IERT
Q1Agd2VyZSB1c2VkIGluIHRoZSB0cmFmZmljLgo+Pgo+PiAgLSBKb25hdGhhbiBNb3J0b24KCgoK
LS0gCiJGb3IgYSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxpdHkgbXVzdCB0YWtlIHByZWNl
ZGVuY2Ugb3ZlciBwdWJsaWMKcmVsYXRpb25zLCBmb3IgTW90aGVyIE5hdHVyZSBjYW5ub3QgYmUg
Zm9vbGVkIiAtIFJpY2hhcmQgRmV5bm1hbgoKZGF2ZUB0YWh0Lm5ldCA8RGF2ZSBUw6RodD4gQ1RP
LCBUZWtMaWJyZSwgTExDIFRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9AA42E3ED
	for <lists+cake@lfdr.de>; Fri, 15 Oct 2021 00:00:24 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0F68A3CB58;
	Thu, 14 Oct 2021 18:00:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634248823;
	bh=gRo9x0EuuK14tWce7WNRFJGpl5x6/um0RiCJ7gqU5BI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=grFLC3ugnlZNmqtJmleUWrcKoaANjeLWCcyGwOo5PnCXS5UpJa5XVTMTxx2mM2MVT
	 cEZsb6SKDageL9UOy1WrHbW0JckJ85Z5Q0WtjvT2UJ6OJ1n1DMHvtwNpX8Vhx5D1gN
	 /PbZ17yd/QWOZHEEQvVTq7hPfbs9W38Wi2qH3OkD5D83UhXnhb7ajafzXlRJwenyUe
	 dvozEVhVsdCWkymIFOolzHLVGgag2UZbU1XlKgGuj38YDMluB9TN/fTl7AAXyoc7Ew
	 5lcXwZReZ4nziSDtgesU6Gp6k8RVneRHjK22wZw4e4ivtJBuU1F59IFdtPb4O21Yn9
	 C++vrUoRDSxjw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A0F6B3B29E;
 Thu, 14 Oct 2021 18:00:21 -0400 (EDT)
Received: by mail-io1-xd2a.google.com with SMTP id h196so5560131iof.2;
 Thu, 14 Oct 2021 15:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+J6pHiYiPAQB0dXM4IXv6sabZJKLcSiVN4KaUGAlhU4=;
 b=pAeVPtfMfiW/mTBRYZHESUQgpnIfH5TEZDLVEkd/KWf0vZh1tBhBtloT7diWkX3Uqb
 qGOU9duQWERdRXtD91Cgpej+whlI9adeWBNrr40fGd8H56mn5CtbnL+rOc9IX/R5joPH
 E2M38BJSaA3W1bpy9DcLrdVka/HEBVRf75/d9pkGdvDER1YrsC1ttX3uFNUM2F51F/uc
 jIxjPilWfCWIt32HRn7Gyuait/VJfGQAMBfcFUv7SdpYenKFi76SFrdemhYg/j2hiH+V
 /L6MzoKJ45JRvEs5b/T/pXuKcZk77xPciRjr0b+QJNb0VRI2iXvEjWVnRDdTGr5R4kPp
 4LEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+J6pHiYiPAQB0dXM4IXv6sabZJKLcSiVN4KaUGAlhU4=;
 b=1eiAXtdekfUUpMtZ5m6RUqN5nh2NKRX6iEPtQVWLhxf18FVQNSYQxg8/b2iE+MPMPO
 uNMiJP0uF/PZ4KHv3M6UAp4veZVFMznJt77cLMcm4cUrKfNioxdC9BSG0tS5qL+KwiCN
 8MTViPZ6MuqArKzw6MG7V7AdtJjCu7KeftUSzOaIK6CMgsATU+z193CeX+u4di0g6t1w
 9ffPyJtCwnVWZgFVLoRAg4w4cwYFgLHXh3PNace1yXGqd5sH0Aia6DJVNGEE7hrw28Ua
 Yo1bGuwVxXUFgTSZziQPskdbF9+dpZQP9xwQE6HzcOkyCoWf+op5xzR4wb9ZzhM5cca2
 WH6Q==
X-Gm-Message-State: AOAM533EdCmtAIwHru3rBTmG3XOnVoNkbieqyoTiVUl4PetNGJwjj6U0
 gU/1g8f9NgmKfArLppMZXCG8FHAE0Nwp9VKRRQU=
X-Google-Smtp-Source: ABdhPJzliNomoi+BHXm9SVjQOpkOcGZoQZiRJa+AbIiGZtHGT5n+YsARlV+hWW/kpXAK4ZZTFtYgfr1reV3cjJLZJ7I=
X-Received: by 2002:a6b:ce03:: with SMTP id p3mr1120748iob.163.1634248820629; 
 Thu, 14 Oct 2021 15:00:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
In-Reply-To: <87sfx31dt5.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 14 Oct 2021 15:00:08 -0700
Message-ID: <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBPY3QgMTQsIDIwMjEgYXQgMjo0NCBQTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAdG9rZS5kaz4gd3JvdGU6Cj4KPiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+
IHdyaXRlczoKPgo+ID4gd2VpcmRseSBlbm91Z2gsIG15IGdtYWlsIGFjY291bnQgaGFzIG5vdCBy
ZWNlaXZlZCBhbnl0aGluZyBmcm9tIG5ldGRldgo+ID4gc2luY2Ugb2N0IDExLgo+Cj4gWW91J3Jl
IG5vdCBhbG9uZSBpbiB0aGF0Ogo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDIx
MTAxNDExMjcxOC42YWVkN2Y0N0BraWNpbnNraS1mZWRvcmEtcGMxYzBoam4uZGhjcC50aGVmYWNl
Ym9vay5jb20vVC8jdAoKb2suIE9uZSBvZiB0aGVzZSB5ZWFycyBJJ2xsIGdvIGJhY2sgdG8gcnVu
bmluZyBteSBvd24gZW1haWwgc2VydmVyIGZ1bGwgdGltZS4KCj4gPiB5ZXMsIGkgdGhpbmsgZnFf
Y29kZWwgd2lsbCBiZSBiZXR0ZXIsIGFuZCBldmVuIHRoZSBwcm9wb3NlZAo+ID4gdG9vLXNoYWxs
b3cgdGhyZXNob2xkIHdpbGwgbWFrZSBmb3IgbGVzcyBvZiBhIGRlbnQgb24gdGhlIGludGVybmV0
Lgo+ID4KPiA+IHN0aWxsLi4uIEkgZG8gd2lzaCBJJ2Qgc2VlbiB0aGlzIGVhcmxpZXIuCj4KPiBF
YXJsaWVyPyBZb3UgZm9yd2FyZGVkIHRoZSBwYXRjaCBob3VycyBhZnRlciBpdCB3YXMgcG9zdGVk
Li4uCgpJIGhhdmUgYSBkYWlseSBzZWFyY2ggZm9yIGZxX2NvZGVsLCBidWZmZXJibG9hdCwgZXRj
LiBJIGhhdmUgbm90aWNlZApsYXRlbHkgdGhhdCBzb21lIG1haWxpbmcgbGlzdCB0cmFmZmljIGZy
b20gdXMgaXMgYmVpbmcgaW5kZXhlZCBhZ2Fpbi4KSSB3aXNoIEkga25ldyB3aHkgb3VyIGxpc3Rz
IHdlcmUgbm90IGluZGV4ZWQgYnkgZ29vZ2xlLgoKQW55d2F5LCBsYWNraW5nIGJlaW5nIG9uIHRo
YXQgdGhyZWFkLCBpdCdzIGN1cnJlbnRseSBpbXBvc3NpYmxlIHRvCnJlcGx5LiBJIHdvdWxkIGNl
cnRhaW5seSBsaWtlIG1vcmUgdG8gYmUgZXhwbG9yaW5nIEhGQ0MgLSBJIGRvIGFncmVlCnRoYXQg
YSBzaGFsbG93IG1hcmtpbmcgdGhyZXNob2xkIGlzIGluY3JlYXNpbmdseSBuZWNlc3NhcnkgYXQg
cmF0ZXMKYmV5b25kIDEwR2JpdCwgYW5kIHRoYXQgbW9yZSB3b3VsZCByZWFkIC0KaHR0cHM6Ly9n
aXRodWIuY29tL2hlaXN0cC9sNHMtdGVzdHMja2V5LWZpbmRpbmdzIGJlZm9yZSB0aGUgaW50ZXJu
ZXQKaXMgc3BsaXQgaW50byBhIGZhc3QgYW5kIHNsb3cgbGFuZS4KClRoYXQgc2FpZCwgdGhlIGw0
cyBmcV9jb2RlbCBwYXRjaCBpcyBpbnRyaW5zaWNhbGx5IGZhaXIsIHdoaWNoIGlzCnZhc3RseSBz
dXBlcmlvciB0byB0aGUgZHVhbHBpIGFwcHJvYWNoLgoKSSB0aGluayB0aGF0IHRoZSBvdmVyLXNo
YWxsb3cgcHJvcG9zZWQgdGhyZXNob2xkIG9mIDUwdXMgLSB0aGUgbG93ZXN0CkknZCBzZWVuIHRv
IGRhdGUgd2FzIDI1MHVzISB3b24ndCB3b3JrIG9uIGFueXRoaW5nIG90aGVyIHRoYW4gYmFyZQpp
cm9uIG9yIGZyb20gYSBzZWxmLWxvY2FsIHFkaXNjLCBhbmQgdGhhdCB3aWxsIGxlYWQgdG8gdGhl
CmltcGxlbWVudGF0aW9uIGJlaW5nIG5hdHVyYWxseSBzbG93IHJhdGUgb24gdmlydHVhbGl6ZWQg
aG9zdHMsIGJ1dApsb3NzbGVzcywgd2hpY2ggd291bGQgYmUKYSB3aW4sIGFuZCBmb3IgYWxsIEkg
a25vdyBpbnRlcmFjdCB3ZWxsIHdpdGggdGhlIGZhc3Qvc2xvdyBxdWV1ZSBjb25jZXB0LgoKSSBj
ZXJ0YWlubHkgdGhpbmsgYmJydjIgbmVlZHMgbW9yZSB0ZXN0aW5nLCBhcyBpdCBoYXMgYWx3YXlz
IHNlZW1lZCB0bwpiZSBhIG1vcmUgcHJvbWlzaW5nIGFwcHJvYWNoIHRoYW4gcHJhZ3VlLgoKTXkg
YmlnZ2VzdCBmZWVkYmFjayBvbiB0aGUgcGF0Y2ggc28gZmFyIGlzIEkgZGlzbGlrZSB0aGUgb3Zl
cmxvYWQgb24KcmVwb3J0aW5nIHdoZXJlIHRoZSBDRSBjYW1lIGZyb20sIGFuZCB3b3VsZCBwcmVm
ZXIgdGhhdCBsNHNfY2UgYmUKZXhwb3NlZCB0byB1c2Vyc3BhY2UuIFdlIGhhdmUgdmVyeSBsaXR0
bGUgZGF0YSBvbiBhY3R1YWwgY2UncyBpbiB0aGUKZmllbGQgYXMgaXQgaXMgLSBjb25mbGF0aW5n
IHRoZSB0d28gc3RhdGlzdGljcyB3b24ndCBoZWxwIC0KCkkgYWxzbyBoYXRlIGFkZGluZyBhbnl0
aGluZyBtb3JlIHRvIHRoZSBob3QgcGF0aC4gQW5kIGlmIHdlIGhhdmUgdG8gZG8KaXQsIG1ha2lu
ZyBzY2UgYXZhaWxhYmxlIGFzIGFuIG9wdGlvbmFsIGF0IHRoZSBzYW1lIHRpbWUgaGFzIHRoZSBz
YW1lCmNvbXB1dGF0aW9uYWwgY29zdC4KCkFuZCBpdCBzdGlsbCBidWdzIG1lLCB2ZXJ5IG11Y2gs
IHRoYXQgYmJydjEgaGFzIG5vIHJmYzMxNjgtbGlrZSByZXNwb25zZS4KClBlcmhhcHMgd2l0aCBz
b21lIHRpbWUgdG8gd29yayBvbiBhIGNvaGVyZW50IHJlcGx5IHRvIHRoaXMgcGF0Y2ggYW5kCmZp
Z3VyaW5nIG91dCBob3cgdG8gZ2V0IGJhY2sgb24gbmV0ZGV2LApJIGNhbiBzYXkgYWxsIHRoYXQg
YmV0dGVyLiBPciBJIGNhbiBqdXN0IGdvIGJhY2sgdG8gZml4aW5nIHVwIG15IGJvYXQuCgo+Cj4g
LVRva2UKCgoKLS0gCkZpeGluZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91
dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZYcndndwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBM
TEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

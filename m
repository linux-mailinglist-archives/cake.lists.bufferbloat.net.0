Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1E58617D7
	for <lists+cake@lfdr.de>; Fri, 23 Feb 2024 17:27:14 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 57B3F3CB43;
	Fri, 23 Feb 2024 11:27:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1708705632;
	bh=EGiAHJhl2IkTDg9RaYozvOR/Nbh+dwOp3nz5P/651Mg=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=SBMn4wCWG1Q+8i8aBgX5+mgAhx3uvVDo0xeBQjgebD35aeu55OEdo8a0dlALLgU4U
	 gRPFgDwyDi+Cfm7Pdcbs83DB9xB00gKMuM6ehYtRchW3ypTttA/mRa3RTMkouMzAVY
	 F8+ZI/XIaSGa6e9gTDZkWLY2RnfaYqijz7WYyQ1TiIdSSNjrxlnAwprWoEpW/EYwSw
	 rKcjRDXlxNw6t2xbIFcpWa7ZGjx9YnKqoVrW9K6AlHK7YpbAXOMLm6NqDbw/YD1weM
	 kf+Br+4csR6SpcQBGNa1OuGgR41X7NOb6cyfXlS0+5ruueMEHX3iQheVJsl/O+LD6e
	 QZQIzPQJ9VqkA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2D40D3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 23 Feb 2024 11:27:11 -0500 (EST)
Received: by mail-lj1-x22e.google.com with SMTP id
 38308e7fff4ca-2d2531294faso16479311fa.2
 for <cake@lists.bufferbloat.net>; Fri, 23 Feb 2024 08:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708705630; x=1709310430; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4vmextmE1TpDVJFWdZrEphjXFOe0uQePEKV5plRP5Bs=;
 b=NcVS46JBqSaKFhm7IP+7TLa4hDB+ekNv0SJSEiDDEB6VnFG8xK6BqbvMLJNhnYc2TR
 xuFWrnbf+hHddrMyTcffdQVlfpzqbBdAxrH2KjdZqlZWpj03g0ZVx8W5FKwJL0KVVyZS
 aRVdRI837FGAZBYAm/v59c3XfH1ngwpOzd9qLfcjAjorVBwQtzF4/WUJCxQ2YZHsAQeY
 Qu1HLyXny/UaBsJnP8PlpioMztLBEwPce8CVCi2vJbNqRARhnPGpFj/7DHlyH8VUDu3O
 tif37Z799RYYj5nN01MOViXQOsfeM2yHE1UKvGWxSZNZzYXTjJKNZvuNl/SVZYJYF0ie
 gjxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708705630; x=1709310430;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4vmextmE1TpDVJFWdZrEphjXFOe0uQePEKV5plRP5Bs=;
 b=Ftfjd3qZWM0jADc8Jgdi6adDIMPr8EykgKoke5IAmvx+Ve0GBTy4VvPRY90VxHCosq
 HgXtwhNM4iz40EAKdZHJpOKbWDb3ykpNKWO4z9Fm58JWYNW+bWKHb5IpBtXNS9pDyRGh
 cYPrw7R1FqFit77eiijwKoxyb2JyxjUG5uGsGIIZiOfJWgymybwMnJAXQai8FsuMid5j
 A7D1wHWN1aEqVoTixZy3RXF2cbSV4w6laVg3FyeaFwv6w7/Xj6AuZncp1dlxaQH97gg7
 O5QMi8ws2tcH6CwRuwg6il64wW6nPXvr6Ikh+eLbZcqHKfiI9QFq5YeSQPumgESpHDTG
 n1HQ==
X-Gm-Message-State: AOJu0YxdF+4ADlvAZXo7Ca6IeYdNhpsvwH9qcytHQjWTo13LMHPPq5h3
 eyLppZ7u8jBbddZZy85KTz9TX3NovA7QyISwgKfq09s+/8QtfpnfOEfvXeaan5WMA6wuuxdkr9l
 GORRpUP8X8dGcm4Lv54W6umPCvuQ=
X-Google-Smtp-Source: AGHT+IFmgoMa6kO/8migypEGZGsWzjSfzED3lVaMUfpk0q35fd6mNc1AZveGhsiyjn0QAitS7PM0DQdl4lMRt7dwg5A=
X-Received: by 2002:a05:6512:2314:b0:512:e394:bfb1 with SMTP id
 o20-20020a056512231400b00512e394bfb1mr216005lfu.43.1708705629312; Fri, 23 Feb
 2024 08:27:09 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw7YeW4wTC2OL4AxeEPBOGL4sKN+e5Dtre_0VZCkOjkbCw@mail.gmail.com>
 <875xyldhbk.fsf@toke.dk>
In-Reply-To: <875xyldhbk.fsf@toke.dk>
Date: Fri, 23 Feb 2024 11:26:58 -0500
Message-ID: <CAA93jw7y+S6NvRf+Q_VtqJkDnWQJO5Cr5d_En6wHvas6pEBT1w@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] cake's ack-filter vs GSO
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gU3VuLCBGZWIgMTgsIDIwMjQgYXQgODozN+KAr0FNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNl
biA8dG9rZUB0b2tlLmRrPiB3cm90ZToKPgo+IERhdmUgVGFodCB2aWEgQ2FrZSA8Y2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQ+IHdyaXRlczoKPgo+ID4gSXQgaGFzIGJlZW4geWVhcnMgc2luY2Ug
SSBsb29rZWQgYXQgY2FrZSdzIGNvZGUuCj4gPgo+ID4gRG9lcyBhbnlvbmUgcmVtZW1iZXIgd2h5
IHdlIGRvIG5vdCBhY2stZmlsdGVyIGEgZ3NvLXNwbGl0Pwo+Cj4gQmVjYXVzZSBhIEdTTyBwYWNr
ZXQgY2Fubm90IGJlIGEgcHVyZSBBQ0ssIHNvIGl0IHdvdWxkbid0IGJlIGZpbHRlcmVkCj4gYW55
d2F5Li4uCgpCdXQgYSBHUk8gcGFja2V0IGNhbiwgYW5kIG1vc3QgbGlrZWx5IElTIGEgcHVyZSBh
Y2sgcGFja2V0IHRyYWluIHRoYXQKY291bGQgYW5kIHNob3VsZCBiZSB0aGlubmVkLiBJIHRoaW5r
LiBZZXM/CgpBbnl3YXksIEkgcHV0IGluIGZvciBhIHNtYWxsIGdyYW50IGEgZmV3IG1vbnRocyBh
Z28gd2l0aCBOTE5FVCBvbiB0aGlzCihhbmQga2VlcCBob3BpbmcgdGhhdCBzb21ld2hlcmUgb3V0
IHRoZXJlLCB0aGVyZSBhcmUgbW9yZSBvcmdzIHVzaW5nCmNha2Ugd2lsbGluZyB0byB0aHJvdyBp
bj8gSSBtZWFuIHRoZXJlIGFyZSBodW5kcmVkcyBub3chIENhbiBhbnlvbmUKcmVhY2ggb3V0IHRv
IHRoZW0/KQoKSXQgbWlnaHQgYmUgYXBwcm92ZWQgaW4gYSBtb250aCBvciBzbyAtIGJ1dCBpdCBh
bHNvIGhhZCBzY29wZSBpbgpsb29raW5nIGF0IHRyYW5zcG9ydHMgYW5kIHRoZSBCU0RzLCBhbmQg
SSBrZWVwIGhvcGluZyB0byBzb21laG93IGZpbmQKZW5vdWdoIHJlc291cmNlcyB0byBoYXZlIGEg
cHJvamVjdCB3aXRoIDMgY29yZSBmb2xrIHJ1bm5pbmcgYXQgaXQgcGFydAp0aW1lIGZvciAyIHll
YXJzLgoKaHR0cHM6Ly9kb2NzLmdvb2dsZS5jb20vZG9jdW1lbnQvZC8xdFRZQlBlYVJkQ085QUdU
R1FDcG9pdUxPUlF6Tl9iRzNUQWtFb2xKUGgyOC9lZGl0CgpFbHNld2hlcmUgYSB2b2x1bnRlZXIg
c3RhcnRlZCBzb21lIHdvcmsgb24gdmFsaWRhdGluZyB0aGUgZnFfY29kZWwKaW1wbGVtZW50YXRp
b25zIG9mIG9wZW5ic2QgYW5kIGZyZWVic2QuIFRoZSByZXN1bHRzIGFyZSBpbnRlcmVzdGluZyEK
VGhlICJ3cm9uZyIgb3BlbmJzZCB2ZXJzaW9uIHdpdGggYSA0MDAgY291bnQgY2FwIGRvZXMgbm90
IGJlaGF2ZSBtdWNoCmRpZmZlcmVudGx5IGZyb20gdGhlIG9uZSB3aXRoIHRoZSBwdXJlIG5ld3Rv
biBpbnZzcXJ0IGFwcHJveGltYXRpb24gaW4KdGhlIHRlc3RzIHNvIGZhci4gQ2FuIGFueW9uZSBz
dWdnZXN0IHRlc3RzIHRvIGV4ZXJjaXNlIGl0PwoKRG8gSSBoYXZlIHRoZSBlbmVyZ3kgdG8gd3Jp
dGUgdGhlbSB1cCB5ZXQ/IE5vLiBJIG1pZ2h0IHN0YXJ0IHlldAphbm90aGVyIG1haWxpbmcgbGlz
dCB0byBkaXNjdXNzIGl0LiBNeSBsb25nIHRlcm0gaG9wZSBpcyB0byBnYWluCmVub3VnaCBleHBl
cmllbmNlLCBzb21laG93IGdldCBjYWtlIHBvcnRlZCBvdmVyIHRvIHRob3NlIE9TZXMKZXZlbnR1
YWxseSwgYnV0IEkgd291bGQgc2V0dGxlIGZvciBqdXN0IHF1aWV0aW5nIHRoZSBub2lzZSBpbiB0
aGUKb3Buc2Vuc2Ugd29ybGQuCgpJIGFtIHRyeWluZyB0byBoYXZlIGEgQlFMIGRpc2N1c3Npb24g
b24gdGhlIG5ldGRldiBsaXN0IGFsc28sIGFib3V0CnZpcnRpby1uZXQuLi4KCk1heWJlIHRoaXMg
cHJlc2VudGF0aW9uIHdpbGwgZ2FpbiB0cmFjdGlvbjoKaHR0cHM6Ly93d3cueW91dHViZS5jb20v
d2F0Y2g/dj1yV25iNTQzU2RrOCZ0PTI2MDNzCgoKPgo+IC1Ub2tlCgoKCi0tCmh0dHBzOi8vYmxv
Zy5jZXJvd3J0Lm9yZy9wb3N0LzIwMjRfcHJlZGljdGlvbnMvCkRhdmUgVMOkaHQgQ1NPLCBMaWJy
ZVFvcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

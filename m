Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC40B433714
	for <lists+cake@lfdr.de>; Tue, 19 Oct 2021 15:30:25 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5A7C53CB5C;
	Tue, 19 Oct 2021 09:30:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634650224;
	bh=+1m1R6vwa2OlmGncnAVfezaB643ZvCbUQ0Y3LSMiVaQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EDkwTx4/SS7ggXgeXfqazFyQ1M7fkkAoglVqBcIzNTMvaoBASUv6kxScyAMgeCBTA
	 CH8Ply10wiULhhzPaLfAJ29h0Tdzp1Cmwnb/bmGuF9tCzxosQRF4iUtKrZODhtwrht
	 3tEL9emQs2cfJsID7sndJgNgPyZiC1rAzwsiKGN7tFp2sOfmhb4Ycy7YOvzN3j+gj8
	 08pyteXiuJKoUFns0ESJo/gPjF9K/WrCNnmAr5EADJUx0ejGrDU/wHC1ly7SBk1y++
	 y+5Zaa3JIMABBWPExn0hRlqTFmlfJA6p76eiCaYEJNzuxt4qYtihItFo2R4VJCswvC
	 g4sITwDURo70Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A32173B29D;
 Tue, 19 Oct 2021 09:30:22 -0400 (EDT)
Received: by mail-io1-xd33.google.com with SMTP id z69so17181880iof.9;
 Tue, 19 Oct 2021 06:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=c54P0wkinX5+D/Zkg+M1A/ScE28l9l9sRvogzttnfYY=;
 b=iNhIKddtw7WTvBD9pKoZqvbjkZa11I9ftlk1RjiP3HBnx9wn0XDdwhd5HGWUR4Y4mI
 se2iZk1Qu7DyFs6b96NNqFokaHK5qm50b/N3t4B2pS6N4ztp//aqfQmnQOhGFo9vOAiN
 i3DDC2OnUe1Qv1NJLnKK8uXID1FD8IHRZQEgdirOH0nZeNZj0rfuYvgLIt1tiv38DSi1
 vNcmp3QYTLg7WyvkazmFOpXwWKT3y+zl9vn3Vlul2DvcZKOmyXTAzUIJVnm2nXgl06dg
 RgHzSTvQ6Zy82Jt+Bae84z8rVM4OwqtZF89if2LacZu4phGorKYSXkMtYG+xD8n3vxot
 UGow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=c54P0wkinX5+D/Zkg+M1A/ScE28l9l9sRvogzttnfYY=;
 b=lUDq2f0Cavb9YfP5afUiU+EoE/kRWWz7SlFNuip9R2SOLb5XyNJdJ+yrps+/DMFdVG
 MhV/kzUFyYGYeYb2DicIsYJn7JXe/+eX0xRHEIUSfruPNdkAXkjyFiw+tgO4Dwi2oH6U
 5kMbMY6JQkAw1t2371quP4p4ejILC0chJ/q1DtgI21QN/v6bTvDzQtbThE67R8T9CGVX
 8A8EHa7MeYgaAU4NxjpNmE0b92r0E7RWL09ooDnE6Cpjn+0nB86Fgbf6snEk0E4rBDrb
 +jNiN8FxUu4yEzTgsJpAhcO/nJChZOGLhwwFX7NbIDC3fuReV8gLXlgmv9ZHBYKsFVzT
 DHfQ==
X-Gm-Message-State: AOAM532SyoJyaeFyTfDq8eUb9TgPljApXbeT0Q55YLoSjePRq10HGdi+
 XUaVsONBOQF+622i5WXFK0/W+XZGAWFOteAXCdU=
X-Google-Smtp-Source: ABdhPJyLKeci8hefh8NOo1UG2iUU6lqGxbHq7kKNFdunJnFfV2pyUv19h5Z8jp5fiYvVr9gfAJ2V2VhZKrCdp2CJfoM=
X-Received: by 2002:a6b:7a01:: with SMTP id h1mr18557234iom.55.1634650221907; 
 Tue, 19 Oct 2021 06:30:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
 <878ryqjxke.fsf@toke.dk>
 <CAA93jw52-6oaOgDCS7m8+zF0VDFDEgADat=So7zWPTwNrR988w@mail.gmail.com>
 <87tuhdgt35.fsf@toke.dk>
In-Reply-To: <87tuhdgt35.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 19 Oct 2021 06:30:09 -0700
Message-ID: <CAA93jw7zPCJE13DxB6QzM4eMh+-DkRaX-_XJhzAU5y9b9JbJbg@mail.gmail.com>
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

T24gVHVlLCBPY3QgMTksIDIwMjEgYXQgNDoxOSBBTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAdG9rZS5kaz4gd3JvdGU6Cj4KPiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+
IHdyaXRlczoKPgo+ID4gbXkgbW9yZSBzcGVjaWZpYyBxdWVzdGlvbiB3YXMgZ3JvLiBPbiBncm8g
YXNzZW1ibHkgaXMgdGhlIGRzY3AvZWNuCj4gPiBoZWFkZXIgZXhhbWluZWQ/Cj4KPiBZZXMsIGFu
ZCBvbmx5IHBhY2tldHMgd2l0aCB0aGUgc2FtZSB2YWx1ZSBnZXQgYWdncmVnYXRlZDoKPiBodHRw
czovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL25ldC9pcHY2L2lwNl9v
ZmZsb2FkLmMjTDI2MwoKR29vZCB0byBrbm93LiBUaHguCgo+IC1Ub2tlCgoKCi0tIApGaXhpbmcg
U3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9Yzln
TG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK

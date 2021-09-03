Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6814001D6
	for <lists+cake@lfdr.de>; Fri,  3 Sep 2021 17:16:55 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 433D63CB40;
	Fri,  3 Sep 2021 11:16:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1630682214;
	bh=p+TauCApHgegNimKfBePgv+LOoB8Pn+WikxzSUXgYYc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m7vUhHSWJdBejSl7A69ValmR9t8NHLv+LcpjrRER4wfLmevbtKEpBu25f30XvynlG
	 DKeu53TfFZs/PrZxsMdFfyrUJQ5WpwcuqIhQ5blubOZjfPvdsZHUvha8NFCCWpqiwK
	 JZMJYOSsQGSKtqRFdS9rsyyQldDvIVyYGS6a/RYbYf8p2i8Btnl+jP82q4VC+Q26xB
	 ouworHOqNqHLOT7p+aujcaPgePs2LDLNf+JAuqvYAwhBXeOiEPzzfXE9RBsitXxr6L
	 2MflJ0Vpwdx4Ru8XU06dmU+8jG539H77qjueNXIWr2pR9BBmE6uV4e+Y51qbnhMPLU
	 OPh+o0fRyRIVA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 26A4E3B29E
 for <cake@lists.bufferbloat.net>; Fri,  3 Sep 2021 11:16:53 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id a15so7164001iot.2
 for <cake@lists.bufferbloat.net>; Fri, 03 Sep 2021 08:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=VYQv2sc2XRCKTxoP2D8rMqP/uPPGfLTr1x+9NfPsNsU=;
 b=QYk8p+S/QEgKC9ypUoyG8KV1K5ZEd7z9FIOOEH/bkdAcS6yoqHZIwKL7RUat0t3E5S
 2mzJJXYEvA/SuuPO2THr/VydOGc1RvZHlA+McUj81ACycuKOfPxbh9R1XJL66Jxdtsxo
 /sz3IvuporQst21g0RSOw/b9/dH2qXvjOmD1YdHGGToVXKoBl7X5emKreKFP/Tm2ifpi
 O9KfNUeaMAun/0ZCdjIRlrrO+2Zg/DM7gUHeXfj2NxjpO2xhVBkL44rhzMDi551oyERy
 iP3gXYkajpB9NYD3BHb1iuFyq2sj4wFC7+7YDWzLvsBBwPZ+LGQ/2u3YgYqVDxV8kaMT
 uyBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=VYQv2sc2XRCKTxoP2D8rMqP/uPPGfLTr1x+9NfPsNsU=;
 b=NtiO029VQUfQVleALNZaGlYPYS+O/gddR2qQ3W6gpzi9nuDr8UBAKjUv1lDCwpA1iF
 hKoqGXeWja6s5wmhRxVIV7OBXwPV+CTCVyxBVw0K4BIwGfL7VcT2iSc6k40C6eaHhB7V
 Jjfv/WWHH/7+zUHJs4FsK2DV29ZiBUM+dpbqjqOvK+6+q0oAF++7QpRLGFamFDpC3OHT
 U7TRxVFShcY3UI+tq4VZ1QJOv9T+VY240TrZWYR9oVnRPfqL1NQfbcD+i8MVJgwUo0Ih
 10qVz1AH6G8zZ4NAyX7IzO7nsMcwmeSlIA8b2NMW4+YmgcNI/Qc7Z45piRFOK5rwxWDg
 R8cQ==
X-Gm-Message-State: AOAM533JHyCeu1j2l0OmbNBWRkLyAuG9PzUnjIrtK/8ZKC4sgVT1d22x
 AloF4oNwXEhW42hW7k2eJn/XQ0R3uEV8ZgD1YBYL//lFC1M=
X-Google-Smtp-Source: ABdhPJwQYiWQ89Kq+4jpeiSOoCByPHdYt71vPSGiTTC95rSRpfDuUYwhb8bD3xORbvXHhCAUFeyhhE0oJR/VDH6X1Ck=
X-Received: by 2002:a02:9669:: with SMTP id c96mr2983817jai.128.1630682212331; 
 Fri, 03 Sep 2021 08:16:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210903135710.GH3638@sv.lnf.it>
In-Reply-To: <20210903135710.GH3638@sv.lnf.it>
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 3 Sep 2021 08:16:39 -0700
Message-ID: <CAA93jw7ArNURJ0HyiD-PFXF6LFGWjtxWbe1F30z4MVGSksuZSw@mail.gmail.com>
To: Marco Gaiarin <gaio@sv.lnf.it>, Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] Cake: how know 'framing compensation'?
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

dGhlIGNha2UgbWFpbGluZyBsaXN0IGNvbnRhaW5zIGFuc3dlcnMgdG8geW91ciBxdWVzdGlvbnMu
CgpPbiBGcmksIFNlcCAzLCAyMDIxIGF0IDc6MDUgQU0gTWFyY28gR2FpYXJpbiA8Z2Fpb0Bzdi5s
bmYuaXQ+IHdyb3RlOgo+Cj4KPiBJJ20gdGhpbmtpbmcgYWJvdXQgZ2l2ZSBDYWtlIGEgdHJ5Ogo+
Cj4gICAgICAgICBodHRwczovL3d3dy5idWZmZXJibG9hdC5uZXQvcHJvamVjdHMvY29kZWwvd2lr
aS9DYWtlLwo+Cj4KPiBIb3cgY2FuIGkgZGV0ZXJtaW5lIG15ICdmcmFtaW5nIGNvbXBlbnNhdGlv
bic/IEknbSB1c2luZyBub3cgYW4KPiB3aXJlbGVzcyBsaW5rLCB0ZXJtaW5hdGluZyB0aGUgUFBQ
b0UgbGluayBkaXJlY3RseSBvbiBteSBsaW51eCByb3V0ZXIsCj4gdmlhIFBQUEQvUFBQT0UuCj4K
PiBTbywgaSdtIHN1cmVseSB1c2luZyBQUFBvRSwgYnV0IHBwcG9lLXZjbXV4IG9yIHBwcG9lLWxs
Y3NuYXA/IEhvdwo+IGRldGVybWluZSBpdD8KPgo+Cj4gVGhhbmtzLgo+Cj4gLS0KPiBkb3R0LiBN
YXJjbyBHYWlhcmluICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdOVVBHIEtl
eSBJRDogMjQwQTNENjYKPiAgIEFzc29jaWF6aW9uZSBgYExhIE5vc3RyYSBGYW1pZ2xpYScnICAg
ICAgICAgIGh0dHA6Ly93d3cubGFub3N0cmFmYW1pZ2xpYS5pdC8KPiAgIFBvbG8gRlZHICAgLSAg
IFZpYSBkZWxsYSBCb250w6AsIDcgLSAzMzA3OCAgIC0gICBTYW4gVml0byBhbCBUYWdsaWFtZW50
byAoUE4pCj4gICBtYXJjby5nYWlhcmluKGF0KWxhbm9zdHJhZmFtaWdsaWEuaXQgICB0ICszOS0w
NDM0LTg0MjcxMSAgIGYgKzM5LTA0MzQtODQyNzk3Cj4KPiAgICAgICAgICAgICAgICAgRG9uYSBp
bCA1IFBFUiBNSUxMRSBhIExBIE5PU1RSQSBGQU1JR0xJQSEKPiAgICAgICBodHRwOi8vd3d3Lmxh
bm9zdHJhZmFtaWdsaWEuaXQvaW5kZXgucGhwL2l0L3Nvc3RpZW5pY2kvNXgxMDAwCj4gICAgICAg
ICAoY2YgMDAzMDc0MzAxMzIsIGNhdGVnb3JpYSBPTkxVUyBvcHB1cmUgUklDRVJDQSBTQU5JVEFS
SUEpCgoKCi0tIApGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1
YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExD
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

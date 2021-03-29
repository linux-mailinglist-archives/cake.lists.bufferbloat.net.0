Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A995334D9D0
	for <lists+cake@lfdr.de>; Mon, 29 Mar 2021 23:58:42 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6661D3CB5D;
	Mon, 29 Mar 2021 17:58:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1617055117;
	bh=SvQTR679+99y9PNyjOvc7wJ7CAzITECVOBWdPC5PTCY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PI+or2ghxqtFcVMQBbx+JehbRHJjoupN27GV4oWafel0R6ZCDLDOKC+OS7ms+fSr4
	 eIdpW6KLpZRtFcqbEAmbyW7fjtymilAyG9o2mOQ+RUq1QguGMg2e+cpTi3b2lotRdS
	 NfK9TeAnMqlXg24gGRzhrLhJ5AWZXbd3BfYe/lsRUxmFuhR3arKfn6iXxZQ4woisEm
	 YVucM2Bf16LjeOruwDxmWw+Ed+D3zk6h7BnCLCbMkIL5G+OxlzEnNng4iv5pzrFe7d
	 /Eyp1L+1gWxAMw9YPZ5Fp8Sq7+NKI0TPxZBw/HANQJT7EMeCKcp2ZpTmZhSR0MpL+v
	 J2wOkKAvZ0qPw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CA6BD3B2A4;
 Mon, 29 Mar 2021 17:58:35 -0400 (EDT)
Received: by mail-io1-xd2c.google.com with SMTP id x16so14334650iob.1;
 Mon, 29 Mar 2021 14:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Kf3d1M1a9NaWfzI7HikHDD9b1aaRkI4l+wmT5qs0L8M=;
 b=KaLUrXGo9ljLlGlkZYAMsi7jIyhkPzd8bGCvSQIUX3vp25iBSmwiCClfX8UbvdvQTh
 P0Gm2sLeVXtB0HCMb1HV+TdPVAYApyqxVKW/uhrbsdAjr8pEqRgSs+0e7NYb1Q5DBGt+
 2BRjjrWt1aOiWNlgpFSxAvz0qIu1MrnU1nGISx1/pS2ncVrLtxuSJgnvl3x57H7xtzm6
 DlVcuTtFaKU9gwWujpV/AAGka4kACDOgexxrTP3cExGTKdzvNWngiJNv0s+NLCBchevH
 vg58GlGTbq5eu37DPonW41II0/LHZYYYT8Ce66Mac6sN+7dWfiC78KPjfcPclJ8hJctF
 qSXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=Kf3d1M1a9NaWfzI7HikHDD9b1aaRkI4l+wmT5qs0L8M=;
 b=uQdA6KNbfHfyG+2pj7HsdiWTKRXG1kb/c3V/8MRX9Am+OuYJX//VFqToqF1dNc86Vv
 ah4wrqNo609OQgCRBRe0qsECs5LZu5yOGFkiG64UMmitctoXluu35G1zFetnphHMio4N
 Tp7AWTv/1K01nb9vLDDxrMh4IczUQstzkoVWt7HyaPp1PEyHIFI4KX1MbNjhljw3waLZ
 uUgSRB11simMFzTjHZ7Dg1zMl0xoyHI1DZDG3yGqVVKXuvuXVFutAv3ZyyBrFqlynXmT
 D/5c1F28Is5DQqxeKZXTd+KAM6Wj0gCLdLNC0vKj2cdoBm89VH+I6nkKrDFZcXSmEcZg
 5B7A==
X-Gm-Message-State: AOAM5338jQmxAOCG0ouGdUAQjUYXtkdaIjtTvoFK5Ez1RwfK7sc6c+vk
 yqOqN4LtYg1b3mqFjc7OdKgAbvMeshxHxSPxVvFgJuP7ebM=
X-Google-Smtp-Source: ABdhPJyZnvSps/QMkk63Xx+wjTAvBHsLbYYXzKQNzPCZ7naNkT0q45q73Foocr+0CAf9WhzOO+DJMEB2U422954ked0=
X-Received: by 2002:a5d:8453:: with SMTP id w19mr6244384ior.25.1617055115120; 
 Mon, 29 Mar 2021 14:58:35 -0700 (PDT)
MIME-Version: 1.0
References: <76b325aa-8360-0d2b-734a-33096ad0bb35@andi95.de>
In-Reply-To: <76b325aa-8360-0d2b-734a-33096ad0bb35@andi95.de>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 29 Mar 2021 14:58:23 -0700
Message-ID: <CAA93jw6Zf16RcZ1MhwArq66FgaK0Nv5rSTnyvBfMhDSmfVvnSQ@mail.gmail.com>
To: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 bloat <bloat@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [Battlemesh] Google Summer of Code - application period
	started
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

d2UgY291bGQgdXNlIHNvbWUgc3R1ZGVudHMgdGhpcyB5ZWFyIG9uIGEgdmFyaWV0eSBvZiBmcm9u
dHMuCgotLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLQpGcm9tOiBBbmRyZWFz
IEJyw6R1IDxhYkBhbmRpOTUuZGU+CkRhdGU6IE1vbiwgTWFyIDI5LCAyMDIxIGF0IDI6MzcgUE0K
U3ViamVjdDogW0JhdHRsZW1lc2hdIEdvb2dsZSBTdW1tZXIgb2YgQ29kZSAtIGFwcGxpY2F0aW9u
IHBlcmlvZCBzdGFydGVkClRvOiBCYXR0bGUgb2YgdGhlIE1lc2ggTWFpbGluZyBMaXN0IDxiYXR0
bGVtZXNoQG1sLm5pbnV4Lm9yZz4KCgpIaSB0aGVyZSwKCnRvZGF5IHRoZSBhcHBsaWNhdGlvbiBw
ZXJpb2QgZm9yIEdvb2dsZSBTdW1tZXIgb2YgQ29kZSAyMDIxIHN0YXJ0ZWQuCgpXZSdyZSBsb29r
aW5nIGZvcndhcmQgdG8gYSBsb3Qgb2YgYXBwbGljYXRpb25zLiBTZWUgb3VyIGJsb2cgcG9zdCBm
b3IKZGV0YWlsczogYmxvZy5mcmVpZnVuay5uZXQvMjAyMS8wMy8xOC9mcmXigKYKCk91ciBpZGVh
cyBwYWdlIGZvciBwcm9qZWN0cyBpcyBwcm9qZWN0cy5mcmVpZnVuay5uZXQKClBsZWFzZSBzaGFy
ZSB0aGlzLCBhbmQgcmVhY2ggb3V0IHRvIHN0dWRlbnRzLgoKQmVzdCByZWdhcmRzLAoKQW5kaQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCYXR0bGVtZXNo
IG1haWxpbmcgbGlzdApCYXR0bGVtZXNoQG1sLm5pbnV4Lm9yZwpodHRwczovL21sLm5pbnV4Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhdHRsZW1lc2gKCgotLSAKIkZvciBhIHN1Y2Nlc3NmdWwgdGVj
aG5vbG9neSwgcmVhbGl0eSBtdXN0IHRha2UgcHJlY2VkZW5jZSBvdmVyIHB1YmxpYwpyZWxhdGlv
bnMsIGZvciBNb3RoZXIgTmF0dXJlIGNhbm5vdCBiZSBmb29sZWQiIC0gUmljaGFyZCBGZXlubWFu
CgpkYXZlQHRhaHQubmV0IDxEYXZlIFTDpGh0PiBDVE8sIFRla0xpYnJlLCBMTEMgVGVsOiAxLTgz
MS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

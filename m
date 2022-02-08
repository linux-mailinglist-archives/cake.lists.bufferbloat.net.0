Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 827634ACCCB
	for <lists+cake@lfdr.de>; Tue,  8 Feb 2022 01:31:38 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DE2733CB40;
	Mon,  7 Feb 2022 19:31:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1644280296;
	bh=kCfAXRNknvDpV4kwr1Ym4gVbUIw7a2aMT2AafkCjjl8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l5TuIJDtWvPxsdytv2oswJQoOSzql3o0RJT2+3aQSkelv/w3myzoUNxh3jijRBYf1
	 SVaPFQTb5mqn8U3zYs3bTJMhPWBHgMLX/EKPp6kT4mRWtqLdhp5lxaqs102n8LHQaZ
	 5G2tzwPLFf13C1uE+rf3bRopQ8Mv8jIkKOqcmfttSyfMgk809M+nFYW+pNIyHHc50H
	 0nkG2rjSeCoH/c6UyZ4BUDqK37X016WVGAZDP7SJwbvt6J4LpCUbyZo0YNdbf8Hk4Y
	 mw4mmLgd43mdkv2VOYVKk/gX6Uf0U9i9H7JYoE7SdeTr8HgDBHpC12l+sZNoN/U34q
	 LR3k2tqq5P+jw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9492D3B2A4
 for <cake@lists.bufferbloat.net>; Mon,  7 Feb 2022 19:31:35 -0500 (EST)
Received: by mail-ej1-x62b.google.com with SMTP id og43so23063858ejc.0
 for <cake@lists.bufferbloat.net>; Mon, 07 Feb 2022 16:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=TW2lrpINfwyi2LgxEvgoI419zqfCQfxVKUNayf7N/jw=;
 b=nJlsXkdMSvHsMifrVJCGRg2BVEruq31KuEPA5kLjkhpAwjk5eYvXY9xuiEQ8IKNdRP
 chBYdFK1v/w3qjMpDSTAuV0rOy02fgF5msK0UQ+LGF9o5w9oNmpGKHMFcs7tfyJIGySF
 Sl1A1UWeyEuNntSlpr7d3kFYX/Mqa49ooifDFCjonoQQ+zMCAI1YzEl0xk+62N5hNEzY
 KC+HLGQ38vWJcVKzAKdbyRSXIyT96lzkeTGAXdBU39g3RaWJh/kbcb2lRTdNOk4bvcuM
 Qnmmqq4XIsUxZrXwNG9K+9mI0qzHa5IbYfVJUD+T2tLHK887lsycgsfOoJdfpF46r9zE
 abLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=TW2lrpINfwyi2LgxEvgoI419zqfCQfxVKUNayf7N/jw=;
 b=URRl721phfMRIvtHcjwE7WU6T75IYUsopj6FRL5ryGy04dCmi4eTM5Kk0pw89i6dpJ
 YXDpL4HnoEKT+ziONCkH6t3bFKMVCNyazwDSjgouw8Gr5JnXnf1b48N3k8qfdRGVVcDH
 eW68zsXfhBA0E4PLjY/aZRWUujb21zeopgxTCIrIjgLfasC4eSGslT1iUZgWJgsCpDxU
 Kzqb56va93ZxSPRz6RYCrKYacVGylWWyyC0IQPenM5x1Jfdmw4woGyFvJAiWkAHE4WH4
 fAcXVlrb/mH3TFIEH1nFZLiGQ126fFc093TP09AjKA9bHGhufwlJYNaWuQhXNSWDX9KY
 hWMA==
X-Gm-Message-State: AOAM5315B04WXy5+8nfWoS2bGFOwJLyxQG28T9B91ScVhsa9dLMmonKs
 Fdlh/hyoSJfArpibixRJO/sFSiUBPULCllEDjTd6xIhwCQgeBw==
X-Google-Smtp-Source: ABdhPJx3yWgu41PK2mbi6gD60EIqdcTQI/FN6I+FVSMvc8n+QoTW80gPFnz53HLmQNAWUz9e1j1AHqZvMgXtTsmJ+Dg=
X-Received: by 2002:a17:907:2da3:: with SMTP id
 gt35mr1755256ejc.262.1644280294251; 
 Mon, 07 Feb 2022 16:31:34 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw54wb3M=m9eq5epbVJO5yHUmV7byHjU3u0Ex-y_bQv=_g@mail.gmail.com>
In-Reply-To: <CAA93jw54wb3M=m9eq5epbVJO5yHUmV7byHjU3u0Ex-y_bQv=_g@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 7 Feb 2022 16:31:20 -0800
Message-ID: <CAA93jw4zOxF8Mq0MMaqZTcMUgic=eNHxyNgjPV2nmLZQ5Sd1kg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] plotters available these days?
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

aHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L3NxbS1yZXBvcnRpbmcvNTk5NjAvMTY4IGNvdmVy
cyAyLi4uCgpPbiBTdW4sIEZlYiA2LCAyMDIyIGF0IDI6NTkgUE0gRGF2ZSBUYWh0IDxkYXZlLnRh
aHRAZ21haWwuY29tPiB3cm90ZToKPgo+IFNvIGZhciBhcyBJIHJlbWVtYmVyIHRoZXJlIHdlcmUg
dGhyZWUgZGVjZW50IGVmZm9ydHMgdG93YXJkcyBjYXB0dXJpbmcKPiBjYWtlIGFuZCBmcV9jb2Rl
bCBzdGF0cyBvbiBhbiBvbmdvaW5nIGJhc2lzLCBhbmQgZmluZGluZyBhbnkgb25lIG9mCj4gdGhv
c2UKPiB0aGluZ3MgdGhhdCdzIHByb3ZpbmcgaGFyZCB0byBnb29nbGUgZm9yIHRvZGF5LiB0aG9z
ZT8gYW55IG5ldyBvbmVzPwo+Cj4gSGFzIGFueW9uZSBhdHRlbXB0ZWQgYSBjdXN0b20gc25tcCBt
aWIgZm9yIGl0PyBtcnRnPyBJIGRpZCBhIHNtYWxsIG1pYgo+IGZvciBmcV9jb2RlbCBhdCBvbmUg
cG9pbnQuLi4KPgo+IC4uLiBhcyBhIHNpZGUgbm90ZSwgdGhpcyBsb3ZlbHkgZG9jdW1lbnQgb24g
Y2FrZSBhdCAyZ2JpdCB3YXMgdmVyeSBnb29kLgo+Cj4gaHR0cHM6Ly9ncmFwaGVuZW9zLm9yZy9h
cnRpY2xlcy9zZXJ2ZXItdHJhZmZpYy1zaGFwaW5nCj4KPiAtLQo+IEkgdHJpZWQgdG8gYnVpbGQg
YSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKPiBodHRwczovL3dheWZvcndhcmQuYXJjaGl2
ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKPgo+IERhdmUgVMOkaHQgQ0VP
LCBUZWtMaWJyZSwgTExDCgoKCi0tIApJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwg
YSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUz
QSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B252C304F1E
	for <lists+cake@lfdr.de>; Wed, 27 Jan 2021 03:06:44 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AD7193CB39;
	Tue, 26 Jan 2021 21:06:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1611713203;
	bh=eKd/oo3rJ8GjecsP+4X0Vojllw6hnTXUBxPlUOHQZas=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cuYhII3tZfP3amZHyo9kVFhVjEKtBntPjd8uHnXUco3mxm6GDOivOOln9fJ0UwIA3
	 VC4Sqov2y6USACE74wZpyGGPOnbapevN35ALoy9cWhnLvtBZybLqMEJRIz/zc0phUF
	 UVKiHatgiRdau946vmRBCMR5AYERnNW2kEeeQ/r70tYE+Nr3i9d2yaUqxhn99+CQOm
	 ufRKESxYheaPhxkKagYW60L67FhJr0taPXYfeDKD+Icukv61NN5g7hpIeklhmuJT2j
	 kxBL7sOBR8ue2JLFgSUdCkThgERCPFM5NmxI1KWok4NvF9D+pYfcbFFvC9l2aTgM6O
	 pYWz85ooESZAg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 094B93B29D
 for <cake@lists.bufferbloat.net>; Tue, 26 Jan 2021 21:06:41 -0500 (EST)
Received: by mail-ed1-x533.google.com with SMTP id j13so507375edp.2
 for <cake@lists.bufferbloat.net>; Tue, 26 Jan 2021 18:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:from:autocrypt:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=M/Sh336QLPHe5tQrRwGv0IkLc2xAzpWp43xyvzEnNpQ=;
 b=rBlnzR3Z7OL8Y/i8aZnb69+ufqHMmhBmZy1L9OIeqGbGNmyZD3Ypby++qJ+mBpdUI3
 eUq0CHwNURaVfKXH9Ga1na8cQUx9oGaYgch/T2KfzeCYbES00WJQ07e7Mbe03J3X4ZYs
 4gto3BKmy1bRnwDVLFHpBWYT4Va8t8ofyu1BWYX53KHHwZYmOGU295RgyycJLQAfWBNg
 Y69NtYDJmQxHyCtezX9dt1f67ygvfuzN6AFWxiHwb21K7ixNgr39mGSuAa5pNDp2rC+m
 RQV24Gm6KzXYyvu3j0H008JmbEyrg9zWdWoUSAblSidY3d2yief4sazEOdYSz/ZpNdPv
 UQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:from:autocrypt:subject:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=M/Sh336QLPHe5tQrRwGv0IkLc2xAzpWp43xyvzEnNpQ=;
 b=T+1ItWoY4I91Y2bB5xrm+jfwPhN/x5EUD9mGaX2DFbuSSuowKfHEv1PagG1FI00Og4
 e26e0jR9O3GJBllYjelhGpMUdT6uPG10QV7pdHUfyJD6lciL0xP/MeUwwRkcGX1GKvqT
 dpUWAbYoENu+0rz0gPmCuaWJ6UpmpIsTAafKTTxefSZhX6Ez2+KnEWhYxNTozgPvIQxy
 aEbw7Kod84Jkn2kqeWZQizYbBy1KqVSTCcfCk754s3PURcuNPIVc3txE96yvwsoiW5ME
 R1DMhvbpno7Eoi2aMHHnrNxIIg3MU1yWdtIJZ4KwJH940HrH/E56sXwln6nVLMbRz3l8
 rZ8g==
X-Gm-Message-State: AOAM530LFRTZaLcouiyEc3ATb+iPqTJfc53974V4VZoETgqY59/kMY50
 8svzYU9beS6RuV41z6FE2CO/2ks+N+c=
X-Google-Smtp-Source: ABdhPJwK2/Be6zfLTQYxWMXJx9MSb/Op9822iMuZlRYinFTM2zQZ2dQuCkXuD+/w/4kJysGlBVJaaA==
X-Received: by 2002:aa7:d651:: with SMTP id v17mr6951596edr.91.1611713200533; 
 Tue, 26 Jan 2021 18:06:40 -0800 (PST)
Received: from [192.168.1.116] (cpe90-146-174-71.liwest.at. [90.146.174.71])
 by smtp.gmail.com with ESMTPSA id i18sm317709edt.68.2021.01.26.18.06.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Jan 2021 18:06:40 -0800 (PST)
To: jmarks2@gmail.com, cake@lists.bufferbloat.net
References: <005701d6f442$6d620e90$48262bb0$@gmail.com>
From: xnor <xnoreq@gmail.com>
Autocrypt: addr=xnoreq@gmail.com; keydata=
 xjMEX8GJihYJKwYBBAHaRw8BAQdAhiXbV9uWXaRTLr0gtbgOSXKiajCO+q+GZ/Lanh1SeafN
 F3hub3IgPHhub3JlcUBnbWFpbC5jb20+wpEEExYIADkWIQSIwFsdmuvVRn8KTpQPFnChazvz
 EAUCX8GJigUJAeEzgAIbAwULCQgHAgYVCAkKCwIFFgIDAQAACgkQDxZwoWs78xAqlgEAlzmt
 RBZWsvAir0IcwvcgSZOCKzt8onO8yoMi7qq/3M4A+wWj3lX9lx0WEBZtPEJCw+WZ7+w7c6wz
 4//han+cxsIEzjgEX8GJihIKKwYBBAGXVQEFAQEHQCRV3YyeTk35SbVbzBMDTPIc4L+Nuhkh
 tOIU4ZlXy3QoAwEIB8J+BBgWCAAmFiEEiMBbHZrr1UZ/Ck6UDxZwoWs78xAFAl/BiYoFCQHh
 M4ACGwwACgkQDxZwoWs78xBjpAD+LZuOaaaPgqJx/u/PxUviEjFr76XwFiwnXFSUQP9RcpIB
 AJEpdVrCl6fNm+QrUcjfAe7VN1IrCgeEpNA6fmz5kXEK
Message-ID: <21fe9efe-cc74-0b83-f659-4778ba54d420@gmail.com>
Date: Wed, 27 Jan 2021 03:04:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <005701d6f442$6d620e90$48262bb0$@gmail.com>
Subject: Re: [Cake] Trouble getting decent performance with CAKE
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGF2ZW4ndCBsb29rZWQgYXQgeW91ciBtZWFzdXJlbWVudHMsIGJ1dCB3aGF0J3MgdGhlIGlzc3Vl
PyBJcyBpdCAKdGhyb3VnaHB1dCBvciBsYXRlbmN5PyBCZWNhdXNlIEkgaGF2ZSBhIDc1MCBNSHog
c2luZ2xlIGNvcmUgbWlwcyByb3V0ZXIgCmhlcmUgdGhhdCBoYW5kbGVzIDEwMCBNYnBzLi4uIGJh
cmVseS4KTGF0ZW5jeSBvbiBpbmdyZXNzIChhbmQgdHJhZmZpYyBzaGFwaW5nIGluIGdlbmVyYWwg
b24gaW5ncmVzcykgc3Vja3MgCmNvbXBhcmVkIHRvIGVncmVzcy4KCldoeSBpcyB0aGVyZSBhbiBp
bXEwIGRldmljZT8gSGF2ZW4ndCB0aG9zZSBiZWVuIG9ic29sZXRlIGZvciBzZXZlcmFsIAp5ZWFy
cz8gV2hhdCBrZXJuZWwgYXJlIHlvdSBydW5uaW5nPwoKSSBhc3N1bWUgeW91IGhhdmUgYSBmaWx0
ZXIgd2l0aCB0Yy1hY3Rpb24gbWlycmVkIGVncmVzcyBzZXQgdXAsIGJ1dCBqdXN0IAp0byBiZSBz
dXJlIGNvdWxkIHlvdSBwb3N0IHRoZSBvdXRwdXQgb2Y6CiQgdGMgZmlsdGVyIHNob3cgZGV2IGV0
aDAgcGFyZW50IGZmZmY6CgpBbHNvLCB0aGVyZSdzIGxpdHRsZSBwb2ludCBpbiBoYXZpbmcgdGhl
IGFjay1maWx0ZXIgb24gb24gdGhlIGluZ3Jlc3MgY2FrZS4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==

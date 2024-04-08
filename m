Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 444DF8B659F
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:49 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9605D3D589;
	Mon, 29 Apr 2024 18:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429136;
	bh=AG1I1eua9bzd+E59aYPSQ3D7crQGIVX14GAjDq/CZ98=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=nATJt2OoObZ2XlWaQmrUfY+qXnh5ZaJFQBSFdZTD7BkaTpjdksTXeiE49qgigMUgn
	 y5WwUq+G9WBIG6gae4vFFRpHmHwSIGQ5qLqyOplmE3elp5gt2iFS4CYoEda1M2Hm1o
	 sq3SF+LIjrB025b0Brj5ai7v86ySp9iwddlOrnOME9Z9509CVQiF3Hq6/U3AUoSsST
	 I+yMjMsCWKBakjfAPfUAz5gyuVDnt+ily9/92zsV/TeNrLHvY8pgBHCq54dXGrkYlK
	 RvxfteuDIbavek8ghaxbTRP2Oa4LP8BHdp+XsO9dzkpQvaRWxfcfCDGz7TyZU03Fqq
	 quZgagYpNcNgg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6C84D3B2A4
 for <cake@lists.bufferbloat.net>; Mon,  8 Apr 2024 07:14:10 -0400 (EDT)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-1e0e89faf47so10965545ad.1
 for <cake@lists.bufferbloat.net>; Mon, 08 Apr 2024 04:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712574849; x=1713179649; darn=lists.bufferbloat.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=fXnqY/hiuIzNOaaXqBgq2NQBkWNEl8jGRoP9ENRrDio=;
 b=X96iC9R2TXcFKU676lK6gEH5dXJDVZoOw4SMXmRspcvLPNIB9NM4o8AMVq+WD0LTyr
 b8UHKm5bHsY34Nwueqi+BVUwVWn/zalfpPMsf6YRHrtCgs5Mem3Cgpks3E1V/L/JmgV/
 lwpk3tiLFgoY3ewzO0l4OYkg+Yz7lkgvSkxuXxLJrSzvEDbOjEGSs2krOXvBJvvxxG7U
 rrXs/yxJKEyJ/z/YGnpcqKvaPKf3Dz9PjmBbOvtmnyg9xfmbxRvpxrADmV3sr7lUj25h
 P00b1uJmH7yaiknricEY9FLj1BG/qINdLebqBHsYNzrBdd6M0h2F1c9CFhRdnSs7zhCS
 FCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712574849; x=1713179649;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fXnqY/hiuIzNOaaXqBgq2NQBkWNEl8jGRoP9ENRrDio=;
 b=WfbdGy9O28xE1Y7/MGBGHyR4vYtdR9W96JZ7v1xUMoYWQI+vor6wqRUhEUA8E3yMNU
 +TOYoaK0p1sI68gVxj24r1ZNzVvx+JOn1BJLhDyRLCyqTXDfXuKbs28BBG2i8z9e9/uu
 tkZl0JSpQLHz4pGc6uhrRVdkYMioFNLeeQoI1W+MNkcyEKu/hjPtHBKxcgMV2/FFbZSQ
 kAQKCPNeG8t7ziEGh2HU28WZY3zQ+Y6FNkMIyX91Uzk985i1TE5sfuPA2wIYz0HsQx9J
 g6S+l+nSgEKhsp4SmW6Fp+e4hA09XyqecL/EYw4fpHrWcG7JeT6fSRtFn72Ujmp/+HY8
 KzLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVgPj7aG4tb+8G6Jg5VhghBWDnM40B9vtSbemUCesokkRIdbwyfmKlsF/+VwgWa2uRtHsuOy/c/pCIcrNfYHOlBIwggOs+R/+P2Jw==
X-Gm-Message-State: AOJu0YyUN8l3kEKCFI+KG1yihVINX6MWNki/cl3+yMHPkB3CXYnb3Iz0
 bBXsbeaTQJwTZiHUTk6UOK6TYJ3YfI7M6BXucbKKSYOXqTVGUYLA
X-Google-Smtp-Source: AGHT+IH+xMcVjhrAfZdMRUUOacUFXNyLoJMz6JNERAY1hW08XRtfGnHXhCDa6A1nFCgE/jjg0ajKkg==
X-Received: by 2002:a17:902:ce87:b0:1db:ce31:96b1 with SMTP id
 f7-20020a170902ce8700b001dbce3196b1mr10607491plg.6.1712574849390; 
 Mon, 08 Apr 2024 04:14:09 -0700 (PDT)
Received: from visitorckw-System-Product-Name ([140.113.216.168])
 by smtp.gmail.com with ESMTPSA id
 z5-20020a170903018500b001e45572a253sm1047027plg.14.2024.04.08.04.14.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Apr 2024 04:14:08 -0700 (PDT)
Date: Mon, 8 Apr 2024 19:14:05 +0800
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Message-ID: <ZhPRfYt0BLh9UELN@visitorckw-System-Product-Name>
References: <20240406235532.613696-1-visitorckw@gmail.com>
 <87frvxgnmr.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87frvxgnmr.fsf@toke.dk>
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [PATCH net-next] net: sched: cake: Optimize number of
 calls to cake_heapify()
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
From: Kuan-Wei Chiu via Cake <cake@lists.bufferbloat.net>
Reply-To: Kuan-Wei Chiu <visitorckw@gmail.com>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 jserv@ccns.ncku.edu.tw, cake@lists.bufferbloat.net, edumazet@google.com,
 kuba@kernel.org, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gU3VuLCBBcHIgMDcsIDIwMjQgYXQgMDY6MTA6MDRQTSArMDIwMCwgVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIHdyb3RlOgo+IEt1YW4tV2VpIENoaXUgPHZpc2l0b3Jja3dAZ21haWwuY29tPiB3
cml0ZXM6Cj4gCj4gPiBJbXByb3ZlIHRoZSBtYXgtaGVhcCBjb25zdHJ1Y3Rpb24gcHJvY2VzcyBi
eSByZWR1Y2luZyB1bm5lY2Vzc2FyeQo+ID4gaGVhcGlmeSBvcGVyYXRpb25zLiBTcGVjaWZpY2Fs
bHksIGFkanVzdCB0aGUgc3RhcnRpbmcgY29uZGl0aW9uIGZyb20KPiA+IG4gLyAyIHRvIG4gLyAy
IC0gMSBpbiB0aGUgbG9vcCB0aGF0IGl0ZXJhdGVzIG92ZXIgYWxsIG5vbi1sZWFmCj4gPiBlbGVt
ZW50cy4KPiAKPiBQbGVhc2UgYWRkIGFuIGV4cGxhbmF0aW9uIGZvciB3aHkgdGhpcyBjaGFuZ2Ug
aXMgY29ycmVjdCwgYW5kIHdoeSBpdCBpcwo+IGJlbmVmaWNpYWwuICJJbXByb3ZlIiBhbmQgInVu
bmVjZXNzYXJ5IiBpcyB3YXkgdG9vIGltcGxpY2l0Lgo+IAo+IHB3LWJvdDogY3IKCkZvciBjb3Jy
ZWN0bmVzczoKVG8gYnVpbGQgYSBoZWFwLCB3ZSBuZWVkIHRvIHBlcmZvcm0gaGVhcGlmeSBvcGVy
YXRpb25zIG9uIGFsbCBub24tbGVhZgpub2Rlcywgc28gd2UgbmVlZCB0byBmaW5kIHRoZSBpbmRl
eCBvZiB0aGUgZmlyc3Qgbm9uLWxlYWYgbm9kZS4gSW4gYQpoZWFwLCB0aGUgaW5kZXggb2Ygbm9k
ZSBpLCB0aGUgbGVmdCBjaGlsZCdzIGluZGV4IGlzIDIgKiBpICsgMSwgYW5kIHRoZQpyaWdodCBj
aGlsZCdzIGluZGV4IGlzIDIgKiBpICsgMi4gVGhlIGxlZnQgYW5kIHJpZ2h0IGNoaWxkcmVuIG9m
IG5vZGUKQ0FLRV9NQVhfVElOUyAqIENBS0VfUVVFVUVTIC8gMiBhcmUgYXQgaW5kZXhlcyBDQUtF
X01BWF9USU5TICoKQ0FLRV9RVUVVRVMgKyAxIGFuZCBDQUtFX01BWF9USU5TICogQ0FLRV9RVUVV
RVMgKyAyLCByZXNwZWN0aXZlbHkuIEJvdGgKY2hpbGRyZW4ncyBpbmRleGVzIGFyZSBiZXlvbmQg
dGhlIHJhbmdlIG9mIHRoZSBoZWFwLCBpbmRpY2F0aW5nIHRoYXQKQ0FLRV9NQVhfVElOUyAqIENB
S0VfUVVFVUVTIC8gMiBpcyBhIGxlYWYgbm9kZS4gVGhlIGxlZnQgY2hpbGQgb2Ygbm9kZQpDQUtF
X01BWF9USU5TICogQ0FLRV9RVUVVRVMgLyAyIC0gMSBpcyBhdCBpbmRleCBDQUtFX01BWF9USU5T
ICoKQ0FLRV9RVUVVRVMgLSAxLCBhbmQgdGhlIHJpZ2h0IGNoaWxkIGlzIGF0IGluZGV4IENBS0Vf
TUFYX1RJTlMgKgpDQUtFX1FVRVVFUy4gVGhlcmVmb3JlLCB3ZSBrbm93IHRoZSBsZWZ0IGNoaWxk
IGV4aXN0cywgYnV0IHRoZSByaWdodApjaGlsZCBkb2VzIG5vdC4gU2luY2UgaXQncyBub3QgYSBs
ZWFmIG5vZGUsIHRoZSBsb29wIHNob3VsZCBzdGFydCBmcm9tCml0LgoKRm9yIGJlbmVmaXQ6Cldl
IGNhbiByZWR1Y2UgMiBmdW5jdGlvbiBjYWxscyAob25lIGZvciBjYWtlX2hlYXBpZnkoKSBhbmQg
YW5vdGhlciBmb3IKY2FrZV9oZWFwX2dldF9iYWNrbG9nKCkpIGFuZCBkZWNyZWFzZSA1IGJyYW5j
aCBjb25kaXRpb24gZXZhbHVhdGlvbnMKKG9uZSBmb3IgaXRlcmF0aW5nIHRocm91Z2ggYWxsIG5v
bi1sZWFmIG5vZGVzLCBvbmUgaW5zaWRlIHRoZSB3aGlsZQpsb29wIG9mIGNha2VfaGVhcGlmeSgp
LCBhbmQgdGhyZWUgbW9yZSBpbnNpZGUgdGhlIHdoaWxlIGxvb3Agd2l0aCBpZgpjb25kaXRpb25z
KS4gVGhlIG9ubHkgYWRkZWQgb3BlcmF0aW9uIGlzIGFuIGV4dHJhIHN1YnRyYWN0aW9uLgoKSWYg
eW91J3JlIHNhdGlzZmllZCB3aXRoIHRoZSBleHBsYW5hdGlvbiBhYm92ZSwgSSBjYW4gYXR0ZW1w
dCB0bwpyZXdyaXRlIHRoZSBjb21taXQgbWVzc2FnZSBhbmQgc2VuZCB0aGUgdjIgcGF0Y2guCgpU
aGFua3MsCkt1YW4tV2VpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

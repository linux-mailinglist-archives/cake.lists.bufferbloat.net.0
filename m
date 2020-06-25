Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E10020A61B
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 21:49:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E170B3CB38;
	Thu, 25 Jun 2020 15:49:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593114553;
	bh=vwheU0tdQrKgMuDnuRNozjhIVPcfqCBBG8YHhOgwtO8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DoFB9jDi/ZY982kSIrqCQlrXtJ+LRVazeB4fwMgydGYIePMZMHET9yWs8Yjhr9M9R
	 roPPVIfNYpMwCZEgZucePQLfTyx5uDHobYBVYzcOWLI9ClZOrUSf6NnGmGy3EK+XOb
	 f9q1OOzwURYxf555isAWP47j4hg5GPi9FvmAMe43FnJz7WQ2eBbiPcjjzpD/kHvTvY
	 G699J6k3zG0petJEwMmikfhLWSY/qS3x7KhUzEXmY5p4p4I7iU+0Bi3Ml2H7rP9S//
	 dgZQF0aQ+hnzIKcIGULI+ngZEKbGXY7s49abOeRsCSsS9E4wFVzWQRRwcz3SCJV4DJ
	 SzL0YJgLYBEzg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6E4843B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 15:49:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593114552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FxRf5mh28ziB7wkqut6ijV6sHC5O4nU/hMiPQ4XJITQ=;
 b=MPCkL3eV/+QwC8v+Tl4ZAPqlI/MRhI+xo3K1gGoUTvSnxtWW2MCSSgFHtKPNiQ7QGw6XnA
 dlwZ4H9W3V4jjvvlpLfqYLY2bff7ArdxLYjTgTG5sj6RgtyEdYh/pNf0iVSteGu/UeoDiQ
 rTfYPViX5nQjzmRISawqcldcjmBLbMQ=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-7Ci9PpyKPVCiaV66QEpG7g-1; Thu, 25 Jun 2020 15:49:10 -0400
X-MC-Unique: 7Ci9PpyKPVCiaV66QEpG7g-1
Received: by mail-qt1-f198.google.com with SMTP id u93so4786822qtd.8
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 12:49:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=FxRf5mh28ziB7wkqut6ijV6sHC5O4nU/hMiPQ4XJITQ=;
 b=pFb1Kn3cM+OJxO06gr9L+38horvAdftFLACiV0HzwEEgSWECZA5kVJ4E9ESM/zgSkW
 ziTz2ZHaWT1IW1Qj0C9nn96J0N+if7p26vVK0DlVx2Lhmrr+adUXOLm+LCRxeqQqdflV
 Cb5ufPXvGAzsH3KWMapaA1ep6DhRZluTGSmhLT4Xew+ZDGSaVvZ4a06jKpLd3FHd2l7K
 OqnuVwabFCYHe7/vWgk/TNGRk8PSa7sYv/IyWosVRWHem7MUV2U0YenwlhOesrQnkRE4
 bxhWHvLdAorkh4WSDap49B0GCb0QOkxxRN54mGVvoX9IHe1eKC2NHVMTJJpdekZG8Qbi
 wUtw==
X-Gm-Message-State: AOAM531uPwxb02Rn7QOlcmfr6q1HU4ms0+FbaZcrwR2OgIW6EjjoTuUA
 S5rfVYJTXVZrjmoaEMZ8PYRlXZO5pPaNTxLI1zqtMFSnZ5l6KkWheXRq/+Wmrp5WuQTuF/dIvSm
 nYglkV8qXGrtFwEw7J4h5rA==
X-Received: by 2002:aed:2353:: with SMTP id i19mr2316018qtc.172.1593114549807; 
 Thu, 25 Jun 2020 12:49:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzUEVm4dNbJEvDXQqKgg/9pY0CXSaPmT4w1klxkckLCZor1fH0Ktgo2eLfFxWbYyDpYrhmEUw==
X-Received: by 2002:aed:2353:: with SMTP id i19mr2316006qtc.172.1593114549637; 
 Thu, 25 Jun 2020 12:49:09 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id w45sm7218390qtj.51.2020.06.25.12.49.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 12:49:08 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 35E061814F9; Thu, 25 Jun 2020 21:49:06 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
In-Reply-To: <20200625.123135.515382790882106490.davem@davemloft.net>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
 <20200625.123135.515382790882106490.davem@davemloft.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 25 Jun 2020 21:49:06 +0200
Message-ID: <87mu4rhqod.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next 0/5] sched: A series of fixes and
	optimisations for sch_cake
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2aWQgTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PiB3cml0ZXM6Cgo+IEZyb206IFRva2Ug
SMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+IERhdGU6IFRodSwgMjUgSnVu
IDIwMjAgMTM6NTU6MDIgKzAyMDAKPgo+PiBUaGUgZmlyc3QgdGhyZWUgcGF0Y2hlcyBpbiB0aGUg
c2VyaWVzIGFyZSBjYW5kaWRhdGVzIGZvciBpbmNsdXNpb24gaW50byBzdGFibGUuCj4KPiBTdGFi
bGUgY2FuZGlkYXRlcywgaWUuIGZpeGVzLCBzaG91bGQgdGFyZ2V0ICduZXQnIG5vdCAnbmV0LW5l
eHQnLgoKUmlnaHQsIHN1cmUsIGNhbiBkbzsgSSB3YXMganVzdCBiZWluZyBsYXp5IGFuZCBwdXR0
aW5nIGV2ZXJ5dGhpbmcgaW4gb25lCnNlcmllcyA6KQoKLVRva2UKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK

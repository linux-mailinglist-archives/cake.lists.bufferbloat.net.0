Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D699673FF0E
	for <lists+cake@lfdr.de>; Tue, 27 Jun 2023 16:56:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 741AD3CB39;
	Tue, 27 Jun 2023 10:56:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687877793;
	bh=ov3C8iZj7ddbJe2L9U7BbEVcVGHBTWi2j+53GIMTSZI=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ATkbB7jKqmSA7qhAy48V33oDLnXn7BBcmqXlTcSVhsBl3yCzHTpM02FDTXLXOv1/c
	 0WxGVYEnUborMW8YtgdHvwZBbBLTifiELkF08EzjVQi/sUNOsY1OZotATDSKD35z5G
	 bOgNlDta1yn/2iLGsHTzB77TyjllPZpzODdgQm4z2ilN5RMCjZwtdvglUuhWqdUWMZ
	 yIm6dq93EuUnQx4O++HGVTtws7km73oOBiwGJdZBTusowLx3yDufb+nM1ZMkSx+xvn
	 uQS/FFde5izlJqFyakfsviPw+ceuskP8VPRJ3KCJgVsQpk7eUb7kUSUusrorArgv8L
	 6GUNuiGWl/cvA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5C9183B29D
 for <cake@lists.bufferbloat.net>; Tue, 27 Jun 2023 10:56:32 -0400 (EDT)
Received: by mail-pj1-x102f.google.com with SMTP id
 98e67ed59e1d1-262b213eddfso2770948a91.0
 for <cake@lists.bufferbloat.net>; Tue, 27 Jun 2023 07:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1687877791;
 x=1690469791; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uwCkRx9rcW3AVcsJatbKnV14kSfEa4qEIZsgS+lm+K0=;
 b=rRFOyjEIdf/+AWrvvxr2n7jfxArYtzS3TEFz7eZczTVW15ayH9jUF6AcNjp3j3YkHj
 jWcuvEnCXzRtl8fNPqvgvOPherVq/KdI0PgcZh2b6Y/LTZvTh6kjdGPyVdTmO8mQZPyP
 ngdjYGppxJUdGhxXJbNWBYcNqcVsP8251jwbfQUeOMe8ls/BRbv3rJESXvSGk68v3IKT
 Q25Cu2pUEao3LTIU3ePfRVIBKuiGYniYovMuxEZ+bgW9c2FD3u/VKJxdxLOHC1GYUo7B
 hXPtUXhnQF8lmenSpxlvSSdpLHHjAsTjs2Pj+zzfrCM6Ob5TXJmVoJ6jcOoURs9Kyx1A
 jVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687877791; x=1690469791;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uwCkRx9rcW3AVcsJatbKnV14kSfEa4qEIZsgS+lm+K0=;
 b=Rf1xJ1kejGC7HFiA+D6AkITzfkfcXG5eOZp32K63RMTH+PvhQbZV4/wFH95z3EW3gj
 fkN+1r08Vt+zxqx8/GmYRj2yubKo77ThSLfZSHLbB9cxWcCvRkrF1mLfDyRKaiMwDVy6
 VkIHInqvxRxlec+40d4qSIaSyzs8Ge41LqgxK6l3cNNAi+RuNJuIvqSYObBxy5yt+Ohs
 5EFZ+BA1sv+5dNQKKPdTBE7T73s26N/zpTPoRJZgsftKNk1oWNHkh/DrVmU71IrMzXPI
 78htaN+SKzHkj2mOAYcQAAwej/LHxq0VoEJYN4m/H+8cP5XVC7epyevXJktKdw+YPSIe
 qPaA==
X-Gm-Message-State: AC+VfDyTuHevfo3wrL18B03Dz6d/f5Lu+DLKah/KndOKiNwSMMLjFDrr
 QoG6FHf4WpMFu5m3AscP1iXyrg==
X-Google-Smtp-Source: ACHHUZ5FQUzKCTbVdmBYy/lEzbp+ffTrk7CAk7I/Mu+Hw9hvgxRxZm2MBrwdTE+LewwIbZl8FsG0UQ==
X-Received: by 2002:a17:90a:8681:b0:263:7d8:4a with SMTP id
 p1-20020a17090a868100b0026307d8004amr5356846pjn.18.1687877791278; 
 Tue, 27 Jun 2023 07:56:31 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 gm4-20020a17090b100400b0025023726fc4sm4691407pjb.26.2023.06.27.07.56.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jun 2023 07:56:30 -0700 (PDT)
Date: Tue, 27 Jun 2023 07:56:28 -0700
To: "David P. Reed" <dpreed@deepplum.com>
Message-ID: <20230627075628.1d8d3b7d@hermes.local>
In-Reply-To: <1687837319.447910185@mobile.rackspace.com>
References: <1687837319.447910185@mobile.rackspace.com>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Two questions re high speed congestion
 management anddatagram protocols
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
From: Stephen Hemminger via Cake <cake@lists.bufferbloat.net>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Cc: cake@lists.bufferbloat.net, bloat@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCAyNiBKdW4gMjAyMyAyMzo0MTo1OSAtMDQwMCAoRURUKQoiRGF2aWQgUC4gUmVlZCIg
PGRwcmVlZEBkZWVwcGx1bS5jb20+IHdyb3RlOgoKPiBTb3JyeSBmb3IgdG9wIHBvc3RpbmcsIGJ1
dCAuLi4gQmlnZ2VyIHF1ZXN0aW9uOgo+IFdoeSB3b3VsZCBEQ0NQIGJlIGRlcHJlY2F0ZWQgYnkg
TGludXgga2VybmVsPwo+IFdobyBtYWtlcyB0aGF0IGRlY2lzaW9uPyBXaG8gYXJndWVzIGFnYWlu
c3QgaXQ/CgpObyBvbmUgdXNlcyBpdCwgYW5kIHVudXNlZCBwcm90b2NvbHMgYXJlIHRhcmdldGVk
IGJ5IGhhY2tlcnMuCkFuZCB0aGVyZSBhcmUgZmV3IHRlc3RzIGFuZCBubyBtYWludGFpbmVyLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAD91E86AA
	for <lists+cake@lfdr.de>; Fri, 29 May 2020 20:31:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3771C3CB38;
	Fri, 29 May 2020 14:31:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590777111;
	bh=TjV+9UILTG+0THmeIjal8ybVCnmLpO0rYF1AQnrHc5c=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M2yflUEy86y0SLSpcz65B+ECgNnvWjR2uc/cXBCtyk0p9zpcLyqaHQGMLRoMF7PAP
	 H6Qd9IxS1Gxczi1RrEmawuBLYJPZmWEv7zdRW/cVVthnhHHNllxwZl8RC/xhdV2G8w
	 1k8hiZnZ9LLIPE80oQhd9K8/hC4Qy6cwRdO/g5zugEGks90bXy/1CiIdxY15q2UWjx
	 27F0zkXcWtLEgthra5Et8MPdfl1nr9m3fcIJgnz8ZPR9ZbmDakq0rlhHEJVTIBM74B
	 tT1wkWBkdNe+SV6ACaHnZqfeZr8RSWB7ESz6JpuBphddcJM4KvrSGNUIJKkNRZzwPc
	 IVMPuVTQBNh6A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8CF6A3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 29 May 2020 14:31:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590777109;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Xo3tYPDwFCPRUzBktyt8zxwbMZcTRwPlGKbg3mDhG5g=;
 b=QBjdakYwdaZC4y2vr9i1CE6fK25L3h7Ec5iezXkoOQDjXyUIIFDOe+2awfr01ZAUi+niBZ
 WFoLCgiWXovthhVsxkx1+JvWU5QpxJxtspmdRfLa78rZWU4LkjgDV2i/O0j2rg4cMTNw3w
 KiJgUieKzqSUllFc1Qgj/3RlWfb/abE=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-we5ux99gOAuztkg5GaPmSQ-1; Fri, 29 May 2020 14:31:47 -0400
X-MC-Unique: we5ux99gOAuztkg5GaPmSQ-1
Received: by mail-ed1-f70.google.com with SMTP id dh6so1552781edb.1
 for <cake@lists.bufferbloat.net>; Fri, 29 May 2020 11:31:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=Bq/wtvpYAVeNzKGvMSqxNUR+BQj7jca0UzLqrOzrSyc=;
 b=Pd70oF9wLeh9q/LFUIQQZt25nnOJMkw70aiQUu/RWXvey09cz0i3iS3QIGxyQ30QSn
 K88uUav0QxNuyjim/fPc5Dk3QB5ecBzXe4aQQt+6clXyo9zfZ/dIBoYlQw2oiG6PKEcc
 g+kq1O2T3TWtcSRvsvN1Dq9lohaZdl6JNCeGPkRbgwzER2o6va/tu52NS/d9yLpwuXOr
 YJvaX4q9yXKpmfsecaTu4K/re4b4W9jJiQCsSeli1BY+ojhCymhS36l+SiP4sL3SsjWA
 D8U2b0W8xKtAUmNeNy3fGk4G2IEignYalvqyeQtGKBqBMwSXxH4xd+YmtnbcbLkOYzip
 m5aQ==
X-Gm-Message-State: AOAM533dbS8KiQv76NoN42bYM7K6gHBXUEJiqApfTdq+8kaarqFC7tdX
 o/Hk2vwvCvr9sNw9AcWUC0VK0t8Uo8uwJ+UAIAUpB/kQ4HZoYCuBDcCuFIkt6bzeKUJRodJEmAK
 o3ame2R7Dlt76tHbcwzjjGg==
X-Received: by 2002:a17:906:9707:: with SMTP id
 k7mr9242441ejx.18.1590777106412; 
 Fri, 29 May 2020 11:31:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxieTKkkPtQ0cNgBBbouELGe2iQaqqnrVA5pnq68h7WQkBidqlkxwfZUwkKDtgUzBWHSEO+IQ==
X-Received: by 2002:a17:906:9707:: with SMTP id
 k7mr9242432ejx.18.1590777106258; 
 Fri, 29 May 2020 11:31:46 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id ce23sm4733790edb.79.2020.05.29.11.31.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 11:31:45 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 0F9AF182019; Fri, 29 May 2020 20:31:45 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20200529105700.73a2b017@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
References: <20200529124344.355785-1-toke@redhat.com>
 <20200529105700.73a2b017@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 29 May 2020 20:31:45 +0200
Message-ID: <87imgezj72.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net] sch_cake: Take advantage of skb->hash where
	appropriate
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBPbiBGcmksIDI5IE1h
eSAyMDIwIDE0OjQzOjQ0ICswMjAwIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4g
KwkgKiBlbmFibGVkIHRoZXJlJ3MgYW5vdGhlciBjaGVjayBiZWxvdyBhZnRlciBkb2luZyB0aGUg
Y29ubnRyYWNrIGxvb2t1cC4KPj4gKwkgICovCj4KPiBuaXQ6IGFsaWdubWVudAoKQWgsIHJpZ2h0
LCBzZWVtcyBJIGZvcmdldCB0byBoaXQgPFRBQj4gYWZ0ZXIgYWRkaW5nIHRoYXQgZW5kIG1hcmtl
ci4KCkRhdmVtLCBjYW4gSSBnZXQgeW91IHRvIGZpeCB0aGF0IHdoZW4gYXBwbHlpbmcsIG9yIHNo
b3VsZCBJIHNlbmQgYSB2Mj8KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

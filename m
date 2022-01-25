Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D457349B26A
	for <lists+cake@lfdr.de>; Tue, 25 Jan 2022 11:58:26 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 45FE93CB39;
	Tue, 25 Jan 2022 05:58:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643108305;
	bh=LFzCDtAGY5br2LFKs1rgvINbEqf6YNxidct0CkMRRgY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q4zmMEE0Hh7PflSJqAzDbxAueM+pi3w2YkyiBU5CrFOXUfkkUSbLtp5l2HuckHpwt
	 KcXstHH0O+Y5noNxoU/XR235BWFD429iV148dIC0gCxjaeqsZocQ7YFidAPikZCMmH
	 /Iptmk4IycF8Z3Db2SeLmYjtQZbKGNRJga72PVX/CoClf/tP8dEmZB+yBtIU79cKxO
	 3zJKI2Dr+Fn0+QxxfQEkXmpDGHNhEI+pixuBPjWR9GVaC6Gt51Y63LABqCJNzpzdcL
	 XHvKVwVu6R1YuWnENS0iA4bg7JYfhhMsRGId8lJSTgz+WED5NXLvGIt2stGJobwra3
	 t9Y+5q1NBaiEQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F0C6C3CB35
 for <cake@lists.bufferbloat.net>; Tue, 25 Jan 2022 05:58:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643108303;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4qsOb9zb2WrQh1zu47PjQvYoZtB3eInxijl40oGothM=;
 b=Jm2wpkHpRv37kCKijBOVp7Ju0rdcJSZLg0rvx9zKgJ4+3kekoZE6L/LciUC+wSf3kQ8LPL
 ow6eiDgK0PhdDISK4zklnZ2J6a6rF8sCwRJQE/Kt7ow+t5TSH4lCnKd7oOTv1sB0IOf4FR
 NupyT2aMBE05RyZZyDILxWhbvEYoSCw=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-173-i7jaSKI5OJOqSc1T0Ml9Tw-1; Tue, 25 Jan 2022 05:58:19 -0500
X-MC-Unique: i7jaSKI5OJOqSc1T0Ml9Tw-1
Received: by mail-ed1-f70.google.com with SMTP id
 h21-20020aa7c955000000b0040390b2bfc5so14716034edt.15
 for <cake@lists.bufferbloat.net>; Tue, 25 Jan 2022 02:58:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=4qsOb9zb2WrQh1zu47PjQvYoZtB3eInxijl40oGothM=;
 b=fOmbc0CUi8Fo8ANjjBF01MP/Q9tyLQjAWSUV2NBYQmGXSv9pOx4GySJ53LDzJlPolb
 Ijpf4B/t6tgtl6OMIVTWfeTM/yyjRrKz+e10d47mEn0AqYvU7xErxjN7yKIgmO9SrKZ4
 HWBcgHEo8w80FYrrMRle/E2S0BF2gnc7AtQCA4g9Q3uQnGIe6IoOrkOup2XYDirqMVCG
 lLM60v8AWpTE6IAqLup0MooDWiKWq4YdeamHLCNL9me9MwECwxZou6hzwSCW0DvYzkeq
 sd1tVf8Vc1kvqZToG6sgzkspHF3LNdsEV5KqCHat1KdNXIAj8DBHjkwlVoQirS+piaHZ
 7p1A==
X-Gm-Message-State: AOAM531svE8+WfTXr37qZeI0hfzB7qVlx3W/xGrG0KxIUkJnM7BQfaSc
 THA5FDiyNnpUMrnDa2qLzS0uKwDO1oJFgOVEzdRmbAXf7cWSZlODxSlO9BxzemKNgKy/22dyBK4
 n9MlH7k6HLY3n6qHiLS8GyQ==
X-Received: by 2002:a05:6402:5174:: with SMTP id
 d20mr20104756ede.21.1643108298516; 
 Tue, 25 Jan 2022 02:58:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzE6eiLSqf9AF39se68WcDaWkkrleAQ+TXLk30fnnr7SQmGHtSF1Fx2yPgVDpbAIv3n/BXR/A==
X-Received: by 2002:a05:6402:5174:: with SMTP id
 d20mr20104718ede.21.1643108298185; 
 Tue, 25 Jan 2022 02:58:18 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id j26sm311188edt.65.2022.01.25.02.58.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 02:58:17 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 1B5D81805FA; Tue, 25 Jan 2022 11:58:17 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
In-Reply-To: <20220125060410.2691029-1-matt@codeconstruct.com.au>
References: <20220125060410.2691029-1-matt@codeconstruct.com.au>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 25 Jan 2022 11:58:17 +0100
Message-ID: <87r18w3wvq.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net] sch_cake: diffserv8 CS1 should be bulk
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
Cc: cake@lists.bufferbloat.net, Jakub Kicinski <kuba@kernel.org>,
 Matt Johnston <matt@codeconstruct.com.au>,
 "David S . Miller" <davem@davemloft.net>, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TWF0dCBKb2huc3RvbiA8bWF0dEBjb2RlY29uc3RydWN0LmNvbS5hdT4gd3JpdGVzOgoKPiBUaGUg
Q1MxIHByaW9yaXR5IChpbmRleCAweDA4KSB3YXMgY2hhbmdlZCBmcm9tIDAgdG8gMSB3aGVuIExF
IChpbmRleAo+IDB4MDEpIHdhcyBhZGRlZC4gVGhpcyBsb29rcyB1bmludGVudGlvbmFsLCBpdCBk
b2Vzbid0IG1hdGNoIHRoZQo+IGRvY3MgYW5kIENTMSBzaG91bGRuJ3QgYmUgdGhlIHNhbWUgdGlu
IGFzIEFGMXgKCkhtbSwgS2V2aW4sIGFueSBjb21tZW50cz8KCi1Ub2tlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==

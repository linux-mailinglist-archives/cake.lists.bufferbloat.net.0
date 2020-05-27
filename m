Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A86F71E3D93
	for <lists+cake@lfdr.de>; Wed, 27 May 2020 11:29:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9DD713CB44;
	Wed, 27 May 2020 05:29:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590571747;
	bh=iWnbLCkWEbrIm+cgKK4+RKnwXdGqgc/ZSCXkz6RIL9s=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QSI/FQ6uf6lr6hWcmxlTiF1+TbUSJpu1VNW3ci90LpK+fNTi/dGhayGPAcaWEwJG4
	 edO97es4K9oTeZmTc4Nm54LXzqE+FyA6nY/DSF8aGmcv0BcaXVHfHwh87Mt1ah9G0w
	 RHXiDoefmc2I/7Mwfpxr4qPzDYsF5otjdjOWN2RVqGsoPXlszvbaz9MHSPqezm9ygz
	 tKTHsGjnIqRwR/D3HmXNuiUO34b0GKm4WujTPyVkQG/zSCPfsuAtmDgZ6hWGvUX+Gb
	 DS/e6BvURKWnb66XPl1eN/e8Ve9kHl42nGFMhiS8y2Vkz7toyDaqXK1N1SNPIjh8fs
	 a3/cBn/838gOQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E14B13CB35
 for <cake@lists.bufferbloat.net>; Wed, 27 May 2020 05:29:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590571745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sD17OhXd+pkv1skluPYQEoupIx4p1LUEhW655FZ+2+I=;
 b=i0yxryDj4p7G64/nWcZGJS/5/fJnpdhG/vNX8nVH4P47JT/rRVDf58NuCy1ndEmFm2v6F7
 O0/NkDnpcHcb8WImZTJUr4fHu0ToUuVxIoJc5sMNFyY4ke0AArYUA961YeyFf3t86W+wQv
 IuwbafMxLjaJWu7GxZ8sTlG6VabMD70=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-yfG1l1qYNG-cqHJZNtmZMg-1; Wed, 27 May 2020 05:29:00 -0400
X-MC-Unique: yfG1l1qYNG-cqHJZNtmZMg-1
Received: by mail-ej1-f70.google.com with SMTP id lk22so8641739ejb.15
 for <cake@lists.bufferbloat.net>; Wed, 27 May 2020 02:29:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=sD17OhXd+pkv1skluPYQEoupIx4p1LUEhW655FZ+2+I=;
 b=AllEHYQrauUquQRkHA4dbL3gnwHe43VrFkPIVNAVoYa8sfvxAmWwOziY+uOLvLaBCC
 WwdvxnpAqCxOC9futOa6HJ4UKnbuDYt7WR3st9nIBGmRUvA6ufDMsG/oL78I6BTqsH6f
 xN6KRcsF0HGvVeQrj9Tn3lA7XwXcCE7uwG+WaDFAojUeDxZyzvKpPiwEWVnJpi0DD8ph
 e6Q7+ZrPv3vfba2Jpg2gkF4W+1Qagd0qTtOg5wVgFDtFzdPv/fkiTT6kCSWLZNteUZo6
 ckdPEilaIGfAOwTKdkHy8qN4dJGfv8vlk1HXpjka5cckcTWYqr8A7bANd2VSQqzNbSLn
 YS7A==
X-Gm-Message-State: AOAM531+IvfghgHxoiRo3C/fgmsc1/Ta3/JRxiQL5dgdt6rxtcKsTPTN
 vDSDhSLv/sMq14LoBwKaagDfnWrYp3x7sPJeaQXGsB6MQCJ86y92p2SZBY2mGdPyKyRLAtaz9GR
 DHpVhlOH5Z8r5IDNHbvPnEg==
X-Received: by 2002:a17:906:3597:: with SMTP id
 o23mr5017956ejb.174.1590571739495; 
 Wed, 27 May 2020 02:28:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzPkutQ8acRSs53c82aCXQDJnptB6gpX/72FTHPYL9bZvX088aEBrjkUN3Ktl6SKUUOT6u3JA==
X-Received: by 2002:a17:906:3597:: with SMTP id
 o23mr5017942ejb.174.1590571739308; 
 Wed, 27 May 2020 02:28:59 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id cz9sm1720088edb.18.2020.05.27.02.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 02:28:58 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 43EC01804EB; Wed, 27 May 2020 11:28:57 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Matthew Ford <ford@isoc.org>, Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <289C7A4A-28B1-4692-AA2B-209347E65415@isoc.org>
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
 <289C7A4A-28B1-4692-AA2B-209347E65415@isoc.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 27 May 2020 11:28:57 +0200
Message-ID: <878shd3ew6.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [Make-wifi-fast] [Bloat]  dslreports is no longer free
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TWF0dGhldyBGb3JkIDxmb3JkQGlzb2Mub3JnPiB3cml0ZXM6Cgo+IFdoYXQncyB0aGUgYnVmZmVy
YmxvYXQgdmVyZGljdCBvbiBodHRwczovL3NwZWVkLmNsb3VkZmxhcmUuY29tLyA/CgpIdWgsIGRp
ZG4ndCBrbm93IGFib3V0IHRoYXQuIFNlZW1zIHRoZXkncmUgbWVhc3VyaW5nIHRoZSBsYXRlbmN5
IGJlZm9yZQp0aGUgZG93bmxvYWQgdGVzdCwgdGhvdWdoLCBzbyBubyBidWZmZXJibG9hdCBudW1i
ZXJzLiBJZiBhbnlvbmUga25vd3MKc29tZW9uZSBhdCBDbG91ZGZsYXJlIHdlIGNvdWxkIHRyeSB0
byBidWcgdG8gZ2V0IHRoaXMgZml4ZWQsIHRoYXQgd291bGQKYmUgYXdlc29tZSEKClRoZWlyIEZB
USBsaW5rcyB0byBodHRwczovL3d3dy5zcGVlZGNoZWNrLm9yZy8gZm9yICJ0cm91Ymxlc2hvb3Rp
bmcKdGlwcyIuIEFuZCBvZiBjb3Vyc2UgdGhhdCBwYWdlIGRvZXNuJ3Qgc2VlbSB0byBtZW50aW9u
IGxhdGVuY3kgb3IKYnVmZmVyYmxvYXQgYXQgYWxsIDooCgotVG9rZQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQo=

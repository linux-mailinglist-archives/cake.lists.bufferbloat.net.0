Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 412E53C65C0
	for <lists+cake@lfdr.de>; Mon, 12 Jul 2021 23:54:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A8A7A3CB41;
	Mon, 12 Jul 2021 17:54:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626126846;
	bh=iCcrXcqR/bfisBR/tuQmyRIMB/Mya29Cz7hytCddC/E=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fg9U+pOoAtrgqss6lb4kzXF2+Qk/3+Nk1Om7O31/d4Zwrrd/TFzdy3Sq3QfVvMIMD
	 lR38GzrqTb+yOvhizwP1OT4pgX7S0De+IzKHrNKpOh8B6Of7CwbORaIzuvkkyHip8D
	 vl3nb5A0+Joy3RhI8//hYreEWtG+MjzvpG9vbD8GshXHC8tHFnH1EJEtANNYJIn2US
	 fuPO4NdRpjOWxe6bxZKwth3aWDF0K0frN4gZdItOj4kfguBNh/sCPzIqggGj3wZXWD
	 UCboRKVQ0swPlwnwAArGNFuT2Wi6DVYzam7xPcwLqfZ8QrUolaqQRawF1VIdprDDYe
	 jRPpOBlYkhqpQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 892763CB37;
 Mon, 12 Jul 2021 17:54:04 -0400 (EDT)
Received: by mail-lj1-x22e.google.com with SMTP id b40so26613951ljf.12;
 Mon, 12 Jul 2021 14:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ggEWQNxtzckneaMYJsRlcLmPIT2b8Wj94iHm2kqCeFI=;
 b=BbTw6mTFoVTXuVX3MCZOo9ksfYxhOXYvlGyv1eU+nSyWErfbedXT31Xq8Mb4Hw6TLb
 9lJmCcc8mV2MyeLM0M9PRzMPBMMTmjQrBJo2t1keGAoQNbGO2FrhU5zmLYj8fpO1CmOn
 o7rIwokOhd0LirbexetWHKIguXpWVbtv9txBK7EsftP2dpodKKJHtvJxeE9lUdCjqnrU
 zP0GhxiOfmvPlMbPIs2dehKVTpuBoyvbLwZXodc2H2T12fBM7OAkwJfW1RHMaAVWapmi
 dVtGu/pAZEFmxZ9JiBkWFxbNPJaHKpH6+B4S5d+UvIbsMYMVrEUCiCo8xjbQpopQyACg
 jbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ggEWQNxtzckneaMYJsRlcLmPIT2b8Wj94iHm2kqCeFI=;
 b=lCzLLeC2O+AHTTDadTc/8UR3xVSug3xGcR1xajIN+QqNeAf9h4hBZeG+V+gD7ejVSD
 mK4iswYfWQl5tptnwBm+YYQuJtkGd3RAMo1VHV4O3zlyqB7QE2NRcamoqJt5DDlaqXAw
 mzfmEKwwyrM9YU2osoTLhg7EbrysvGDxRvWkowgtVk2wh/3aRo5pQqwkzVGxC6qHakud
 iJdDoJKU9+VDgx/JJvQcg4XCElRB3FxS4WWb/MKaQqv0w2LhAn5x+M42I4drUEFyE0rt
 NbzQZ8DIBb436Hu/RHclm9+0LfhWtwIxVgt8nM1XkCj0jdBZQ5BroqNCIu/gccKE8s6T
 ux3A==
X-Gm-Message-State: AOAM533bhLozBTU3MT6TAN/FW4IhHFWOA8H98vimDZP/qV2YLgLXa0jf
 ldvNEiZH0j0fmjpgVZV8ppY=
X-Google-Smtp-Source: ABdhPJwr50/+7kYnUC+wVrXwfsSuUL8kkMSQEEqZ+oWrcHeRC4D4UgaP4Ruhka/SDWtDE8UepQI86A==
X-Received: by 2002:a2e:a7c5:: with SMTP id x5mr1096181ljp.389.1626126843120; 
 Mon, 12 Jul 2021 14:54:03 -0700 (PDT)
Received: from jonathartonsmbp.lan (37-136-219-147.rev.dnainternet.fi.
 [37.136.219.147])
 by smtp.gmail.com with ESMTPSA id l25sm1612213ljc.77.2021.07.12.14.54.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Jul 2021 14:54:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAHb6LvpyQtGg3sMF2RV_gMpEcaY32A70VaEwtsnoeq4DHtv7EA@mail.gmail.com>
Date: Tue, 13 Jul 2021 00:54:00 +0300
Message-Id: <11FC0C15-A940-4B03-825F-BD62A19E22A2@gmail.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <EF8D7620-438A-4F65-94D9-B35FDB76FBBD@cable.comcast.com>
 <1626111630.69692379@apps.rackspace.com>
 <CAHb6LvoD+ACc+17WhTVmS8HYnYyboJrCg5zQF8uXtzrmqqKfPA@mail.gmail.com>
 <9c3d61c1-7013-414e-964d-9e83f596e69d@candelatech.com>
 <CAHb6LvpyQtGg3sMF2RV_gMpEcaY32A70VaEwtsnoeq4DHtv7EA@mail.gmail.com>
To: Bob McMahon <bob.mcmahon@broadcom.com>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] Little's Law mea culpa,
 but not invalidating my main point
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
 Leonard Kleinrock <lk@cs.ucla.edu>,
 "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>, "Livingood,
 Jason" <Jason_Livingood@comcast.com>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxMiBKdWwsIDIwMjEsIGF0IDExOjA0IHBtLCBCb2IgTWNNYWhvbiB2aWEgTWFrZS13aWZp
LWZhc3QgPG1ha2Utd2lmaS1mYXN0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4gCj4g
IkZsb3cgY29udHJvbCBpbiBzdG9yZS1hbmQtZm9yd2FyZCBjb21wdXRlciBuZXR3b3JrcyBpcyBh
cHByb3ByaWF0ZSBmb3IgZGVjZW50cmFsaXplZCBleGVjdXRpb24uIEEgZm9ybWFsIGRlc2NyaXB0
aW9uIG9mIGEgY2xhc3Mgb2YgImRlY2VudHJhbGl6ZWQgZmxvdyBjb250cm9sIGFsZ29yaXRobXMi
IGlzIGdpdmVuLiBUaGUgZmVhc2liaWxpdHkgb2YgbWF4aW1pemluZyBwb3dlciB3aXRoIHN1Y2gg
YWxnb3JpdGhtcyBpcyBpbnZlc3RpZ2F0ZWQuIE9uIHRoZSBhc3N1bXB0aW9uIHRoYXQgY29tbXVu
aWNhdGlvbiBsaW5rcyBiZWhhdmUgbGlrZSBNL00vMSBzZXJ2ZXJzIGl0IGlzIHNob3duIHRoYXQg
bm8gImRlY2VudHJhbGl6ZWQgZmxvdyBjb250cm9sIGFsZ29yaXRobSIgY2FuIG1heGltaXplIG5l
dHdvcmsgcG93ZXIuIFBvd2VyIGhhcyBiZWVuIHN1Z2dlc3RlZCBpbiB0aGUgbGl0ZXJhdHVyZSBh
cyBhIG5ldHdvcmsgcGVyZm9ybWFuY2Ugb2JqZWN0aXZlLiBJdCBpcyBhbHNvIHNob3duIHRoYXQg
bm8gb2JqZWN0aXZlIGJhc2VkIG9ubHkgb24gdGhlIHVzZXJzJyB0aHJvdWdocHV0cyBhbmQgYXZl
cmFnZSBkZWxheSBpcyBkZWNlbnRyYWxpemFibGUuIEZpbmFsbHksIGEgcmVzdHJpY3RlZCBjbGFz
cyBvZiBhbGdvcml0aG1zIGNhbm5vdCBldmVuIGFwcHJveGltYXRlIHBvd2VyLiIKPiAKPiBodHRw
czovL2llZWV4cGxvcmUuaWVlZS5vcmcvZG9jdW1lbnQvMTA5NTE1Mgo+IAo+IERpZCBKYWZmZSBt
YWtlIGEgbWlzdGFrZT8KCkkgd291bGQgc3VnZ2VzdCB0aGF0IGlmIHlvdSBtb2RlbCB0cmFmZmlj
IGFzIGhhdmluZyBubyBjb250cm9sIGZlZWRiYWNrLCB5b3Ugd2lsbCBpbmV2aXRhYmx5IGZpbmQg
dGhhdCBubyBjb250cm9sIG9jY3Vycy4gIEJ1dCByZWFsIEludGVybmV0IHRyYWZmaWMgKmRvZXMq
IGhhdmUgY29udHJvbCBmZWVkYmFjayAtIHRob3VnaCBpdCB3YXMgaW50cm9kdWNlZCBzb21lIHRp
bWUgKmFmdGVyKiBKYWZmZSdzIHBhcGVyLCBzbyB3ZSBjYW4gZm9yZ2l2ZSBoaW0gZm9yIGEgZGVn
cmVlIG9mIGlnbm9yYW5jZSBvbiB0aGF0IHBvaW50LiAgUGVyaGFwcyBKYWZmZSBlZmZlY3RpdmVs
eSBwcmVkaWN0ZWQgdGhlIEFSUEFORVQgY29uZ2VzdGlvbiBjb2xsYXBzZSBldmVudHMgd2l0aCBo
aXMgYW5hbHlzaXMuCgo+IEFsc28sIGl0J3MgYmVlbiBvYnNlcnZlZCB0aGF0IGxhdGVuY3kgaXMg
bm9uLXBhcmFtZXRyaWMgaW4gaXQncyBkaXN0cmlidXRpb25zIGFuZCBjb21wdXRpbmcgZ2F1c3Np
YW5zIHBlciB0aGUgY2VudHJhbCBsaW1pdCB0aGVvcmVtIGZvciBPV0QgZmVlZGJhY2sgbG9vcHMg
YXJlbid0IGVmZmVjdGl2ZS4gSG93IGRvZXMgb25lIGRlc2lnbiBhIGNvbnRyb2wgbG9vcCBhcm91
bmQgdGhpbmdzIHRoYXQgYXJlIG5vbi1wYXJhbWV0cmljPyBJdCBhbHNvIGJlZ3MgdGhlIHF1ZXN0
aW9uLCB3aGF0IGFyZSB0aGUgZmVlZCBmb3J3YXJkIGtub2JzIHRoYXQgY2FuIGFjdHVhbGx5IGhl
bHA/CgpDb250cm9sIGF0IGVuZHBvaW50cyBiZW5lZml0cyBncmVhdGx5IGZyb20gZXZlbiBzbWFs
bCBhbW91bnRzIG9mIGluZm9ybWF0aW9uIHN1cHBsaWVkIGJ5IHRoZSBuZXR3b3JrIGFib3V0IHRo
ZSBkZWdyZWUgb2YgY29uZ2VzdGlvbiBwcmVzZW50IG9uIHRoZSBwYXRoLiAgVGhpcyBpcyB0aGUg
cm9sZSBwbGF5ZWQgZmlyc3QgYnkgcGFja2V0cyBsb3N0IGF0IHF1ZXVlIG92ZXJmbG93LCB0aGVu
IGRlbGliZXJhdGVseSBkcm9wcGVkIGJ5IEFRTXMsIHRoZW4gbWFya2VkIHVzaW5nIHRoZSBFQ04g
bWVjaGFuaXNtIHJhdGhlciB0aGFuIGRyb3BwZWQuCgpBUU0gYWxnb3JpdGhtcyBjYW4gYmUgZXhj
ZWVkaW5nbHkgc2ltcGxlLCBvciB0aGV5IGNhbiBiZSByYXRoZXIgc29waGlzdGljYXRlZC4gIElu
Y3JlYXNlZCBsZXZlbHMgb2Ygc29waGlzdGljYXRpb24gaW4gYm90aCB0aGUgQVFNIGFuZCB0aGUg
ZW5kcG9pbnQncyBjb25nZXN0aW9uIGNvbnRyb2wgYWxnb3JpdGhtIG1heSBiZSB1c2VkIHRvIGlu
Y3JlYXNlIHRoZSAibmV0d29yayBwb3dlciIgYWN0dWFsbHkgb2J0YWluZWQuICBUaGUgcmVxdWly
ZWQgbGV2ZWwgb2YgY29tcGxleGl0eSBmb3IgZWFjaCwgYWNoaWV2aW5nIHJlYXNvbmFibHkgZ29v
ZCByZXN1bHRzLCBpcyBob3dldmVyIHF1aXRlIGxvdy4KCiAtIEpvbmF0aGFuIE1vcnRvbgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==

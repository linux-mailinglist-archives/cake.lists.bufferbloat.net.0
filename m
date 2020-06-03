Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0FB1ECAA3
	for <lists+cake@lfdr.de>; Wed,  3 Jun 2020 09:36:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AD7D93CB4B;
	Wed,  3 Jun 2020 03:35:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1591169754;
	bh=L8lNJuPTbrsgemrceeh/8Va3MlZ+mwc106G+WAWOOV0=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J0qfXs2V8EcZiCjzXNC20hi2+44FKaUBKVxe8HKjTKZ+naYMYFt03UQJbfMPfxhYr
	 FuzpOqLDjTYLdv+JZiTqAC6LDTYMjtWX+zHfMtFhZlIlHeqWiD0USEXAvVcLu2FM+S
	 07oNbEGdkNsxVzYy00/L1wsEWtM2WsNgkbwINUUIWvBtOcIX9TkPLjnXsGPC9t6dQh
	 FaIG00O6Nci1/gsFiwLGXL2SYzS2xNNe6JEqGXwKyBvq5j+QhyfnU3Ph4bE0RjsH9m
	 LjzfD8qvjFQeey8pf2tM/4tZ+Wqsq2bXlC9MsYzhac167lHZtfaSaOC3cTaNOTQWXs
	 UI8r1brP4f9BA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DE7603B29D;
 Wed,  3 Jun 2020 03:35:52 -0400 (EDT)
Received: by mail-il1-x12a.google.com with SMTP id 18so1491266iln.9;
 Wed, 03 Jun 2020 00:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CfcL63hHeXc1G8SQzEU1cGrXhXmgC2CN6oawy9q2RBk=;
 b=YXEnfqY91+LIxYyxbkFIWLZy6RXVCOMPON0+nslUESnMWYFnFZYZotkg2o9hvOxUVF
 dz9gIvsSGrOJd75DX48y0GNmGCll89aV9A0jU6dIF+aVt/21MyRqPJa5bUpwgoKJ3dGs
 bvQL+k1MqbZDMWJ98Ev23j7ldA4+fHDe70JlUf5MvCkHeqws8VFmMj8AaPyPqM05Yr6I
 dkP7vHOcoWDFuDX61ufGFS3gkvTu6D+umzkGEQyYdJ8AXZtp7frek23lxf4p1ciIgg49
 q5lfb637VS/LLlmBdNFOuvOxrRZiteHADcc7oLh0wDPP3NRONOyNJtv/JYezeWLdHRqI
 hFKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CfcL63hHeXc1G8SQzEU1cGrXhXmgC2CN6oawy9q2RBk=;
 b=BI/8YB77tR7SWa7Zwgs5G90A50E+Hr/LHbYHoQQQwtjYQACOwWPx0ff86b8GJk51u3
 PolhIFC8jyKfeDICFjz5NL39Daawi3lCfA6O5MpI46znoze934fjej5RBQoOIwtRhdFF
 jRsD73aY7WZYhTQ4b9+n9L/Lk7vXwL/9pZqBzye3oc4hB+7TnqiTED/Bn8qB+twJcHZy
 rotTlCL6b626VnHQJcBlRU/Icx0Ic7TC9BzOuzUHBG1b/SYLcGn5NMP/dykI6l5JAqCT
 VdLhajx7ZhtKcdzIBKnfK4dX3kgk0J7+oby2t2lCl53poAaRd7H7eute0JzMTNcJBjpP
 9DPQ==
X-Gm-Message-State: AOAM5339aV2KrYNB5MLWMGR1fP+IQq4jF/uItL1PHjUBfQABeA/izrq1
 w0lB0+8+HYpzf7DegigpSH5HjtqdLVD76Re5rVX1Kw==
X-Google-Smtp-Source: ABdhPJy0ma5nd5Zk9BuuQ2+S8SGXgB/RjsoWtw/4ZdEfCOoiJKu3srUj5apNkeHcr0oI1ReN7nfIpblTVOhkhIwIxZY=
X-Received: by 2002:a05:6e02:106c:: with SMTP id
 q12mr2824267ilj.45.1591169752165; 
 Wed, 03 Jun 2020 00:35:52 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 3 Jun 2020 00:35:41 -0700
Message-ID: <CAA93jw79=3m5UJx2nKPADo1f2BJnMbrzjrHOYf-jpZdw=RESfA@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>, 
 "Ozer, Sebnem" <Sebnem_Ozer@comcast.com>
Subject: [Cake] anyone using google stadia?
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

YW5kIHdpbGxpbmcgdG8gc2hhcmUgc29tZSBwYWNrZXQgY2FwdHVyZXMgb2YgNSBtaW51dGVzIG9m
IGdhbWVwbGF5CnN0YXJ0IHRvIGZpbmlzaD8gT3ZlciB3aXJlZCBhbmQgd2lmaT8KCnRoeC4KCi0t
IAoiRm9yIGEgc3VjY2Vzc2Z1bCB0ZWNobm9sb2d5LCByZWFsaXR5IG11c3QgdGFrZSBwcmVjZWRl
bmNlIG92ZXIgcHVibGljCnJlbGF0aW9ucywgZm9yIE1vdGhlciBOYXR1cmUgY2Fubm90IGJlIGZv
b2xlZCIgLSBSaWNoYXJkIEZleW5tYW4KCmRhdmVAdGFodC5uZXQgPERhdmUgVMOkaHQ+IENUTywg
VGVrTGlicmUsIExMQyBUZWw6IDEtODMxLTQzNS0wNzI5Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

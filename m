Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF243E3C42
	for <lists+cake@lfdr.de>; Sun,  8 Aug 2021 20:48:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D5CAB3CB45;
	Sun,  8 Aug 2021 14:48:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628448523;
	bh=emklyjy98CIIu6s9nwql47MlkKY685PbFovLYLdU7ls=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H4FD6f8dR99/yR39NP6+S4VeWYh5xGEbqHjAueynwFS+O5h8AX/X0Tb55Me9jL83I
	 1BdhwnmpKVD4ZFGqzwjn1onPxhEVu068DT4Kgc7x2zvJnQqM3cY8LvVlmkQMSXpvd0
	 vVaUb/iLDi940akM76Dk5pspn+3WtimcXUjnfv1ptV3AUtMqneSvu0xfqLz8h/EZch
	 eHk7PjepyFVWLltzsOueSsqJWJG+jLVHyQgXQd9L3utTDr5E51uXl5C8Xs5+BvVv7W
	 L9qNdBSIaEMg9/j3VMagzGSmca0s5sRDaScCA1wru4f3NbHRqajrK7BRoxPsr82RA5
	 vKHxAlzLatqAQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 631E23CB35;
 Sun,  8 Aug 2021 14:48:42 -0400 (EDT)
Received: by mail-lf1-x12c.google.com with SMTP id p38so1702855lfa.0;
 Sun, 08 Aug 2021 11:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=fIevKdesqbGqCc7KjCvy+HWE1hJBoq6entYcY0FCSsY=;
 b=jzGEgDqu+ZvKc+VsrNJB22me3VM0nRnUpIoB5FXmGK5cX2J+sX6VXn0Wlnpg51Bp7y
 5Kngx6wiwIt7TsCFJ2rRzecda3fCF69WOwg+vMhvXS484U/rNnji/moIYq0sFDkwvFof
 oELMaHvCyFyw4/hJXmvbiPbFeQLZb4kSM/G/XJsN8van8aQs8VYDMLjBv8gZZCN5Lt/D
 q1vbpzdqV3wvCGR8pTAIAUSWvozXqoNMU5lN5h23rSTxBiZxR7pVZbCqQXdE1V5EVRIH
 xfnRcJsCIQQFsJCWRCNQ9sGG+MSVKo96LgWpUFExhS0xLTi2IUtqdJMMY/wDWKcQqZtM
 RX1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=fIevKdesqbGqCc7KjCvy+HWE1hJBoq6entYcY0FCSsY=;
 b=hqdQvW9Wz6objbPtfnfPIIZ1ejudS+6Tu/jcyyU8HxDk7Zrdtv7FA2hL7bnmZgg4Mj
 +F0YB4av7FlAcd/1asbUsWW+glcvEAjM5nRshKtH/2xBQLRnJjEiX04vgdPwkaFQgzmE
 z6zzmYV+1HvAgk446cpVeIQague0aiNFF++GsTs4JvoqJ0uvzIWPnHc+7/4J5sA805rw
 RU8wZNa6SqtZT3RwSiCr3BX8N3GPzJ/Anodqztzv2N2pRlcWZpEC2PjQHGwSW4jjEp/Z
 YITa5pgBt+bVMDhbpujpQSN3rFTWJPtUVzqLPi5sLzkVSg4GOGQLUgpaOh0zQbHe4ifW
 yzBg==
X-Gm-Message-State: AOAM531YjLAgFILi9p6YYUk8Rih7oUG4iVnNTelENoWF1V8d93J+IUEp
 uNgxk4/5foxynKOtVcP3Q0E=
X-Google-Smtp-Source: ABdhPJwHhYQaL61B/a9LOcNen6jknzFakESasG8jJU0lLYfE6IKvvQuQ8bnvM34z2d1U7ivsV/9iBQ==
X-Received: by 2002:a19:dc57:: with SMTP id f23mr14364290lfj.294.1628448520994; 
 Sun, 08 Aug 2021 11:48:40 -0700 (PDT)
Received: from smtpclient.apple (178-55-56-220.bb.dnainternet.fi.
 [178.55.56.220])
 by smtp.gmail.com with ESMTPSA id bt25sm720690lfb.282.2021.08.08.11.48.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 Aug 2021 11:48:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CALQXh-Oukro8cvM-tEfowdiBXJuMff8MfuvQ9qsChbaORnWWpg@mail.gmail.com>
Date: Sun, 8 Aug 2021 21:48:32 +0300
Message-Id: <0068DE73-1877-4879-B250-97586B545372@gmail.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <CAHb6LvqsZFDDkC1qjr9ccXNjFtq1qnAevQpccNFydP4BOVVL1Q@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108021607160.810590@qynat-yncgbc>
 <8677F5C4-1893-4A61-A13C-3C8BE17CB789@cs.ucla.edu>
 <CAHb6LvpQP_jCiHeNJAD9qt+wB-HqUAW7N6aGJ+6-PXg+KE5Z2Q@mail.gmail.com>
 <4F6EFB347C08475A9F53B24E0D8BEAE2@SRA6>
 <CAHb6LvqUctN5SMcqgZNh5u7=nJhtWOuXEmh59PPYag2g+xVrtw@mail.gmail.com>
 <CALQXh-Oukro8cvM-tEfowdiBXJuMff8MfuvQ9qsChbaORnWWpg@mail.gmail.com>
To: Aaron Wood <woody77@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] [Starlink] [Cerowrt-devel] Due
 Aug 2: Internet Quality workshop CFP for the internet architecture board
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
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 starlink@lists.bufferbloat.net, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, dickroy@alum.mit.edu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA4IEF1ZywgMjAyMSwgYXQgOTozNiBwbSwgQWFyb24gV29vZCA8d29vZHk3N0BnbWFpbC5j
b20+IHdyb3RlOgo+IAo+IExlc3MgY29tbW9uLCBidXQgc29tZXRoaW5nIEkgc3RpbGwgc2VlLCBp
cyB0aGF0IGEgbW92aW5nIHN0YXRpb24gaGFzIGNvbnRpbnVhbCBpc3N1ZXMgc3RheWluZyBpbiBw
cm9wZXIgTUlNTyBwaGFzZShzKSB3aXRoIHRoZSBBUC4gIE9yIEkgdGhpbmsgdGhhdCdzIHdoYXQn
cyBoYXBwZW5pbmcuICBTbG93LCBjb250aW51YWwgbW92ZW1lbnQgb2YgdGhlIHR3bywgcmVsYXRp
dmUgdG8gZWFjaCBvdGhlciwgYW5kIHRoZSBwYWNrZXQgcmF0ZSBkcm9wcyB0aHJvdWdoIHRoZSBm
bG9vciB1bnRpbCB0aGV5IHN0b3AgaGF2aW5nIHJlbGF0aXZlIG1vdGlvbi4gIEFuZCBJIGFzc3Vt
ZSB0aGF0IGFsc28gYXBwbGllcyB0byB0aW1lLXZhcnlpbmcgcGF0aC1sb3NzIGFuZCBwYXRoLWRp
c3RhbmNlIChtdWx0aXBhdGggcmVmbGVjdGlvbnMpLgoKU28gaXMgaXQgdGltZSB0byBtb3VudCB0
ZXN0IHN0YXRpb25zIG9uIG1vZGVsIHJhaWx3YXkgd2Fnb25zPwoKIC0gSm9uYXRoYW4gTW9ydG9u
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

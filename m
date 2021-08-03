Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 344CC3DE39F
	for <lists+cake@lfdr.de>; Tue,  3 Aug 2021 02:37:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 831EC3CB48;
	Mon,  2 Aug 2021 20:37:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1627951057;
	bh=SEkRvviCcCndd7ZG8bTrvfHdYvc10yUh3/2eaqzr0SU=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eagh3vjbGZtCFGuauQaOa/moLhyKbyUDh96/TdY1IghB5mDVeXMhddv8vJG9ikvTI
	 3aSXuJzQsVqn3p8ahEqywDgE+DQKrYD6lKnASpPUji+7V8J3OfKKbhXcdSznTTy6KK
	 8vYwsbH+/mTT1OFVQAdvdxzf1q0qGU9jTKhT88idM921MvDIJykcAaM/0ieod1RnX+
	 VxYus5fi2eFNg0bgclXYF/OJkGtnPorXV/MXFltFRlHr2DTdo8FBmTTnGmw0pdKYPI
	 ABw8HYVi2BT8FYGxVuD4aRGPTnRfIKgzVwQcv/pCRU2lu3SIU3cTh3FNqErZQmshv+
	 Dxnh9r5IX8kqg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BA4E53B29D;
 Mon,  2 Aug 2021 20:37:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.cs.ucla.edu (Postfix) with ESMTP id 9E7DE1600B5;
 Mon,  2 Aug 2021 17:37:34 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
 by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 548chwpGyV9j; Mon,  2 Aug 2021 17:37:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.cs.ucla.edu (Postfix) with ESMTP id B91521600FA;
 Mon,  2 Aug 2021 17:37:33 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
 by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id GNSvLKOLAIxz; Mon,  2 Aug 2021 17:37:33 -0700 (PDT)
Received: from smtpclient.apple (cpe-172-117-11-163.socal.res.rr.com
 [172.117.11.163])
 by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 6F3E81600B5;
 Mon,  2 Aug 2021 17:37:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Leonard Kleinrock <lk@cs.ucla.edu>
In-Reply-To: <nycvar.QRO.7.76.6.2108021607160.810590@qynat-yncgbc>
Date: Mon, 2 Aug 2021 17:37:33 -0700
Message-Id: <8677F5C4-1893-4A61-A13C-3C8BE17CB789@cs.ucla.edu>
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
To: David Lang <david@lang.hm>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] [Make-wifi-fast] [Starlink] [Cerowrt-devel] Due Aug 2:
 Internet Quality workshop CFP for the internet architecture board
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlc2UgY2FzZXMgYXJlIHdoYXQgbXkgc3R1ZGVudCwgRm91YWQgVG9iYWdpIGFuZCBJIGNhbGxl
ZCB0aGUgSGlkZGVuIFRlcm1pbmFsIFByb2JsZW0gKHdpdGggdGhlIEJ1c3kgVG9uZSBzb2x1dGlv
bikgYmFjayBpbiAxOTc1LgoKTGVuIAoKCj4gT24gQXVnIDIsIDIwMjEsIGF0IDQ6MTYgUE0sIERh
dmlkIExhbmcgPGRhdmlkQGxhbmcuaG0+IHdyb3RlOgo+IAo+IElmIHlvdSBhcmUgZ29pbmcgdG8g
c2V0dXAgYSB0ZXN0IGVudmlyb25tZW50IGZvciB3aWZpLCB5b3UgbmVlZCB0byBpbmNsdWRlIHRo
ZSBhYmlsaXR5IHRvIG1ha2UgYSBmZSBjYXNlcyB0aGF0IG9ubHkgaGFwcGVuIHdpdGggUkYsIG5v
dCB3aXRoIHdpcmVkIG5ldHdvcmtzIGFuZCBhcmUgY29tbW9ubHkgb3Zlcmxvb2tlZAo+IAo+IDEu
IHN0YXRpb24gQSBjYW4gaGVhciBzdGF0aW9uIEIgYW5kIEMgYnV0IHRoZXkgY2Fubm90IGhlYXIg
ZWFjaCBvdGhlcgo+IDIuIHN0YXRpb24gQSBjYW4gaGVhciBzdGF0aW9uIEIgYnV0IHN0YXRpb24g
QiBjYW5ub3QgaGVhciBzdGF0aW9uIEEgMy4gc3RhdGlvbiBBIGNhbiBoZWFyIHRoYXQgc3RhdGlv
biBCIGlzIHRyYW5zbWl0dGluZywgYnV0IG5vdCB3aXRoIGEgc3Ryb25nIGVub3VnaCBzaWduYWwg
dG8gZGVjb2RlIHRoZSBzaWduYWwgKHllcyBpbiB0aGVvcnkgeW91IGNhbiB3b3JrIGFyb3VuZCBp
bnRlcmZlcmVuY2UsIGJ1dCBpbiBwcmFjdGljZSBpbnRlcmZlcmVuY2UgaXMgc3RpbGwgYSByZWFs
IHRoaW5nKQo+IAo+IERhdmlkIExhbmcKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

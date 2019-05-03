Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA26133F1
	for <lists+cake@lfdr.de>; Fri,  3 May 2019 21:13:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A2B563CB39;
	Fri,  3 May 2019 15:13:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556910794;
	bh=KHDB0l3BMv5IFS2bESr21OBEYIM+izYNR7Gx8kcHvGg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ngJ1fLIY9TQOdoViEm2iAyoCE4rRjodBntaBexMuomqwoG5fvjW0QUpYaDDEhpbZx
	 vGSeNG5Us7Fqng/uNay2INQUN38gjqROQg8WlU6EWjQeDBWvWQ+ya00O7oXpKbKn+V
	 5lqYQAyPHI6OpntsX3L32u6f981ZoCV7XtH0g9UFAxQJFiNcz3Vu8nqKMqWNMHDzCc
	 zkJE1H6UOZMjGWlVaiK+zakTyKzOtgsZHBfxyKvmAfYABGy2SjxFu5QOlnj9sochM8
	 fNKF1oxOVSn5uPesivN48lH6KBkLVa0R3pVbfhpgq1Xlg/zgOFQO48IM4o5kN6d9hl
	 VfBHCh9iUeO3g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 809D73CB35
 for <cake@lists.bufferbloat.net>; Fri,  3 May 2019 15:13:12 -0400 (EDT)
Received: by mail-lf1-f66.google.com with SMTP id h126so5147116lfh.4
 for <cake@lists.bufferbloat.net>; Fri, 03 May 2019 12:13:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=gKGhmZUh/3cXHpr1zz7vupR965CvE//+yf4wBK3e6w4=;
 b=dFDSbeOmb1NBtX25bLlzPcKB5bMBvHbm0boCE3QCbGLq0fPpgaxj+qO5y5mVeaIauv
 n4EDyi2vSxKTpzd4WTZ8FVL4dnu44y5mMAoyWTmtdqg+waQ+Pn9dB64nOiJKpeXe7PxS
 WCqSSleEDYc1AAv4XPKHqCOfr0cIQV6nSvTIJaR6bhC5FDaopDWLXUZQJ+xMGKPLZk0w
 eSAmA6Q4YpNGLy/TUwBNX+YQOs6y0YdqqoPANtpCb5O9R4K78lPSYDfCet7Ij//ZzUs4
 OvMxdpAuWnbYg35FQ5MVJkDZRbNnyUeLJ567+k5Bh58KjjyYptTsApUmwNjd2uicKD3J
 iBYw==
X-Gm-Message-State: APjAAAUJAovwRvI4gQsth7X/w2oRTHblQVnkxaIgjB6cCcLVe0yJe5td
 Pfpk8UsHJvRWcn83YKj+a+kNVA==
X-Google-Smtp-Source: APXvYqxZEX1CGebJHfrdU2oPsvjV9PrtyigTm/Nh8BoPy0GFcX9gzYQR6MdZnOEqcePjhb2dA48Wew==
X-Received: by 2002:ac2:5582:: with SMTP id v2mr5886964lfg.19.1556910791399;
 Fri, 03 May 2019 12:13:11 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.vpn.toke.dk.
 [2a00:7660:6da:10::2])
 by smtp.gmail.com with ESMTPSA id r3sm544255ljr.7.2019.05.03.12.13.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 12:13:10 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BDCAB1800E2; Fri,  3 May 2019 21:13:09 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>,
 Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <05CE7D6A-0A66-4540-A398-B5D6FC4EF06B@darbyshire-bryant.me.uk>
References: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
 <069B5A62-314A-4559-8D6C-C67A5D1FE75F@gmail.com>
 <05CE7D6A-0A66-4540-A398-B5D6FC4EF06B@darbyshire-bryant.me.uk>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 03 May 2019 21:13:09 +0200
Message-ID: <87h8abgxmi.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Possible conntrack lookup improvements
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

S2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQgPGtldmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3
cml0ZXM6Cgo+PiBPbiAzIE1heSAyMDE5LCBhdCAxNToxNiwgSm9uYXRoYW4gTW9ydG9uIDxjaHJv
bWF0aXg5OUBnbWFpbC5jb20+IHdyb3RlOgo+PiAKPj4+IE9uIDMgTWF5LCAyMDE5LCBhdCA0OjU1
IHBtLCBLZXZpbiBEYXJieXNoaXJlLUJyeWFudCA8a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUu
dWs+IHdyb3RlOgo+Pj4gCj4+PiBUd28gcGF0Y2hlcyBhdHRhY2hlZCAtIG9uZSBpcyBhIHNpbXBs
ZSB2YXJpYWJsZSBlbGltaW5hdGlvbiB3aXRoIG5vIGZ1bmN0aW9uYWwgY2hhbmdlLiAgVGhlIHNl
Y29uZCBjaGFuZ2VzL3NpbXBsaWZpZXMgdGhlIGNvbm50cmFjayB0dXBsZSBsb29rdXAgJiB1c2Fn
ZS4gIEnigJl2ZSBoYWQgYSBwbGF5IGFuZCBJIGRvbuKAmXQgdGhpbmsgSeKAmXZlIGJyb2tlbiBh
bnkgb2YgdGhlIGhvc3QgZmFpcm5lc3MgQlVUIGl0IGNvdWxkIGRvIHdpdGggc29tZSBtb3JlIHRl
c3RpbmcsIHRoYXTigJlzIHdoZXJlIHlvdSBjb21lIGlu4oCmIAo+PiAKPj4gTG9va3MgbGlrZSBz
b3VuZCBsb2dpYywgYXMgbG9uZyBhcyBpdCBkb2VzIGFjdHVhbGx5IHdvcmsuICBJdCBjb3VsZCBi
ZSBhIHVzZWZ1bCBzcGVlZHVwIGZvciB0aG9zZSBzbWFsbCBDUEUgZGV2aWNlcyB3aGljaCBuZWVk
IE5BVCBhbmQgaG9zdC1mYWlybmVzcyB3b3JraW5nLgo+Cj4gSXTigJlzIGludGVyZXN0aW5nIHlv
dSBicmluZyB0aGF0IHVwIC0gYXJlIHdlIHN1cmUgdGhhdCBpbmdyZXNzIGhvc3QgTkFUCj4gZmFp
cm5lc3Mgd29ya3MgaW4gdGhlIHVwc3RyZWFtIGtlcm5lbCB2ZXJzaW9uIG9mIENBS0UgYW55d2F5
PyAgSeKAmW0KPiBsb29raW5nIGF0IGNha2VfdXBkYXRlX2Zsb3drZXlzKOKApikgYW5kIHRoaW5r
aW5nIGhhbGYgb2YgaXQgaXMgbWlzc2luZz8KCk5vLCBpdCdzIGp1c3QgbW92ZWQgaW50byBuZl9j
b25udHJhY2tfZ2V0X3R1cGxlX3NrYigpOyB0aGlzIHdhcyBwYXJ0IG9mCnRoZSB3b3JrIHdlIGRp
ZCB0byBlbnN1cmUgc2NoX2Nha2UgY291bGQgbG9hZCB3aXRob3V0IGEgZGVwZW5kZW5jeSBvbgp0
aGUgY29ubnRyYWNrIG1vZHVsZS4uLgoKSXQgZG9lcyBjYXJyeSBvdmVyIHRoZSAnbmZfY3RfdHVw
bGUoY3QsICFoYXNoLT50dXBsZS5kc3QuZGlyKTsnIGFuZCB0aGUKc3Vic2VxdWVudCByZXZlcnNp
b24sIHRob3VnaCwgYnV0IEkgdGhpbmsgdGhlIGxvZ2ljIGZpdHMgd2hhdCdzIGluIHRoZQpvdXQt
b2YtdHJlZSB2ZXJzaW9uPwoKLVRva2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

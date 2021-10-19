Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A3E432BE9
	for <lists+cake@lfdr.de>; Tue, 19 Oct 2021 04:46:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0B9E03CB41;
	Mon, 18 Oct 2021 22:45:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634611559;
	bh=3ATIKffOPykxX3OMgHyKwhfU07BnE/Hwp6AVP5wPVfY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o6iiMyGF55JTWkzMPZT/6EF98z9BXi/PFhhMgNVsGFeAZQa37/xH0DrW1vPaDN1NW
	 32IJNDMKyfETyX5PN6eDWmal7ZM+zYmwpPeLCwBqmTI8MqP8qWoagGg4lJzwaUlTnD
	 kPPRU+cNwADHtxAy8cwTYEfFK2ae/Pjpc/1BtYAZVOsL0X2rZOjeMnJcyjmO8Xs658
	 BGIq66DmhWcRjwPzvOwuCDRF+iw0vea1szJOwjzlLpjmajf8amkPu8/LV7DVNBwxGG
	 6TwP7nK4vn4RMsD7PIb6F82AFbDsl/lvYJdQrEcdbtkNfCaV3VEBJa0qrH/inX7GCI
	 w9BJOhYvZwp1A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AEF1C3CB38;
 Mon, 18 Oct 2021 22:45:57 -0400 (EDT)
Received: by mail-io1-xd2f.google.com with SMTP id i189so18724557ioa.1;
 Mon, 18 Oct 2021 19:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mlGKnyUp0HcbnMVcKx+WuYnN4ffAalvniGkYiejf4zE=;
 b=a+jeu/THOMryTLVU3grWD75lDTIoMHnFfsiJpGWYF9gMHDS+jokWZRkzMFwSTKrv1h
 zK4Vl86Ec81xGSkjjHhUpyOhAMMfD6mcT4rTDHpuHhRIuIwjIWNjcxgyr8mpjSmFZUki
 9WwINPYCHxBELQWhEHOVCCZ6D6HzGVumgont3ggdOiPjm/5I4jYkLthkoClVNgXH1vxN
 f8ydlHh9NkGrfzNwWZ76youkVLnM0Sj1ziJfob3NVDbTAjfLFAXMcz/uw9cyBa2T7G5X
 slektHtSRroZxqKZ0emTNN+sGVWqemGTz/bgds6PA6esa02bxdOFNryoDXHvEbOWML67
 +rqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mlGKnyUp0HcbnMVcKx+WuYnN4ffAalvniGkYiejf4zE=;
 b=aGr8BUAptrEpL5L5PZdva4txRKlKeka/3EpbiJfXD5peClhMgUhlBj5NgleXVX3Lrr
 oqGBS3c2N1hEvA5uwVFOlBlFhcskSczagy8a4tp4Gt58oAcW+RonoHBjX2FHoB2xED1i
 qfiNFRHbqceePLE02KN2iDaLeTCroZR+kb9v3KEmAGtvTqLxP3O1kpF9RFD+t83nAiQ0
 /ZbIr1I61VEnluf1xIIpx3t/z4SCmrQCOUpt7m8LTr25FXkZTHpWsRK1U3b75soPgnI8
 zMPTi8Uruz66fjw1J9rIlaoaINdrpK0QYA6EliRFvqw1bspZdigRHb8e9jX9d/SkA8U5
 dFRg==
X-Gm-Message-State: AOAM533BLxWO7wRdmVDYgc07Ore+zQQs2vFGVrWQttRuBra7bg58n3zi
 oWkmq9+VfnKMKjG4x2w9JscowU+sZS+5GM3Pwcw=
X-Google-Smtp-Source: ABdhPJy1uLTBHtVCFPVg4nV0QTjgsG1T93ECC8ya1LuFemoz3QoPntOE33ru3l4Esa5CiuXeWq8z90E/9qcR7EHjsLU=
X-Received: by 2002:a6b:cd87:: with SMTP id d129mr16433233iog.28.1634611556989; 
 Mon, 18 Oct 2021 19:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
 <878ryqjxke.fsf@toke.dk>
In-Reply-To: <878ryqjxke.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 18 Oct 2021 19:45:44 -0700
Message-ID: <CAA93jw52-6oaOgDCS7m8+zF0VDFDEgADat=So7zWPTwNrR988w@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

bXkgbW9yZSBzcGVjaWZpYyBxdWVzdGlvbiB3YXMgZ3JvLiBPbiBncm8gYXNzZW1ibHkgaXMgdGhl
IGRzY3AvZWNuCmhlYWRlciBleGFtaW5lZD8KCk9uIE1vbiwgT2N0IDE4LCAyMDIxIGF0IDY6MDIg
QU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+IHdyb3RlOgo+Cj4gRGF2
ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cj4KPiA+IEFuIG9wZW4gcXVlc3Rp
b24gZm9yIG1lOgo+ID4KPiA+IFdoYXQgaGFwcGVucyB3aGVuIGEgR1NPIHBhY2tldCBpcyBtYXJr
ZWQ/IERvIGFsbCB0aGUgcGFja2V0cyBnZXQgdGhlCj4gPiBtYXJraW5nLCBvciBqdXN0IHRoZSBm
aXJzdD8KPgo+IFdoZW4gc2VnbWVudGluZyBhIEdTTyBwYWNrZXQsIHRoZSBJUCBoZWFkZXIgaXMg
Y29waWVkIHRvIGFsbCBzZWdtZW50cy4KPiBUaGUgY29kZSBoYXMgZ3Jvd24gcXVpdGUgY29tcGxl
eCBvdmVyIHRoZSB5ZWFycywgYnV0IGl0J3MgZWFzaWVyIHRvIHNlZQo+IGluIHRoZSBvcmlnaW5h
bCBzdWJtaXNzaW9uIGZyb20gMjAwNjoKPgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDA2MDYyMjA4MTQwMC5HQzIyNjcxQGdvbmRvci5hcGFuYS5vcmcuYXUvCj4KPiBXaGljaCBtZWFu
cyBhbGwgcGFja2V0cyBpbiBhIEdTTyBzZWdtZW50IHdpbGwgZW5kIHVwIG1hcmtlZCBvbiB0aGUK
PiB3aXJlLi4uCj4KPiAtVG9rZQoKCgotLSAKRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBo
dHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3CgpEYXZlIFTDpGh0IENF
TywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BD36C14B
	for <lists+cake@lfdr.de>; Wed, 17 Jul 2019 21:05:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6C5393CB44;
	Wed, 17 Jul 2019 15:05:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1563390307;
	bh=aroeLPL9617bi3oOA01xfyz9gjGtudWPUvCtpmg6x90=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M51XGOguqZdl8HlZrgqbpsBaEYjXj5Rg2HjCkNq/1dEE+NyPc0I5o8PGlsn1GTiRs
	 npQ8a3tUcOVJyyqF/TlRpczXBdM5jX1ZzUrlqPaT+x/rknvAEbUCa/14IJxLzLcmE3
	 CDkWfriEfOrMfrkKWjPa7DeRW8L/FrwLZeNjyqcTjVtygVY6axI/fEumBrw+ENZRHZ
	 0GvZEwsdASgK/RYslbcTbA43LUheZ2TV1ir4JI0H+McDqwFIGTVRlFGu/OIWHN8K6s
	 yDFNNkmQbOXPlzNqpKBm2W9c6k6I8jZQU6F/t46aUvN2HMUeJi4/E0cHsj5//6ZnuX
	 Njs9acb9Dv6nQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7343C3CB36;
 Wed, 17 Jul 2019 15:05:05 -0400 (EDT)
Received: by mail-io1-xd31.google.com with SMTP id f4so47498013ioh.6;
 Wed, 17 Jul 2019 12:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hKjAshYb+AmvmjaXHMLu/Ik4233wehgXK61YB/nmvdA=;
 b=IFYCfzZkXPL3AmUjfLtvkVDadWXZssG9CLG+xU2rONUk5ZdRJsNDG+zUgpevE2TAAn
 RYQavxLg5bD4crRkRqzy5FrbJam0ml0frNaunTtQTcAW84/tvHxLj7t60jZsPTEqZHWR
 58SLRo0ZLGZCeoXHtQp6AYAUVehX2mwJfvd1Fk6U754XLgdnHlncNAzhFdIS8rMVIy8t
 tLHmJt8jlZxeGHMmfH7WYYe1f1V3vcxTiNLJdz92+eKSDYOFfCDyYpgbCY4m6OM5dMgN
 s8jAXTcp40HwrNDX5cgxLUOAtg5MKrBn/rKXfTcoaKvrn3mkQTHfX+VzKe+liCR/LkAu
 F+rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hKjAshYb+AmvmjaXHMLu/Ik4233wehgXK61YB/nmvdA=;
 b=uVtufmVIrKAOmL29YmqtNpMWrHF4I6+K3Df+zYMly9CrATfnkA5qa/GQMSixgYSsNB
 KxhrBg6i5YGumj9dza+nSDwhxCj9kuSVR3nZkPavR7IKhY1MuYJaJ6qp6UPUGDwzaMWo
 aC1mAVJv1c7SJDkNH+6w08QSeNgfrzwEUnAr+BjDfYkGT571Ha7oVZFOW+JmaIkFI9d8
 qXEdAFR800Ibnl684IMLKvG5JjQFeXXPOamOANkZyKeqaBnQ+IIIEJtBwgQm7CKtiJUl
 k5xY7/Q4E1dFdNlypLn22F7uo1Jn6ym+rqoyP8rNCsDUgpEb/1HAgGivhlck2WmOtjB7
 fvdw==
X-Gm-Message-State: APjAAAWFBW7INZTP/xLfEce2tQ7DgstNKbG+eXWWbu+Sp4qQ1BTDnyq8
 UU8xvKbGrOVuWVt1i0pE8mK1CupqkAyd6LUp/xS/XDf+
X-Google-Smtp-Source: APXvYqwEc4gbYSL1JA9CScyGjg6gs7PyR332T+cyVIe5PbKFkRthn7P9K7/w4XmcQJodN9W98F/mL9kbBto3yUJNfJs=
X-Received: by 2002:a5e:8b43:: with SMTP id z3mr35971868iom.287.1563390304595; 
 Wed, 17 Jul 2019 12:05:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7yn2B6LfUP_Q_5cqqJfxMH0T3hSZiH4VMUYg=qSE33_A@mail.gmail.com>
 <201907171507.x6HF7u7o082245@gndrsh.dnsmgr.net>
In-Reply-To: <201907171507.x6HF7u7o082245@gndrsh.dnsmgr.net>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 17 Jul 2019 12:04:53 -0700
Message-ID: <CAA93jw6RjRKDJCpvZQOr0jPSv-=vtB7OaoDjMy5Ek__3=KzWNA@mail.gmail.com>
To: "Rodney W. Grimes" <4bone@gndrsh.dnsmgr.net>
Subject: Re: [Cake] [Ecn-sane] three new internet drafts regarding SCE
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
 ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

V2hpbGUgSSdtIGNhdGNoaW5nIHVwIG9uIGRyYWZ0cyBhbmQgZmlkZGxpbmcgd2l0aCB3aWZpLCBJ
IGNvdWxkbid0CmhlbHAgYnV0IG5vdGljZSB0aGlzIG9uZSwgd2hpY2ggYWRkcyBkZWxheSBzZW5z
aXRpdml0eSB0byBjdWJpYyBpbiB0aGUKY29udGV4dCBvZiA1Zy4KCmh0dHBzOi8vdG9vbHMuaWV0
Zi5vcmcvaHRtbC9kcmFmdC1qb2hhbnNzb24tY2MtZm9yLTRnLTVnLTAyCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK

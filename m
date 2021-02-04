Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C30A30E928
	for <lists+cake@lfdr.de>; Thu,  4 Feb 2021 02:13:39 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 66BCA3CB38;
	Wed,  3 Feb 2021 20:13:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1612401218;
	bh=XU65JjyhpdjZxoDttcuY2CXX3MbmgJzO4n5GHJ+HT6s=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AOP77eyYb0xB1vp+j0RbOQ0C1HndJzPLWM16TwLgrEBQcIttHv+H2NyUbVAP6TA2W
	 suAGDaSJHoraIvhNNl4usFcWcSQTT5yZrfoybQnU4wi7F0gnMKJZmIZQfvubUaTDqm
	 Zr6uRWoJXoxiYcsi6mlwsznBpsB5OLgnSSBaWALHES4BaycRdeheAEqxRjlK+7wN3q
	 SNUF+F8gSM5P8k+cJ0IVUVYotkwFflBinaPTV1DUGAzl9Z4Bs7EBG9uE+FMAmC+V/X
	 wqD35Vl5H8SV6vkm2mUct+gSaJ5AXQLaakowsxOOxtXA5ko6HS0q7jtLAUM4UKjw2C
	 9gjEmbMnhrchA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2BB213B29E
 for <cake@lists.bufferbloat.net>; Wed,  3 Feb 2021 20:13:36 -0500 (EST)
Received: by mail-wm1-x32d.google.com with SMTP id l12so1635802wmq.2
 for <cake@lists.bufferbloat.net>; Wed, 03 Feb 2021 17:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:from:autocrypt:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=dtTgaHr6KKaEAIYiOs/tFDxQRuubOPlX610S98Ig0oc=;
 b=DFuRTpphmq7uX6eKikmqdqo3Gim8R1QMbXTihvxXl2Z8UwCnJR1OZ9FihrauLxmU6Y
 nZhONF+38Vz/vwxAKkNpmSqF6VJ0/bDQbfkkdSkxBkrWr8FqfQx9SK8BAhdv+rkwqYwQ
 0f4Ys0wUOZZ909JYxwfKpbZfmO7x64T79gRA0hRtDMFr3hyaHsEy/6c5/8B5FBCfzVyh
 AKM4DBn1LY8xWgGzBrEzRM8N19oKwhTAb0ri6e65SZ4QyBYfF14V7tEFLLYjMPcmcIvB
 A1Uz3avwqJa/nDFdKOwCVFK07B/sYc0IENs6eyFnPWngczIvzyx+4/cHfSkIjJBJ8knv
 BGkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:from:autocrypt:subject:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=dtTgaHr6KKaEAIYiOs/tFDxQRuubOPlX610S98Ig0oc=;
 b=pmh/CaSOhUrscj81G7C1DaglPpC7MWX+6oosSmq93le5xY9koBXCA7+JC3DjeYQn8b
 WN+RgJyFMlB3i8dF5XU4yYOliPtg1AWaIPTks5WCVnSlVoosJfFd3XGFzg/rTdSDZx/P
 QPdymtrClQyeQ79hg+ZeRr1P3fNSVW3H+KwPemp85XxFFXVarHj0JZLtU8kQgenmJypu
 ZBl9aOw7rbrNc0V/XQddshm335wUFYrmAwPrTd4kwItZQ55lKRTYBQ46KPDUUrpk6R0N
 WTnfPdbeGHeSU6pWASjUjSA6DxDy8r+dZBVThZXPolFH9Wr0EvJOo8At2A1Ve2TZ1pGe
 iMkA==
X-Gm-Message-State: AOAM533sbhtkMgI07GkjZGgiL6byqXtkU+ctGKhKqnTOkSwpqozj8dpw
 BB5iYG2nxB64E+vo6qG7Hdg8RtDfwwY=
X-Google-Smtp-Source: ABdhPJwphvTMffSV5IQcXsxcZkmJheSTge0mU2eL2l4neKn/BB9Xn96RSn4WAnQlF5sIBQZz660WzA==
X-Received: by 2002:a7b:c04c:: with SMTP id u12mr5256027wmc.185.1612401215223; 
 Wed, 03 Feb 2021 17:13:35 -0800 (PST)
Received: from [192.168.1.116] (cpe90-146-174-71.liwest.at. [90.146.174.71])
 by smtp.gmail.com with ESMTPSA id r25sm6403523wrr.64.2021.02.03.17.13.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Feb 2021 17:13:34 -0800 (PST)
To: David Lang <david@lang.hm>, cake@lists.bufferbloat.net
References: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
From: xnor <xnoreq@gmail.com>
Autocrypt: addr=xnoreq@gmail.com; keydata=
 xjMEX8GJihYJKwYBBAHaRw8BAQdAhiXbV9uWXaRTLr0gtbgOSXKiajCO+q+GZ/Lanh1SeafN
 F3hub3IgPHhub3JlcUBnbWFpbC5jb20+wpEEExYIADkWIQSIwFsdmuvVRn8KTpQPFnChazvz
 EAUCX8GJigUJAeEzgAIbAwULCQgHAgYVCAkKCwIFFgIDAQAACgkQDxZwoWs78xAqlgEAlzmt
 RBZWsvAir0IcwvcgSZOCKzt8onO8yoMi7qq/3M4A+wWj3lX9lx0WEBZtPEJCw+WZ7+w7c6wz
 4//han+cxsIEzjgEX8GJihIKKwYBBAGXVQEFAQEHQCRV3YyeTk35SbVbzBMDTPIc4L+Nuhkh
 tOIU4ZlXy3QoAwEIB8J+BBgWCAAmFiEEiMBbHZrr1UZ/Ck6UDxZwoWs78xAFAl/BiYoFCQHh
 M4ACGwwACgkQDxZwoWs78xBjpAD+LZuOaaaPgqJx/u/PxUviEjFr76XwFiwnXFSUQP9RcpIB
 AJEpdVrCl6fNm+QrUcjfAe7VN1IrCgeEpNA6fmz5kXEK
Message-ID: <5d192438-aaec-fe04-88dc-a9fac1abc698@gmail.com>
Date: Thu, 4 Feb 2021 02:11:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
Subject: Re: [Cake] bringing up a new router/connection
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG8gRGF2aWQsCgpjb25uZWN0IHRvIHRoZSByb3V0ZXIgb3ZlciBzc2ggYW5kIHJ1biB0b3Au
IFdoYXQncyB0aGUgdG9wIGxvYWQgbGluZShzKSAKd2l0aCB1c3IsIHN5cywgLi4uIHNvZnRpcnEg
bG9vayBsaWtlIGR1cmluZyBhIGRvd25sb2FkIHNwZWVkdGVzdD8KCkFueXdheSwgYWNjb3JkaW5n
IHRvIHNvbWUgcmV2aWV3IGl0IHNob3VsZCBiZSBhYmxlIHRvIHJvdXRlIGFib3V0IAo3MDAtODAw
IE1icHMgV0FOLT5MQU4sIHdpdGggdGhlIG9yaWdpbmFsIGZpcm13YXJlLiBUaGlzIGlzIHByb2Jh
Ymx5IG9ubHkgCnBvc3NpYmxlIHdpdGggaGFyZHdhcmUgb2ZmbG9hZGluZy4KRXZlbiBpZiB0aGVy
ZSB3YXMgbm8gYm90dGxlbmVjayBJIHdvdWxkbid0IGV4cGVjdCBnZXR0aW5nIGV2ZW4gcmVtb3Rl
bHkgCmNsb3NlIHRvIHRoYXQgd2l0aCBjYWtlIGFsc28gb24gaW5ncmVzcy4KClRoZSBvbmx5IGRl
dmljZSBJIGhhdmUgdG8gY29tcGFyZSB0byB5b3VycyBpcyBhIHNtYWxsZXIgVFAtTGluayByb3V0
ZXIgCndpdGggdGhlIHNhbWUgcm91dGluZyBwZXJmb3JtYW5jZSBidXQgYSBRQ0E5NTYzICg3NTAg
TUh6IHNpbmdsZSBjb3JlKSAKYW5kIEkgd291bGRuJ3QgdXNlIHRoYXQgZm9yIGFueXRoaW5nIGFi
b3ZlIDEwMCBNYnBzLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

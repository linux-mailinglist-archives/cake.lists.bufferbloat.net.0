Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0A03080E3
	for <lists+cake@lfdr.de>; Thu, 28 Jan 2021 23:02:27 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0BD2F3CB43;
	Thu, 28 Jan 2021 17:02:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1611871346;
	bh=PfYXfyy5vSUtTppQbqt4/5YG7n1f79JztzWBOKnInkI=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k50pm0lBvgHU6uA2JA3dHQDavOCPjYhwzIWsdlVz2HP/X5aSV///SzDk5Gg+eLlb+
	 OL6/AIwsnFh/PrAcFu1Utb1J1rFvptbEyY4Tt7dw8lmalu4aBJqshbuundJlo7JZse
	 7cwm0Zq2SkGwsjUFqR9s092mmSafcqoMMStYbED2HDZa60QOv7EFUHlVVJK6wwwyB+
	 2VIlfycDd5qVjtmZcy/U0QxbQaf+uTGBE4bKqgLgeCoBeT+jLkFZRiOXytBS+bP2u0
	 YMK4stfAPgR9rSSOJ4i3hN9JQIEErPe/uCPz/ReW2pW9/0tReXJQ2bvfdgu+M9jGIN
	 lLEYyZ09aeNEQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 791643B29E
 for <cake@lists.bufferbloat.net>; Thu, 28 Jan 2021 17:02:25 -0500 (EST)
Received: by mail-wm1-x336.google.com with SMTP id j18so5443399wmi.3
 for <cake@lists.bufferbloat.net>; Thu, 28 Jan 2021 14:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:from:autocrypt:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=gkI2FdoNeuIMgMxKhfnSgxdoIn6g5RXn8BBg1x6W5bc=;
 b=qXvoQ843EWdnvYsocRe3JIzE6BBLcKTRccJTbhfFlwTgwoNTyMAeNQutnJ/hSgyMZV
 XJeIT5/ChqAdzlYdFLZG7S7z63XY0hWo376EZxbOkjWTkFkFHhBRDhxewKhCbKkMVSl5
 Jbv8qBRRKCo0xIMfdTiwxmmd3uBAu6bKE4qnBYwP+6ZnMKFkI5G8Ik/2/gjKDn/YQLsj
 JLshCWZrUmwHl9WUvXiQ3y0v0khCCVEX8UVVj07VlcK2L7l1c/vddDUjljcsO+s4KXrB
 b/vQJ+xkfwfFFjVhp3ebLqEHXQPUxJkRuaZHBgKVNMnEeVCFwhBPCLN2h6cutn4t+FZL
 RK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:from:autocrypt:subject:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=gkI2FdoNeuIMgMxKhfnSgxdoIn6g5RXn8BBg1x6W5bc=;
 b=c2bjduHYChpaEgihf5PG0fiDdwW/SVOGr7vUlYOW3eHFSZzu75UwMWptJUvi07arB0
 ov1sgrSckp7mUtQEgJkOftnOLGcZa5PY3SAtyXH4uTxFttz3wyvS/h1LYi9CAfdF1tlQ
 xX21oJvEpD3Da95LMDITnwuYYldYYI6gIQ6ayMYqBzFbBh/mZ+6R3TZHPaQje+hcK1jK
 CfJJ1RnoNath5FyEzGH5OxQu2YFv2Q/HTOoPYc5pacQdZkkdxiVjZGwnihhrI0w6xh/4
 SIbVNsp/xBOVSOgrYP87F5TToh4GURIgv6Yg5SKNslX1vEUXYn/HcuHQfNhjf5BR2q4p
 AnNQ==
X-Gm-Message-State: AOAM533H12ryqcSuYImnUqCbytGthYrGuRmyzYiYt9/u8nR0nnLcu/bx
 ZOX03oFpudiKNUvsvteyydKQFW7hDfQ=
X-Google-Smtp-Source: ABdhPJxvnDDUQvOorJMNpeA4vIRPvXUG6hlzH+GWpG4DFTC0AyTf7ahADHB6QkFNQ68mOnUIeAkeIQ==
X-Received: by 2002:a7b:cc83:: with SMTP id p3mr1112833wma.10.1611871344586;
 Thu, 28 Jan 2021 14:02:24 -0800 (PST)
Received: from [192.168.1.116] (cpe90-146-174-71.liwest.at. [90.146.174.71])
 by smtp.gmail.com with ESMTPSA id z130sm6819070wmb.33.2021.01.28.14.02.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Jan 2021 14:02:24 -0800 (PST)
To: jmarks2@gmail.com, Cake List <cake@lists.bufferbloat.net>
References: <CAA93jw56nco3tMXAjumXwobwCqXi3udFZ2Rtmo4z_pBirjG-CA@mail.gmail.com>
 <C8807F75-D68B-4B98-BC5F-74A7618C5C0C@gmail.com>
 <556d6202-1719-297e-b950-38f7a66d04dd@gmail.com>
 <00ba01d6f5a1$450d07f0$cf2717d0$@gmail.com>
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
Message-ID: <48924c59-ec54-696f-d20e-4768a5d16b49@gmail.com>
Date: Thu, 28 Jan 2021 23:00:28 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <00ba01d6f5a1$450d07f0$cf2717d0$@gmail.com>
Subject: Re: [Cake] Trouble getting decent performance with CAKE
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

ID4gVGhhbmsgeW91IGZvciBmb2xsb3dpbmcgdXAuCiA+CiA+IEkgdGhpbmsgdGhlIGJlc3Qgd2F5
IHRvIGFuc3dlciB5b3VyIHF1ZXN0aW9ucyBpcyB0byBwb2ludCB0byB0aGUgc2l0ZSAKd2hlcmUg
dGhlIGNvZGUgZm9yIENBS0UgZm9yIHRoZSBVYmlxdWl0aSBFZGdlcm91dGVyLCBhbmQgdGhlIEVk
Z2VPUyAKc3lzdGVtLCBpcyBhdmFpbGFibGUsIGFsb25nIHdpdGggaW5zdHJ1Y3Rpb25zIG9uIGhv
dyB0byBpbnN0YWxsIGFuZCAKaW1wbGVtZW50IGFzIGEgc3RpY2t5IGF0IHRoZSB0b3AuCiA+CiA+
IFlvdSB3aWxsIGFsc28gc2VlIHRoYXQgdGhlcmUgYXJlIDI5IHBhZ2VzIG9mIGRpc2N1c3Npb24g
d2l0aCB0aGUgCmRldmVsb3BlciwgZGF0aW5nIGZyb20gNCB5ZWFycyBhZ28sIHRoZSBsYXRlc3Qg
ZnJvbSB0aGlzIHdlZWsuIEluIApnZW5lcmFsLCB0aGlzIHBvcnQgYW5kIHRoZSBhc3NvY2lhdGVk
IGRpcmVjdGlvbnMgb24gaW5zdGFsbGF0aW9uIHNjcmlwdHMgCmhhdmUgYmVlbiB3ZWxsIGFjY2Vw
dGVkLgogPgogPiAKaHR0cHM6Ly9jb21tdW5pdHkudWkuY29tL3F1ZXN0aW9ucy9DYWtlLWFuZC1G
US1QSUUtY29tcGlsZWQtZm9yLXRoZS1FZGdlUm91dGVyLWRldmljZXMvZmMxZmYyN2MtZjMyMS00
MzQ0LTg3MzctZmNjNzU1Y2FlOGEyP3BhZ2U9MQogPgogPiBJIHdvdWxkIGJlIHZlcnkgaW50ZXJl
c3RlZCB0byBsZWFybiB5b3VyIHRob3VnaHRzLgogPiBNYW55IHRoYW5rcy4KCkkgc2VlIHRoYXQg
dWJpcXVpdGkgaGFzIHRoZWlyIG93biBjb25maWd1cmF0aW9uIG1vZGUvdXRpbGl0eSBbMV0gYW5k
IAoic2V0IGludGVyZmFjZXMgLi4iIGlzIG9uZSBvZiB0aGUgYWNjZXB0ZWQgY29uZmlndXJhdGlv
biBjb21tYW5kcy4KV2hhdCBpdCBkb2VzIHVuZGVyIHRoZSBob29kIGlzIGEgbWF0dGVyIG9mIHJl
YWRpbmcgdGhlIG1hbnVhbCBvciBldmVuIApsb29raW5nIGF0IHRoZSBjb2RlLCBidXQgSSBndWVz
cyBpdCByZXN1bHRzIGluIHJ1bm5pbmcgcHJldHR5IG11Y2ggdGhlIApzYW1lIHRjIGNvbW1hbmRz
IHRoYXQgd2VyZSBwb3N0ZWQgYmVmb3JlLgoKSWYgdGhlIGltcSBkZXZpY2Ugc3RheXMgdW51c2Vk
IHRoZW4geW91IGNhbiBzaW1wbHkgaWdub3JlIGl0LCBvciAKYmxhY2tsaXN0IHRoZSBtb2R1bGUg
dG8gbm90IGV2ZW4gbG9hZCBpdCBvbiBib290LiAoUGxlYXNlIGRvbid0IGFzayBtZSAKaG93IHRv
IGRvIHRoaXMgb24gRWRnZU9TLikKClRoYXQgYXNpZGUsIEkgc3RpbGwgZG9uJ3QgdW5kZXJzdGFu
ZCB3aGF0IHlvdXIgaXNzdWUgaXMuCgoKWzFdIApodHRwczovL2hlbHAudWkuY29tL2hjL2VuLXVz
L2FydGljbGVzLzIwNDk2MDA5NC1FZGdlUm91dGVyLUNvbmZpZ3VyYXRpb24tYW5kLU9wZXJhdGlv
bmFsLU1vZGUKCgpQUzogUGxlYXNlIHNlbmQgeW91ciByZXNwb25zZXMgYWxzbyB0byB0aGUgbWFp
bGluZyBsaXN0LCB0aGFua3MuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 759E422D42E
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 05:13:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1243C3CB38;
	Fri, 24 Jul 2020 23:13:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595646806;
	bh=WSfbuQaVED/+LBW1ojBpqwtsLoNpc+1vyR0SPO+ebg4=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PwNDEe25Qltpw8G/tpNSfKTXOAkrMeNsUOy6NGw/8B/pu+niNMyJsJwxtkmp1OOin
	 xvEbP5AjHGfbG1ws7YSTcGMXcFtbu+kBTVgrennRnBCpFSDe3KgqdaIbtvMGQ1BJa2
	 11hENao7ySuv2968F8aD4lRb1M8g9myT22fFuO9iNqzYHMkX5lXeE5kBL8LF/0tV4C
	 Kw9a4N9nx0uLranLlI1Yoj/zSAz9Hj03nBZ4/1V2ICBDTxUh2ibeBaitVDLaaT93SF
	 SWhi8i6I+Wb3XYeRFLCiQhhug4Ni/ETG3E/I7o8J4E7PgsVFtRPxcoN1Z/5pFeNZPw
	 klRHsjGt5fjrg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 648333B2A4
 for <cake@lists.bufferbloat.net>; Fri, 24 Jul 2020 23:13:24 -0400 (EDT)
Received: by mail-lf1-x136.google.com with SMTP id i19so6208581lfj.8
 for <cake@lists.bufferbloat.net>; Fri, 24 Jul 2020 20:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=P0S+MHfHsdWgRbgC4sQpK2OM7vIJ9TACin2tcklMQNY=;
 b=tuQk1jKXIMFDAUtnfMCqPQFcCy4mOYJnWngFSFGRxaz52cKfCVf1DDA+oa0k13ylU4
 ylcNxitPP7lUTpzNhGldziXEmJC3eZCF5FuM7L2loWz+Cvrs397G9JxET/KrcolYKj5A
 RC1RnLgsJ3qMfQvgjzfgi/s5TDaMaecP7eLb7gSKUk2QOD2tbNpdmhFJoxif1HNPX59t
 MUAtlfxOd3PC3tBmhxljthzqFSBfIqXw7I2R2xF9eDlWC7kULBP0FTZkcnewLd5iHv3Q
 mzFESaaSjNtcpBPxakQJY++A+BPuZ/P/T1TcUDoxKHYSdR0zQkSKFksD6qiFaQBmwtQ3
 PILg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=P0S+MHfHsdWgRbgC4sQpK2OM7vIJ9TACin2tcklMQNY=;
 b=cvMsshcT8zF/LTIzY5DHLsbuM7Qc8DR5me+13Fs3PtpA6xyhk0843DjCtRRmK+wrOh
 3qji2y70+r3pDPodl8vP3Hb0lNyu+xUUsRS26diN99/X3Mf+pmj77PJj4W/y/T1Inb2k
 cokThjBQnAehZL+baAWcrdQIZZwrTwXtszpyiQmCYdS3ArH/vpF0yf63UCK32kLq5jpA
 euPsikDS+pb7fkNLGWCHjjDNEypSVtReBzJmVjnfoemzfxYvNAoghEdjTfrsAiKUgLWs
 cgep+T6XJw+bvIE3haTvfVDV8qJrEZ2vAbZit474EcQF+cBIVrGB67A279vZ3bylmyXy
 7VVA==
X-Gm-Message-State: AOAM530CSc5Iiv9pw2aroKSE3nsqKVS5yEaH8SkZKiBFiePe68GVn6ou
 SLvrZzyHpd2+98PCfgdSBrY=
X-Google-Smtp-Source: ABdhPJxuyOsaODkYZEY/vlodANcQiE1hMzvlxz1U/F6DOpImC5PyS54D6GvahmgRZ4QKZIsO2S8nmw==
X-Received: by 2002:a05:6512:6d6:: with SMTP id
 u22mr6372638lff.13.1595646802514; 
 Fri, 24 Jul 2020 20:13:22 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-252-162-nat-p.elisa-mobile.fi.
 [83.245.252.162])
 by smtp.gmail.com with ESMTPSA id m6sm663344ljc.134.2020.07.24.20.13.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jul 2020 20:13:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.6\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
Date: Sat, 25 Jul 2020 06:13:20 +0300
Message-Id: <1904547A-DC0A-497F-AB7C-624733E2F60A@gmail.com>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
To: Justin Kilpatrick <justin@althea.net>
X-Mailer: Apple Mail (2.3445.9.6)
Subject: Re: [Cake] diffserv3 vs diffserv4
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyNCBKdWwsIDIwMjAsIGF0IDY6NTYgcG0sIEp1c3RpbiBLaWxwYXRyaWNrIDxqdXN0aW5A
YWx0aGVhLm5ldD4gd3JvdGU6Cj4gCj4gInNxbS1zY3JpcHRzIHVzZWQgMyB0aWVycyBvZiBwcmlv
cml0eSBwcmV0dHkgc3VjY2Vzc2Z1bGx5IGFzIGRvZXMgZnJlZS5mci4gLSBkZS1wcmlvcml0aXph
dGlvbiBzZWVtcyBhIGdvb2QgaWRlYSwgcHJpb3JpdGl6YXRpb24gbm90IHNvIG11Y2guIgo+IAo+
IFRoaXMgaXMgdGhlIGJlc3QgY29tbWVudCBvbiB3aHkgZGlmZnNlcnYzIGlzIHRoZSBkZWZhdWx0
IHRoYXQgSSBjb3VsZCBmaW5kIG9uIGJ1ZmZlcmJsb2F0Lm5ldC4gSSdtIGludGVyZXN0ZWQgaW4g
aGVhcmluZyBhYm91dCB3aGF0IGRhdGEgKGFuZWNkb3RlcyB3ZWxjb21lKSBsZWFkIHRvIHRoaXMg
Y29uY2x1c2lvbi4KCkluIENha2UsIERpZmZzZXJ2NCBtYXBzIGNvbmNlcHR1YWxseSAoYnV0IG5v
dCBpbiBkZXRhaWwpIHRvIHRoZSBmb3VyIHByaW9yaXR5IGJ1Y2tldHMgaW4gV2lmaSAtIEJLLCBC
RSwgVkksIFZPLiAgSW4gRGlmZnNlcnYzIHRoZSBWSSBidWNrZXQgaXMgZHJvcHBlZCwgYmVjYXVz
ZSBDYWtlJ3MgZmxvdyBpc29sYXRpb24gd2l0aGluIEJFIGlzIGFscmVhZHkgZ29vZCBlbm91Z2gg
dG8gZ2l2ZSBkZWNlbnQgdmlkZW8gc3RyZWFtaW5nIHBlcmZvcm1hbmNlLiAgVGhlIEJLIGFuZCBW
TyBidWNrZXRzIGFyZSBzdGlsbCB1c2VmdWwgdG8gZGVhbCB3aXRoIGNlcnRhaW4gc3BlY2lmaWMg
cHJvYmxlbXM7IEJLIGlzIHRoZSBwbGFjZSB0byBwdXQgInN3YXJtIiBwcm90b2NvbHMgd2hpY2gg
aW50ZW5kIHRvIGJlIHNjYXZlbmdlcnMgYnV0IHdoaWNoIGZsb3ctaXNvbGF0aW9uIHRlbmRzIHRv
IHByaW9yaXRpc2UsIGFuZCBWTyBpcyBmb3IgbGF0ZW5jeS1zZW5zaXRpdmUgcHJvdG9jb2xzIHdo
aWNoIHRoZSB1c2VyIHdhbnRzIHRvIHNwZWNpZmljYWxseSBwcm90ZWN0IGZyb20gcmFuZG9tIHRy
YWZmaWMgZmx1Y3R1YXRpb25zLgoKVGhpbmtpbmcgbW9yZSBicm9hZGx5LCBJIGJlbGlldmUgRGlm
ZnNlcnYgd291bGQgaGF2ZSBiZWVuIGZhciBtb3JlIHN1Y2Nlc3NmdWwgaWYgaXQgaGFkIHJlcGxh
Y2VkIFByZWNlZGVuY2UvVE9TIHdpdGggYSBzaW1wbGUgdHdvLWJpdCwgZm91ci13YXkgc2V0IG9m
IFBIQnM6CgowMDogSGlnaCBUaHJvdWdocHV0IC0gZXF1aXZhbGVudCB0byB0cmFkaXRpb25hbCBC
ZXN0IEVmZm9ydCBzZXJ2aWNlLgoKMDE6IEhpZ2ggUmVsaWFiaWxpdHkgLSAiRXZlcnkgUGFja2V0
J3MgU2FjcmVkIi4KCjEwOiBMb3cgQ29zdCAtIGEgc2NhdmVuZ2luZyBzZXJ2aWNlIGZvciBhbHRy
dWlzdGljIGFwcGxpY2F0aW9ucy4KCjExOiBMb3cgTGF0ZW5jeSAtIGZvciB0aGUgbWFueSBwcm90
b2NvbHMgdGhhdCBhcmUgc2Vuc2l0aXZlIHRvIGRlbGF5cyBtb3JlIHRoYW4gdGhyb3VnaHB1dC4K
Ckl0IG1heSBhbHNvIGhhdmUgYmVlbiByZWFzb25hYmxlIHRvIGluY2x1ZGUgYSBjb3VwbGUgb2Yg
ZXh0cmEgYml0cyBmb3IgdXNlcyBpbnRlcm5hbCB0byBhbiBBUywgb24gdGhlIHVuZGVyc3RhbmRp
bmcgdGhhdCB0aGUgYmFzaWMgdHdvIGJpdHMgd291bGQgYmUgcHJlc2VydmVkIGVuZC10by1lbmQg
YXMgYW4gaW5kaWNhdGlvbiBvZiBhcHBsaWNhdGlvbiBpbnRlbnQuCgpPZiB0aGUgYWJvdmUgZm91
ciBjbGFzc2VzLCBEaWZmc2VydjMgcHJvdmlkZXMgdGhyZWUgLSBvbWl0dGluZyBvbmx5IHRoZSBI
aWdoIFJlbGlhYmlsaXR5IGNsYXNzLiAgQnV0IHRoYXQgaXMgYSBjbGFzcyBtb3N0IHVzZWZ1bCB3
aXRoaW4gYSBkYXRhY2VudHJlLCB3aGVyZSBpdCBpcyBhY3R1YWxseSBwcmFjdGljYWwgdG8gaW1w
bGVtZW50IGEgbG9zc2xlc3MgYmFja3BsYW5lIHdpdGggYmFja3ByZXNzdXJlIHNpZ25hbHMgaW5z
dGVhZCBvZiBsb3NzLgoKV2hhdCB3ZSAqYWN0dWFsbHkqIGhhdmUgaXMgYSBzaXgtYml0IGZpZWxk
IHdpdGggaWxsLWRlZmluZWQgc2VtYW50aWNzLCB0aGF0IGlzIG5laXRoZXIgcHJlc2VydmVkIG5v
ciByZXNwZWN0ZWQgZW5kLXRvLWVuZCwgaXMgY29uc2VxdWVudGx5IGlnbm9yZWQgYnkgbW9zdCBh
cHBsaWNhdGlvbnMsIGFuZCBjb25zdW1lcyBhbGwgdGhlIHNwYWNlIGluIHRoZSBmb3JtZXIgVE9T
IGJ5dGUgdGhhdCBpcyBub3Qgc3BlY2lmaWNhbGx5IHNldCBhc2lkZSBmb3IgRUNOIChhIGZpZWxk
IHdoaWNoIGNvdWxkIHByb2ZpdGFibHkgaGF2ZSBiZWVuIGxhcmdlcikuICBJdCBpcyBhIHNlcmlv
dXMgcHJvYmxlbS4KCkltcGxlbWVudGF0aW9ucyBvZiBQSEJzIHN0aWxsIHRlbmQgdG8gdGhpbmsg
aW4gdGVybXMgb2YgYmFuZHdpZHRoIHJlc2VydmF0aW9uIChhIEJlbGwtaGVhZCBwYXJhZGlnbSkg
YW5kL29yIHN0cmljdCBwcmlvcml0eSAobGlrZSB0aGUgUHJlY2VkZW5jZSBzeXN0ZW0gd2hpY2gg
d2FzIGxpZnRlZCBkaXJlY3RseSBmcm9tIHRlbGVncmFwaHkgcHJhY3RpY2UpLiAgQm90aCBhcHBy
b2FjaGVzIGFyZSBpbmVmZmljaWVudCwgYW5kIGdvIGFsb25nIHdpdGggdGhlIG1pc2NvbmNlcHRp
b24gdGhhdCBpZiB3ZSBjYW4gbWVyZWx5IGNhdGVnb3Jpc2UgdHJhZmZpYyBvbiB0aGUgZmx5IGlu
dG8gYSBsYXJnZSBlbm91Z2ggbnVtYmVyIG9mIHBpZ2VvbmhvbGVzLCBzb21lIG1hZ2ljYWwgbWV0
aG9kIG9mIGRlYWxpbmcgd2l0aCB0aGUgcGlnZW9uaG9sZXMgd2lsbCBtYWtlIGl0c2VsZiBvYnZp
b3VzLiAgSG93ZXZlciwgYm90aCB0aGUgZWFzeSwgdW5pdmVyc2FsIG1ldGhvZCBvZiBjYXRlZ29y
aXNhdGlvbiBhbmQgdGhlIG1hZ2ljYWwgZGVsaXZlcnkgc3RyYXRlZ3kgaGF2ZSBmYWlsZWQgdG8g
bWF0ZXJpYWxpc2UuICBJdCByYXRoZXIgc3VnZ2VzdHMgdGhhdCB0aGV5J3JlIGRvaW5nIGl0IHdy
b25nLgoKU28gdGhhdCBpcyB3aHkgRGlmZnNlcnYzIGlzIHRoZSBkZWZhdWx0IGluIENha2UuICBJ
dCBvZmZlcnMgZXhwbGljaXQgImxvdyBjb3N0IiBhbmQgImxvdyBsYXRlbmN5IiBzZXJ2aWNlIGZv
ciBzdWl0YWJseSBtYXJrZWQgdHJhZmZpYywgYW5kIGZvciBldmVyeXRoaW5nIGVsc2UgdGhlIEJl
c3QgRWZmb3J0IHNlcnZpY2UgdXNlcyBmbG93IGFuZCBob3N0IGlzb2xhdGlvbiBzdHJhdGVnaWVz
IHRvIG1haW50YWluIGdvb2QgYmVoYXZpb3VyLiAgSXQgdXN1YWxseSB3b3JrcyB3ZWxsLgoKIC0g
Sm9uYXRoYW4gTW9ydG9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

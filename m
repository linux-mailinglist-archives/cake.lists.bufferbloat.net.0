Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F85B9E96A4
	for <lists+cake@lfdr.de>; Mon,  9 Dec 2024 14:26:26 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8668A3CB40;
	Mon,  9 Dec 2024 08:26:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1733750784;
	bh=Fqg+SYnpQmGXkvfuTstyWVUFZvHsgzreSSthSIHkFnc=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=KNVXniW0TFN8LaHYIk2JWm7UDthMgQSE7+XyVu8/d/6noz1+Kr2DbKpVxq1T5lwsH
	 dkYSNpUIG3s6IKQe3hyNc8ze7zte8sh+AuQ8rSda/vrQk36a0lhAVKXeZ8kgbJDTZA
	 kABylPGToFJZxCPe9SvTS7//ivu71MxiE7sHDzK5xZyMswPtG9OsDEHSvvJ6udcBw1
	 yEfhb0ghXYECE+vMoc4gccd+gTfDmPFeFZ2iO9NGRGUmuizvwkNgiIYWLcohhMnOmx
	 Dd0/14I3ebFCASVI4RraFWH4f6NjvCJxcaO+APSVrWf5NIazG4i6j/pt2UCv4j7+TV
	 vhtpE+Ti/1P8g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F2D2F3B29E
 for <cake@lists.bufferbloat.net>; Mon,  9 Dec 2024 08:26:22 -0500 (EST)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-5d41848901bso358253a12.0
 for <cake@lists.bufferbloat.net>; Mon, 09 Dec 2024 05:26:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1733750782; x=1734355582;
 darn=lists.bufferbloat.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UyOKraohbpCbJjgoD+Q4ojxiEjD3M3oqArgjS6aAPB0=;
 b=IvPjYIrxNC2naTuJE59y3dgo7S589CgcEMxiiuE1EpqTJbpVM8fiYIjfYE4YUMf7fR
 mTzry8F4kkR8yarvl4h6GUIr7igNo89qcELM1dfxQfJS1WqTj3YKlUpz2/yx4mS01rXs
 PzVFDhwuevfrSKRIIO+pJfBnVCeFeKs6JTM7+U3nCvCMHOMr30W3IffvQoEE4vyojcxE
 Dgs83ANzYANGG8t5bPoXaHslNrvNRcyBia3RfZRb7pBix6grd4y5OeS1ygsXKwVQ0/bE
 iBfzOnr2/ffF0guiF6smKoEjd1a/HHjQ3Y7MEF6DgEFIaCRV69yc9ucjuwUWpwtvtXRq
 SG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733750782; x=1734355582;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UyOKraohbpCbJjgoD+Q4ojxiEjD3M3oqArgjS6aAPB0=;
 b=PQ97FLKaaI88uV0ibn8IFN+OLE7vWVwcxNBlbBxx7SwpvSDW/8egVMevHfUIxCobcR
 fT2R98buyDtZYfhFFQlcDFo9J5kKGjwpt9a/jdPUnI0Hb7XtZmWU3AFPL7+/NN1TayF9
 kgIZVu91pEQ0wYOT8BYUUA3odnh+rOx+a7dAuh7CNuU3G9np6yUQdSoMxOfGVp0KlTZr
 N8PeAam4Ppj+p6zrGklLNe5dSxEykdQJb53xSB6bAU1Lom1sGWcw1BAQbTMww/u5qA/Y
 kxw9wfvy7SWrg1UkuB9uZLMGyuXW2HfHpxMFPjsLEFNmfR+XzkJ3Zo3IomyO/loxknXU
 ByWQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlbCbZ/PvnvQV5V3e/7qK4bhNcJLMwT6GV/PGq/gcvBKUjVe2Kqw8Bie+glgc2I5P3YLET@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzD3Mz61u+0+jExCm5PEGOCnoYXugN6R7WK9xhu3WxWBwsFGl1L
 UfS2Pn3t+BUAAo7ybqQI8pWTZwS2vtwIyOD0PwYejB2KWIWBQ7W9xyZgm+3EuPwOho6OG88Et2v
 TD2BHCkJ/obKNT2WhNXopQ+M+KzU9AZorIDQ+
X-Gm-Gg: ASbGncvymy0+w8sZHP4hTihA5qvMLqtcr0hZF05R9n8nhe1Jaw9QJ8luPB4PIaCa5ZL
 jYTUH7yNfRKpTbWG+m5aItWwYbRCRzA==
X-Google-Smtp-Source: AGHT+IGrteuKL+cXgGPqeJvWmTXfuM/VQrXx0WWPWPLPZQgNKio6EXWsneFfhIIwWD5lb1FbwWQAnWJJzUYPZ/q5KFo=
X-Received: by 2002:a05:6402:3216:b0:5d3:cd9a:d05e with SMTP id
 4fb4d7f45d1cf-5d3cd9adc64mr11993753a12.9.1733750781720; Mon, 09 Dec 2024
 05:26:21 -0800 (PST)
MIME-Version: 1.0
References: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
In-Reply-To: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
Date: Mon, 9 Dec 2024 14:26:10 +0100
Message-ID: <CANn89iJg=NBG4ubKA77iRZ0zxLk2isMRsC3tzJew4rBW3OO0kQ@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] [PATCH net-next] net_sched: sch_cake: Add drop reasons
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
From: Eric Dumazet via Cake <cake@lists.bufferbloat.net>
Reply-To: Eric Dumazet <edumazet@google.com>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Simon Horman <horms@kernel.org>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCBEZWMgOSwgMjAyNCBhdCAxOjAy4oCvUE0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gQWRkIHRocmVlIHFkaXNjLXNwZWNpZmljIGRy
b3AgcmVhc29ucyBmb3Igc2NoX2Nha2U6Cj4KPiAgMSkgU0tCX0RST1BfUkVBU09OX0NBS0VfQ09O
R0VTVEVECj4gICAgIFdoZW5ldmVyIGEgcGFja2V0IGlzIGRyb3BwZWQgYnkgdGhlIENBS0UgQVFN
IGFsZ29yaXRobSBiZWNhdXNlCj4gICAgIGNvbmdlc3Rpb24gaXMgZGV0ZWN0ZWQuCj4KPiAgMikg
U0tCX0RST1BfUkVBU09OX0NBS0VfRkxPT0QKPiAgICAgV2hlbmV2ZXIgYSBwYWNrZXQgaXMgZHJv
cHBlZCBieSB0aGUgZmxvb2QgcHJvdGVjdGlvbiBwYXJ0IG9mIHRoZQo+ICAgICBDQUtFIEFRTSBh
bGdvcml0aG0gKEJMVUUpLgo+Cj4gIDMpIFNLQl9EUk9QX1JFQVNPTl9DQUtFX09WRVJMSU1JVAo+
ICAgICBXaGVuZXZlciB0aGUgdG90YWwgcXVldWUgbGltaXQgZm9yIGEgQ0FLRSBpbnN0YW5jZSBp
cyBleGNlZWRlZCBhbmQgYQo+ICAgICBwYWNrZXQgaXMgZHJvcHBlZCB0byBtYWtlIHJvb20uCj4K
PiBBbHNvIHVzZSB0aGUgZXhpc3RpbmcgU0tCX0RST1BfUkVBU09OX1FVRVVFX1BVUkdFIGluIGNh
a2VfY2xlYXJfdGluKCkuCj4KPiBSZWFzb25zIHNob3cgdXAgYXM6Cj4KPiBwZXJmIHJlY29yZCAt
YSAtZSBza2I6a2ZyZWVfc2tiIHNsZWVwIDE7IHBlcmYgc2NyaXB0Cj4KPiAgICAgICAgICAgaXBl
cmYzICAgICA2NjUgWzAwNV0gICA4NDguNjU2OTY0OiBza2I6a2ZyZWVfc2tiOiBza2JhZGRyPTB4
ZmZmZjk4MTY4YTMzMzUwMCByeF9zaz0obmlsKSBwcm90b2NvbD0zNDUyNSBsb2NhdGlvbj1fX2Rl
dl9xdWV1ZV94bWl0KzB4MTBmMCByZWFzb246IENBS0VfT1ZFUkxJTUlUCj4gICAgICAgICAgc3dh
cHBlciAgICAgICAwIFswMDFdICAgOTA5LjE2NjA1NTogc2tiOmtmcmVlX3NrYjogc2tiYWRkcj0w
eGZmZmY5ODE2ODI4MGNlZTAgcnhfc2s9KG5pbCkgcHJvdG9jb2w9MzQ1MjUgbG9jYXRpb249Y2Fr
ZV9kZXF1ZXVlKzB4NWVmIHJlYXNvbjogQ0FLRV9DT05HRVNURUQKPgo+IFNpZ25lZC1vZmYtYnk6
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgoKUmV2aWV3ZWQtYnk6
IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

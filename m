Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FA53B3284
	for <lists+cake@lfdr.de>; Thu, 24 Jun 2021 17:26:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AA3833CB5B;
	Thu, 24 Jun 2021 11:26:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624548367;
	bh=iCWiG9wl0A3y2t1cCj1ETUeJpmw7YNbCbvTaSAXJnJU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ma65npUV/oTQArooF/v2PrHRnMxQobR3sC+ulcguGZ4dFjJ1Cnvs4By32X6ho0dlF
	 4eLjNOGVLH43VZPwpHsG4kp6ujxmjXlmphazSLIzdR9hvPDNyfn+44mCtE0W6lDQi7
	 aNiimiaSN/wEtSiw7tvl64gNJ07tcIHanQv5BLy+4o9z6dd32UePQr4AJxL3IEIZAE
	 4p/GrGz8t4fbOVXD3IkBcZKJQzvVnD2tYUtdltFigIchD2vey/lfEr6nO1Lomx9lpw
	 i3sxUDXihCW+rXZUX5bw0Qaw0ywUyrsVWGvMcBXTKWncTw8ALQdx5dLQjlQUz96Bcq
	 FyJ/D3WuLtr2w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D1E3F3B2A4
 for <cake@lists.bufferbloat.net>; Thu, 24 Jun 2021 11:26:05 -0400 (EDT)
Received: by mail-io1-xd33.google.com with SMTP id k11so8711624ioa.5
 for <cake@lists.bufferbloat.net>; Thu, 24 Jun 2021 08:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ECfFYLZL0M4/7XHuQp6+ez5KbzpHekV3uGeRNH8oAhI=;
 b=c/h2Wgjb4/tL61xqJVMUtgpo29OX2tpIINFY4CvVDDdjrZPGBKFWfyG48hMf9We2z1
 y385pK0F1wrp9jL8EkfWM6rwh7QN9T4/ZQCM8pWhDF1e4n7+I7Lmlro4BP42PaAU7r1i
 2BRd9sU7Q6DO1HeZfEOJySiE1WxJ9AgIu+YrT5qQpoRf1zy389zzjoJxlMR2z4GjzEl5
 w3iPgXk6u/QhcFJrpMA5dtEg+16jnvSPCZPadYoN+wYgEgOOFovd4/SXs/6r1f4vntu/
 0P3U15Gid3jO8jEdHg4fo3LijsXYskR17mIF8exIOgdacpA0G3k+9ZWaQMwWWXzYq+A4
 JhQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ECfFYLZL0M4/7XHuQp6+ez5KbzpHekV3uGeRNH8oAhI=;
 b=QfuV/jERfUxRzylYERWOLaeHh3kaXmHSIH2O9uGeJpd/Uqxk94uLA/mOmBzVwxfmF0
 yzwcrZEOccNY+Zl1ih6L2ls3T/snJCnTQCoP3me11EkoiQ3BkZT5EhbcGQt6ddYOwWuc
 yS+/mUDsv0jGnses9VK+ROfS59FrDElGbb2Xy+xcGoqNvSXxY6Q6pzerfqmpRKsxAsU/
 1A12bvtHu++3zlj6aEeisa5Gge1luZoY1AGZbllZYrG6fIiVNj4PcjeXFgDemjj6mjtv
 /z6i7IfcHpEZKAtVF9g+TcrO+/Gv9UIwfEaro9J565jIL1Hx74fMQfEogI/OhPerin09
 1cFQ==
X-Gm-Message-State: AOAM533gvZt9S7P/ZnGBpW6UkmZOBoIOvokKeTAtoVkOCNsyvJyqQBU3
 dA+4zcm4hyB9UVtT4mnwizMx1eaSzljYGfPTLpA=
X-Google-Smtp-Source: ABdhPJz9O4nqtNNkZdgUraDmvElH+z1tmCBouR1uM3wPtjNtJ1DiqvlSFNuS9yarRTuAnUAybl6cro6RdC2JV+V1YBY=
X-Received: by 2002:a5d:8f95:: with SMTP id l21mr3927495iol.25.1624548365199; 
 Thu, 24 Jun 2021 08:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <3d529e0b78ef8ea54021d8f8e93285e9a474cba1.camel@heistp.net>
 <87h7hnmkhc.fsf@toke.dk> <0341E253-B8CB-4976-ABC1-553C070E77F3@gmx.de>
 <87bl7vmgq3.fsf@toke.dk>
In-Reply-To: <87bl7vmgq3.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 24 Jun 2021 08:25:53 -0700
Message-ID: <CAA93jw4TgVfM=-z74qAsj91p8k_=r4-FWjxkgpH63F9grskeeg@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] Cake memory usage after 1TB
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

ZXh0cmVtZWx5IGludGVyZXN0ZWQgaW4gYWNrLWZpbHRlcmluZyByZXN1bHRzIGJvdGggd2F5cy4K
Ck9uIFRodSwgSnVuIDI0LCAyMDIxIGF0IDg6MjEgQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IHZpYSBDYWtlCjxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4KPiBTZWJhc3Rp
YW4gTW9lbGxlciA8bW9lbGxlcjBAZ214LmRlPiB3cml0ZXM6Cj4KPiA+PiBPbiBKdW4gMjQsIDIw
MjEsIGF0IDE1OjU5LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4gd3Jv
dGU6Cj4gPj4KPiA+PiBQZXRlIEhlaXN0IDxwZXRlQGhlaXN0cC5uZXQ+IHdyaXRlczoKPiA+Pgo+
ID4+PiBJJ20gdXNpbmcgQ2FrZSBvbiBhbiBFZGdlUm91dGVyLVggYXQgYSBzaXRlIHRoYXQgZG9l
cyBhcm91bmQgNTAtCj4gPj4+IDEwMEdCL2RheSwgYW5kIHdlJ3JlIHF1aXRlIGhhcHB5IHdpdGgg
aXQgc28gZmFyLiBFZ3Jlc3MgYW5kIGluZ3Jlc3MKPiA+Pj4gc3RhdHMgYXJlIGJlbG93IGFmdGVy
IH4xVEIgZG93bmxvYWQgYW5kIH4xMDBHQiB1cGxvYWQuCj4gPj4+Cj4gPj4+IEkgdXNlICJtZW1s
aW1pdCA4TSIsIGFuZCBub3RpY2VkIHRoYXQgaXQncyByZXBvcnRpbmcgODM4OTY5NiBieXRlcyB1
c2VkCj4gPj4+IG9uIGVncmVzcywgd2hpY2ggaXMgYXQgdGhlIG1heGltdW0gKHNsaWdodGx5IG92
ZXIgYWN0dWFsbHkpLiBBcm91bmQgNk0KPiA+Pj4gaXMgdXNlZCBvbiBpbmdyZXNzLiBTaG91bGQg
SSB0aGVuIHJhaXNlIHRoZXNlIGxpbWl0cywgb3IgaXMgaXQgbm9ybWFsCj4gPj4+IGZvciBpdCB0
byBzZXR0bGUgaW4gYXJvdW5kIHRoZSBtYXhpbXVtIG92ZXIgdGltZT8KPiA+Pgo+ID4+IFRoYXQg
c3RhdCBpcyB0aGUgbWF4aW11bSBtZW1vcnkgZXZlciB1c2VkLCBub3QgdGhlIGN1cnJlbnQgdXNh
Z2UgKHRoYXQKPiA+PiBpcyByZXBvcnRlZCBieSAiYmFja2xvZyAwYiAwcCIpLiBTbyBpZiB5b3Vy
IHF1ZXVlIGV2ZXIgb3ZlcmZsb3dzIGl0J2xsCj4gPj4gYmUgYXQgaXRzIG1heGltdW0uCj4gPgo+
ID4gICAgICAgSXMgdGhlcmUgYW4gZWFzeSB3YXkgdG8gcmVzZXQgdGhhdCwgc2hvcnQgb2YgdGVh
cmluZyBkb3duIHRoZQo+ID4gICAgICAgcWRpc2Mgc2V0LXVwIGFuZCBidWlsZGluZyBpdCB1cCBh
Z2Fpbj8KPgo+IE5vcGUsICdmcmFpZCBub3QgOikKPgo+IC1Ub2tlCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQoKCgotLSAKTGF0ZXN0IFBvZGNhc3Q6Cmh0dHBzOi8vd3d3LmxpbmtlZGlu
LmNvbS9mZWVkL3VwZGF0ZS91cm46bGk6YWN0aXZpdHk6Njc5MTAxNDI4NDkzNjc4NTkyMC8KCkRh
dmUgVMOkaHQgQ1RPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E6012A6B30E
	for <lists+cake@lfdr.de>; Fri, 21 Mar 2025 03:44:27 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7AD853CB41;
	Thu, 20 Mar 2025 22:44:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1742525066;
	bh=Xd8pAgUDXy3UBHBogLt+/PsU5HbHUP38HkDuY3f2GR8=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=SE7mXVW43nHBNYyN0RbwaLW93OqRq/fNaqZv8XhcDCKIXD0u9rbGLDj50P9owF8IT
	 E9EIPrqPMxPNB7RaOMju0dPb8BLg/TZbFmfGbXbaarwqUvc38gM8jWsMtnKPjM0mrE
	 8VFMEloVH2LA5JkXXljbUYEQuWFCRu5e7bkMxfUd4VvxGfB3Wh3PUIuxXYGlbKnq+3
	 ca72YIH2DDhineRAdW39f82/utPCAedaMgARHLKQGCy4/fFHoqJFKDnjDafXahvhCd
	 q3K80C5q6Ya74dgpcLlmF7iokT1PQqymGInqtTj7ibs4Ndxvjya1v6c7KEEWYi5GNU
	 7tLy639M+qytg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6A9E63B29D
 for <cake@lists.bufferbloat.net>; Thu, 20 Mar 2025 22:44:25 -0400 (EDT)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-5495c1e1b63so1871189e87.0
 for <cake@lists.bufferbloat.net>; Thu, 20 Mar 2025 19:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742525064; x=1743129864; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pYlonAZxZx31SYpfvqQMWX1j79vS89efMs+DWgrutG8=;
 b=B9++KRJ+TeDyaULU2DB6O5e8UhI/pVGbYmlF0KEZrOw9dX9hDTFi6jcQSLqaC4bhM0
 oLAsV2w1+xMj/xPrRFg8t5m1WTFKfHZc8q04crafh0N8U8o+REivwTFD7ztTBMNEmEzn
 w3bfNDvsMx2/15qfWaYiXQZBq7MoO0FVi0yHmZeDFpOW+xfE85xOYiXhe07tZB12WZ8r
 lMAikhiQSmJvdoJHNsatDn71oZv+/urL65PJfmFP1TXslfYo2G9ieXtZC692cQxeIk4x
 t6x/1KrSjPisXcchumcNTfMqSy0dBEKIXpsuFY+1M9e4i9XJSeLMaKVwNRfkLMv6DJio
 ivcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742525064; x=1743129864;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pYlonAZxZx31SYpfvqQMWX1j79vS89efMs+DWgrutG8=;
 b=DZoa7XgmhUesPLmD6Ql57j2kbBe3j9itB1y6d67ZYL6+j+V/4hkZOUCj+l+eDt3lDH
 3WuWjxx5QSuvHf29JqpHSW75NDkbao8GIPqLk40P7LXk08T1yST6CIuCds19BryoeT1m
 irCSJrd0B4dhEp94Jx9yhwMc7dUYUexK31WmhUPINJTfdapRmll5DM/w45Nj18t6UEXC
 Zuv1VM5O7TypGvv1gLQZCXNXxRyBSrwor1jG73v9/yHj34Ub1RCL087YMsGVjiuLXGyg
 QZLuM/0eWQzQn+HPSJU3S1djx15bQDg3d1zm5lY0f6BfviOT32V72NBoF+VOu8Z/O4rQ
 QVLg==
X-Gm-Message-State: AOJu0YxNL9IOFpHo5ozUehGXknuMgtUh39yydzMPxONZY7YfwTP9v1NL
 sTdZB8N72B/L6H9pyggkfZrMMXUdH78nfATL6EwjCN1JwGdWOnfX
X-Gm-Gg: ASbGncvIYOeY/YFfAVn4B1OSWaYJtxsyXDd8s71MM4ZeDSy2SufmonSUe4QyTaUCNhW
 4ByocJ3LhmVy6XQ0T6+5fiyTRtGjXj2qmO+laWWvqywAY38g35iepg3QXsrlUM+xkP2SkcvYaCZ
 kVPm3dQ321ooup594JQoXX4bpbTeBkoh2dxemQs0fwnvgOnnCA2on3sWDWsJyZYVVE0QOJfiwXa
 8DhIwFrGQzNwOrNgfQzf+5xEVaqPFIX7Nmb+WqAYjPYT8OvGz7OKBhFgfJIjkmOH6fTSgR1DWJZ
 MbgxUPHs8i6IyPdRX6k2B0q8R2obE5sGdLoSLPHN43bDcl1vjTZp1FstI1wIRtczqgCBUxEocjc
 15nXugsG3Qg+CMbZ7uOy49kw+KQ==
X-Google-Smtp-Source: AGHT+IF11p6LZvXadRllFg1kPMjCdJb40fYEm27HgdvOLaF7UU1pX7lALnIpgf6r4bgA8f0mWDyMWQ==
X-Received: by 2002:a05:6512:158e:b0:545:2a69:b1f4 with SMTP id
 2adb3069b0e04-54ad64a6d55mr443293e87.29.1742525063683; 
 Thu, 20 Mar 2025 19:44:23 -0700 (PDT)
Received: from smtpclient.apple (37-219-46-148.nat.bb.dnainternet.fi.
 [37.219.46.148]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-54ad64fbe48sm77405e87.109.2025.03.20.19.44.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Mar 2025 19:44:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <CAJUtOOh3DEL==w8uYTkPEyhZpgYbLx5xbyLJtXCCpNUE+SQyJg@mail.gmail.com>
Date: Fri, 21 Mar 2025 04:44:20 +0200
Message-Id: <7FBEC0CA-162E-48A2-81D6-97CDD2F63EEC@gmail.com>
References: <CAJUtOOh3DEL==w8uYTkPEyhZpgYbLx5xbyLJtXCCpNUE+SQyJg@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] CAKE is going to be deployed on Alta Labs any day now!
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
From: Jonathan Morton via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Morton <chromatix99@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxOSBNYXIsIDIwMjUsIGF0IDEyOjAxIGFtLCBGcmFudGlzZWsgQm9yc2lrIHZpYSBDYWtl
IDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4gCj4gU2hvdWxkIGJlIHB1c2hl
ZCB0aHJvdWdoIHByb2R1Y3Rpb24gaW4gZGF5IG9yIHR3byBhbmQgdGhleSB3aWxsIGJlIHRhbGtp
bmcgYWJvdXQgaXQgb24gaHR0cHM6Ly9zdHJlYW15YXJkLmNvbS93YXRjaC91YlltMkFmZldrWWkg
dGhpcyBXZWRuZXNkYXksICBNYXJjaCAxOSwgYXQgMVBNIEVTVCAvIDEyUE0gQ1NUIC8gMTFBTSBN
U1QgLyAxMEFNIFBTVAoKSSBqb2luZWQgdGhlIHN0cmVhbSwgYW5kIHdhcyBhYmxlIHRvIGFzayBh
Ym91dCB0aGUgdGhyb3VnaHB1dCB0aGV5IHdlcmUgZ2V0dGluZyB3aXRoIENBS0Ugb24gdGhlaXIg
aGFyZHdhcmUuICBUaGlzIGlzIGp1c3QgZm9yIHRoZSAiUm91dGUgMTAiIHJhdGhlciB0aGFuIHRo
ZWlyIEFQcywgYW5kIHRoZXkgcmVwb3J0ZWQgZ2V0dGluZyBhYm91dCAyLjVHYnBzIHRocm91Z2hw
dXQgd2l0aCBDQUtFIGVuYWJsZWQuIFRoZXkgZG8gY29ycmVjdGx5IG5vdGUgdGhhdCB0aGUgaGFy
ZHdhcmUtYWNjZWxlcmF0ZWQgZm9yd2FyZGluZyBwYXRoIGlzIGRpc2FibGVkIGZvciB0aGUgaW50
ZXJmYWNlIHdoZXJlIENBS0UgaXMgdHVybmVkIG9uLgoKU3VwcG9ydGluZyAyLjVHYnBzIGlzIHBy
ZXR0eSBnb29kIEkgdGhpbmssIGFuZCBzaG91bGQgYmUgc3VmZmljaWVudCB0byBoYW5kbGUgYWxs
IHByYWN0aWNhbCBJbnRlcm5ldCBzdWJzY3JpcHRpb25zIHRoYXQgYXJlIGxpa2VseSB0byByZXF1
aXJlIGJ1ZmZlcmJsb2F0IG1pdGlnYXRpb24uICBGb3IgY29tcGFyaXNvbiwgb24gdGhlIHNhbWUg
Y2FsbCB0aGV5IGNsYWltZWQgYWJvdXQgODAwTWJwcyB0aHJvdWdocHV0IGZvciBhY3RpbmcgYXMg
YSBXaXJlR3VhcmQgdHVubmVsIGVuZHBvaW50LgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK

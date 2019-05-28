Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 483F22C352
	for <lists+cake@lfdr.de>; Tue, 28 May 2019 11:31:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BCA853CB38;
	Tue, 28 May 2019 05:31:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1559035905;
	bh=ExveHi0eIHjJgLY78M06OkT5D1Zhfff9iWdYcyznNIU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SJqvuwEdfU7XYvfwZL8h5iyztugdJqHUt2D1QEOD8A4teHZSHbhP09HQ4OA/xsb+l
	 r0rIzk0IGFvNF4nimtVIHpDL9yEMiEsoY7enAgi6txixDCT3MA8xxjS6u76hpCcY/Z
	 i8oYp1fpOZpTJbnGhBC55gPHbTvdkIy+9XZvbrZ6fLgs3n6xJG3LWXRXE6WlnQe2Xl
	 lm4GNDF6f0OF1MAIZcmJY2d9Xl74dV0rFaNeVm5tfKRO3qrtLYcoI6BPoQ8gj+2LLF
	 PyPZDkF4PiouB2zU8XL+UXiPD7Jc3e8IkQJHXBoCa3Ozhqa+VH6bE8GtFyJlKol+Av
	 cDa0tndybb7eA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8E75E3CB35
 for <cake@lists.bufferbloat.net>; Tue, 28 May 2019 05:31:43 -0400 (EDT)
Received: by mail-ed1-f41.google.com with SMTP id w37so30731104edw.4
 for <cake@lists.bufferbloat.net>; Tue, 28 May 2019 02:31:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=FH/R6gNvM8817hAr70N1Gzf78GTZQUDZAlgnxXzC57M=;
 b=MxYfdUp4dpss9G3P0FIxRlp8WJPcJRh0cyA4Nvpk6NzCYJT96kX79qSF1dBsxAKOo6
 gF/2m3ZkWdxrp0B91IBbmzQJcZIp8zrcg8DgtiC+APJr9/j72HWgF4VuNBZMK0safiFV
 6W6jMLPKUDMVolgMJIop5vbiNj/5qAfVZlXubEvYmyBpr+o2W9tFW3/+kQpi0YXN2Bcr
 9+dOKwJTKm8uArGE7ENn7n2YEp/HmiGsKD+fM3mj12H0ZerRJjiKy7LGJ9VPMis2Lvuh
 K1XKKFaGqGjOzw/HctmTHEGtn2Xmbz+FkusVqT1JbFg3aufZktWEbbgOII5fitEs1FPe
 4U+Q==
X-Gm-Message-State: APjAAAWJjin0DRuxUDwqiot3A5WSPr4FDgsXVXgv72UId0uxkjJipbcD
 F0b5sGvwAIcigSc4URJYnFKk7w==
X-Google-Smtp-Source: APXvYqxWuiQzBw14jLn30t2EZeWF+Nb6O72AV5Xzm4E9SXD5K7r1AdAzgPZShqUb/RW4aAjq51Ff4w==
X-Received: by 2002:a17:906:34da:: with SMTP id
 h26mr5334314ejb.247.1559035902687; 
 Tue, 28 May 2019 02:31:42 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.vpn.toke.dk.
 [2a00:7660:6da:10::2])
 by smtp.gmail.com with ESMTPSA id f44sm4133104eda.73.2019.05.28.02.31.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 02:31:41 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id DF4BB18031E; Tue, 28 May 2019 11:31:40 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Akshat Kakkar <akshat.1984@gmail.com>, netdev <netdev@vger.kernel.org>,
 lartc <lartc@vger.kernel.org>
In-Reply-To: <CAA5aLPgz2Pzi5qNZkHwtN=fEXEwRpCQYFUkEzRWkdT39+YNWFA@mail.gmail.com>
References: <CAA5aLPgz2Pzi5qNZkHwtN=fEXEwRpCQYFUkEzRWkdT39+YNWFA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 28 May 2019 11:31:40 +0200
Message-ID: <875zpvvsar.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Cake not doing rate limiting in a way it is expected to
	do
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

WyBhZGRpbmcgY2FrZSBsaXN0IF0KCkFrc2hhdCBLYWtrYXIgPGFrc2hhdC4xOTg0QGdtYWlsLmNv
bT4gd3JpdGVzOgoKPiBDYWtlIGlzIGV4cGVjdGVkIHRvIGhhbmRsZSB0cmFmZmljIGluIDIgc3Rl
cHMgOgo+IEZpcnN0IGlzIG9uIHRoZSBiYXNpcyBvZiBob3N0Cj4gU2Vjb25kIGlzIHdpdGhpbiBl
dmVyeSBob3N0LCBvbiB0aGUgYmFzaXMgb2YgZmxvdwo+Cj4gU28sIGlmIEkgbGltaXQgdHJhZmZp
YyB0byAyME1icHMgc2hhcmVkIGFjcm9zcyAyIGhvc3QgQSAmIEIsCj4gRm9sbG93aW5nIGFyZSB2
YXJpb3VzIHNjZW5hcmlvcywgZXhwZWN0YXRpb24gYW5kIG9ic2VydmF0aW9ucwo+IDEuIElmIGVp
dGhlciBBIG9yIEIgaXMgZG93bmxvYWRpbmcsIHRoZXkgd2lsbCBiZSBnZXR0aW5nIHNwZWVkIG9m
IDIwTWJwcwo+IE9ic2VydmF0aW9uOiBNZWV0aW5nIHdpdGggZXhwZWN0YXRpb24KPgo+IDIuIElm
IGJvdGggQSAmIEIgZG93bmxvYWRzIChzaW5nbGUgZG93bmxvYWQgZWFjaCksIGVhY2ggd2lsbCBi
ZQo+IGdldHRpbmcgc3BlZWQgb2YgMjBNYnBzCj4gT2JzZXJ2YXRpb246IE1lZXRpbmcgd2l0aCBl
eHBlY2F0aW9uIGJ1dCBpdHMgdmVyeSBqaXR0ZXJ5IChhcm91bmQKPiAyMCUpLCBpLmUuIHNwZWVk
IHZhcmllcyBmcm9tIDhNYnBzIHRvIDEyIE1icHMuIElmIEkgdXNlIGZxX2NvZGVsIHNwZWVkCj4g
aXMgc2FtZSBCVVQgaml0dGVyIGlzIHZlcnkgbGVzcyAoYXJvdW5kIDElKS4KPgo+IDMuIE5vdyBp
ZiBBIHN0YXJ0cyAzIGRvd25sb2FkcywgYW5kIEIgaXMgc3RpbGwgaGF2aW5nIHNpbmdsZSBkb3du
bG9hZCwKPiBBIGVhY2ggZG93bmxvYWQgc2hvdWxkIGJlIGFyb3VuZCAzLjMgTWJwcyBhbmQgQiBz
aG91bGQgYmUgYXJvdW5kCj4gMTBNYnBzCj4gT2JzZXJ2YXRpb246IEFyb3VuZCA1IE1icHMgZm9y
IGVhY2ggZG93bmxvYWQgd2l0aCBsb3Qgb2Ygaml0dGVyLCBpLmUuCj4gbm8gYWR2YW50YWdlIG9m
IGhhdmluZyBDQUtFISEhCj4KPiBMaW51eCBLZXJuZWwgNC4yMAo+IEZvciBjYXNlIDMsIG91dHB1
dCBvZiBjb21tYW5kIDogdGMgLXMgY2xhc3Mgc2hvdyBkZXYgZW5vMgo+Cj4gY2xhc3MgaHRiIDE6
MSByb290IGxlYWYgODAwMzogcHJpbyAxIHJhdGUgMjAwMDBLYml0IGNlaWwgMjAwMDBLYml0Cj4g
YnVyc3QgMjAwS2IgY2J1cnN0IDE2MDBiCj4gIFNlbnQgNjg4NDc0NjQ1IGJ5dGVzIDQ1NTA1OCBw
a3QgKGRyb3BwZWQgMCwgb3ZlcmxpbWl0cyAzODExOTYgcmVxdWV1ZXMgMCkKPiAgcmF0ZSAxOTg3
NEtiaXQgMTY0MXBwcyBiYWNrbG9nIDIxMTk2YiAxNHAgcmVxdWV1ZXMgMAo+ICBsZW5kZWQ6IDM4
MjUzMiBib3Jyb3dlZDogMCBnaWFudHM6IDAKPiAgdG9rZW5zOiAxMjYwNTczIGN0b2tlbnM6IC05
NDI3Cj4KPiBjbGFzcyBjYWtlIDgwMDM6NDRmIHBhcmVudCA4MDAzOgo+ICAoZHJvcHBlZCAzNDA0
LCBvdmVybGltaXRzIDAgcmVxdWV1ZXMgMCkKPiAgYmFja2xvZyA5MDg0YiA2cCByZXF1ZXVlcyAw
Cj4gY2xhc3MgY2FrZSA4MDAzOjUxNiBwYXJlbnQgODAwMzoKPiAgKGRyb3BwZWQgMzU2NSwgb3Zl
cmxpbWl0cyAwIHJlcXVldWVzIDApCj4gIGJhY2tsb2cgMGIgMHAgcmVxdWV1ZXMgMAo+IGNsYXNz
IGNha2UgODAwMzo1OTAgcGFyZW50IDgwMDM6Cj4gIChkcm9wcGVkIDMwMjMsIG92ZXJsaW1pdHMg
MCByZXF1ZXVlcyAwKQo+ICBiYWNrbG9nIDQ1NDJiIDNwIHJlcXVldWVzIDAKPiBjbGFzcyBjYWtl
IDgwMDM6NjA1IHBhcmVudCA4MDAzOgo+ICAoZHJvcHBlZCAxNzcyLCBvdmVybGltaXRzIDAgcmVx
dWV1ZXMgMCkKPiAgYmFja2xvZyA3NTcwYiA1cCByZXF1ZXVlcyAwCgpDb3VsZCB5b3UgcGxlYXNl
IHNoYXJlIHNvbWUgbW9yZSBkZXRhaWxzIG9mIHlvdXIgc2V0dXA/IFRoZSBvdXRwdXQgb2YKYHRj
IC1zIHFkaXNjIHNob3cgZGV2IGVubzJgPwoKSG93IGFyZSB5b3UgcnVubmluZyB0aGUgZG93bmxv
YWQgdGVzdHM/IElzIHRoaXMgb3ZlciB0aGUgaW50ZXJuZXQsIG9yIGluCmEgY29udHJvbGxlZCBz
ZXR1cD8gV2hhdCdzIHlvdXIgYWN0dWFsIGxpbmUgcmF0ZT8gQXJlIHlvdSB1c2luZyBpbmdyZXNz
CnNoYXBpbmcgYXMgd2VsbD8KCkl0IGxvb2tzIGxpa2UgeW91IGFyZSB1c2luZyBIVEIgZm9yIHJh
dGUgbGltaXRpbmcgb24gdG9wIG9mIENBS0U/IFdoeT8KCi1Ub2tlCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A52A782EF
	for <lists+cake@lfdr.de>; Tue,  1 Apr 2025 21:52:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 35E223CB5A;
	Tue,  1 Apr 2025 15:52:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743537172;
	bh=jVbZp98Lpdtr8w7q/zGwoq2ycIZDZRBo50T2IRNP5lU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=VM1Mpyv3BHZQ4rGiqlpqle9YJaW0s5TeLVbroRszDJ3pmGG9j5ruq27lULrTycnEX
	 ijkUq6hu983lwhRIeyW5YQhjgRoo+OqCFhRgbWmTiqBUXYLO+JO/F5LB/E1NznUi/Q
	 BNOXXu/bp5raO0Q5uw5fUi8zywpYnrCFKb/hyA74q5VONTeVSGnGc7mNu5N/dqVMj1
	 s6mcERxgr1Ru1bNgxhpHBDFJtxGKsHO3IZ4LGFb5P+NHQDeS9odQGsB5YjtpC4oKBh
	 oPmEj3XoXWkBkfEh7Tuvk72ok7UVphvbLl7zpMxS8vGZ/gQEnsHMMkqNfA3TPUwuI2
	 EI6osrCSFgZDQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8A3333B29D;
 Tue,  1 Apr 2025 15:52:50 -0400 (EDT)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-223fb0f619dso112901295ad.1; 
 Tue, 01 Apr 2025 12:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743537170; x=1744141970; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wsxnRUYOO3mwGNEW4QZtb+LK5BYAUgsPscdOer7Liec=;
 b=UCBf78yKi4RgSdnRkKBsei3AYtN4qBV9OzeKDigbIwC0QFc/jNI7GcbXvChnQo6Of2
 +w+4/Dk6MbXAXQlAZjZ7WCfFhmUFfxCdeIE3TO7eDkHZyeCKK1xrXi8Fb8dQyf1VzYJz
 OeEGIZiFzB9ycRk2d3KeqvDk03WaPRCjzonkwyAMFlqBxI8lk6/SZkjonyTuzpHHgf6P
 NVyiPio2PT7huC/B4sWQ3432INLg5Hk8gFtoc/NGxjwbxSoIhshrf8U+vYXhFS8Sp+pR
 HbS+c/6HCY8ebwW3RMIl/0nzzrnhYJLM2tHs/8sCTuUEnv8vuNX3zsWCdFU2NxNQxWEn
 IP9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743537170; x=1744141970;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wsxnRUYOO3mwGNEW4QZtb+LK5BYAUgsPscdOer7Liec=;
 b=CbJBkB/KtXiui+e0LQThbSC7WZvHV4mFWF3kBL4828RDFcek3ufn/CuBRKQfG4QYqI
 ht/uAI0c/g2lhALCKXN6MhFlScV5AsoIB1FZA4h0O3epET9y3X6XbaPbVTSzZERQAakd
 GRZ6KUGzoezCTa91N14JuzfM5oHYYAqWwCX5FptfnQG2Ruzg8mCx6Qc10aOcq/w6Hegj
 JILxqRxfEqjtUXHEQbk8JMgv1cOyBbeeHR+E6VF2zx+aLlHCYG1/j99oOaTGafQOZ8Im
 SwuXhiQhI5bbANucg5lAQVaNLWTsJ1ThJ2lE2E52Kwrkt/yQjFz63A0tke3T+HZyRgex
 rnjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUIZfu6h68tLuKh5sLI8TappFb3W4yUrFy48AOJd2gYVbSuQ5YZpfICpRfoL9n1TCyI9l1yvGsQlhzSWVU+CGA=@lists.bufferbloat.net,
 AJvYcCUk4L4OEye/VxeQgnFp4M4KkChdfEG89mVCvPppyk9mUJU9wxpEueQKoVSVWBzsbMDxeLuqMPf9cYmq@lists.bufferbloat.net,
 AJvYcCUzPNmpWIXEMIfi1Svp63vIBF2J+3Kcj+VYg117C0mlzjpkiit0RVK/1/Xh4FmevZFnE1j8Edg=@lists.bufferbloat.net,
 AJvYcCVwi1CHIs5iSa8AHPkJv/cKlwxxi0cvtWFPB1AkMw+BjuJJTJh3LYkeH9UaS0CKSvYu9FhwGxuAFAa6d4hMGr4=@lists.bufferbloat.net,
 AJvYcCWEvpv1dLtrqDRI3fXkO4WisTyN8QyDGNaV+vB5HblZG1Qui9ZZumhxTyHfM1MXywFi3K45O220MKY=@lists.bufferbloat.net,
 AJvYcCWJl5LfZ7oKey1OMkrrXXV72VvIcmY+LpxOTGG+wiRzqB+BcyyT+9opl2N8c/uUJqrrUceCpA==@lists.bufferbloat.net,
 AJvYcCWnWWNY1nWTH0jjysTxeHf45UGzbTiVpNtrCyW/3jK2Cbo/cOqltM0qUi4+E0ti7GY5Y3uLXjlnsx+C86HK0Ht3@lists.bufferbloat.net,
 AJvYcCWsYc93WxEiU5nogw8LnNCG3HQ1wYo1lXB4kUL565Omz2ZkMUdrhSlwQXs99uldC44qwMaLFOzlzNWc+IZihA==@lists.bufferbloat.net,
 AJvYcCX2e84fWRbTfs9bxggz1UQCEzfTgXSr1mGhBiK85XmEPvM/iJ+c3bei8U7+m3nLTAhqu/JFoN8=@lists.bufferbloat.net,
 AJvYcCXTwVLsY/6/gBcZW0louOMF4MuNhGf7U9AlWT+hqBusz+fH67jXm6QUVuTTztyNLOU1P7+h@lists.bufferbloat.net,
 AJvYcCXiJ6hmOs2RSdiB81qho2fEQpaj2mvloZMzWIyjovS1VuQ5gRBrWN3sI8OmJxrKlVMAfyd7S6BaeE4V1mv2bA==@lists.bufferbloat.net,
 AJvYcCXuK1uZZg65U23W31VDdi+6ebFZIGax+T0tZKlgXalqAu5jwUh1dTSt0ke7EXVcPkcD4egIqJtoog==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyOR0uahOO6lT/GOtLIGvM/BELFhKXd+Kt8w8P7cFitlUzUxjp7
 eU6KmreXK9IEL9N2VgL32yBl/b0BzCWrvw4U2O+VsXFQiDxEZUhFugMj6S560c7tAxjX9veyQdz
 zzdrEFMjPZ/rCaLLEbrVdR+xfsZFSHw==
X-Gm-Gg: ASbGncvQQhSU+lhcgApP8xbZ8w+CFd1j+pESZKyGhKoFzZIlcgM+EqRwENHsT8hiI/J
 LPkTTizFz2n5vF7lgLKTPH8EkU2TWbyfC+kz3kUl2ybQjoAehzZ7IsYtLpvaIvrI1C/wrR34XkE
 HSLGHL8VK75hOZZLeOKxF4nnEohdw=
X-Google-Smtp-Source: AGHT+IHlPkGrh00xnJi4WBrqptogE3/QdCpyIXkYfk2cdgc20U+4lE1ChUZAQvxGUQLGyz2c4ffFwaWgQbAX37wqv5I=
X-Received: by 2002:a17:90b:1f91:b0:2fa:228d:5af2 with SMTP id
 98e67ed59e1d1-305608a9df4mr6827828a91.15.1743537169585; Tue, 01 Apr 2025
 12:52:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
Date: Tue, 1 Apr 2025 23:52:37 +0400
X-Gm-Features: AQ5f1JpV33ZXn6prNDhvnedYhjy6HhN7EuuZmV6hLPRDt1LYRfAMcP7ls74-cjY
Message-ID: <CAOp4FwTu9U0ZbDPY-sayVu=V+KSjaGaNZYNO4C-so2Uayx+_YA@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
Subject: Re: [Cake] =?utf-8?q?In_loving_memory_of_Dave_T=C3=A4ht_=3C3?=
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
From: Loganaden Velvindron via Cake <cake@lists.bufferbloat.net>
Reply-To: Loganaden Velvindron <loganaden@gmail.com>
Cc: codel-wireless@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBjYW4ndCBiZWxpZXZlIHRoaXMuIEhlIGhlbHBlZCBtZSB3b3JrIG9uIDNjb20gYnFsIGluIGxp
bnV4LiBJJ20Kc3RpbGwgZGVlcGx5IHNob2NrZWQuCgoKT24gVHVlLCAxIEFwciAyMDI1IGF0IDIx
OjI2LCBGcmFudGlzZWsgQm9yc2lrIHZpYSBDYWtlCjxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dD4gd3JvdGU6Cj4KPiBIZWxsbyB0byBhbGwsCj4KPiBXZeKAmXJlIGRldmFzdGF0ZWQgdG8gYW5u
b3VuY2UgdGhhdCBEYXZlIFTDpGh0IGhhcyBwYXNzZWQgYXdheS4KPgo+IERhdmUgd2FzIGFuIGFt
YXppbmcgbWFuLCBoZWxwaW5nIHRoZSB3b3JsZCB3aXRoIEZRLUNvRGVsIGFuZCBDQUtFLCBmaWdo
dGluZyBidWZmZXJibG9hdCBhbmQgdHJ5aW5nIHRvIG1ha2UgdGhlIHdvcmxkIGEgYmV0dGVyIHBs
YWNlLiBBbHdheXMgd2lsbGluZyB0byBoZWxwLCBhbmQgd2l0aG91dCBoaW0g4oCTIExpYnJlUW9T
IChhbmQgdGhlIG90aGVyIFFvRSBzb2x1dGlvbnMgb3V0IHRoZXJlKSB3b3VsZG7igJl0IGV4aXN0
Lgo+Cj4gRGF2ZSB3YXMgYW4gaW5zcGlyYXRpb24sIGFuZCB3ZSBhbGwgbWlzcyBoaW0uIFdl4oCZ
cmUgcmVhY2hpbmcgb3V0IHRvIGZhbWlseSBhbmQgY2xvc2UgZnJpZW5kcyB0byBzZWUgaWYgdGhl
cmXigJlzIGFueXRoaW5nIHdlIGNhbiBkbyB0byBoZWxwLgo+Cj4gRGF2ZSB3YXMgYW4gaW5zcGly
YXRpb24gdG8gdXMuIERhdmXigJlzIGNvbnRyaWJ1dGlvbnMgdG8gTGludXgsIEZRLUNvRGVsLCBh
bmQgQ0FLRSBpbXByb3ZlZCBpbnRlcm5ldCBjb25uZWN0aXZpdHkgYXJvdW5kIHRoZSB3b3JsZCBm
b3IgbWlsbGlvbnMgb2YgcGVvcGxlLiBCZWNhdXNlIG9mIGhpbSwgbWlsbGlvbnMgb2YgcGVvcGxl
IG5vdyBoYXZlIGFjY2VzcyB0byByZWxpYWJsZSB2aWRlbyBjYWxscyDigJMgYW5kIGluIHR1cm4s
IGFjY2VzcyB0byBsb3ZlZCBvbmVzLCBoZWFsdGhjYXJlLCBhbmQgY29tbXVuaXR5LiBPbmUgb2Yg
Um9iZXJ04oCZcyBJU1AgY3VzdG9tZXJzIGlzIGEga2luZCBwYXJhcGxlZ2ljIHdvbWFuIHdobyBs
aXZlcyBpbiBhIGZhci1mbHVuZyBydXJhbCBDb2xvbmlhIGFyb3VuZCBFbCBQYXNvLCBUZXhhcy4g
SGVyIHJlbGlhYmxlIGFjY2VzcyB0byBoZXIgZG9jdG9ycyB0aHJvdWdoIHRlbGVtZWRpY2luZSwg
YW5kIHRvIGhlciBmYW1pbHkgdGhyb3VnaCBGYWNlVGltZSwgd2FzIG9ubHkgbWFkZSBwb3NzaWJs
ZSBiZWNhdXNlIG9mIGhpcyBhbGdvcml0aG1zLiBUaGVyZSBhcmUgbWlsbGlvbnMgb2YgY2FzZXMg
bGlrZSBoZXJzLCB3aGVyZSBEYXZl4oCZcyBjb250cmlidXRpb25zIGhhdmUgc2lsZW50bHkgZW5h
YmxlZCBodW1hbiBjb25uZWN0aW9uIGFuZCBzYWZldHkuIEV2ZXJ5dGhpbmcgRGF2ZSBjb250cmli
dXRlZCB0byB0aGUgd29ybGQgb2YgdGVjaG5vbG9neSB3YXMgZnJlZSBhbmQgb3BlbiBzb3VyY2Us
IGZvciB0aGUgYmV0dGVybWVudCBvZiBodW1hbml0eS4KPgo+IERhdmUgaXMgdGhlIHJlYXNvbiB0
aGF0IFN0YXJsaW5rIHdhcyBhYmxlIHRvIHRhY2tsZSBpdHMgbGF0ZW5jeSBpc3N1ZXMg4oCTIGVu
YWJsaW5nIGEgZ2VuZXJhdGlvbiBvZiB5b3VuZyBlbnRyZXByZW5ldXJzIGFjcm9zcyB0aGUgZGV2
ZWxvcGluZyB3b3JsZCwgc3VjaCBhcyB0aGVzZSB5b3VuZyBmb2xrcyBwaWN0dXJlZCBpbiB0aGUg
UGhpbGxpcGluZXMsIHRvIHN0YXJ0IHRoZWlyIG93biBJU1BzIHRvIGV4cGFuZCBpbnRlcm5ldCBh
Y2Nlc3MgdG8gdGhlaXIgY29tbXVuaXRpZXMuIERhdmUgc3RhcnRlZCB3b3JrIG9uIEZRLUNvRGVs
IGluIHBhcnQgYmVjYXVzZSBvZiBoaXMgb3duIGpvdXJuZXkgd29ya2luZyB0byBleHBhbmQgaW50
ZXJuZXQgYWNjZXNzIGluIE5pY2FyYWd1YSwgc28gd2Uga25vdyBoZSBzYXcgdGhhdCBoaXMgd29y
ayBoYWQgY29tZSBmdWxsLWNpcmNsZSBhbmQgaGVscGVkIHNvIG1hbnkuCj4KPiBXZeKAmXJlIGlu
Y3JlZGlibHkgZ3JhdGVmdWwgdG8gaGF2ZSBEYXZlIGFzIG91ciBmcmllbmQsIG1lbnRvciwgYW5k
IGFzIHNvbWVvbmUgd2hvIGNvbnRpbnVvdXNseSBpbnNwaXJlZCB1cyDigJMgc2hvd2luZyB1cyB0
aGF0IHdlIGNvdWxkIGRvIGJldHRlciBmb3IgZWFjaCBvdGhlciBpbiB0aGUgd29ybGQsIGFuZCBs
ZXZlcmFnZSB0ZWNobm9sb2d5IHRvIG1ha2UgdGhhdCBoYXBwZW4uIEhlIHdpbGwgYmUgZGVhcmx5
IG1pc3NlZC4KPgo+IFBTOiBEYXZlIGlzIGZvcmV2ZXIgaW4gb3VyIGhlYXJ0cyBhbmQgc291bHMs
IGluIG91ciByb3V0ZXJzIGFuZC4uLmluIHByb2R1Y3Rpb24hCj4gaHR0cHM6Ly9naXRodWIuY29t
L0xpYnJlUW9FL0xpYnJlUW9TL3B1bGwvNjg0Cj4KPiBBbGwgdGhlIGJlc3QsCj4KPiBGcmFuawo+
Cj4gRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrCj4KPgo+Cj4gaHR0cHM6Ly93d3cubGlua2VkaW4u
Y29tL2luL2ZyYW50aXNla2JvcnNpawo+Cj4gU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6ICs0
MjE5MTk0MTY3MTQKPgo+IGlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3NzUyMzA4ODUKPgo+IFNreXBl
OiBjYXNpb2E1MzAyY2EKPgo+IGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBs
aXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

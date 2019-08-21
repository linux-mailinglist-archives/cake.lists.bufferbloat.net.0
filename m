Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FA597A62
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 15:10:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B14833CB38;
	Wed, 21 Aug 2019 09:10:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566393014;
	bh=f8jwJuOrnKPZix/qYq1XTZzJ13Avh8pf1Z2x6Sp/NRw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k0hQKlW+1vx08ncXvEEjIrpMKUw/NJ26Yj6A+yQ0eUkzrMGW/S0HQfchWzcnP3Vlv
	 KzHZfdhVNNEUx39u2dWrX43OHnSGM4Fz6MiCmjFGcU1oBujApo103cWi/I1wE/bsaS
	 OY4xxQVWJPucHCpc8B1hRXFJvqOcS24o4X2GCcM810gznJn/iPnNlNgPZW/ANQYMUH
	 r0yobIhf8BNXn9copBRPW1GMmCT/aOUwBpVBRq85MatPG3ar1+05vkrLMbhY8sWXTA
	 yhlyuILqCXZhH8jaAJMZ/IX+0VkcRt/2y0/Vr84Bp9/7tN7EXTYnbGcQmZqtZMRIIM
	 Jd3ZLqANwsfTQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B41253CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 09:10:13 -0400 (EDT)
Received: by mail-io1-xd2a.google.com with SMTP id i22so4405014ioh.2
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 06:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XlSECvjCL/Ci+omZg5ltjDugiRyBqz4JSu6EC7j5vu4=;
 b=Y3+Y1GxbI2hScLM+JUqKN74cQMVrmZltbj/ZAhocM0YrDfLR8x91FbE3HrywUnnf9N
 IaTDqafhMuwPYxUigOqBkJhS4ZoRbVtJrMAS+tafmIicx0n1CGzZIJpm6bWJKFoTfikG
 5Tdr1i5s/7Xi4DYg2b90vPdpB4r64KdWmrUddajfTVRXT3PeQhLVgwblWy1k/gxk5+MZ
 Sc8Knvqz0tl5T82at/DgrEAmR7alGRB+1zmHf92L8J5vlCVsvrfDeoIp1b8+P/osWkg/
 xbU2atQ3w3c8ImTIwunhX4Lm/mL6o5nzPAGkpKOJAh8YB1kb8KTl5RRER4+gdnYmBjrd
 Ob8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XlSECvjCL/Ci+omZg5ltjDugiRyBqz4JSu6EC7j5vu4=;
 b=WfxmF7zueS3Pv7oV4MtS+u2rb4ugzTPDoo56b8ImbQHhp/CaB54LnTiQYtk5aGDVUe
 ZbuH8THOLjzSNabK5UK8wBFN0F/xMxYW8ST/MbIyYK1ormaIiy69S761qN5YAGmKkHY4
 g33SjLz90W5CxaH9kSr9EWgHhbFwIu8q9qpDwqf2rNi9WavKwoLBqDFdZTPLfaSkGUYF
 7FO+YfHlqkICE+/HVnpJJEFqqa8IYuX4sHwxlfQ/DcnWb4JcP7yat4c6HbdEPlASpQwx
 6rQlKu/Naka/aA/igY+p8vCR3o7RMAQcVNTdUMg65iy5SJ247d5MAC3gyDZOp4TmzL+b
 0JiQ==
X-Gm-Message-State: APjAAAUhwVVhKPW+f05kgBHqIvutNcdABkHP2MLG7dQE8LzSwp2VxlQP
 F+8Rd5++GNvykdhGqODXO1IazW46knqtGQHGy1M=
X-Google-Smtp-Source: APXvYqzpwjOZRTtsO7jxK6NZbmo3FIs7E4zUTrwGcwYbVps6C9HcF+xrzq3qb+YxhaxAJ38XWBILBceGC5raY8HibOI=
X-Received: by 2002:a6b:cd07:: with SMTP id d7mr35684752iog.150.1566393012991; 
 Wed, 21 Aug 2019 06:10:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
 <87sgpvflo4.fsf@taht.net> <87wof6rf7t.fsf@toke.dk>
In-Reply-To: <87wof6rf7t.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 21 Aug 2019 06:10:01 -0700
Message-ID: <CAA93jw7FJb6yWSpH=Fa5GvZhMo76sXdrOB=+eDmG0AzH6FcJiw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMzoyMSBBTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBEYXZlIFRhaHQgPGRhdmVAdGFodC5uZXQ+IHdy
aXRlczoKPgo+ID4gSm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyaXRl
czoKPiA+Cj4gPj4+IE9uIDIwIEF1ZywgMjAxOSwgYXQgOTozOSBwbSwgU2ViYXN0aWFuIEdvdHRz
Y2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+ID4+Pgo+ID4+PiDi
gKZhIGhlYXZ5IGJpdHRvcnJlbnQgZG93bmxvYWRlciB3aWxsIHN0aWxsIHN0ZWFsIHRoZSBiYW5k
d2lkdGggb2YgbXkgc2NwIHNlc3Npb24uCj4gPj4KPiA+PiBJZiB5b3UgY2FuIGlkZW50aWZ5IHRo
ZSBCaXR0b3JyZW50IHBhY2tldHMsIHlvdSBjYW4gbWFyayB0aGVtIENTMSwgYW5kCj4gPj4gc3dp
dGNoIG9uIENha2UncyAiZGlmZnNlcnYzIiBtb2RlIChhcyBpdCBpcyBieSBkZWZhdWx0KS4gIFRo
ZW4gdGhlCj4gPj4gQml0dG9ycmVudCBwYWNrZXRzIHdpbGwgc3RpbGwgYmUgYWJsZSB0byB1c2Ug
ZnVsbCBiYW5kd2lkdGggaWYgaXQncwo+ID4+IGF2YWlsYWJsZSwgYnV0IHdpbGwgYmUgbGltaXRl
ZCB0byAxLzE2dGggb2YgdGhlIHRvdGFsIGlmIHRoZXJlIGlzCj4gPj4gY29udGVudGlvbi4KPiA+
Cj4gPiBJIHJlZ2FyZCB0aGUgd2hvbGUgQ1MxIHRoaW5nIGFzIGhhdmluZyBuZXZlciBiZWVuIHBh
cnRpY3VsYXJseQo+ID4gc3VjY2Vzc2Z1bCBmb3IgYSB2YXJpZXR5IG9mIHJlYXNvbnMgLSBpbiBw
YXJ0aWN1bGFyIGJlY2F1c2UKPiA+IHdlIHNlZW1lZCB0byBiZSB0aGUgb25seSBvbmVzIGF0dGVt
cHRpbmcgdG8gdXNlIGl0IHdpdGggcmlnb3IuCj4gPgo+ID4gSSB3b3VsZCBsaWtlIHRvIHBhdGNo
IGluIGFuZCBzdWJtaXQgIkxFIiBzdXBwb3J0IHRvIG1haW5saW5lIGNha2UuCj4gPgo+ID4gVGhl
IFJGQyByZXRpcmVzIENTMSAtIHdoaWNoIEkgd291bGRuJ3QgcmV0aXJlIC0gYnV0IHNlZToKPiA+
Cj4gPiBodHRwczovL3d3dy5yZmMtZWRpdG9yLm9yZy9yZmMvcmZjODYyMi5odG1sCj4KPiBZZWFo
LCBnZXR0aW5nIHN1cHBvcnQgZm9yIHRoYXQgdXBzdHJlYW0gbWlnaHQgYmUgYSBnb29kIGlkZWEg
OikKCkknZCBwdXQgb3V0IGEgcGF0Y2ggb24gYSBlbmRpYW4tYnJhaW4tZmFydCBkYXksIHdoaWNo
IEkgdGhpbmsgd2FzCmNvcnJlY3Q/LCBidXQgZGlkbid0IGdldCBiYWNrIHRvIGl0LgoKQW5vdGhl
ciBjbGVhbnVwIHRob3VnaHQgaXMgdG8gY29uc3RpZnkgdGhlIGNha2UgaW52c3FydCBjYWNoZS4g
KGFuZCBhY3R1YWxseQpwdXQgaW4gdG90YWxseSBjb3JyZWN0IHZhbHVlcykKCj4gPiBBbHNvIGl0
IHNlZW1zIGxpa2UgYSBnb29kIGlkZWEgdG8gYWxzbyBzdWJtaXQgdGhlIE5TIGJpdAo+ID4gZXhj
bHVzaW9uIGZyb20gdGhlIGFjayBmaWx0ZXIgdG8gbWFpbmxpbmUgYXMgd2VsbC4KPgo+IFdoYXQn
cyB0aGF0PwoKaHR0cHM6Ly9naXRodWIuY29tL2Nocm9taS9zY2UvYmxvYi9zY2UvbmV0L3NjaGVk
L3NjaF9jYWtlLmMjTDEyNzQKCkEgY2xlYW5lciB3YXkgd291bGQgYmUgdG8gaGF2ZSBpdCBiZQoK
I2lmbmRlZiBUQ1BfRkxBR19FU0NFCiNkZWZpbmUgaXQgKEkgZm9yZ2V0IHdoZXJlIGl0J3MgZGVm
aW5lZCkKI2VuZGlmCgojZGVmaW5lIENBS0VfRklMVEVSX0ZMQUdTIChUQ1BfRkxBR19FQ0UgfCBU
Q1BfRkxBR19DV1IgfCBUQ1BfRkxBR19FU0NFKQoKYW5kIHVzZSB0aGF0LgoKPgo+IC1Ub2tlCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1h
aWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCgotLSAKCkRhdmUgVMOkaHQKQ1RPLCBUZWtM
aWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtMjA1LTk3NDAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

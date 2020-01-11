Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B31FD13838B
	for <lists+cake@lfdr.de>; Sat, 11 Jan 2020 21:41:01 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 388C03CB38;
	Sat, 11 Jan 2020 15:41:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578775260;
	bh=IOcal0hpqpeX0xYDRXo/sDGKFhObeDZxmWbij29q8es=;
	h=References:In-Reply-To:From:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=qEm+Er+S+dPsKWUPvnEbVjKfQ9XMN2YUGnGi9ARGvJ2lMc6JvLYDBq4EJ2PsENuZv
	 fCu3msMtsa5pr3sDOi1M6W2+rvIB2BtlKJXCz/nnN/d6GccseEEEFdGHO5ZzIr5LYn
	 uJRrm9qFzwqxzYEuaQ4kj5gvZX7MlURQxHfM2p4f2U91kD1XGWgGQYKM7JqE6MV5WJ
	 KEmI2S2o55Ul4iZ4+uCtgdVSBUex2BeTo/qywulYCGQvgJCpCS1a5IXIxxRoq4yu1Z
	 JExoa49OKlxdj4fSVd5zgZ4c+lpEOarFqPThxEcD/3fR8ecXgS1m2k8dx15vid5sxU
	 VpClszrsIWQ2w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com
 [IPv6:2607:f8b0:4864:20::144])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3298D3B29E
 for <cake@lists.bufferbloat.net>; Sat, 11 Jan 2020 15:40:58 -0500 (EST)
Received: by mail-il1-x144.google.com with SMTP id t17so4648488ilm.13
 for <cake@lists.bufferbloat.net>; Sat, 11 Jan 2020 12:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
 :content-transfer-encoding;
 bh=/9rDgDR29UyCcUFDE/Z04bzV4SrZnGY9LBiyFOR/HOM=;
 b=ZF+CQylk1a8Kl+tXZrgmu6c+0jMTFp9EymP/gqqC22eiSlMeyXrG9M1pgp+aul7hEY
 ShuBo43OC96P8730PdP1g+lhuDFiAcktkgTf2ogCdLzcSq4qelFtqh9SH6SX+Orp9eeP
 Bor+U/CWGj9EQuQ52aIfZTwjN08xQYDzECqNEFweTM0IaJzvw6mAoGaY2vmkOZLJAZ4B
 McX1CuJB4Ti05oS18J5/3+axM/z5zkARUt47XWRAwsxcWfLScZk/DE+HSb+Ymq6vU3gL
 NL+56uXbERpJGfbt7h4pTGOR6o4VR7aLzobW03tFgsAsUAG5/5s1CWkpPUY2SsjJtgUm
 vn8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc:content-transfer-encoding;
 bh=/9rDgDR29UyCcUFDE/Z04bzV4SrZnGY9LBiyFOR/HOM=;
 b=F7J+Vpr0OPtkYo+9r6yK64iBpFOj+MSCAO92I0MbWcJK4cl/hRFr4QAbtfGcNbxCKC
 qyDC5PCElnojgiROSuSzHN8y6p4p7rOTVJ/M/xuQGB+Um/Hu7RuTD/kYUSbJl5MyLcxM
 /VEweA3uUr6yTwpLG3QXcKsdcR+p3b9FW1QdvnM32OFLy2IbKEf7UJ5bz2krrsQc8Jl6
 YlqGaAO1bGqJgyGcuhFvOyfj2JM+VyrKhDDbK5wF/BgTaUIrQ8lHm0rykYjAkC45EAb0
 DRCzMWnFC/FhbFVV+a7m0JfQp7eHC5weJZbA0aWljSJ9MUT0vj2aGOUBR1keBK760rQN
 cwkA==
X-Gm-Message-State: APjAAAX6BcLygDOb2hglSM7iGr23S3jjMUXJi7dsAsg7Udvkehzgknf1
 8Oy4OzJ4s2BLD8NKCJOvAzvDwI+X6OB23guxEy+7/EkiJYE=
X-Received: by 2002:a05:6e02:5c8:: with SMTP id
 l8mt8359817ils.287.1578775257563; 
 Sat, 11 Jan 2020 12:40:57 -0800 (PST)
MIME-Version: 1.0
References: <1578730684729@kroah.com>
In-Reply-To: <1578730684729@kroah.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 11 Jan 2020 12:40:46 -0800
Message-ID: <CAA93jw6Hb0fHbqOMfc_6WvjSu2=JQ1xx__NvuUQEM=s6XBTrGA@mail.gmail.com>
Subject: Re: [Cake] Patch "sch_cake: avoid possible divide by zero in
 cake_enqueue()" has been added to the 4.19-stable tree
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
 Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

ZGlkIHRoaXMgbWFrZSBpdCBpbnRvIG9wZW53cnQgYWxyZWFkeT8KCk9uIFNhdCwgSmFuIDExLCAy
MDIwIGF0IDEyOjE5IEFNIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4KPgo+
IFRoaXMgaXMgYSBub3RlIHRvIGxldCB5b3Uga25vdyB0aGF0IEkndmUganVzdCBhZGRlZCB0aGUg
cGF0Y2ggdGl0bGVkCj4KPiAgICAgc2NoX2Nha2U6IGF2b2lkIHBvc3NpYmxlIGRpdmlkZSBieSB6
ZXJvIGluIGNha2VfZW5xdWV1ZSgpCj4KPiB0byB0aGUgNC4xOS1zdGFibGUgdHJlZSB3aGljaCBj
YW4gYmUgZm91bmQgYXQ6Cj4gICAgIGh0dHA6Ly93d3cua2VybmVsLm9yZy9naXQvP3A9bGludXgv
a2VybmVsL2dpdC9zdGFibGUvc3RhYmxlLXF1ZXVlLmdpdDthPXN1bW1hcnkKPgo+IFRoZSBmaWxl
bmFtZSBvZiB0aGUgcGF0Y2ggaXM6Cj4gICAgICBzY2hfY2FrZS1hdm9pZC1wb3NzaWJsZS1kaXZp
ZGUtYnktemVyby1pbi1jYWtlX2VucXVldWUucGF0Y2gKPiBhbmQgaXQgY2FuIGJlIGZvdW5kIGlu
IHRoZSBxdWV1ZS00LjE5IHN1YmRpcmVjdG9yeS4KPgo+IElmIHlvdSwgb3IgYW55b25lIGVsc2Us
IGZlZWxzIGl0IHNob3VsZCBub3QgYmUgYWRkZWQgdG8gdGhlIHN0YWJsZSB0cmVlLAo+IHBsZWFz
ZSBsZXQgPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+IGtub3cgYWJvdXQgaXQuCj4KPgo+IEZyb20g
Zm9vQGJheiBTYXQgMTEgSmFuIDIwMjAgMDk6MTQ6MzQgQU0gQ0VUCj4gRnJvbTogV2VuIFlhbmcg
PHdlbnlhbmdAbGludXguYWxpYmFiYS5jb20+Cj4gRGF0ZTogVGh1LCAyIEphbiAyMDIwIDE3OjIx
OjQzICswODAwCj4gU3ViamVjdDogc2NoX2Nha2U6IGF2b2lkIHBvc3NpYmxlIGRpdmlkZSBieSB6
ZXJvIGluIGNha2VfZW5xdWV1ZSgpCj4KPiBGcm9tOiBXZW4gWWFuZyA8d2VueWFuZ0BsaW51eC5h
bGliYWJhLmNvbT4KPgo+IFsgVXBzdHJlYW0gY29tbWl0IDY4YWFiODIzYzIyMzY0NmZhYjMxMWY4
YTY1ODE5OTRmYWNlZTY2YTAgXQo+Cj4gVGhlIHZhcmlhYmxlcyAnd2luZG93X2ludGVydmFsJyBp
cyB1NjQgYW5kIGRvX2RpdigpCj4gdHJ1bmNhdGVzIGl0IHRvIDMyIGJpdHMsIHdoaWNoIG1lYW5z
IGl0IGNhbiB0ZXN0Cj4gbm9uLXplcm8gYW5kIGJlIHRydW5jYXRlZCB0byB6ZXJvIGZvciBkaXZp
c2lvbi4KPiBUaGUgdW5pdCBvZiB3aW5kb3dfaW50ZXJ2YWwgaXMgbmFub3NlY29uZHMsCj4gc28g
aXRzIGxvd2VyIDMyLWJpdCBpcyByZWxhdGl2ZWx5IGVhc3kgdG8gZXhjZWVkLgo+IEZpeCB0aGlz
IGlzc3VlIGJ5IHVzaW5nIGRpdjY0X3U2NCgpIGluc3RlYWQuCj4KPiBGaXhlczogNzI5OGRlOWNk
NzI1ICgic2NoX2Nha2U6IEFkZCBpbmdyZXNzIG1vZGUiKQo+IFNpZ25lZC1vZmYtYnk6IFdlbiBZ
YW5nIDx3ZW55YW5nQGxpbnV4LmFsaWJhYmEuY29tPgo+IENjOiBLZXZpbiBEYXJieXNoaXJlLUJy
eWFudCA8bGRpckBkYXJieXNoaXJlLWJyeWFudC5tZS51az4KPiBDYzogVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4gQ2M6IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldD4KPiBDYzogQ29uZyBXYW5nIDx4aXlvdS53YW5nY29uZ0BnbWFpbC5jb20+
Cj4gQ2M6IGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5l
bC5vcmcKPiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+IEFja2VkLWJ5OiBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4KPiBTaWduZWQtb2ZmLWJ5OiBEYXZp
ZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Cj4gU2lnbmVkLW9mZi1ieTogR3JlZyBL
cm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiAtLS0KPiAgbmV0L3Nj
aGVkL3NjaF9jYWtlLmMgfCAgICAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+Cj4gLS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMKPiArKysgYi9u
ZXQvc2NoZWQvc2NoX2Nha2UuYwo+IEBAIC0xNzU4LDcgKzE3NTgsNyBAQCBzdGF0aWMgczMyIGNh
a2VfZW5xdWV1ZShzdHJ1Y3Qgc2tfYnVmZiAqCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcS0+YXZnX3dpbmRvd19iZWdpbikpOwo+ICAgICAg
ICAgICAgICAgICAgICAgICAgIHU2NCBiID0gcS0+YXZnX3dpbmRvd19ieXRlcyAqICh1NjQpTlNF
Q19QRVJfU0VDOwo+Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgZG9fZGl2KGIsIHdpbmRvd19p
bnRlcnZhbCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgYiA9IGRpdjY0X3U2NChiLCB3aW5k
b3dfaW50ZXJ2YWwpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIHEtPmF2Z19wZWFrX2JhbmR3
aWR0aCA9Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYWtlX2V3bWEocS0+YXZn
X3BlYWtfYmFuZHdpZHRoLCBiLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGIgPiBxLT5hdmdfcGVha19iYW5kd2lkdGggPyAyIDogOCk7Cj4KPgo+IFBhdGNoZXMg
Y3VycmVudGx5IGluIHN0YWJsZS1xdWV1ZSB3aGljaCBtaWdodCBiZSBmcm9tIHdlbnlhbmdAbGlu
dXguYWxpYmFiYS5jb20gYXJlCj4KPiBxdWV1ZS00LjE5L3NjaF9jYWtlLWF2b2lkLXBvc3NpYmxl
LWRpdmlkZS1ieS16ZXJvLWluLWNha2VfZW5xdWV1ZS5wYXRjaAo+IHF1ZXVlLTQuMTkvcmVndWxh
dG9yLWZpeC11c2UtYWZ0ZXItZnJlZS1pc3N1ZS5wYXRjaAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UKCgoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIKCkRhdmUgVMOkaHQKQ1RPLCBUZWtM
aWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtNDM1LTA3MjkKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

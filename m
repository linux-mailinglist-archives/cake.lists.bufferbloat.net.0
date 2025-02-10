Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE29A2E991
	for <lists+cake@lfdr.de>; Mon, 10 Feb 2025 11:35:57 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 49B2E3CB42;
	Mon, 10 Feb 2025 05:35:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1739183756;
	bh=CRLbDl82D8o6lN+wh97Y0hQg2iSfWebjpAqfybYYO1U=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=W9zyMvm5Y36daBEP6nf9x/KTmSkD08RYFO/PhvQH8Qk7LxeQGyvjpEXbOGVfIrHvu
	 EchK5a+rpY09I/zBGsVBhBEBSyXWh8KJyw8H0dib4H4s4fuz145zsfUdLmQNnqzqaH
	 g/fI3tFnvZaUm8QCppVBj7yu5bm/HI6owesfDI7vduWluisSljA5c0cGDEr1Le4wHB
	 rLpUaKmgqJv0Rl783Gx9tbrSlorD2YfsPgIGuTUvhbmUOt8inc9WCF4/uZYgcqBO2q
	 694LfS0kUTKsnT4pV/Ws9MCFr8b9hDSGgoCNkG4NMnE/sdIbD4HMZ9bjyi7/AkYMof
	 tQQl5c7Ivvj0g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7C5F93B29E
 for <cake@lists.bufferbloat.net>; Mon, 10 Feb 2025 05:35:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1739183754;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eQEPgsf17fK8lJi2HVgwIP/WsEnuLKeO1l+EuzHzGDk=;
 b=i8foJb8/4ypckbCsDHNjWEODxeRpf1P44meVKGIa9yXCWY4wvgTZ89wOdinCu3pfVVx/Ih
 1gSm/q8PBkFva+uV1MHGTTQ7I1S6BOOPlIYGMLaatdAlXc9nRoPDzCC9lwCV2+xXHDbRK9
 w8GXM61CgZUEGScMl8obaPUQWosWPyM=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-307-Wa7Eiz8_N5m0geowBUz_AQ-1; Mon, 10 Feb 2025 05:35:52 -0500
X-MC-Unique: Wa7Eiz8_N5m0geowBUz_AQ-1
X-Mimecast-MFC-AGG-ID: Wa7Eiz8_N5m0geowBUz_AQ
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-ab7a7c8c70aso181388866b.2
 for <cake@lists.bufferbloat.net>; Mon, 10 Feb 2025 02:35:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739183751; x=1739788551;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eQEPgsf17fK8lJi2HVgwIP/WsEnuLKeO1l+EuzHzGDk=;
 b=cYtGHqo8HviHTd7gyBLgHB/qYRL3ye5mEDRKsyzDhT+Ck1aJQLhAj0cZBaCN5YVosw
 CB/MJ05Y8rQVINtRSPJK96uFBycjBxUMmY4qOTUoCB0iNU9VgnOjGukstSVb1JWecLNg
 ITZ22H6tJkyAfwXXebetQsRZc3a1QdHA/n7pq+RVq9nbAiYJeMjE3PUWA5WAKaxqSfL+
 Iqgj5FWPItvM4Fzcb4SRJzP3uT/Vr4TMRBm2gMaTz7FOAUh5ayHebqD8iwBMx8bCyDin
 ykUABRr7BIYGQiPgaVJwP/HbOtXkbGDlATbS6TIna5uuHf2R/yb3J5yEKolLFqqfgJ7f
 Ij0A==
X-Gm-Message-State: AOJu0Yy0vaOZEeFYwZ4Dx6LDtmgPTIBSISX2M8MpKAxWHDvx3A/WLOix
 yE7VIIt6U3cX0A4CCAlyYuQFWQ+uENrz3SrQrld5QfsVd9Db8MLfGeU5kX7Z7i41xGWv1aanwuv
 /VGr+4heY1LdYP5sL2qHHGhwjEzaNBbLUU7EIDxMSkAY+3sbW6zaZgPkrFU0=
X-Gm-Gg: ASbGncs3JUI3NGPN9SMViLp54sbZYex6KCchAaEkHRPFAhn/Ods44XYdGrKhOELZP6q
 ZaSHyMSqbWTL0upJkZcgtOGr4qMnESV4gEfkiAFDMHxoBlbsB1b+VLrxyEZ0b8mxZjsgB12qVxS
 9agrYrBRGaVPfEazVEajpnqcDX6qMHzdRlRAdYWwpIX+2hIaejImjObTrb7It8wkg2i21njO3w9
 Yst1tncWl+jikTGqkWBES0HoUKNZ4mrnVUOaDsFVxV0Y/Kaz9K7TglcPb6GmSuUzEgOBjlFUHNR
 LQ==
X-Received: by 2002:a17:907:7293:b0:ab7:c358:2fec with SMTP id
 a640c23a62f3a-ab7c358318dmr322867466b.5.1739183750802; 
 Mon, 10 Feb 2025 02:35:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFNP3UYk6xKA5+t2yU6MacL8pzKxMhYxTn6A7RGaUVGnJ3/cCgVRndq81CjO3lfDuWSwLc+Og==
X-Received: by 2002:a17:907:7293:b0:ab7:c358:2fec with SMTP id
 a640c23a62f3a-ab7c358318dmr322865866b.5.1739183750415; 
 Mon, 10 Feb 2025 02:35:50 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab779832909sm801694466b.49.2025.02.10.02.35.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 02:35:49 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id D4251184FB80; Mon, 10 Feb 2025 11:35:48 +0100 (CET)
To: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <564C0719-2569-4A8A-981D-35F9473F8AF2@gmx.de>
References: <CAM0EoM=bFMVMV-f2n4BNSJoqOAxqr+kcJ9kg2NLVvmw2rX-2WA@mail.gmail.com>
 <87bjvarvtd.fsf@toke.dk> <564C0719-2569-4A8A-981D-35F9473F8AF2@gmx.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 10 Feb 2025 11:35:48 +0100
Message-ID: <875xlirssb.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: JzFhGLgXx4Hwv6BNHRyaRlUYJcd2fYAIIdv5GH3u56E_1739183751
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [NetDev-People] 0x19: Talk,
 mq-cake: Scaling software rate limiting across CPU cores
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JpdGVzOgoKPiBUaGF0IHNvdW5k
cyBtb3N0IGV4Y2VsbGVudC4uLgo+Cj4gVGhpcyBhbHNvIG1lYW5zIHRoYXQgbm93IHdlIG5lZWQg
Y2hlYXAgcm91dGVyIGhhcmR3YXJlIHdpdGggPiAyIE5JQwo+IHF1ZXVlcyBhbmQgPiAyIENQVXMg
OykgKHdpdGggaW5ncmVzcyBhbmQgZWdyZXNzIHNoYXBpbmcgdGhlIGN1cnJlbnQKPiBzdGF0ZSBp
cyB0aGF0IDIgQ1BVcyBjYW4gYmUgdXRpbGlzZWQpLgoKV2VsbCwgZXZlbiBpZiB0aGVyZSBhcmUg
b25seSAyIENQVXMsIHRoZSBNUSB2ZXJzaW9uIGNhbiB1dGlsaXNlIGJvdGggb2YKdGhvc2UgaW4g
b25lIGRpcmVjdGlvbiwgd2hpY2ggaGVscHMgZm9yIGFzeW1tZXRyaWNhbCB0cmFmZmljIDopCgo+
IEkgd29uZGVyLCBkb2VzIHRoaXMgd29yayBmb3IgSUZCcyBhcyB3ZWxsIG9yIG9ubHkgZm9yIHJl
YWwgaGFyZHdhcmUKPiBOSUMgcXVldWVzPwoKWXVwLCB5b3UgY2FuIHNwZWNpZnkgdGhlIG51bWJl
ciBvZiBUWCBxdWV1ZXMgb24gYW4gaWZiIGludGVyZmFjZSB3aGVuCmNyZWF0aW5nIGl0IChpcCBs
aW5rIGFkZCBudW10eHF1ZXVlcyAyIHR5cGUgaWZiKS4KCi1Ub2tlCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5m
by9jYWtlCg==

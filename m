Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0E91CB28A
	for <lists+cake@lfdr.de>; Fri,  8 May 2020 17:08:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4A62A3CB39;
	Fri,  8 May 2020 11:08:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588950510;
	bh=h2raXbPPQwCojnPNzDtyPPPO58scwd5ZGuRevrlJhK4=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V+rs6UKt+GMpuOA/hikkNYvzakASW4Dcov6LDSyGOU0824P8XtOAb3S2YwMzh8771
	 3hzOH3vp2dFQwmaDq/PwFC9m3La5gstO5CROMn9GRcKmhT4sTd8p37loKBkHADKHTs
	 ywDkqTEanb7jKZsdk8Cz8yNk/AV9pcXTqg0i5PsXbTNd5dtwyrFlTrrCfpqvcesRuO
	 vP4ufbwFRoMDpC/3JM5qUQo6aceLDeW0mfHJ19ut8Klc5xFjKZwdkkLwWPCW0osOPR
	 G6TcVnEEuju5+l8SMKqjtbB5UkJNSF7ecyzlkUR4Z/gw5o6yPDf13O4huCq0dNcbKW
	 NUJPU7FxX2MRw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2234E3B29E
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 11:08:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588950508;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7H6VfEwMq+1G3yIBkc1pxGsFe64BjsrewGYNqYehMQc=;
 b=W859hb3sGUiv9Yk72yVQ9SiJReP7SbUo67UboQFqAGqgCHy4NFLy7wrOdiqNDF2ndIMAbK
 r24NfPd1YqaHMMAzQpPr1Vcl3yFmpxR3QoV12TDzDy99xaWVEWRTEFMXRTl2FSaW1o3V93
 2Ku58eO74Hrr4gT+vtgog3StAW0hyYs=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-lBuVMXy9Mr-loTvIxEF17w-1; Fri, 08 May 2020 11:08:26 -0400
X-MC-Unique: lBuVMXy9Mr-loTvIxEF17w-1
Received: by mail-lj1-f198.google.com with SMTP id m4so340497lji.23
 for <cake@lists.bufferbloat.net>; Fri, 08 May 2020 08:08:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=7H6VfEwMq+1G3yIBkc1pxGsFe64BjsrewGYNqYehMQc=;
 b=rGipnjeKgXPxYitgjXB8sZfhMiBPonJp4k4isj+4er64ZTwGWRX+yPzrMwzOFOQOyE
 M7r+nTriM6EoC51ob2nds/BNnz6xcFapwvvc5pffHLlIALYhNrFz5bvMU9DP60xMJDUc
 P5uupXfj+K7DX1BWrGy6csrmpbCNnMoLiYLWBDyozimxI4YJyXUaRNqVhgLnX+yPGKqm
 hWvx2Rbdhb4Ac0sPEyesSxH+ZZx+zZJuug8UvlfhMHRnLhoPn8VjKU/uEXbnrGjz3X/D
 VnHeNRHhI+wp19B3+EK75bFaHEqTktBcIVgK4UO/rXRVhKgT0oWeeGR3l6jmFDQRJ66J
 DlfA==
X-Gm-Message-State: AOAM5309zYWKahWFkvqjITSaz28vVS5pjd95ZRdQ8JbGKRMvCBOi7J/r
 iHQABlRU3fjXAhMBJlLaQeVKE/qYNdOyAA9ZCadZ9GMsQt7N2PUNa7PYKtInkTnb4FteLb8yyq7
 psKThukr/1FMf8EzXJwe4fQ==
X-Received: by 2002:a2e:8693:: with SMTP id l19mr2012707lji.63.1588950505317; 
 Fri, 08 May 2020 08:08:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxuoF/BH65APo1w3UZsjwM8bnUZNo7ktZQwszzLH2AFpQBQVIkvmSIM9q4VDh9dM6innYsU7w==
X-Received: by 2002:a2e:8693:: with SMTP id l19mr2012691lji.63.1588950505099; 
 Fri, 08 May 2020 08:08:25 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id c2sm1406778ljk.97.2020.05.08.08.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 08:08:23 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 02E4818151A; Fri,  8 May 2020 17:08:21 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dave Taht <dave.taht@gmail.com>, Avakash bhat <avakash261@gmail.com>
In-Reply-To: <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 08 May 2020 17:08:21 +0200
Message-ID: <875zd6h3bu.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] Query on ACK
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
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>, Vybhav Pai <vybhavpai1999.vp@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIFRodSwgTWF5IDcs
IDIwMjAgYXQgMTE6MzYgUE0gQXZha2FzaCBiaGF0IDxhdmFrYXNoMjYxQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4+Cj4+IE9rIHRoYW5rcyBzbyBtdWNoIGZvciB0aGUgY2xhcmlmaWNhdGlvbnMuCj4+IFRo
YXQgY2xlYXJlZCBpdCB1cCBxdWl0ZSBhIGJpdC4KPgo+IEkgbm90ZSB0aGF0IHRoZXJlIHdhcyBz
b21ldGhpbmcgcmVhbGx5IHN1YnRsZSB0aGF0IGNvdWxkIGhhdmUgYmVlbgo+IGRvbmUgdG8gaW1w
cm92ZSBjYWtlJ3MgYWNrIGhhbmRsaW5nLCBhbmQgZm9yIGFsbCBJIGtub3cKPiBpdCBhY3R1YWxs
eSBoYXBwZW5lZCBpbiB0aGUgZmluYWwgY29kZWJhc2UuCj4KPiBzbywgcGxlYXNlLCBnbyBmb3J0
aCBhbmQgZHVwbGljYXRlIHRoZSBleGlzdGluZyBpbXBsZW1lbnRhdGlvbiwgYW5kCj4gaWdub3Jl
IG1lLCBjYXVzZSBsb29raW5nIGF0IHRoaXMgaGFpcnkgY29kZSBnaXZlcyBtZSBhCj4gaGVhZGFj
aGUuCj4KPiBhbnl3YXksIHRvIHRyeSBhbmQgZGVzY3JpYmUgd2hhdCBJIHRob3VnaHQgSSBzYXcg
YW4gaW50ZXJhY3Rpb24gd2l0aAo+IHRoZSBzY2hlZHVsZXIgYmFjayBpbiB0aGUgZGF5Lgo+Cj4g
VGhlIGFjay1maWx0ZXIgcnVucywgZGVsZXRpbmcgYWxsIGJ1dCBvbmUgcGFja2V0IGZyb20gdGhl
IGFjayBxdWV1ZSwKPiBhbmQgZGVsaXZlcnMgdGhhdC4KPiB0aGUgc2NoZWR1bGVyIHJ1bnMsIHNl
cnZlcyBhIGJ1bmNoIG9mIG90aGVyIGZsb3dzLCB0aGVuIHJldHVybnMgdG8gdGhlCj4gYWNrIHF1
ZXVlLCB3aGljaCBoYXMgYWNjdW11bGF0ZWQgYSBjb3VwbGUgbW9yZSBwYWNrZXRzLAo+IHRoZSBh
Y2stZmlsdGVyIHJ1bnMsIGRlbGV0aW5nIGFsbCBidXQgb25lIHBhY2tldCBmcm9tIHRoZSBhY2sg
cXVldWUsCj4gYW5kIGRlbGl2ZXJzIHRoYXQsIGJ1dCBkb2Vzbid0IGV4aGF1c3QgaXRzIHFhdW50
dW0KClRoZSBBQ0sgZmlsdGVyIHJ1bnMgb24gZW5xdWV1ZSwgc28gaWYgYSBxdWV1ZSBoYXMgb25s
eSBBQ0tzIGluIGl0LCBpdAp3aWxsIG5ldmVyIGFjY3VtdWxhdGUgYW55dGhpbmcgaW4gdGhlIGZp
cnN0IHBsYWNlLi4uCgotVG9rZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

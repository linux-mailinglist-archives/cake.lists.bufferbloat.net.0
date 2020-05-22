Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCEB1DE899
	for <lists+cake@lfdr.de>; Fri, 22 May 2020 16:18:32 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 55C423CB38;
	Fri, 22 May 2020 10:18:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590157111;
	bh=gLbpLnoz88ZVaPaBV+awdFNoUe/yjqCEVucH75VwjS4=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Vhc8H0aFQe84RYo8FaSgxfEFpwTume+fhwTXFHeDgw9A0ffWM+yUPXenEk6n3GVe2
	 wZHmS7Mlx2kAIhj3OafsKS/evyvouXHWUswYWwDyFyFEPD6KskyEUAq+lGGJ0MvqMq
	 VnDhtZ+S7kRoK4ORcWIoRAo/jTyM+B0KWlVNvqgHCAyCEfnadzgbT/CMcpIACmu6iF
	 SsBZ5h8bBTiQFPLkwtoi8iX2CyhMbMlCbo8hFh8TypwMMQ02amtajPROVqiKUuvEcJ
	 PhgN1TPkPsgWDnGxytXc7s7JgSFWgUbe0UYZsurW1MjImREr/ruBsIfoiOQUh32qmH
	 MiYMKuOjAzziA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A9AE23B2A4
 for <cake@lists.bufferbloat.net>; Fri, 22 May 2020 10:18:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590157109;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hvLCbW4gif49hLmOCRZJvKHvxPP/+XhZ+ocuDMc5Vbo=;
 b=NKLtrrTyMuwxxJ5bLNYlt4reliv27iaZnBrKpUqezfj8IEpGEMBIB5T1+T/WCzAntUcR3d
 kwcKiZs//D0mFx4zuYuiVlBvDjjIRzSAdjdEcR8jfiUqtX5jirLR57QyOGhKjWEm3WftGf
 B4jvWiKlk4bHSY69wbhMUNAaP4T762A=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-416-oPDgX_QWNBWbZ13QjqvhgA-1; Fri, 22 May 2020 10:18:27 -0400
X-MC-Unique: oPDgX_QWNBWbZ13QjqvhgA-1
Received: by mail-ed1-f71.google.com with SMTP id g10so3805867edt.3
 for <cake@lists.bufferbloat.net>; Fri, 22 May 2020 07:18:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=hvLCbW4gif49hLmOCRZJvKHvxPP/+XhZ+ocuDMc5Vbo=;
 b=eD9vb9qz/Cs2AVb16KdrFLUIUAWHIUGoR44/OCypCIdYtHoOTFXmG6VcqnZaHBnsRo
 wIG7pesDKmSLcI42mq+uS/VzZqWva5fiWprDwAeCr1e0wRBBmmaYSj4PQcMtyi52jZAN
 vWFDYyAl4a229lwGOtPLII9j09tiuh9lQyJog2yxKI7k181mtitSxdXJkQSEGt0fIWw3
 y5N60WAUF5qQ/rLGKwFtz7rDVchQ4sSIpRCuoexAghEdK7Moywz8OWUlK+fHuPSui0+L
 +9TpiJRGRg6xBrbtaCl5O0FoHVD5MAEv0jV9ofySzCWQFSD6/lsANP+Vd2t1gJxTKMTZ
 wVIQ==
X-Gm-Message-State: AOAM532cwjvuHjKcdpymnQjRsiAwng9Yvd6M/09JoDnfO0n5pMZGaclZ
 wfNVQzve/to/s+5rO1Nxu6g02MHoRR1e+1oxA3eE8SRaxiivKTBc1hsE1hlWxH/yzBcUGjRL3Bg
 kTMTJj4C6D4k/Sa+dm/tMBg==
X-Received: by 2002:a17:906:c344:: with SMTP id
 ci4mr7890813ejb.331.1590157105051; 
 Fri, 22 May 2020 07:18:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4oI036maCPZoWf2aKKcW72n7DJddqGc5FGUQNv+ydNyh4peqELBQr53cmMtrYq2ScxX8niw==
X-Received: by 2002:a17:906:c344:: with SMTP id
 ci4mr7890795ejb.331.1590157104861; 
 Fri, 22 May 2020 07:18:24 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id v6sm8138342eje.113.2020.05.22.07.18.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 07:18:24 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 8A57318150E; Fri, 22 May 2020 16:18:20 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: "Aarti Nandagiri." <aarti.183is001@nitk.edu.in>, cake@lists.bufferbloat.net
In-Reply-To: <mailman.404.1590061333.24343.cake@lists.bufferbloat.net>
References: <mailman.404.1590061333.24343.cake@lists.bufferbloat.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 22 May 2020 16:18:20 +0200
Message-ID: <87367skq8j.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] Is target a command-line option?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

IkFhcnRpIE5hbmRhZ2lyaS4gdmlhIENha2UiIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4g
d3JpdGVzOgoKPiBGcm9tOiAiQWFydGkgTmFuZGFnaXJpLiIgPGFhcnRpLjE4M2lzMDAxQG5pdGsu
ZWR1LmluPgo+IFN1YmplY3Q6IElzIHRhcmdldCBhIGNvbW1hbmQtbGluZSBvcHRpb24/Cj4gVG86
IGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gRGF0ZTogVGh1LCAyMSBNYXkgMjAyMCAxNzox
MjowMCArMDUzMAo+Cj4gSGVsbG8sCj4KPiBDYW4gSSB1c2UgYSBkaWZmZXJlbnQgJ3RhcmdldCcg
dmFsdWUgYnkgcGFzc2luZyBpdCBhcyBhIGNvbW1hbmQtbGluZSBvcHRpb24KPiBmb3IgdGhlIGNh
a2UgcWRpc2M/CgpOb3QgZGlyZWN0bHkuIFlvdSBjYW4gdXNlIG9uZSBvZiB0aGUgcHJlc2VudHMg
KGRhdGFjZW50cmUsIGxhbiwgbWV0cm8sCnJlZ2lvbmFsLCBpbnRlcm5ldCwgb2NlYW5pYywgc2F0
ZWxsaXRlLCBpbnRlcnBsYW5ldGFyeSkgdG8gc2VsZWN0IGEKcHJlc2V0IHRhcmdldC9pbnRlcnZh
bCBzZXR0aW5nLCBvciB5b3UgY2FuIHVzZSAncnR0IFgnIHRvIHNldCB0aGUgQ29EZWwsCmluIHdo
aWNoIGNhc2UgJ3RhcmdldCcgd2lsbCBiZSBzZXQgdG8gaW50ZXJ2YWwvMjAuCgotVG9rZQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

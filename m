Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D6D1C79EA
	for <lists+cake@lfdr.de>; Wed,  6 May 2020 21:08:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C1D2E3CB41;
	Wed,  6 May 2020 15:08:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588792130;
	bh=S0+SmE0NDcS3eaQi1YqgHDC7xtMuBp5tpucxY/plBhA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gW8hiwHwbGJK/DyXZy9VQ2XbRCuJSO9MKRWmBrfiFs1eunSs/8ke2epat9s2KPVjZ
	 Spyy9PDDxoz3o9eBQ2Q05uyFOB+/9SL5v9xOA7mSQ5U8SMImbApD7ysfbxUNlY+d48
	 HfMZE5qhsE8AZMjhUfAPdUub5ZRrKV2hrlsG4UfWMfjkLu9MmtqktUoTYtN+EbClXQ
	 5YPjEqBMyTMbHDzNW6126PuHwWp/EMcT9pYPwYNMvoYRIzP9ME8qn2GUjhoZGDPSgt
	 StNhSErj3syyCYLdYr04h02iUFVMFHZRRt9HxMxBdKe7YxGV9hXKAJOCMXVCeBpCnJ
	 XukoKdFP8nUTg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 406103B29D
 for <cake@lists.bufferbloat.net>; Wed,  6 May 2020 15:08:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588792129;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AC4F7Yshzm5emRobnUcT/LRPCJdZHrRCiO37EJ/wyRY=;
 b=MThL9UJm2nZsVuyab7ldcx61azME7ykUqSSj/B4Vpk4M41kbs+h4BgiQNW73SFNqRGS10h
 rzCmryO/n2g7S18rxZeFZ3NzntprHFVZoPHpeQC+0W99pAgBJ2NlW8dYc38PNC5XrqIsef
 dtcOxGv03c6TGrdLcLnBsr/cjZtD60A=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-467-GhllVCwZMKaYhbIu1B6cRA-1; Wed, 06 May 2020 15:08:44 -0400
X-MC-Unique: GhllVCwZMKaYhbIu1B6cRA-1
Received: by mail-lf1-f71.google.com with SMTP id c7so1198991lfp.13
 for <cake@lists.bufferbloat.net>; Wed, 06 May 2020 12:08:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=zrEBmdQ77AgNk/nmRsQpnkkCNDGkc2u1NNrrn7xrlvE=;
 b=aWTJWcUiM1axZdMArNlYWZgLsSQZKD25oUzjaECfvh46FGBEB17tQbwdge++yYusLd
 LtV1bHOltA3UDYj936YgPHEKjdQHHH1Hto/1qt9isSdzBhygIp4iN2hXsYKTpPCnG55q
 kglTiGuXbTWl5oFMnEolJU2uaFDEhuWPFWrarGP1AytlQJsSpRht9so39oFeiSkdX5k8
 RQ2MwkQpMBNfm6CwaO7TT6AZFybbOPJ4Ew+efB0j7QRJqEb85tR+wwhLtugrxmf8S5en
 ynCe9dlHrsNFKyERSINr7WnFmsL/A9PzlHXVx+y37xejJm4OlzvyWUWZCPHOKdG5so2+
 z5Yg==
X-Gm-Message-State: AGi0PubweOSlTbTDg9T4u+rMCzi8lT4WNOt1MlOPij6bC7HiTrNcZsvg
 LhVIgqZr8S20vBM/XKHjQ8iFzitBskIrQKloKyc0GH8piFMD2ovW8XPnMNtY/h5Gg2ISfcctTFL
 VTGYY7J0wnYWRteUN4KYqoQ==
X-Received: by 2002:a2e:99cc:: with SMTP id l12mr6136109ljj.290.1588792123165; 
 Wed, 06 May 2020 12:08:43 -0700 (PDT)
X-Google-Smtp-Source: APiQypLuoUIZqPtI7PQLn84fbfu1Cp9FyaKhYI2IC7PujKABZNezvI84hjstPVTOoosHWa1l3uD3GQ==
X-Received: by 2002:a2e:99cc:: with SMTP id l12mr6136096ljj.290.1588792122940; 
 Wed, 06 May 2020 12:08:42 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id t16sm1900312ljo.6.2020.05.06.12.08.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 12:08:42 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 529EB1804E9; Wed,  6 May 2020 21:08:40 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Avakash bhat <avakash261@gmail.com>, cake@lists.bufferbloat.net
In-Reply-To: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 06 May 2020 21:08:40 +0200
Message-ID: <87zhakkhjb.fsf@toke.dk>
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
Cc: "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Vybhav Pai <vybhavpai1999.vp@gmail.com>, Deepak K <deepakkavoor99@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

QXZha2FzaCBiaGF0IDxhdmFrYXNoMjYxQGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBIaSBhbGwsCj4K
PiBXZSBhcmUgdHJ5aW5nIHRvIGltcGxlbWVudCB0aGUgQUNLIGZpbHRlcmluZyBtb2R1bGUgb2Yg
Q0FLRSBpbiBucy0zCj4gKE5ldHdvcmsgU2ltdWxhdG9yKS4KPgo+IFdlIGhhZCBhIHF1ZXN0aW9u
IG9uIHRoZSB3b3JraW5nIG9mIGFjayBmaWx0ZXJpbmcuCj4gSWYgYW4gaW5jb21pbmcgYWNrIHdo
aWNoIGNhbiByZXBsYWNlIGFuIGVsaWdpYmxlIGFjayBpbiB0aGUgcXVldWUgaXMgYWJvdXQKPiB0
byBiZSBlbnF1ZXVlZCwgZG8gd2UgcmVwbGFjZSB0aGUgYWNrIGluIHRoZSBxdWV1ZSB3aXRoIHRo
ZSBpbmNvbWluZyBhY2sKPiBvciBkbyB3ZSBlbnF1ZXVlIHRoZSBhY2sgdG8gdGhlIHRhaWwgb2Yg
dGhlIHF1ZXVlIGFuZCByZW1vdmUgdGhlIGVsaWdpYmxlCj4gYWNrIGZyb20gdGhlIHF1ZXVlPwoK
RW5xdWV1ZSB0aGUgbmV3IEFDSyBhdCB0aGUgdGFpbCwgZHJvcCB0aGUgZWxpZ2libGUgb25lIGFs
cmVhZHkgaW4gdGhlCnF1ZXVlLgoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

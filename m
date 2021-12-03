Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A679D467FE9
	for <lists+cake@lfdr.de>; Fri,  3 Dec 2021 23:27:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2632E3CB38;
	Fri,  3 Dec 2021 17:27:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1638570466;
	bh=PNu7BCXizcaYtKblzOi5dFM+WXFCPInw4sg37in5gdI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ge+wwYM4yMjyN2uq9eG6v/krXqMtJjpirYskkdwd1jzGAL68KCgHWyRrpe5Nt8dnv
	 2gj5lJTneguVxmXClM/o07idGxXW8/NbFI6cvScNmx5qIZaFHnoa/e9132/PBKOV6U
	 12owe7re5DIX05iCmPB6fpO5jbbfaWTiS1vmxA17u3XzaCKRsbqoCtY+kkA7+31vuI
	 II7qLV+A0iO6Vle5AsZkifvrY1AgaBZKJdAVm7SiJP4LOS5JZRtayEDgzQhQ1uzesM
	 /ZwTJSbT13PxvcZ5yEV594kBO7GEdFpx4GwR1Jw36XOpWJZFPY66MqpKEcb25Hw98j
	 Ev25BxYUbKJyQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 62E2A3B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Dec 2021 17:27:45 -0500 (EST)
Received: by mail-io1-xd2a.google.com with SMTP id z18so5642886iof.5
 for <cake@lists.bufferbloat.net>; Fri, 03 Dec 2021 14:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=b2PGUeaEncaPZeKOhc9C4fm+qJFI9SHYT3c4VA3tibU=;
 b=IkxApCWkCwSxHwy2zTjlW+XtGmiVxKsxX9/pETqnXL8nGGA6dtCNxht3U2Tlk4C/Lz
 nWJ4bUOu0KQKiA/cVpx53+W06LXYcyW1Ovs65aS+un/qkkTkpeEDB6UmGh4RwsvttJzJ
 XDsfkwl9OA/vxnyYyRtmtofqysCDF+Cn2P8s+aUXWkELC9s+IHK+RFTvDDR7fIv2f1hf
 qqoqq65P3/m4TJJqZBeW+XO7IO4FqFkNWfXcWjM6DpCuJSg8Eyex/OqkKCE1qKs8atIq
 Wkx9y5lCAO3Oqhb9jInbi55A3wAuafA1lWnU+SzRQjYg+FJx47X9g1JkKvCa84eEpkJ0
 Yc1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=b2PGUeaEncaPZeKOhc9C4fm+qJFI9SHYT3c4VA3tibU=;
 b=q3Y7kdlGWZG/6x0mSQDwJP1vLjOKgsoLJ9URFkhejgsSVw6Jvrx4vutqTgz1wx3+tI
 djyYBG73puWSV2bqPFDuM4eQ+2dORa+v0pvQTmANEINcMws3NLvF/5sawA9xwCSb1CHs
 tuqnfYniwJifSH7cTG+wDGQY57pKGl2Ewc8q3Hgb2e2FqJH7l8I5CwkNpqaZeQtpbMU9
 OoFCNDP9yxywvzSVLH5jydt7/TR2/8nZS89B+feLnUaHucV5/jKXdmYSUnz5/BRNmCLY
 HvhNjCtVHnhN5/z0d92F7b4OHfEt7gYosQWUQ2UoQRFxP+nvwrSobdmSzjFo4ix8iEcR
 jkxA==
X-Gm-Message-State: AOAM533G7oAnyKiYM5SGEO+xtmcSeWgJhK985h7w6ZuQZwoGToX7v98Y
 8S7wCUlSqpxXAm7nW46Zto1xFitc1pnLfTiubcU7qEfiFxk=
X-Google-Smtp-Source: ABdhPJzkkjfQ7GBPS54TeX58etAuelB7CL6j65LfHzHRLWqpgumjevicsggb7Gpj4cA00Apc7ORaM9XuOtsijh9/r88=
X-Received: by 2002:a5d:9d9b:: with SMTP id
 ay27mr19978456iob.133.1638570464653; 
 Fri, 03 Dec 2021 14:27:44 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 3 Dec 2021 14:27:31 -0800
Message-ID: <CAA93jw5MbJwUQf3=N6xsv7dn7V+1dKeX5QR93+f7erHup+TUQg@mail.gmail.com>
To: jonathan.kua@deakin.edu.au, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Understanding the Achieved Rate Multiplication Effect in
 FlowQueue-based AQM Bottleneck
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

dGhpcyB3YXMgcmVhbGx5IGdvb2Q6CgpodHRwczovL2pvbmF0aGFua3VhLmdpdGh1Yi5pby9wcmVw
cmludHMvamt1YS1pZWVlbGNuMjAyMV91bmRlcnN0YW5kaW5nX2FyX3ByZXByaW50LTIwanVsMjAy
MS5wZGYKCkkgd291bGQgbG92ZSBpdCBpZiBzb21laG93IHRoZSBtZWFzdXJlZCBlZmZlY3RzIG9m
IGNodW5rbGV0cyBhZ2FpbnN0CmNha2UncyBwZXItaG9zdC9wZXIgZmxvdyBmcSB3YXMgZXhhbWlu
ZWQgb25lIGRheS4KCihJIGNhbid0IHJlbWVtYmVyIGlmIEknZCBtYWRlIHRoaXMgY29tbWVudCBi
ZWZvcmUpCgotLSAKSSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRpbWVz
OgpodHRwczovL3dheWZvcndhcmQuYXJjaGl2ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cu
aWNlaS5vcmcKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK

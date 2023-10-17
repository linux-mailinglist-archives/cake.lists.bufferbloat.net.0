Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 281987CB749
	for <lists+cake@lfdr.de>; Tue, 17 Oct 2023 02:12:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EAA473CB42;
	Mon, 16 Oct 2023 20:12:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697501534;
	bh=spmKsvr1DTlJqMFl6QBf+ctq7FMWaVbXidAqTJ3Xu+s=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=D6ofyPheO51o8Nx5RGCG8n/+e01Nqv5R8OzBE+Nf6fz77RF5qAQPDLER1mzzmx3p5
	 bE4hWoQZlldGaz8g8I/AEGxK8a14veU1oE+9Tlcn8V6tZkiRSpP86/K9d7ykFCQ1LO
	 eMsEcdJNLWn3u3zZNCuuJ40vPosaMfYbE+6rur+5zOlnvYTsyFFVL1ebtQhNnnxSLb
	 wkxg7eWBsvcetnZJQbhFa3Jno+ah9hvaetFp6jHVyalhLNZuOzx58hVeCHTBHOqueT
	 JKzNOpK9Gvann/Hl5Grcb2uqZgQlxBt8oWg1gu7u9ugq2hJDwYO0V/N/qkjs1d+CLL
	 mh/DhOvY/7qug==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 412C03B29D;
 Mon, 16 Oct 2023 20:12:13 -0400 (EDT)
Received: by mail-pj1-x102e.google.com with SMTP id
 98e67ed59e1d1-27d0e3d823fso2821598a91.1; 
 Mon, 16 Oct 2023 17:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697501531; x=1698106331; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ME4ShHuKvc2m60nN/soT/tXTtVscmJk+PNcEJdz4pXs=;
 b=C3F3R70hLkcaW4oigCX9f4cTwS6Cht5D/LnIQE3JSpwFYSJhNT2B8nVVqBM2VFQFer
 mhW5AzWCiFH6dNHrVH+eD0ex173lZuRx6cKW07SwD5Nl8s1dlx2XX75RbmHwtXIEoYSO
 yCCBsdFSv19jX/gFtEmc+cGTLcm+0bHSdNHsGLJg80RMCfH/eDt66wxB6mpLZrMZkcr/
 COOXNcH0v3dwNDJroJqS7P7NnRXD+O41QIKBrwszptsLgj/cRPqgeAMVVjlcYwylY7l+
 IH0xt4KFZ0ejc7pX7LmGmYf6gDaY/alySB3rlcGnbG3xiq3H8oCGDsOZHaMt9yzLItCe
 KdLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697501531; x=1698106331;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ME4ShHuKvc2m60nN/soT/tXTtVscmJk+PNcEJdz4pXs=;
 b=HHauws1n9JV7ZVhSgtQC34Gn/6DxA7t2iZt5i5E8H0TG9DxDGUdSSuKyK9LdqsPqF6
 4fTe+ct9ELecBr1TqB5IDqftxRRVjHgWLBjQJoxk53LCd0q5UPMMkWo1ZHG1eRVDO62t
 wBiTMhqSBntnoe51Rn1no3XtPFC6B0Knr0U7wT/cILL7HA+mWuIASep9nlccpfuW98c2
 Ucyl6lzvGxU5caKEMz6+jw7+JHKxMM5SrhnXNq8tHg4E2QdC/J40knivVqBNYpfaCHNy
 lCQMYWYcoHLQzxRobWW92Us1WH46P3bMk3+vtHXv89IniZJJGHfQt/KjerfZ4Tn4SBHc
 +xUA==
X-Gm-Message-State: AOJu0Yzxnk0cZlR3MRN6aPMCD/mXdqoqsr8c/Aw6Dm9ddbEBIPvOJHNk
 3cUg7418Pe2200Z3GeUdMWCJJY8U45IV/jv+DuZWkeot3zo=
X-Google-Smtp-Source: AGHT+IEEjLXOB/c/CFrmv2Pb1qpEhEGEQYYlTsQO8POkqI5nfUyHXlQR19ve7f0cNIwGA9yaBDR5Gn9uMnM+0dZDwcQ=
X-Received: by 2002:a17:90a:6d65:b0:27d:10b1:5deb with SMTP id
 z92-20020a17090a6d6500b0027d10b15debmr664777pjj.31.1697501531465; Mon, 16 Oct
 2023 17:12:11 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 16 Oct 2023 17:11:58 -0700
Message-ID: <CAA93jw4hbh-UCciToOrvUjyq0HZVWQFn98zMz=aoetV5DNeHWA@mail.gmail.com>
To: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] our stuff on a mt7628AN
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhpcyBmZWxsYSAoaW4gbWV4aWNvKSBqdXN0IHJlZmxhc2hlZCAyMDArIG9sZCBjbnBpbG90IHJv
dXRlcnMgdG8gdGhlCmxhdGVzdCBvcGVud3J0IHJlbGVhc2UuIE5pY2UgcmVzdWx0cyEgK05hZ2dp
bmcgY2FtYml1bSB0byBkbyB0aGUgc2FtZSwKZXh0cmEgc3dlZXQuCgpodHRwczovL2NvbW11bml0
eS5jYW1iaXVtbmV0d29ya3MuY29tL3QvYnVmZmVyYmxvYXQtb24tY25waWxvdC0xOXh5LXBsYXRm
b3JtLXN1cHBvcnQtb2YtZnEtY29kZWwtYW5kLWNha2UvOTU3NTcKCgotLSAKT2N0IDMwOiBodHRw
czovL25ldGRldmNvbmYuaW5mby8weDE3L25ld3MvdGhlLW1hZXN0cm8tYW5kLXRoZS1tdXNpYy1i
b2YuaHRtbApEYXZlIFTDpGh0IENTTywgTGlicmVRb3MKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

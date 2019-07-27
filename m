Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6B677BF3
	for <lists+cake@lfdr.de>; Sat, 27 Jul 2019 23:03:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E5D1E3CB3B;
	Sat, 27 Jul 2019 17:03:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1564261390;
	bh=UEXBKZjy+/nd9apoAgwdQJIUP1EQflJFpmFYjc594yE=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Awy6hBX2SI7+98rDhx1npKoSTWElJD8nWF+Ah+TNldnIFktf2NbKVmf9l61AAhS6x
	 71WyV8JjcqTtgB6wHVR7gG5Sal5bb2wCZ3eTj6qNArtdDz54DjQUvUVNy4HL7VruE2
	 ZoSHf4HWfLyAjSQV3+xdfBUEHcVA5r2tH3o5RR4SWzzMagnHmPqNrH16NiFYLm/MS0
	 ez8peBJtSRSgPRza5l9rxIDkc2KXVvBXJje5Lbttz31g6ONd1cV6JwN2WmR9uF4Xy+
	 g51BYKr32tk6SFQjhg9z/ZmuqEsqbvw9+52A30xSqCYsQEokbixGQ22fZDYvdINyaL
	 xuxE0V+lqRDtQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D05813B29E
 for <cake@lists.bufferbloat.net>; Sat, 27 Jul 2019 17:03:09 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id f4so111987850ioh.6
 for <cake@lists.bufferbloat.net>; Sat, 27 Jul 2019 14:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=jMxhDxFr5N45DVqwDMK+QNiiMlsQ/toQuASZyF9nTzU=;
 b=O3VkqHZflCnHd5rjQuIi7oyslbjhWLBbBB9/59Ambi9f+A+KF9ivVi/yck4/+Khhzi
 pO9YxiYKdZUGm1d7NkP7d+KNAFk3mCPIeAp/YdSoH57hxNuvfquduVOH5APIkmUm7Pt0
 IeqXNDpGmN3+tcW6/j4dT2Zt9CDW08oq1naogQikha6JxMDtZVcwGr+YV6sZvjZvW7Q8
 f+Mi44B5LFs330KbMeDAKHUIlCblIuKLZOyr7XIvwRY2lyMMgMnnil19b4seSjl87Ubx
 wJTibeCikcI86v9ffEQfbY+0FBFbtKpOvJZg/oqtE/M/Tpa3Zb2M5JBTAdvs6SPsLLAP
 arQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=jMxhDxFr5N45DVqwDMK+QNiiMlsQ/toQuASZyF9nTzU=;
 b=NihU9fQZbz87By7Fofg+9B5rR2P3O2msDJOwo0yjQ16ZtW5yJ1EtU5PYE3GhmnQt0r
 xVOavZUU4NzPBUBT5feV4nvQN0fp+IHpCmKNJDBwWnGvr6m3eUTosxDNa/sdllx0MQlZ
 tMTe0HjGnlwgQjkqivKwnUNr+bJSUcK59L6Bq/yCUerJNggzqTOlR2gfOGtvCaq628GK
 8p+vfhpN3OA7xsVIc/R47QYTwevFAXafYcDiRHr0CnZ3CRDxkhqNzqR8egH7OmFYF67x
 EQuiS1hZbIFchqODD8nqnZK2IpWRYLUaw1bPCTcD1CFAI3YGI7XCwHenjOnZrkg1OEJi
 8GzA==
X-Gm-Message-State: APjAAAXBshgB0IGjqf7eKy/hKuAq8F+KZvULuFydr/9Yt9f0isq3RiW3
 hvU1NnTgABoAIvf8cQD/eS0hjpk7SMd2Q2WLJ73qvTwc
X-Google-Smtp-Source: APXvYqxh7CaZg0nFs0ekQowSmKp1TvhRu3QBq4eThT68HBMF/d8iZIXntk5Nom5fOgLNVenHcle7TNdRidB+4Wko7/s=
X-Received: by 2002:a02:a90a:: with SMTP id n10mr72225766jam.61.1564261389080; 
 Sat, 27 Jul 2019 14:03:09 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 27 Jul 2019 14:02:58 -0700
Message-ID: <CAA93jw5fPb1sg1t850xWO0V7wJCusCk=UiV0D7eqX7fMTou4UA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] LE PHB finally approved
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

aHR0cHM6Ly90b29scy5pZXRmLm9yZy9odG1sL3JmYzg2MjIKLS0gCgpEYXZlIFTDpGh0CkNUTywg
VGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEtODMxLTIwNS05NzQw
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

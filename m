Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C59E445834
	for <lists+cake@lfdr.de>; Thu,  4 Nov 2021 18:20:20 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A14A53CB40;
	Thu,  4 Nov 2021 13:20:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1636046418;
	bh=RrteSznrS7FJyWtdeQtoVKC+5mh5XCbeSWXWrRLVJM8=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CGZee8JIY/GrqSdM6XUn3zMCouMcetXeeqHavEoqBqkC2r4/V0M5xK1xDxi7WSczx
	 zdkYckb9pywikzV9vSG4R+/vjgEicNWK7EJ/WGL63cMK6/rIhM3F1h85I5jSlVsHma
	 dB1wGM7qsAJz++se2RZCfHfNUgGUe+pOQfG0XRlZefA2AIbXFPUIhRb9Z3I8JKtc1Q
	 LCLt2DN3q46/OPNFGy4j8Htz8FA2gPqX/+F1v8pufEyYSapSe5ZYiz6BiEzpJyGQ7+
	 gOwhF9ICZTbwOWYUeisge366VkRciviHin5yxrzeXrkH/VPIMAGMfgVO+Yv77DSS19
	 3k9Gf+7XPwMQg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 91A353CB37
 for <cake@lists.bufferbloat.net>; Thu,  4 Nov 2021 13:20:17 -0400 (EDT)
Received: by mail-il1-x12f.google.com with SMTP id w15so6925569ill.2
 for <cake@lists.bufferbloat.net>; Thu, 04 Nov 2021 10:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=KOrsqQigPCZ2K4queDoJeDtEsSfpS0l1XddSG0rqSPY=;
 b=DOuAJRLBXOmT+J4ktwA3HDOeCu+lgufQ55DyVkJsXbIFG6/l7kWbUbbEw6NDvVqa8d
 2buzxMVXxi9gys4QaKC/e4vGyShWDhEX0ukyGqhoenMWu5iWcCcMiSLDEIK33EHJJFIL
 sy0B9Ej0qOoP9jlhjv4nTfYGfJyY0axKyhEwLG9djWfvvXudFMW+l4JqRlFpwmBMhl+v
 TdbNt8toPCePBRvIPXQALksU1D5ftDkIk7PC0TaWZvRGO/Uk+tPxrnYdB+gn5C083uPK
 d825gQGyJOra+FZGy00AXU6q6GRyaSh4zY/IX6gsNz7Ajg9R60LVv1c0RsNbY2o6cbjT
 9sCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=KOrsqQigPCZ2K4queDoJeDtEsSfpS0l1XddSG0rqSPY=;
 b=VG7ikqAYcWBvOA2j3GjkySplYCgKXVj3gOW4pMEwLzrghRxONFQKxUUWdhOJRbHtHm
 dHWLTsm7IF+qNUrGk0cSiFgCl0BxX2xy/pidlv7JmMxom1n/Od+imBKsAk0W5WivKWrp
 dU7fSL63FsCsUSO200VriWZmdWlPH7W9QahIXgjA/JhB2MpbxmhVkQvvgmjUZt4pfBC8
 1ndcwhaogbyHbhICDdYfzsnigt/DkE1Q5yxv2tgqWYgRwOyT3QcUFTgIIvnUd68e38Ki
 zxYSGJZ+hVWeqnZz/U3sYKnbjjSjHUxIlH2eKDQYHvLxvdlhTV9QgwrYVlQBe1xOdr++
 iUxw==
X-Gm-Message-State: AOAM530/K2gm+PWOvNkxSiA5+8cj1BwuaD1xJDJTTaZudQUCRfy5ZzM4
 V9g8lbJbCtksbIAEuK/IJWnDw3X2LHZFTrIIK7gIYWVbQ6k=
X-Google-Smtp-Source: ABdhPJwjvNctzGAZuWHg5vRh+yti0wGq1Wu/cAiZj2rhNxrMLB+ZF0jBrdwGqfaU4y7F+2bVTUNFUoeIIsN/+QWqrMc=
X-Received: by 2002:a05:6e02:1608:: with SMTP id
 t8mr14100290ilu.25.1636046416735; 
 Thu, 04 Nov 2021 10:20:16 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 4 Nov 2021 10:20:05 -0700
Message-ID: <CAA93jw5cq6ECSCT5U+JYjrRDB34qA3KDZ5PWx99-hNufY6RLaA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] go! felix!
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
Cc: Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

aHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9cHJvamVjdC9xb3NpZnkuZ2l0O2E9c3VtbWFyeQoK
LS0gCkkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKaHR0cHM6
Ly93YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3Jn
CgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

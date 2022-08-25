Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 559625A181E
	for <lists+cake@lfdr.de>; Thu, 25 Aug 2022 19:45:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2E29C3CB40;
	Thu, 25 Aug 2022 13:45:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1661449544;
	bh=/n0JiP8S9tJMdgDw/IZD2JRWXTezFLhfX4aSseI1SDE=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=C3z+/TH3M5WUQI8kKyF7EsXFnNKIN+Z3HKuRU+3BAnmMHMOB6/lXwDC0EQVXH5lT0
	 UH1dcmMzXWj4EpbwTdT5hgP6kX//SsIFgFxQfFh9wtGOuVxH0AYR0HB3Gdy2VtG1WM
	 oVd+Nu5a1TlU2DBuKkVxhR4KIfGNjMXt+T3Z2sEF6gGKX37UyI8wzMbQq6JJ8hvpEn
	 rxhx7N9jYz9N07cBckaywmeRo5uf3baQfPLxznA6IV6jVZu4u4655qABJxLVPVQrz2
	 3ui0skL8nAXTHwu7O+bIpDYHv8qcK5zE4FcR/+ypVmRpbRlzcLauSFUg+kjCr86BOS
	 dVyzgEF5e0vAA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 298173B2A4
 for <cake@lists.bufferbloat.net>; Thu, 25 Aug 2022 13:45:42 -0400 (EDT)
Received: by mail-wr1-x42e.google.com with SMTP id a4so25580725wrq.1
 for <cake@lists.bufferbloat.net>; Thu, 25 Aug 2022 10:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc;
 bh=MrbU940DrN9Msoz4IewRIeGCiNvHu4BBo2LL/mhPbOk=;
 b=lekDXh8c7/L0tTniSO3K/RMzdmneQs0/cgB/HzlBT3qH7cuk7lZcSdI5/PVwuZewV7
 gYpAPkLxQkTTW/hRcQvnGh8v3HXoJXdAVSndO9YC4MlAJX8a+7TJPP6q9/QyK6x7xPCy
 2thYae9odLLLHx0U0e9RgNVQuoaiP0qTaO6LHq+CdtXPOhN7aQrYWnzWfvFr9g2jKzrt
 KvCbv8+4OitcVJ2iRWQTSqh7YwZCuKzZuSWW0lx0XW1/fm9nuY11M0aHa+tLqdHBIIaf
 hxz/at96pUWvlcqcXWGNFi1jBXnsPrdpRLRKZYTvbSKfwgKKXZuw8VANKEeCgNUTiZ9q
 YYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc;
 bh=MrbU940DrN9Msoz4IewRIeGCiNvHu4BBo2LL/mhPbOk=;
 b=uMq+wy2wg5dLRC500CkeCsgKlzEieotBnHed6NGukY6+eBC3h5jUQHu0GyV9gS2YHc
 8XCwZgP2aqPGrqJ0zcf4uMJFbIwoc2ZuKV+hci5XWZXIQw4iSY230vgzEqUiHJvm4R7u
 X5+MZ83Bz1AKksVTKwXfxK02iuDf7YRa+CqDCpQAuMlYu3LvXiwMkfoZ2QY8UUnzWgMT
 D1vLP6LgZfn6Yzcye3Mh7syTOpq0eb/OwFa5eG5t+yY6vDqSDuqfj07dYJCvJ7FWQ41f
 tx85tkC2IqfTNYAWkeEa7gsOlzQ8yZ5k3NutF4h7bB2I3BAHQ0IKLvFqnYR77jlod50n
 30gA==
X-Gm-Message-State: ACgBeo2ILRc6/jDncGwS2BH+xXGuBt7kfUn9cTu4UwM3dTMxDni9quvc
 V1lGilYWIuJz/Up883cRJ+0HLw/v/sRy3l1tNccwHQ+SsEI=
X-Google-Smtp-Source: AA6agR6AtxTgarWTa4p6rw4HcrQZSsb/VH87w3A7Klpl2OnLB+vLDmuFe2WpDdV3MhVS+3EwbCSoGvDcnUFnAsdyFI4=
X-Received: by 2002:adf:db06:0:b0:220:7a57:6665 with SMTP id
 s6-20020adfdb06000000b002207a576665mr3017541wri.55.1661449540431; Thu, 25 Aug
 2022 10:45:40 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 25 Aug 2022 10:45:28 -0700
Message-ID: <CAA93jw6d5GCZzeFhfSYrc3j0TCJOiRaBw3o4jootivYi3CF7Uw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake across a 2gbit service release
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

aHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vdGhlc3Rpbmdlci9jYzEwZmRlYmZjMDA2MmY0YzllOWFk
Y2UwMDdmMmRlYwoKLS0gCkZRIFdvcmxkIERvbWluYXRpb24gcGVuZGluZzogaHR0cHM6Ly9ibG9n
LmNlcm93cnQub3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29kZWwvCkRhdmUgVMOkaHQgQ0VPLCBUZWtM
aWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

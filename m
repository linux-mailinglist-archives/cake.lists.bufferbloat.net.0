Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D3444F41C
	for <lists+cake@lfdr.de>; Sat, 13 Nov 2021 17:23:09 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EA7553CB41;
	Sat, 13 Nov 2021 11:23:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1636820587;
	bh=xbFUrmE2HqY1oCO2EQsLHAZwZ+yvQI8hnsEsswmL93w=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=R7uAjcO1FikmuWUJIiPQWYADlwaQ+z6jwvg7FSxUELKG1h3ajr+UviDVw1vP42/xU
	 HHWupAnjDYH4QtExvlx/djF7/d5ZUoJd0zzO6XdbJfe7ppYV+NFXdlYjFloeShplHZ
	 E8acgCrqqdJcyHDyMchX5juPVh1B5LgIkL+9Pvi0mN5J6bpXtdjU2P1mzyenmp36sO
	 zG5ymTBQ+oQX1a+jOp7phwfY9yomdzWjV3uOuQb6SYtcj/HcLJu1rCtchF24/HkEuD
	 0yOeaJhgDQXtCLdRi6dDdMWDLLLvcejJLYJE5K0ETRVZmMj2reNQQluVxPqbCo+3Wf
	 zQ81rPjV3jWYg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1EB6C3CB35
 for <cake@lists.bufferbloat.net>; Sat, 13 Nov 2021 11:23:06 -0500 (EST)
Received: by mail-il1-x12a.google.com with SMTP id j28so12076627ila.1
 for <cake@lists.bufferbloat.net>; Sat, 13 Nov 2021 08:23:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=z4knbOIHJOVMAz/ms38maxloZAQOnPshYJijrx0aytY=;
 b=MIAcjtjXWOkHlbOtAXtqVnQyHW6uXNPU7QfNhYxms+gPfL0zIEndaYOzmzRyh+D54v
 ndRphTQzSeIrigPj8x4zuR5kmTEjp1hFRnxFYOEng1D1tY9VvPVwq3vqbYJPRo5LqZnW
 is4tBMQQRUyxaydrYevBCfnezSYjYqyNoYxQmmiEn7XVNoeaa7mk8hLMAAY3Ti/fY85g
 qJ7MkHO7xVxhNLxeo8TZUljOb70azZ99kNw7JC54iMXBjZxRDXZZuwsSwisSJxVdDLGZ
 MPx5L4e8gkaOPeNYudmW0nDYRyBsATmdnlSDeAJVfmlB8CUjZS9J1jhskMFQSa6Kc2wF
 NMOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=z4knbOIHJOVMAz/ms38maxloZAQOnPshYJijrx0aytY=;
 b=Gz8OdViw2iLBDeW2KToihkSMrs/fndZEcnBXtA2qIkwQLcDVWe9E8diVaJU8LqIP5u
 Fes4JnDIvF4ShMlFyq/rmSTHbpWijEqKvShCaQh/ta3hCrPwFOU6fiuzVs88PQQpNifc
 3KBpORJCLfsEbmKPYcb+Z5EkroU3OvONOYY61n11IY4kaBiPdmjQ7NGTANj6iHgsrHFj
 XXdJ8X402n4O6FPWn9x9q3vl8OcRPKrdaPhSBmWAu2/OcLujbgfEuep+vhXUw3DRazhY
 Kuhg3R1Y2DlHSgjcg1xWXJgR8ynjS3cvJfe/bp6rZ+jKqxjQvE+EkoxUkuMHCCVWhn76
 5nLw==
X-Gm-Message-State: AOAM532wV534+R6N5/sPgXrKVXY1PqKLwSQe9BokR9/B1uDcz3uDYAbd
 q96eKm2rb1Df8krToAkoRpvqfQoRRJg/n+zEb854w5XKl7g=
X-Google-Smtp-Source: ABdhPJwEKj1ntlJPDHp4zBvHzC+7kq8uTvhueZG6e6aCkj0FxH7J/xKqW01KWaTabV9sp3NBTgma4JNo5tpv6ueZJEs=
X-Received: by 2002:a92:c8c1:: with SMTP id c1mr13561057ilq.88.1636820585182; 
 Sat, 13 Nov 2021 08:23:05 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 13 Nov 2021 08:22:52 -0800
Message-ID: <CAA93jw4AGcmkeb551q6yBscckpacpF-L0N-Tis0nHuiOaJ0etQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake at a gbit on virgin media
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

aHR0cHM6Ly9mb3J1bXMub3ZlcmNsb2NrZXJzLmNvLnVrL3RocmVhZHMvdmlyZ2luLW1lZGlhLWRp
c2N1c3Npb24tdGhyZWFkLjE3NzAxNzg4L3BhZ2UtMTEyMCNwb3N0LTM1MjM0NjY4CgotLSAKSSB0
cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRpbWVzOgpodHRwczovL3dheWZv
cndhcmQuYXJjaGl2ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKCkRhdmUg
VMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

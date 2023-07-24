Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6360575EA15
	for <lists+cake@lfdr.de>; Mon, 24 Jul 2023 05:34:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CC8263CB39;
	Sun, 23 Jul 2023 23:34:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1690169673;
	bh=AMqUddjvb9v2Z4hk8sb/F/X0Iareik3srR2hMPI+JEc=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=SiBqXBD5KgOgcF0dmLmtFaQPDuW+R5C38juVwNhvwOKWx5pjOqwNwCZ0DapLrha09
	 35UCGPhequ4u3eWMhI78q0MIfB8DT+DK65f0kv3jf464zOLvr1Qwu1gtW7QLUqseB6
	 fy9opKUjbP2k8FahpNk2XtNgNsWPzt+NK7VIiK0mFW9sFCzArxaKaMUXzfwHwaBzlt
	 8nqoiKOuY0KLp3ZjumZIjySDG8QvDqSL9H1w0od16Bmk4LN60bqgB/pKViy4DFLbfY
	 zaW9hGs14dYs3v43OM4Sci4Ba5daVnxki8030unvlXxG7Dlw1ki8QNqLxKzMjSGnbH
	 Pro3KFudi9Tzw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 38AD93B2A4
 for <cake@lists.bufferbloat.net>; Sun, 23 Jul 2023 23:34:33 -0400 (EDT)
Received: by mail-pj1-x102d.google.com with SMTP id
 98e67ed59e1d1-268128a0105so480465a91.3
 for <cake@lists.bufferbloat.net>; Sun, 23 Jul 2023 20:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690169672; x=1690774472;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=hyqHkTr+YZPQqvtw1r2Pa+IXiZeZNIb0gbJYkjqTnWQ=;
 b=QVx04kEU3NMEE0eX7xF6zgjtTUYyB/OvZglxJKTqUTMcS2xvkNbUOJVI9xOo7BBePQ
 jxTa+Sd5z/lGATQj36/0bQVl07j6jrgEIJvZodX6tih1AVmPuzynCnH8v/VtzHCtAcRq
 k+oPo+WK2Kvsa72xQIsUt4WBfVOpVsi8r7K4xz8+i5u1hiFkRjsl4yQPdLTXjP6th0JF
 TZCZ5H9IFpAmUX6GzPZRkCuJqk1GR3UsLAPCwoNCVJfel+u7R3yGcFjoPkEHorDXtFKh
 EosqtA9ugcW5hIOc6cZMJH1XTr7rV+lj2tq4wiNaiU8zwUXbUgxOgUCItIRox8Rumysh
 E5RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690169672; x=1690774472;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hyqHkTr+YZPQqvtw1r2Pa+IXiZeZNIb0gbJYkjqTnWQ=;
 b=K83aMkoXOX0RLF+EqNbIoVNbsBAhWEAZO1Nm1BG0PUI+TrUImOHZvM8gnSj8np+ZsK
 5lN0Uzo7uFwQmZrK1hUA0/HsO2/TuNinLYCVnDBEq+sYfC0Dv5IDBiGqfqNlKjwHfA/7
 AqmXXPn5lENv6xoE8pW0Xy5LKsg1bcXVUxerv8gng4c/psw2796BIiEtvAUIb4rFfFo5
 N5ozNzDUM61CoYHPDg/4J8GEAZCtyWbezjecSPy3Y2DKCuywtaB4VbYs4UVLWSKALSEm
 MENF0/Pd9ktVaSOKI0XifglZsmjARxoWgQhARVrvCh0ZegBrNQ8ZI857V/YkXsPAX+3m
 OLLA==
X-Gm-Message-State: ABy/qLaTT1Rb7vmxFUYvhDKjxrNxJQ8Fb1XxGITPu00MwACoiRlnC3Ia
 YEW5IvqgX/cIVrOdfJDdOqGLpq7xIonrsTnsKqBVx3tl/fg=
X-Google-Smtp-Source: APBJJlEroZ/v5iXnMmqNca9fZOtnUT+IuzX0bSj9BkHg+ul2W+tID1TBgydBuQAylzhnl1CZ2kpHpoIkUYRTfAKqm5E=
X-Received: by 2002:a17:90a:e213:b0:261:685:95b6 with SMTP id
 a19-20020a17090ae21300b00261068595b6mr8982473pjz.13.1690169671682; Sun, 23
 Jul 2023 20:34:31 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 23 Jul 2023 20:34:18 -0700
Message-ID: <CAA93jw62rvniHssACGeGZu_tiP8__9C1mS1pGUMT-SOcZdQVYA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] eevdf cpu scheduler
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

aXMgYWJvdXQgdG8gbGFuZCBpbiA2LjYuIEl0J3MgaW50ZXJlc3RpbmcuCgpodHRwczovL2NpdGVz
ZWVyeC5pc3QucHN1LmVkdS9kb2N1bWVudD9yZXBpZD1yZXAxJnR5cGU9cGRmJmRvaT04MDVhY2Y3
NzI2MjgyNzIxNTA0YzhmMDA1NzVkOTFlYmZkNzUwNTY0CgotLSAKUG9kY2FzdDogaHR0cHM6Ly93
d3cubGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0eTo3MDU4NzkzOTEwMjI3
MTExOTM3LwpEYXZlIFTDpGh0IENTTywgTGlicmVRb3MKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0292E0F2E
	for <lists+cake@lfdr.de>; Tue, 22 Dec 2020 21:07:49 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4CFE53CB44;
	Tue, 22 Dec 2020 15:07:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1608667667;
	bh=mLG4B3+qQclbrchaMm8fNTDTPTNgK+7aa1BigVyDaNY=;
	h=To:From:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i1RpuhQ4XjE2EH4/ClIwuVE2bb/9Mg3QRg6y6l+1Zr80kpcR19rq/Vx++MYj9aQzh
	 SteOyR+DXOokgpmJ3+YL3a62t1iDQ1VLSygDhuRvHsCTrKMiLnVuzPVt4Iozxp54Rn
	 l0QuWbvNk6CiKkSSkKDvbSlpK6qsugSq/hzPy4I3wWI18GviXCMB9ztZnwTosISQgH
	 K3Oa2uFQfCa4K7pBnOuCRWL6WEUNMetqvIJ8qseXzV5DYEt3BhQuXkqfCaIBIwIJta
	 91cgMOq9sbL4EAZ0DGMAcUZknp9EFOHksoSkuoMZ11qfEH+25wTHz6mbx4yLmnijxG
	 qtlziiHgSvBdw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9764B3B2A4
 for <cake@lists.bufferbloat.net>; Tue, 22 Dec 2020 15:07:45 -0500 (EST)
Received: by mail-wm1-x32e.google.com with SMTP id q75so3355710wme.2
 for <cake@lists.bufferbloat.net>; Tue, 22 Dec 2020 12:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:autocrypt:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=3Bg0AdMH2Bxj9wc5p93CGyaRESmDGUFIbb7EW8rl5l8=;
 b=lJr9sbqeebQyVcdbI0SzYxvvevmzBdoSlL7IkFnVhgfVI3c+yBVj9GHokikVREGXtZ
 jSz4zCql8FK15vOOZPop5PJc8agUz/Xjr+CB4GOmO5mwJvIEoZ0ByGxUTIKzHIm2/hhJ
 msdhjAUnKRCNkU8+YU86bnnXY4KAU1BC8x6ZSryeVJG6X0tTta88v/4iq7qyp4/Kd/WQ
 N1sNfoQepa4eVLrLWO5uk/8ozRqL/7wDn1rHpb2ICmRZ0Rrj9Q9jbeCSgnV5OWwK4XCQ
 YyYHWNjN5KrvUBP5v8837wsvIMLI6o5vdoIAF5i67lng+SpC7vWirWD3FatVGDLmExh7
 qKFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:autocrypt:subject:message-id:date
 :user-agent:mime-version:content-transfer-encoding;
 bh=3Bg0AdMH2Bxj9wc5p93CGyaRESmDGUFIbb7EW8rl5l8=;
 b=YNWeq4QaySAcg7TSrG1W9A6uBTzU5X5j21JErF1ohNv6CxL0n/AwS8oNDm7YeXnlFo
 A6IukU/2ryDoFaCieh/rtPfEAct71Xw5MkVGuZnkfT9Th98pGzQVNdwasq6YWZFte1iB
 6ykfM6Eq98geL0tQjD9S5MxUl29m7+fc6ZxVyOBiiClbYhiyNKf9t0WzWw4L1Qm8rvxr
 WNfUGZmuFJMB50yclumFB0YwfCTzMKWLfytoSJGi2cWKpoOxf8bsBmjXXCkIvnYDICPD
 tA4LYs53Fg+Nc7Iapaxt/vi1AkeegJkKMf9C54xwnAxLgB9Gz0k0iNJop2PyLdQZy++n
 qJNw==
X-Gm-Message-State: AOAM532UqaZU7d0Ngt4hByXX4MXUGmrfxCB9rqjjU0OrYuIAvsuUkwuK
 N/tkWBxwInxEK5MSKjhzf27RWxDHuhw=
X-Google-Smtp-Source: ABdhPJxqd6an/xTjErjYwOK/cCYgkaCwsix/JJ9HeWIcyYO9M228YYrIKBVtfE+oUD7/EI7RxCKH6w==
X-Received: by 2002:a05:600c:250:: with SMTP id 16mr7276699wmj.6.1608667664638; 
 Tue, 22 Dec 2020 12:07:44 -0800 (PST)
Received: from [192.168.1.116] (cpe90-146-174-71.liwest.at. [90.146.174.71])
 by smtp.gmail.com with ESMTPSA id h83sm30310114wmf.9.2020.12.22.12.07.44
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 12:07:44 -0800 (PST)
To: cake@lists.bufferbloat.net
From: xnor <xnoreq@gmail.com>
Autocrypt: addr=xnoreq@gmail.com; keydata=
 xjMEX8GJihYJKwYBBAHaRw8BAQdAhiXbV9uWXaRTLr0gtbgOSXKiajCO+q+GZ/Lanh1SeafN
 F3hub3IgPHhub3JlcUBnbWFpbC5jb20+wpEEExYIADkWIQSIwFsdmuvVRn8KTpQPFnChazvz
 EAUCX8GJigUJAeEzgAIbAwULCQgHAgYVCAkKCwIFFgIDAQAACgkQDxZwoWs78xAqlgEAlzmt
 RBZWsvAir0IcwvcgSZOCKzt8onO8yoMi7qq/3M4A+wWj3lX9lx0WEBZtPEJCw+WZ7+w7c6wz
 4//han+cxsIEzjgEX8GJihIKKwYBBAGXVQEFAQEHQCRV3YyeTk35SbVbzBMDTPIc4L+Nuhkh
 tOIU4ZlXy3QoAwEIB8J+BBgWCAAmFiEEiMBbHZrr1UZ/Ck6UDxZwoWs78xAFAl/BiYoFCQHh
 M4ACGwwACgkQDxZwoWs78xBjpAD+LZuOaaaPgqJx/u/PxUviEjFr76XwFiwnXFSUQP9RcpIB
 AJEpdVrCl6fNm+QrUcjfAe7VN1IrCgeEpNA6fmz5kXEK
Message-ID: <421ffd89-0c2c-1187-380c-03a0968f4095@gmail.com>
Date: Tue, 22 Dec 2020 21:06:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
Subject: [Cake] ECN not working?
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG8sCgphZnRlciBvYnNlcnZpbmcgbW9zdGx5IGRyb3BzIGluIGNha2UgKGluc3RlYWQgb2Yg
bWFya3MpIEkgZGlkIGEgbGl0dGxlIHRlc3Q6CgpDbGllbnQgaXMgYSBMaW51eCA1LjkuMTMsIHNl
cnZlciBpcyB0aGUgc2FtZS4KS2VybmVsIEVDTiBwYXJhbWV0ZXJzIGFyZSBzZXQgaWRlbnRpY2Fs
bHkgZm9yIGJvdGggY2xpZW50IGFuZCBzZXJ2ZXIgdG86Cm5ldC5pcHY0LnRjcF9lY24gPSAxCm5l
dC5pcHY0LnRjcF9lY25fZmFsbGJhY2sgPSAxCgpVc2luZyB0Y3BkdW1wIG9uIHRoZSBzZXJ2ZXIg
SSBzZWUgdGhlIGZvbGxvd2luZzoKClRoZSBjbGllbnQgaW5pdGlhdGVzIHRoZSBJUHY0IFRDUCBj
b25uZWN0aW9uIHdpdGg6CklQIERpZmZlcmVudGlhdGVkIFNlcnZpY2VzIEZpZWxkOiAweDAyIChE
U0NQOiBDUzAsIEVDTjogRUNUKDApKQpUQ1AgRmxhZ3M6IDB4MGMyIChTWU4sIEVDTiwgQ1dSKQpT
ZXE9MCBXaW49NjQyNDAgTGVuPTAgTVNTPTE0NjAgV1M9MjU2IFNBQ0tfUEVSTT0xCgpUaGUgc2Vy
dmVyIHJlc3BvbmRzOgpEaWZmZXJlbnRpYXRlZCBTZXJ2aWNlcyBGaWVsZDogMHgwMCAoRFNDUDog
Q1MwLCBFQ046IE5vdC1FQ1QpCkZsYWdzOiAweDAxMiAoU1lOLCBBQ0spClNlcT0wIEFjaz0xIFdp
bj02NDI0MCBMZW49MCBNU1M9MTQ2MCBTQUNLX1BFUk09MSBXUz0xMjgKClNob3VsZG4ndCB0aGUg
c2VydmVyIHJlc3BvbmQgd2l0aCBFQ1Qgc2V0IGluIHRoZSBTWU4gQUNLIHBhY2tldAphbmQgcG9z
c2libHkgYWxzbyBoYXZlIEVDTi1yZWxhdGVkIGZsYWdzIHNldCBpbiB0aGUgVENQIGhlYWRlcj8K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

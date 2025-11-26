Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF39C8803E
	for <lists+cake@lfdr.de>; Wed, 26 Nov 2025 05:08:44 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 86CD99CDA37;
	Wed, 26 Nov 2025 05:08:42 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=CWXRLPSG
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764130122;
 b=Lq1kjBTh1Yit5NqTXHDhFkKEwpk0opT1w65eyNO8eQrkM/VDxuWzh/9BrhXVTMTEbig0q
 r1hIOZHfgXmKhca3fCXoLW9Tk9YQZhfDj/YYqdXvUEmo1xNxT++pOLocAKf8HHqElMKBZS5
 s+CcdfATZbsEWxfHGcclsfSbhLCotds=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764130122; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=XchfwkPUiSUiO33WeWWav9dg1WkEFVZ/NVkeF6Myg74=;
 b=YmNX/FHtX4AdBzAVuqkmzR2wZ683g5XEPK4cSyfC4jw4asYIS8EgX6SD8ENr9QQUTXIMd
 29RYipNloudp6gpBz+HvCSKDWIRpjfdMyJH/51o1nEhZaZL74DkQvwyyMZS4+LCAMYybNKj
 lourHIesf3cvgXm4icR2CMY5KbrMeFI=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-dl1-x122d.google.com (mail-dl1-x122d.google.com
 [IPv6:2607:f8b0:4864:20::122d])
	by mail.toke.dk (Postfix) with ESMTPS id 98F0D9CDA16
	for <cake@lists.bufferbloat.net>; Wed, 26 Nov 2025 05:08:39 +0100 (CET)
Received: by mail-dl1-x122d.google.com with SMTP id
 a92af1059eb24-11b6bc976d6so615167c88.0
        for <cake@lists.bufferbloat.net>;
 Tue, 25 Nov 2025 20:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764130116; x=1764734916;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0Z7iBqBHKRdUYuyoB8rzzmFsKnz3Y3mqQuJiu2GxZKQ=;
        b=CWXRLPSGID/WRkbEcvQfCdxyEs71T/wMKJVo3WD+JXAaZTTS8/jIiMtixWMKT1xpTi
         ymELp/VA3r7V9iHn9rQoA+UMxOW0VMmEz7fn7e3w9JBMF3lwnc6AqvgfnlJMsUmJoaXI
         j04xF5z9x+WFS91utI6HYh9Acakg1BEx4aTTo/DOfw8AOowlJQknFcbK8vxYxzM6pDrB
         ib4ymfGPm11IXslgII/X2getVwlyijwIZvfCk4dPwnxAjIZF5UHEfR1pQTtJ3cK+8FRp
         SB32uU+xo3P7u+bFYXiVOwocj7eLmnEmK2rKqdWdCfBSh9mBYBuQIWvsZFyILTwf7Iwa
         UScA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764130116; x=1764734916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Z7iBqBHKRdUYuyoB8rzzmFsKnz3Y3mqQuJiu2GxZKQ=;
        b=YFKdtD2A6A16cK396Ec2MtxghHYKdert2JzAF7NXiWlsdxY4UdTkGURPdGoE+o8x9c
         zQd/6dShUPcWdVrQC3S32aW9djSwlhzPHWeTjbXNPjUfHiVK6cLz67EwfBmPc3yMYC/c
         vJmpNEHeJgztxX7YZA8P/fqH5Kbx4tKiIwlkUnPx2Q91iZWJLYEwNTwbaKJqpG/sQWJS
         az2PKsiY2Kt492IYty0eYlzhQAwUGY48dbWc3ci17XZAP/4LwXkenJRmpBHVpxh9h62C
         ywaH8wgD4EMlT2PxxAV+dDGgtbJwW/g3Ot1uK9uloimxJGI3UJDWImXoNuFk0jIHshDD
         c6VA==
X-Forwarded-Encrypted: i=1;
 AJvYcCULlqnmLQtbdKuuiaFcSZGB5lXHMy2DSpuOilmEZdWWAGPr7CUafbuXBUnsTuGyQmr5Y5co@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yyt6Aesqust/I4xWFt606B3f07xJwDjv1P27pV8UyOZ4LrZvMRe
	t1NfvdZ6a7cZk/ye8xDSAAMiDR3zoUzIH298TreQscGmLryD9UyLFsXh
X-Gm-Gg: ASbGncs7dAQ64rg9+5VAloPO2FZsJAsPGmqKrLBSYEmhRyTy3qgrGx5WgdaPT7UuReA
	V3i/x8stc4iO1Okoywo2ATSuM0xL3ySmcq39+daiZn8jCTyqCYwaMMlggplBAJjOc2kh15dot9y
	IZrmXq4Cy4cMd2canTe/R8MP4FrGqkucSbdWaonT3nUnQP0qR5AVoiBTrmxQzQobcQ4uxaVcO5t
	run/v54cwZ1/888dlGMfZ2gOaV5pQ9gffpLP4QQ2bnd7CIZnryXeNT53rM2RSikTtfvoZZOnFLZ
	ns0v7rqa8jsrDG0iL80+5ypsHDDsZLkoEZS875eDqkS8r3vXHaCgPUNm28DpbhpbufBk0vX+ihf
	BsN2HfAdaHrraQ9VJZPBC9X0mTrmFad2GYem3rk6s/8iP0OHuVl5RIBqFftTky4y8yfw0J7Cnqt
	XMvoWSTrpj1Qhw7RQf
X-Google-Smtp-Source: 
 AGHT+IHRA4qM1tECY85nqFQqlvSC4l5L/JqdviFcbhtwG92e/0qqF3TshJ38yUfhDPGNR1ZIZIRR4w==
X-Received: by 2002:a05:7022:6285:b0:11b:a8e3:847b with SMTP id
 a92af1059eb24-11c9c9363d0mr15232292c88.5.1764130116076;
        Tue, 25 Nov 2025 20:08:36 -0800 (PST)
Received: from localhost ([2601:647:6802:dbc0:a2cf:2e69:756:191b])
        by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11c93e6dbc8sm92476368c88.10.2025.11.25.20.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 20:08:35 -0800 (PST)
Date: Tue, 25 Nov 2025 20:08:34 -0800
From: Cong Wang <xiyou.wangcong@gmail.com>
To: Xiang Mei <xmei5@asu.edu>
Cc: security@kernel.org, netdev@vger.kernel.org, toke@toke.dk,
	cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID: <aSZ9QhUImq0nH8mi@pop-os.localdomain>
References: <20251125220213.3155360-1-xmei5@asu.edu>
 <20251125220213.3155360-2-xmei5@asu.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251125220213.3155360-2-xmei5@asu.edu>
Message-ID-Hash: WAEYP6YGTDWKAC333MGK7W5T354LYBJJ
X-Message-ID-Hash: WAEYP6YGTDWKAC333MGK7W5T354LYBJJ
X-MailFrom: xiyou.wangcong@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v6 2/2] selftests/tc-testing: Check Cake Scheduler when
 enqueue drops packets
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/aSZ9QhUImq0nH8mi@pop-os.localdomain/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 25, 2025 at 03:02:13PM -0700, Xiang Mei wrote:
> Add tests that trigger packet drops in cake_enqueue(). The tests use
> CAKE under a QFQ parent/class, then replace CAKE with NETEM to exercise
> the previously fixed bug where cake_enqueue() drops a packet in the
> same flow and returns NET_XMIT_CN.
> 
> Signed-off-by: Xiang Mei <xmei5@asu.edu>
> ---
>  .../tc-testing/tc-tests/qdiscs/cake.json      | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 

Usually tools/testing/selftests/tc-testing/tc-tests/infra/qdiscs.json
is a better place for testing Qdisc combinations.

Regards,
Cong
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

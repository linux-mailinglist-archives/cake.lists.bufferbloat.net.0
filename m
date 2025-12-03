Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D47C9DCE3
	for <lists+cake@lfdr.de>; Wed, 03 Dec 2025 06:31:23 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id E9F47A269C6;
	Wed, 03 Dec 2025 06:31:21 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=eZLTgzRX
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764739881;
 b=P9fZ9RzCn0aKlf7mWFsADoOd1/e8PFpcX4AYJTS45jeL8FwqqaDOUhriQJOurPLxkxcek
 /zbR5Ktcru8YfvqhlLd3GqmExHB6aM4EPSXibgV13f6UEq+URBf9Ois8kmtVnUve3+bOo8S
 zHZsQVzDN/xtIFk1tQA447NTPK0EtqU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764739881; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7mXuaXQhIWEPMhPTsB6ppyjV/NMXtvCbUVRT234ZJQ4=;
 b=4m5BoB0TSsLnFneyS6pP5cI3nM0p69FtokQRxt4TLRzbvZSN1a6gpP9gg6+vmMIJULd9a
 qf1luZ+bkaLNfzsrhP3LWddhFiDyWlU+Ychgg5Zvp8D5Pzaxr9016Q94jgFpW7MBDxxQakW
 kKnd/KZS+3Y92zWsSgbP+56HlZj1P+s=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
	by mail.toke.dk (Postfix) with ESMTPS id 837BDA269AE
	for <cake@lists.bufferbloat.net>; Wed, 03 Dec 2025 06:31:19 +0100 (CET)
Received: by mail-pg1-x533.google.com with SMTP id
 41be03b00d2f7-bd1ce1b35e7so4415047a12.0
        for <cake@lists.bufferbloat.net>;
 Tue, 02 Dec 2025 21:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764739877; x=1765344677;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Krz802YddshXmZcDWgXdxQ3kx1TO7yAoW+miWDBifF0=;
        b=eZLTgzRXTbLHqoDFNBVLm/FeYSztMNJC0zVwO8yHSCSzKDnOUyJeiiuVWvY9kgq+7c
         TfeVFGmyPU0i5/FNRL3+IPidKry+toaRxO6QOxuK3QHy+F0zev8phSCR7vBgnhM1H05X
         iikWfqi1sX3UaTjVpGUwn2waa5gLG1e8YcXeQt6S0FVNOewP8W7M46QN0XXl3ObavrRi
         MM+08SPNcFWAVQ8iie0kpz81FuGfUb/Xjxav7h03EYvVCTrVpxxkYsK11D5nxKVSs+Ih
         bWSBnxRwJCS5n/NuysVDT5m//MmqnYLLi61/PPHBm3sPWKoTjRJMIvxPTTJQvwBWhR72
         ++IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764739877; x=1765344677;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Krz802YddshXmZcDWgXdxQ3kx1TO7yAoW+miWDBifF0=;
        b=H9Yd5uymwJFcElW0zi6UwC2bnL03S7Zy7ULBdJrjJoqPQ7ezPDUR2THR+9hfyn8YkF
         ZeDQKlgqY78lUxe+Pp39K/7Zk8PKXau+jvhHvnYHDnwSd/X9m01SPlBCyI22pCqIoZx3
         v6NXMhK/3AXB75tvvBUYy+F+/SL6A+QtGlCUBkLZdhEnQKxMjIWiGXIZsfU99CMS85j4
         MK3luezq7DDD2VCbmMX1Pf+iRiIQxKhPVXAICXh8kVysvK5TBEv9gMBvGW3pqTWr68k6
         6An0iUDugSYAv/Wo8uwfW0OSrb5Vcf/VzKExPnpmgTYjDEmm+jnbPk4X9T8+XNkmyRAl
         rtWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCURbjV/+EvDfg/i3BSL9ZRb4/YCpfi8/O7niGTyXb8g2x5GD9v8LcJl3UIKbsDgxy1huruF@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yz3XEFZFQsXBeAudpnuofbqCsgaR3rYqy+4+qJCj4TLVrK9Liay
	OijE00gf88v7X6C3l8bC/sfCFEQ+TJ2u31uSi7sCCZCF/MId2u9qWJP7
X-Gm-Gg: ASbGncsp54CwB/m5RwgBrNAorxL0jxlRyoLpTRTDHEHSRXXOocpp2yyxoodHg0ylLsS
	ZFJxI8ZJOULG9JopIFNvXoDbRK8i7689xVhs6LmPFHgpRHfipAxQ1HprTuthfIL6vbua0dSWycg
	xZsRCwIidMyBWlCKDkKrax8h6HO+M/guhokolIYXlSHkRAqx60Az0xnVJ1CALu/dFw1t0Ks6477
	57DiihKrSeboFIn1Va3qcX/PjMl81LzlGyBm0b/g03ZIscQXeHLKpDjzP1BPa4724nXYQvprR2q
	yv9EwyTBzYy/repkhQWo8YB21h4kB9YnZEbn1+kkjiZ7B9rmEvNPO1U4K9DewYIU3ImVOs5WiMD
	BtTNk9zMpQR/ZnegMvUKFNt8ihegz27Fx6ia5NfrxtMG2VhwlIKLhPZJvaiG5Lhe/bG+03uYGtD
	iNvxetYUuI+/UTosB6DHch7qxFhfuC
X-Google-Smtp-Source: 
 AGHT+IFr9CcjVghg9hmrfzNjTHcxJgo+bljuesXO+WbZ3zPiDNG3V9QwN/EEccXkdDd9cJbrMdBp5g==
X-Received: by 2002:a05:7022:78f:b0:11b:d211:3a64 with SMTP id
 a92af1059eb24-11df0ba160emr1177470c88.0.1764739876929;
        Tue, 02 Dec 2025 21:31:16 -0800 (PST)
Received: from localhost ([2601:647:6802:dbc0:57e5:a934:7b10:c032])
        by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11dcb057cb0sm97283794c88.9.2025.12.02.21.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 21:31:16 -0800 (PST)
Date: Tue, 2 Dec 2025 21:31:15 -0800
From: Cong Wang <xiyou.wangcong@gmail.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Cc: Jakub Kicinski <kuba@kernel.org>, Jamal Hadi Salim <jhs@mojatatu.com>,
	Jiri Pirko <jiri@resnulli.us>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	Jonas =?iso-8859-1?Q?K=F6ppeler?= <j.koeppeler@tu-berlin.de>,
	cake@lists.bufferbloat.net, netdev@vger.kernel.org
Message-ID: <aS/LIzlRuJWDGL6m@pop-os.localdomain>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <aSiYGOyPk+KeXAhn@pop-os.localdomain>
 <87o6onb7ii.fsf@toke.dk>
 <20251128095041.29df1d22@kernel.org>
 <87cy51bxe1.fsf@toke.dk>
 <20251128184852.7ceb3e72@kernel.org>
 <877bv9b381.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877bv9b381.fsf@toke.dk>
Message-ID-Hash: R2P4XWKG3FRPGE6PLK7IE62HAPON4WS5
X-Message-ID-Hash: R2P4XWKG3FRPGE6PLK7IE62HAPON4WS5
X-MailFrom: xiyou.wangcong@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/aS/LIzlRuJWDGL6m@pop-os.localdomain/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 29, 2025 at 10:25:02AM +0100, Toke H=F8iland-J=F8rgensen wrote:
> Jakub Kicinski <kuba@kernel.org> writes:
>=20
> > On Fri, 28 Nov 2025 23:33:26 +0100 Toke H=F8iland-J=F8rgensen wrote:
> >> Jakub Kicinski <kuba@kernel.org> writes:
> >> > On Thu, 27 Nov 2025 20:27:49 +0100 Toke H=F8iland-J=F8rgensen wrote:=
 =20
> >> >> Yeah; how about I follow up with a selftest after this has been mer=
ged
> >> >> into both the kernel and iproute2? =20
> >> >
> >> > Why is iproute2 a blocker? Because you're not sure if the "API" won't
> >> > change or because you're worried about NIPA or.. ? =20
> >>=20
> >> No, just that the patch that adds the new qdisc to iproute2 needs to be
> >> merged before the selftests can use them. Which they won't be until the
> >> kernel patches are merged, so we'll have to follow up with the selftes=
ts
> >> once that has happened. IIUC, at least :)
> >
> > You can add a URL to the branch with the pending iproute2 changes
> > when you post the selftests and we'll pull them in NIPA, or post=20
> > the patches at the same time (just not in one thread).
>=20
> Ah, cool.
>=20
> Given the likely impending merge window, how would you feel about
> merging this series as-is and taking the selftests as a follow-up? Would
> be kinda neat to get it in this cycle :)

A followup is definitely okay.

Maybe it is time to think about getting rid of such dependence on
iproute2? I am thinking about replacing those iproute2 commands with
libnl (or other netlink libraries). I know this is a lot of work, but
we have AI today, so perhaps it would just take AI a few days.

Another benefit of this is we would avoid parsing with regex, which has
been a headache even for me.

Anyway, it is a long-term thing.

Regards,
Cong
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
